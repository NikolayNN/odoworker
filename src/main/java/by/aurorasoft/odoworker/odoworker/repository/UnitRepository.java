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
}
