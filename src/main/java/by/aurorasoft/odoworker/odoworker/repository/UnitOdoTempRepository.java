package by.aurorasoft.odoworker.odoworker.repository;

import by.aurorasoft.odoworker.odoworker.domain.UnitOdoTemp;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.Optional;

public interface UnitOdoTempRepository extends JpaRepository<UnitOdoTemp, Long> {

    @Query("SELECT min(e.unitId) FROM UnitOdoTemp e" )
    Optional<Long> findMinUnitId();
}
