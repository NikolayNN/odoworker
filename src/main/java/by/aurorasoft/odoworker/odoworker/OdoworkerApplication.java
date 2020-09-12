package by.aurorasoft.odoworker.odoworker;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"by.nhorushko.distancecalculator", "by.aurorasoft.odoworker"})
public class OdoworkerApplication {

    public static void main(String[] args) {
        SpringApplication.run(OdoworkerApplication.class, args);
    }

}
