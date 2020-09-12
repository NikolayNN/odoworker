package by.aurorasoft.odoworker.odoworker.service;

import by.aurorasoft.odoworker.odoworker.domain.Message;
import by.aurorasoft.odoworker.odoworker.domain.Messages;
import by.aurorasoft.odoworker.odoworker.domain.Unit;
import by.aurorasoft.odoworker.odoworker.domain.UnitOdoTemp;
import by.aurorasoft.odoworker.odoworker.repository.MessageRepository;
import by.aurorasoft.odoworker.odoworker.repository.UnitDataRepository;
import by.aurorasoft.odoworker.odoworker.repository.UnitOdoTempRepository;
import by.aurorasoft.odoworker.odoworker.repository.UnitRepository;
import by.nhorushko.distancecalculator.DistanceCalculator;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.scheduling.annotation.Scheduled;
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

    @Scheduled(fixedDelay = 86400)
    public void start() {
        log.debug("#### start ####");
        List<Unit> units = unitRepository.findAll();
        for (Unit unit : units) {
            log.debug("start unit: {}", unit);
            Optional<UnitOdoTemp> optional = unitOdoTempRepository.findById(unit.getId());
            if (optional.isEmpty()) {
                Optional<Message> firstMessageOptional = messageRepository.findFirstMessageForUnit(unit.getId());
                if (firstMessageOptional.isEmpty()) {
                    continue;
                }
                optional = Optional.of(new UnitOdoTemp(unit.getId(), firstMessageOptional.get().getDatetime()));
            }
            log.debug("unit: {} start from: {}", unit, optional.get());
            processMessages(optional.get());
        }
        log.debug("#### end ####");
    }

    private void processMessages(UnitOdoTemp unitOdoTemp) {
        Instant start = unitOdoTemp.getLastDatetime();
        Instant finish = unitDataRepository.findById(unitOdoTemp.getUnitId()).get().getLastMessage().getDatetime();
        while (start.isBefore(finish) ) {
            Instant end = start.plusSeconds(PACE);
            log.debug("unit: {} try get messages between {} - {}", unitOdoTemp.getUnitId(), start, end);
            final List<Message> messages = messageRepository.findMessagesForUnitBetweenDatetimes(unitOdoTemp.getUnitId(), start, end);
            log.debug("unit: {} received messages count: {}", unitOdoTemp.getUnitId(), messages.size());
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
                messageParamSaveService.save(prev, 0,  unitOdoTemp);
            }
            while (iterator.hasNext()) {
                Message next = iterator.next();
                convert(prev, next, unitOdoTemp);
                prev = next;
            }
            start = end;
        }
    }

    private void convert(Message prev, Message next, UnitOdoTemp unitOdoTemp) {
        double odr = distanceCalculator.calculateDistanceBetween(prev, next);
        double oda = prev.getValue(ABSOLUTE_ODO_TOKEN) + odr;
        messageParamSaveService.save(next, oda, unitOdoTemp);
    }
}
