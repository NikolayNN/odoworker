package by.aurorasoft.odoworker.odoworker.domain;

import by.nhorushko.distancecalculator.LatLngAlt;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.*;
import java.time.Instant;

@Data
@Entity
@NoArgsConstructor
@Table(name = "message")
public class Message implements LatLngAlt {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "datetime")
    private Instant datetime;

    @Column(name = "speed")
    private int speed;

    @Column(name = "latitude")
    private float latitude;

    @Column(name = "longitude")
    private float longitude;

    /**
     * meters
     */
    @Column(name = "altitude")
    private int altitude;

    /**
     * telemetry data
     * {paramId}:{type}:{value} comma separated
     */
    @Column(name = "params")
    private String params;

    public double getValue(String parameterName) {
        String name = parameterName + ":";
        int start = params.indexOf(name);
        start = start + name.length() + 2;
        int end = params.indexOf(44, start);
        return end == -1 ? Double.parseDouble(params.substring(start)) : Double.parseDouble(params.substring(start, end));
    }
}
