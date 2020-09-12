package by.aurorasoft.odoworker.odoworker.domain;

import java.util.Locale;

public class Messages {

    public static final String ABSOLUTE_ODO_TOKEN = "oda";

    public static final String VALUE_TYPE = ":1:";
    public static final String VALUE_SEPARATOR = ",";

    public static void addParameter(Message m, String key, double value) {
        addParameter(m, key, String.format(Locale.ENGLISH, "%.1f", value));
    }

    public static void addAbsoluteOdo(Message m, double v) {
        addParameter(m, ABSOLUTE_ODO_TOKEN, v);
    }

    private static void addParameter(Message m, String key, String value) {
        if (m.getParams() == null) {
            m.setParams("");
        }
        if (m.getParams().contains(key)) {
            System.out.println("Key exist");
            return;
        }
        StringBuilder b = new StringBuilder(m.getParams());
        if (m.getParams().length() > 0) {
            b.append(VALUE_SEPARATOR);
        }
        b.append(key).append(VALUE_TYPE).append(value);
        m.setParams(b.toString());
    }
}
