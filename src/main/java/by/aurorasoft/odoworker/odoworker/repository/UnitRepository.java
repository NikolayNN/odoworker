package by.aurorasoft.odoworker.odoworker.repository;

import by.aurorasoft.odoworker.odoworker.domain.Unit;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface UnitRepository extends JpaRepository<Unit, Long> {

    @Override
    @Query(value = "SELECT id, unit_name FROM unit where deleted = false ORDER BY id desc", nativeQuery = true)
    List<Unit> findAll();

    @Query(value = "SELECT id, unit_name FROM unit where id >= :minId AND id <= :maxId AND deleted = false ORDER BY id desc", nativeQuery = true)
    List<Unit> findAll(long minId, long maxId);


    @Query(value = "select u.id, u.unit_name from unit_data d " +
            "JOIN message m " +
            "ON d.last_message_id = m.id AND d.last_message_datetime = m.datetime " +
            "JOIN unit u " +
            "  ON u.id = d.unit_id " +
            "                        WHERE params NOT LIKE '%_odv%'  AND u.deleted = false and d.unit_id >= :minId AND d.unit_id <= :maxId " +
            "                        ORDER by d.unit_id ASC", nativeQuery = true)
    List<Unit> findAllToHandle(long minId, long maxId);
}
