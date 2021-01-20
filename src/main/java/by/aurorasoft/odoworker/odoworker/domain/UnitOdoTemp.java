package by.aurorasoft.odoworker.odoworker.domain;

import lombok.Data;

import javax.persistence.*;
import java.time.Instant;

@Data
@Entity
@Table(name = "unit_odo_temp")
public class UnitOdoTemp {

    @Id
    @Column(name = "unit_id")
    private Long unitId;

    @Column(name = "last_processed_datetime")
    private Instant lastDatetime;

    @Column(name = "last_processed_message_id")
    private Long lastMessage;

    public UnitOdoTemp() {
    }

    public UnitOdoTemp(Long unitId, Instant lastDatetime) {
        this.unitId = unitId;
        this.lastDatetime = lastDatetime;
        this.lastMessage = null;
    }

    public Long getUnitId() {
        return unitId;
    }

    public void setUnitId(Long unitId) {
        this.unitId = unitId;
    }

    public Instant getLastDatetime() {
        return lastDatetime;
    }

    public void setLastDatetime(Instant lastDatetime) {
        this.lastDatetime = lastDatetime;
    }

    public Long getLastMessageId() {
        return lastMessage;
    }

    public void setLastMessageId(Long lastMessage) {
        this.lastMessage = lastMessage;
    }
}
