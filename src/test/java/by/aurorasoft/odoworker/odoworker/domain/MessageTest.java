package by.aurorasoft.odoworker.odoworker.domain;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class MessageTest {
    @Test
    void name() {
        Message m = new Message();
        m.setParams("21:4,240:1,170:255,171:126,172:0,173:98,174:57,175:6,179:35,180:18,6:1,66:12729,67:4346,24:103,69:1,210:10609,211:4386,212:0,213:10955,214:2,215:0,223:28597,70:36,220:20225,221:120,speed-ds:103,sats-ds:16,_odv:680.8");
        assertEquals(680.8, m.getValue("_odv"));
    }

    @Test
    void name2() {
        Message m = new Message();
        m.setParams("21:4,240:1,170:255,171:126,172:0,173:98,174:57,175:6,179:35,180:18,6:1,66:12729,67:4346,24:103,69:1,210:10609,211:4386,212:0,213:10955,214:2,215:0,223:28597,70:36,220:20225,221:120,speed-ds:103,sats-ds:16,_odv:1");
        assertEquals(1, m.getValue("_odv"));
    }

    @Test
    void name3() {
        Message m = new Message();
        m.setParams("21:4,240:1,170:255,171:126,172:0,173:98,174:57,175:6,179:35,180:18,6:1,66:12729,67:4346,24:103,69:1,210:10609,211:4386,212:0,213:10955,214:2,215:0,223:28597,70:36,220:20225,221:120,speed-ds:103,sats-ds:16,_odv:1000");
        assertEquals(1000, m.getValue("_odv"));
    }

    @Test
    void name4() {
        Message m = new Message();
        m.setParams("21:4,240:1,170:255,171:126,172:0,173:98,174:57,175:6,179:35,180:18,6:1,66:12729,67:4346,24:103,69:1,210:10609,211:4386,212:0,213:10955,214:2,215:0,223:28597,70:36,220:20225,221:120,speed-ds:103,sats-ds:16,_odv:2");
        assertEquals(2, m.getValue("_odv"));
    }

    @Test
    void name5() {
        Message m = new Message();
        m.setParams("21:4,240:1,170:255,171:126,172:0,173:98,174:57,175:6,179:35,180:18,6:1,66:12729,67:4346,24:103,69:1,210:10609,211:4386,212:0,213:10955,214:2,215:0,223:28597,70:36,220:20225,221:120,speed-ds:103,sats-ds:16,_odv:1000000.2");
        assertEquals(1000000.2, m.getValue("_odv"));
    }
}
