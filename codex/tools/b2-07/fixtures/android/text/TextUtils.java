package android.text;

import java.util.StringJoiner;

/** The single platform operation used by W18's shop-description probe. */
public final class TextUtils {
    private TextUtils() {}

    public static String join(CharSequence delimiter, Iterable<?> values) {
        StringJoiner joined = new StringJoiner(delimiter);
        for (Object value : values) joined.add(String.valueOf(value));
        return joined.toString();
    }
}
