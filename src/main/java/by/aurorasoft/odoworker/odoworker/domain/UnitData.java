package by.aurorasoft.odoworker.odoworker.domain;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "unit_data")
public class UnitData {

    @Id
    @Column(name="unit_id")
    private Long unitId;

    @OneToOne
    @JoinColumn(name="last_message_id")
    private Message lastMessage;
}
