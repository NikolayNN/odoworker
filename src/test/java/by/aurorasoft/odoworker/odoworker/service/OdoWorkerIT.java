package by.aurorasoft.odoworker.odoworker.service;

import by.aurorasoft.odoworker.odoworker.domain.Message;
import by.aurorasoft.odoworker.odoworker.domain.Messages;
import by.aurorasoft.odoworker.odoworker.repository.MessageRepository;
import by.nhorushko.distancecalculator.DistanceCalculator;
import by.nhorushko.distancecalculator.LatLngAltImpl;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.jdbc.Sql;

import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;

@SpringBootTest
class OdoWorkerIT {

    @Autowired
    private OdoWorker odoWorker;

    @Autowired
    private MessageRepository messageRepository;

    @Autowired
    private DistanceCalculator distanceCalculator;

    @Test
    @Sql(value = {"classpath:sql/schema.sql"}, executionPhase = Sql.ExecutionPhase.BEFORE_TEST_METHOD)
    @Sql(value = {"classpath:sql/init-temp-odo.sql"}, executionPhase = Sql.ExecutionPhase.BEFORE_TEST_METHOD)
    @Sql(value = {"classpath:sql/unit-9.sql"}, executionPhase = Sql.ExecutionPhase.BEFORE_TEST_METHOD)
    @Sql(value = {"classpath:sql/message-unit-9-small.sql"}, executionPhase = Sql.ExecutionPhase.BEFORE_TEST_METHOD)

    @Sql(value = {"classpath:sql/message-unit-9-del.sql"}, executionPhase = Sql.ExecutionPhase.AFTER_TEST_METHOD)
    @Sql(value = {"classpath:sql/unit-9-del.sql"}, executionPhase = Sql.ExecutionPhase.AFTER_TEST_METHOD)
    void name() {
        odoWorker.start();
        List<Message> messages = messageRepository.findAll();

        assertEquals(5, messages.size());

        assertEquals("_odv:1:0.0", messages.get(0).getParams());
        assertEquals("_odv:1:12.4", messages.get(1).getParams());
        assertEquals("_odv:1:39.7", messages.get(2).getParams());
        assertEquals("_odv:1:44.1", messages.get(3).getParams());
        assertEquals("_odv:1:46.2", messages.get(4).getParams());
    }

    @Test
    @Sql(value = {"classpath:sql/schema.sql"}, executionPhase = Sql.ExecutionPhase.BEFORE_TEST_METHOD)
    @Sql(value = {"classpath:sql/init-temp-odo.sql"}, executionPhase = Sql.ExecutionPhase.BEFORE_TEST_METHOD)
    @Sql(value = {"classpath:sql/unit-9.sql"}, executionPhase = Sql.ExecutionPhase.BEFORE_TEST_METHOD)
    @Sql(value = {"classpath:sql/message-unit-9.sql"}, executionPhase = Sql.ExecutionPhase.BEFORE_TEST_METHOD)

    @Sql(value = {"classpath:sql/message-unit-9-del.sql"}, executionPhase = Sql.ExecutionPhase.AFTER_TEST_METHOD)
    @Sql(value = {"classpath:sql/unit-9-del.sql"}, executionPhase = Sql.ExecutionPhase.AFTER_TEST_METHOD)
    void name2() {
        odoWorker.start();
        Message message = messageRepository.findLastMessageForUnit(9l).get();
        double actual = message.getValue(Messages.ABSOLUTE_ODO_TOKEN);
        double expected = distanceCalculator.calculateDistance(messageRepository.findAllByUnitId(9L));

       assertEquals(expected, actual, 10);
    }

    @Test
    @Sql(value = {"classpath:sql/schema.sql"}, executionPhase = Sql.ExecutionPhase.BEFORE_TEST_METHOD)
    @Sql(value = {"classpath:sql/init-temp-odo.sql"}, executionPhase = Sql.ExecutionPhase.BEFORE_TEST_METHOD)
    @Sql(value = {"classpath:sql/unit-9.sql"}, executionPhase = Sql.ExecutionPhase.BEFORE_TEST_METHOD)
    @Sql(value = {"classpath:sql/message-unit-9-skip-day.sql"}, executionPhase = Sql.ExecutionPhase.BEFORE_TEST_METHOD)

    @Sql(value = {"classpath:sql/message-unit-9-del.sql"}, executionPhase = Sql.ExecutionPhase.AFTER_TEST_METHOD)
    @Sql(value = {"classpath:sql/unit-9-del.sql"}, executionPhase = Sql.ExecutionPhase.AFTER_TEST_METHOD)
    void name3() {
        odoWorker.start();
        Message message = messageRepository.findLastMessageForUnit(9l).get();
        double actual = message.getValue(Messages.ABSOLUTE_ODO_TOKEN);
        double expected = distanceCalculator.calculateDistance(messageRepository.findAllByUnitId(9L));

        assertEquals(expected, actual, 10);
    }

    @Test
    @Sql(value = {"classpath:sql/schema.sql"}, executionPhase = Sql.ExecutionPhase.BEFORE_TEST_METHOD)
    @Sql(value = {"classpath:sql/init-temp-odo.sql"}, executionPhase = Sql.ExecutionPhase.BEFORE_TEST_METHOD)
    @Sql(value = {"classpath:sql/unit-9.sql"}, executionPhase = Sql.ExecutionPhase.BEFORE_TEST_METHOD)
    @Sql(value = {"classpath:sql/message-unit-9-2859.sql"}, executionPhase = Sql.ExecutionPhase.BEFORE_TEST_METHOD)

    @Sql(value = {"classpath:sql/message-unit-9-del.sql"}, executionPhase = Sql.ExecutionPhase.AFTER_TEST_METHOD)
    @Sql(value = {"classpath:sql/unit-9-del.sql"}, executionPhase = Sql.ExecutionPhase.AFTER_TEST_METHOD)
    void name4() {
        odoWorker.start();
        Message message = messageRepository.findLastMessageForUnit(9l).get();
        double actual = message.getValue(Messages.ABSOLUTE_ODO_TOKEN);
        System.out.println("QQQQQ " + actual);
    }
}
