package by.aurorasoft.odoworker.odoworker.domain;

import org.junit.jupiter.api.Test;

import java.time.Instant;

import static org.junit.jupiter.api.Assertions.*;

class MessagesTest {

    @Test
    void addParameter() {
        Message given = message(1L, "");
        Messages.addAbsoluteOdo(given, 1000);
        assertEquals("_odv:1:1000.0", given.getParams());
    }

    @Test
    void addParameter_ifParamsNull() {
        Message given = message(1L, null);
        Messages.addAbsoluteOdo(given, 1000);
        assertEquals("_odv:1:1000.0", given.getParams());
    }

    @Test
    void addParameter2() {
        Message given = message(1L, "");
        Messages.addAbsoluteOdo(given, 1000.1);
        assertEquals("_odv:1:1000.1", given.getParams());
    }

    @Test
    void addParameter3() {
        Message given = message(1L, "");
        Messages.addAbsoluteOdo(given, 1000.12);
        assertEquals("_odv:1:1000.1", given.getParams());
    }

    @Test
    void addParameter4() {
        Message given = message(1L, "");
        Messages.addAbsoluteOdo(given, 1000.15);
        assertEquals("_odv:1:1000.2", given.getParams());
    }

    @Test
    void addParameter5() {
        Message given = message(1L, "");
        Messages.addAbsoluteOdo(given, 1000000000);
        assertEquals("_odv:1:1000000000.0", given.getParams());
    }

    @Test
    void addParameter6() {
        Message given = message(1L, "");
        Messages.addAbsoluteOdo(given, 1000000000.195432234);
        assertEquals("_odv:1:1000000000.2", given.getParams());
    }

    @Test
    void addParameterIfOneParam() {
        Message given = message(1L, "100:1:200");
        Messages.addAbsoluteOdo(given, 1000);
        assertEquals("100:1:200,_odv:1:1000.0", given.getParams());
    }

    @Test
    void addParameterIfTwoParam() {
        Message given = message(1L, "100:1:200,5:1:1");
        Messages.addAbsoluteOdo(given, 1000);
        assertEquals("100:1:200,5:1:1,_odv:1:1000.0", given.getParams());
    }

    private Message message(Long id, String params){
        Message m = new Message();
        m.setId(id);
        m.setDatetime(Instant.ofEpochSecond(0));
        m.setLatitude(0);
        m.setLongitude(0);
        m.setAltitude(0);
        m.setParams(params);
        return m;
    }
}
