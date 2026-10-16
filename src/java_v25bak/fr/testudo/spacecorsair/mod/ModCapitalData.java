package fr.testudo.spacecorsair.mod;

/** v22 turret mounts on the ChatGPT flagship art (src/padscan.py + hand-placed, src/data/flagship_mounts_v22.json): fractions of the sprite, +y = stern. */
final class ModCapitalData {
    private ModCapitalData() {}

    static float[] mounts(String key) {
        if ("spartan".equals(key)) return new float[]{-0.0530f, -0.2440f, 0.0530f, -0.2440f, -0.0930f, -0.0947f, 0.0930f, -0.0947f, -0.0977f, 0.0488f, 0.0977f, 0.0488f, -0.1210f, 0.2617f, 0.1210f, 0.2617f};
        if ("reaver".equals(key)) return new float[]{-0.1000f, -0.1387f, 0.1000f, -0.1387f, -0.1010f, 0.0059f, 0.1010f, 0.0059f, -0.1020f, 0.0664f, 0.1020f, 0.0664f, -0.1060f, 0.1807f, 0.1060f, 0.1807f};
        if ("helion".equals(key)) return new float[]{-0.0590f, -0.1533f, 0.0590f, -0.1533f, -0.0590f, -0.0850f, 0.0590f, -0.0850f, -0.0590f, 0.1738f, 0.0590f, 0.1738f, -0.0570f, 0.2490f, 0.0570f, 0.2490f};
        if ("warden".equals(key)) return new float[]{-0.0720f, -0.1338f, 0.0720f, -0.1338f, -0.0720f, -0.0020f, 0.0720f, -0.0020f, -0.0720f, 0.1620f, 0.0720f, 0.1620f, -0.0720f, 0.3008f, 0.0720f, 0.3008f};
        if ("kretari".equals(key)) return new float[]{-0.1238f, -0.1407f, 0.1174f, -0.1390f, -0.1309f, 0.0158f, 0.1244f, 0.0160f, -0.1116f, 0.1113f, 0.1055f, 0.1126f};
        if ("varn".equals(key)) return new float[]{-0.1076f, -0.1536f, 0.1077f, -0.1535f, -0.0973f, -0.0039f, 0.0975f, -0.0042f, -0.0974f, 0.0963f, 0.0981f, 0.0974f, 0.1031f, 0.1743f, -0.1021f, 0.1758f};
        if ("ironclad".equals(key)) return new float[]{-0.3040f, -0.2970f, 0.3036f, -0.2969f, -0.2509f, -0.1040f, 0.2504f, -0.1044f, -0.2573f, 0.1043f, 0.2565f, 0.1048f, -0.3228f, 0.2679f, 0.3225f, 0.2672f};
        return null;
    }
}
