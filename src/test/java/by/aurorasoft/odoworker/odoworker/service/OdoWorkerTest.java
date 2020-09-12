package by.aurorasoft.odoworker.odoworker.service;

import by.aurorasoft.odoworker.odoworker.domain.Unit;
import by.aurorasoft.odoworker.odoworker.repository.MessageRepository;
import by.aurorasoft.odoworker.odoworker.repository.UnitOdoTempRepository;
import by.aurorasoft.odoworker.odoworker.repository.UnitRepository;
import by.nhorushko.distancecalculator.DistanceCalculator;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.mock.mockito.MockBean;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
public class OdoWorkerTest {

    @MockBean
    private UnitRepository unitRepository;
    @MockBean
    private MessageRepository messageRepository;
    @MockBean
    private UnitOdoTempRepository unitOdoTempRepository;
    @MockBean
    private DistanceCalculator distanceCalculator;

    @Autowired
    private OdoWorker odoWorker;

//    @Test
    void test() {
        when(unitRepository.findAll()).thenReturn(List.of(new Unit(1l, "name")));

        odoWorker.start();
    }
}
