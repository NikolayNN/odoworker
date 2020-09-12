package by.aurorasoft.odoworker.odoworker.repository;

import by.aurorasoft.odoworker.odoworker.domain.Message;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.time.Instant;
import java.util.List;
import java.util.Optional;

public interface MessageRepository extends JpaRepository<Message, Long> {

    @Query(value = "SELECT id, datetime, latitude, longitude, altitude, params " +
            "FROM message WHERE unit_id = ?1 and datetime >= ?2 and datetime <= ?3 ORDER BY datetime", nativeQuery = true)
    List<Message> findMessagesForUnitBetweenDatetimes(Long unitId, Instant start, Instant finish);

    @Query(value = "SELECT id, datetime, latitude, longitude, altitude, speed, amount_satellite, course, params " +
            "from message where unit_id = ?1 AND datetime > '2017-01-01' Order By datetime ASC LIMIT 1", nativeQuery = true)
    Optional<Message> findFirstMessageForUnit(Long unitId);

    @Query(value = "SELECT id, datetime, latitude, longitude, altitude, speed, amount_satellite, course, params " +
            "from message where unit_id = ?1 AND datetime > '2017-01-01' Order By datetime DESC LIMIT 1", nativeQuery = true)
    Optional<Message> findLastMessageForUnit(Long unitId);

    @Query(value = "SELECT id, datetime, latitude, longitude, altitude, params " +
            "FROM message WHERE unit_id = ?1 ORDER BY datetime", nativeQuery = true)
    List<Message> findAllByUnitId(Long unitId);
}
