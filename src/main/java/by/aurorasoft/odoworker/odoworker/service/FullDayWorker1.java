package by.aurorasoft.odoworker.odoworker.service;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import java.time.Instant;

@Slf4j
@Service
@AllArgsConstructor
public class FullDayWorker1 {

    private final OdoWorker odoWorker;

    private static final long minId = 1;
    private static final long maxId = 3000;
    private static final long workTime = 0;

    @Scheduled(fixedDelay = 60000)
    public void start() {
        log.info("#### start worker 1 ####");
        odoWorker.mainWorker(minId, maxId, getStopTime(workTime), true);
        log.debug("#### end ####");
    }

    private Instant getStopTime(long duration) {
        return duration == 0 ? null : Instant.now().plusSeconds(duration);
    }
}
