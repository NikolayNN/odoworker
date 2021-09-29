package by.aurorasoft.odoworker.odoworker.service;

import by.aurorasoft.odoworker.odoworker.domain.*;
import by.aurorasoft.odoworker.odoworker.repository.MessageRepository;
import by.aurorasoft.odoworker.odoworker.repository.UnitDataRepository;
import by.aurorasoft.odoworker.odoworker.repository.UnitOdoTempRepository;
import by.aurorasoft.odoworker.odoworker.repository.UnitRepository;
import by.nhorushko.distancecalculator.DistanceCalculator;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.time.Instant;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import static by.aurorasoft.odoworker.odoworker.domain.Messages.ABSOLUTE_ODO_TOKEN;

@Slf4j
@Service
@AllArgsConstructor
public class OdoWorker {
    private static final int PACE = 86400;

    private final UnitRepository unitRepository;
    private final MessageRepository messageRepository;
    private final UnitOdoTempRepository unitOdoTempRepository;
    private final DistanceCalculator distanceCalculator;
    private final UnitDataRepository unitDataRepository;
    private final MessageOdometerSavingService messageParamSaveService;


    public void mainWorker(long minId, long maxId, Instant stopTime, boolean onlyNew) {
        List<Unit> units = unitRepository.findAllToHandle(minId, maxId);
        System.out.println("$$$$ " + units);
        Optional<Long> lastUpdatedUnitId = unitOdoTempRepository.findMinUnitId();
        for (Unit unit : units) {
            if (onlyNew && lastUpdatedUnitId.isPresent() && unit.getId() > lastUpdatedUnitId.get()) {
                log.info("Unit: {} skip, because last updated unit was: {}", unit.getId(), lastUpdatedUnitId.get());
                continue;
            }
            log.info("start unit: {}", unit);
            Optional<UnitOdoTemp> optional = unitOdoTempRepository.findById(unit.getId());
            if (optional.isEmpty()) {
                log.info("unit: {} is new", unit);
                Optional<UnitData> last = unitDataRepository.findById(unit.getId());
                if (last.isEmpty()) {
                    log.info("unit: {} no data by unit_data. skip", unit);
                    continue;
                }
                if (last.get().getLastMessage() == null) {
                    log.info("unit: {} no data by last_message. skip", unit);
                    continue;
                }
                Instant queryStart = Instant.now();
                log.info("unit: {} try find first message. query start at {}", unit, queryStart);
                Optional<Message> firstMessageOptional = messageRepository.findFirstMessageForUnit(unit.getId());
                log.info("unit: {} query end. processing time: {} seconds", unit, (Instant.now().getEpochSecond() - queryStart.getEpochSecond()));
                if (firstMessageOptional.isEmpty()) {
                    log.info("unit: {} no data. skip", unit);
                    continue;
                }
                optional = Optional.of(new UnitOdoTemp(unit.getId(), firstMessageOptional.get().getDatetime()));
            }
            log.info("unit: {} start from: {}", unit, optional.get());
            processMessages(optional.get(), stopTime);
        }
    }

    private void processMessages(UnitOdoTemp unitOdoTemp, Instant stopTime) {
        Instant start = unitOdoTemp.getLastDatetime();
        Instant finish = unitDataRepository.findById(unitOdoTemp.getUnitId()).get().getLastMessage().getDatetime();
        while (start.isBefore(finish)) {
            Instant end = start.plusSeconds(PACE);
            log.info("unit: {} try get messages between {} - {}", unitOdoTemp.getUnitId(), start, end);
            final List<Message> messages = messageRepository.findMessagesForUnitBetweenDatetimes(unitOdoTemp.getUnitId(), start, end);
            log.info("unit: {} received messages count: {}", unitOdoTemp.getUnitId(), messages.size());
            if (messages.size() == 0) {
                unitOdoTemp.setLastDatetime(end);
                unitOdoTempRepository.save(unitOdoTemp);
                start = end;
                continue;
            }
            Message prev = null;
            if (unitOdoTemp.getLastMessageId() != null) {
                prev = messageRepository.findById(unitOdoTemp.getLastMessageId()).get();
            }

            Iterator<Message> iterator = messages.iterator();
            if (prev == null) {
                prev = iterator.next();
                Messages.addParameter(prev, ABSOLUTE_ODO_TOKEN, 0);
                messageParamSaveService.save(prev, 0, unitOdoTemp);
            }
            while (iterator.hasNext()) {
                Message next = iterator.next();

                if (Messages.hasOdoParameter(next)) {
                    while (iterator.hasNext() && Messages.hasOdoParameter(next)) {
                        log.info("_odv exists. skip update message: " + next.getId());
                        prev = next;
                        next = iterator.next();
                    }
                }

                convert(prev, next, unitOdoTemp);
                prev = next;
            }
            start = end;
            if (stopTime != null && stopTime.isAfter(Instant.now())) {
                log.info("stop worker by stop time");
            }
        }
    }

    private void convert(Message prev, Message next, UnitOdoTemp unitOdoTemp) {
        double odr = distanceCalculator.calculateDistance(prev, next);
        double oda = prev.getValue(ABSOLUTE_ODO_TOKEN) + odr;
        messageParamSaveService.save(next, oda, unitOdoTemp);
    }
}
