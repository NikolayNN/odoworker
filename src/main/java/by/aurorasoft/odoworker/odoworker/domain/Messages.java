package by.aurorasoft.odoworker.odoworker.domain;

import java.util.Locale;

public class Messages {

    public static final String ABSOLUTE_ODO_TOKEN = "_odv";

    public static final String VALUE_TYPE = ":";
    public static final String VALUE_SEPARATOR = ",";

    public static void addParameter(Message m, String key, double value) {
        addParameter(m, key, String.format(Locale.ENGLISH, "%.1f", value));
    }

    public static void addAbsoluteOdo(Message m, double v) {
        addParameter(m, ABSOLUTE_ODO_TOKEN, v);
    }

    public static boolean hasOdoParameter(Message m){
     return hasParameter(m, ABSOLUTE_ODO_TOKEN);
    }

    public static boolean hasParameter(Message m, String parameter){
        return m.getParams().contains(parameter);
    }

    private static void addParameter(Message m, String key, String value) {
        if (m.getParams() == null) {
            m.setParams("");
        }
        if (hasParameter(m, key)) {
            System.out.println("Key exist message: " + m.getId());
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
