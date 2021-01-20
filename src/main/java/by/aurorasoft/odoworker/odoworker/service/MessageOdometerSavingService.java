package by.aurorasoft.odoworker.odoworker.service;

import by.aurorasoft.odoworker.odoworker.domain.Message;
import by.aurorasoft.odoworker.odoworker.domain.Messages;
import by.aurorasoft.odoworker.odoworker.domain.UnitOdoTemp;
import by.aurorasoft.odoworker.odoworker.repository.MessageRepository;
import by.aurorasoft.odoworker.odoworker.repository.UnitOdoTempRepository;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Slf4j
@Service
@AllArgsConstructor
public class MessageOdometerSavingService {

    private final MessageRepository messageRepository;
    private final UnitOdoTempRepository unitOdoTempRepository;

    @Transactional
    public void save(Message m, double oda, UnitOdoTemp unitOdoTemp) {
        Messages.addAbsoluteOdo(m, oda);
        log.debug("update odo message: " + m.getId());
        messageRepository.save(m);
        save(m, unitOdoTemp);
    }

    public void save(Message m, UnitOdoTemp unitOdoTemp){
        log.debug("update unit_odo_temp message: " + m.getId());
        unitOdoTemp.setLastDatetime(m.getDatetime());
        unitOdoTemp.setLastMessageId(m.getId());
        unitOdoTempRepository.save(unitOdoTemp);
    }
}
