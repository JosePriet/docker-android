.class final Lfr/testudo/spacecorsair/mod/ModMonoData;
.super Ljava/lang/Object;
.source "ModMonoData.java"


# static fields
.field static final AURA_PAD:F = 1.25f

.field static final HULL:[F

.field static final PIVOT_X:F = 323.7f

.field static final PIVOT_Y:F = 299.1f

.field static final S4:[F

.field static final TE_ANG:[F

.field static final TE_L:[F

.field static final TE_LEN:[F

.field static final WING_L:[F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0x70

    const/4 v1, 0x5

    .line 10
    new-array v0, v2, [F

    fill-array-data v0, :array_32

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModMonoData;->HULL:[F

    .line 11
    const/16 v0, 0x38

    new-array v0, v0, [F

    fill-array-data v0, :array_116

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModMonoData;->WING_L:[F

    .line 12
    new-array v0, v2, [F

    fill-array-data v0, :array_18a

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModMonoData;->S4:[F

    .line 14
    const/16 v0, 0xa

    new-array v0, v0, [F

    fill-array-data v0, :array_26e

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModMonoData;->TE_L:[F

    .line 16
    new-array v0, v1, [F

    fill-array-data v0, :array_286

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModMonoData;->TE_ANG:[F

    .line 17
    new-array v0, v1, [F

    fill-array-data v0, :array_294

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModMonoData;->TE_LEN:[F

    return-void

    .line 10
    :array_32
    .array-data 4
        0x43a60000    # 332.0f
        0x43d70000    # 430.0f
        -0x40810625    # -0.996f
        0x3dae147b    # 0.085f
        0x43a60000    # 332.0f
        0x43c18000    # 387.0f
        -0x40841893    # -0.984f
        0x3e374bc7    # 0.179f
        0x438a8000    # 277.0f
        0x438e0000    # 284.0f
        -0x40958106    # -0.916f
        -0x41333333    # -0.4f
        0x43900000    # 288.0f
        0x43850000    # 266.0f
        -0x40c24dd3    # -0.741f
        -0x40d43958    # -0.671f
        0x43ab0000    # 342.0f
        0x43060000    # 134.0f
        -0x41204189    # -0.437f
        -0x4099999a    # -0.9f
        0x43b18000    # 355.0f
        0x430d0000    # 141.0f
        0x3ee7ef9e    # 0.453f
        -0x409ba5e3    # -0.892f
        0x43f68000    # 493.0f
        0x429a0000    # 77.0f
        -0x422f1aa0    # -0.102f
        -0x408147ae    # -0.995f
        0x44050000    # 532.0f
        0x42a20000    # 81.0f
        0x3da3d70a    # 0.08f
        -0x4080c49c    # -0.997f
        0x4427c000    # 671.0f
        0x430a0000    # 138.0f
        -0x411f3b64    # -0.439f
        -0x4099db23    # -0.899f
        0x442a8000    # 682.0f
        0x43070000    # 135.0f
        0x3eec8b44    # 0.462f
        -0x409ced91    # -0.887f
        0x4437c000    # 735.0f
        0x43848000    # 265.0f
        0x3f4bc6a8    # 0.796f
        -0x40e51eb8    # -0.605f
        0x443a4000    # 745.0f
        0x43900000    # 288.0f
        0x3f69fbe7    # 0.914f
        -0x413020c5    # -0.406f
        0x442cc000    # 691.0f
        0x43c18000    # 387.0f
        0x3f7ae148    # 0.98f
        0x3e4ccccd    # 0.2f
        0x442c8000    # 690.0f
        0x43d70000    # 430.0f
        0x3f76c8b4    # 0.964f
        0x3e883127    # 0.266f
        0x442a4000    # 681.0f
        0x43fa8000    # 501.0f
        0x3f7b22d1    # 0.981f
        0x3e449ba6    # 0.192f
        0x442a4000    # 681.0f
        0x44048000    # 530.0f
        0x3f781062    # 0.969f
        0x3e7df3b6    # 0.248f
        0x44268000    # 666.0f
        0x44144000    # 593.0f
        0x3f656042    # 0.896f
        0x3ee2d0e5    # 0.443f
        0x44228000    # 650.0f
        0x44210000    # 644.0f
        0x3f7e76c9    # 0.994f
        0x3de147ae    # 0.11f
        0x442a4000    # 681.0f
        0x44484000    # 801.0f
        0x3ea66666    # 0.325f
        0x3f722d0e    # 0.946f
        0x44220000    # 648.0f
        0x44538000    # 846.0f
        0x3e2d0e56    # 0.169f
        0x3f7c6a7f    # 0.986f
        0x44000000    # 512.0f
        0x446b8000    # 942.0f
        0x3dac0831    # 0.084f
        0x3f7ef9db    # 0.996f
        0x43ff8000    # 511.0f
        0x446b8000    # 942.0f
        -0x4190624e    # -0.234f
        0x3f78d4fe    # 0.972f
        0x43bb8000    # 375.0f
        0x44538000    # 846.0f
        -0x41591687    # -0.326f
        0x3f71eb85    # 0.945f
        0x43ae0000    # 348.0f
        0x44454000    # 789.0f
        -0x41181062    # -0.453f
        0x3f645a1d    # 0.892f
        0x43ba8000    # 373.0f
        0x44210000    # 644.0f
        -0x40804189    # -0.999f
        0x3d1374bc    # 0.036f
        0x43b28000    # 357.0f
        0x44144000    # 593.0f
        -0x409c6a7f    # -0.889f
        0x3eea7efa    # 0.458f
        0x43ab8000    # 343.0f
        0x44050000    # 532.0f
        -0x4090a3d7    # -0.935f
        0x3eb5c28f    # 0.355f
        0x43ab0000    # 342.0f
        0x43fa8000    # 501.0f
        -0x4083d70a    # -0.985f
        0x3e3020c5    # 0.172f
    .end array-data

    .line 11
    :array_116
    .array-data 4
        0x435a0000    # 218.0f
        0x43d20000    # 420.0f
        -0x4080c49c    # -0.997f
        -0x425e353f    # -0.079f
        0x43610000    # 225.0f
        0x43b38000    # 359.0f
        -0x40ad9168    # -0.822f
        -0x40ee147b    # -0.57f
        0x43828000    # 261.0f
        0x43800000    # 256.0f
        -0x409cac08    # -0.888f
        -0x4114fdf4    # -0.459f
        0x43a78000    # 335.0f
        0x434d0000    # 205.0f
        0x3e29fbe7    # 0.166f
        -0x40839581    # -0.986f
        0x43b70000    # 366.0f
        0x435b0000    # 219.0f
        0x3ede353f    # 0.434f
        -0x40995810    # -0.901f
        0x43ba0000    # 372.0f
        0x43c00000    # 384.0f
        0x3f7eb852    # 0.995f
        -0x422d0e56    # -0.103f
        0x43bd0000    # 378.0f
        0x43d70000    # 430.0f
        0x3f800000    # 1.0f
        0x0
        0x43bd0000    # 378.0f
        0x43f80000    # 496.0f
        0x3f800000    # 1.0f
        0x0
        0x43bc0000    # 376.0f
        0x4408c000    # 547.0f
        0x3f6e5604    # 0.931f
        0x3ebae148    # 0.365f
        0x43b40000    # 360.0f
        0x442b8000    # 686.0f
        0x3f6624dd    # 0.899f
        0x3ee0c49c    # 0.439f
        0x43a30000    # 326.0f
        0x44458000    # 790.0f
        0x3e10624e    # 0.141f
        0x3f7d70a4    # 0.99f
        0x43858000    # 267.0f
        0x4420c000    # 643.0f
        -0x40856042    # -0.979f
        0x3e4ed917    # 0.202f
        0x43640000    # 228.0f
        0x440cc000    # 563.0f
        -0x408f5c29    # -0.94f
        0x3eae978d    # 0.341f
        0x43560000    # 214.0f
        0x43f08000    # 481.0f
        -0x4086e979    # -0.973f
        0x3e6d9168    # 0.232f
    .end array-data

    .line 12
    :array_18a
    .array-data 4
        0x43600000    # 224.0f
        0x43c70000    # 398.0f
        -0x408147ae    # -0.995f
        -0x423126e9    # -0.101f
        0x43630000    # 227.0f
        0x43b60000    # 364.0f
        -0x408f5c29    # -0.94f
        -0x4151eb85    # -0.34f
        0x43838000    # 263.0f
        0x43830000    # 262.0f
        -0x4096872b    # -0.912f
        -0x412e147b    # -0.41f
        0x43860000    # 268.0f
        0x437a0000    # 250.0f
        -0x40afdf3b    # -0.813f
        -0x40eb020c    # -0.582f
        0x43ae0000    # 348.0f
        0x43140000    # 148.0f
        -0x411eb852    # -0.44f
        -0x409a1cac    # -0.898f
        0x43b90000    # 370.0f
        0x43240000    # 164.0f
        0x3f1db22d    # 0.616f
        -0x40b6872b    # -0.787f
        0x43f58000    # 491.0f
        0x42ca0000    # 101.0f
        -0x426c8b44    # -0.072f
        -0x4080c49c    # -0.997f
        0x4404c000    # 531.0f
        0x42ca0000    # 101.0f
        -0x42666666    # -0.075f
        -0x4080c49c    # -0.997f
        0x44234000    # 653.0f
        0x43240000    # 164.0f
        -0x40e41893    # -0.609f
        -0x40b4fdf4    # -0.793f
        0x4428c000    # 675.0f
        0x43130000    # 147.0f
        0x3e9c28f6    # 0.305f
        -0x408c49ba    # -0.952f
        0x443c8000    # 754.0f
        0x437a0000    # 250.0f
        0x3f4978d5    # 0.787f
        -0x40e20c4a    # -0.617f
        0x443dc000    # 759.0f
        0x43830000    # 262.0f
        0x3f6b851f    # 0.92f
        -0x41374bc7    # -0.392f
        0x4446c000    # 795.0f
        0x43b60000    # 364.0f
        0x3f6c0831    # 0.922f
        -0x4139db23    # -0.387f
        0x44478000    # 798.0f
        0x43c50000    # 394.0f
        0x3f7ef9db    # 0.996f
        -0x4247ae14    # -0.09f
        0x4448c000    # 803.0f
        0x43ed8000    # 475.0f
        0x3f774bc7    # 0.966f
        0x3e849ba6    # 0.259f
        0x44430000    # 780.0f
        0x44124000    # 585.0f
        0x3f6d9168    # 0.928f
        0x3ebe76c9    # 0.372f
        0x443b8000    # 750.0f
        0x44224000    # 649.0f
        0x3f800000    # 1.0f
        0x3c449ba6    # 0.012f
        0x44330000    # 716.0f
        0x44328000    # 714.0f
        0x3f66a7f0    # 0.901f
        0x3ede353f    # 0.434f
        0x442e4000    # 697.0f
        0x443cc000    # 755.0f
        0x3e9eb852    # 0.31f
        0x3f7374bc    # 0.951f
        0x441c4000    # 625.0f
        0x443f8000    # 766.0f
        0x3e3b645a    # 0.183f
        0x3f7ba5e3    # 0.983f
        0x44000000    # 512.0f
        0x44594000    # 869.0f
        0x3b449ba6    # 0.003f
        0x3f800000    # 1.0f
        0x43ff8000    # 511.0f
        0x44590000    # 868.0f
        -0x4152f1aa    # -0.338f
        0x3f70e560    # 0.941f
        0x43c58000    # 395.0f
        0x44400000    # 768.0f
        -0x4153f7cf    # -0.336f
        0x3f7126e9    # 0.942f
        0x43a30000    # 326.0f
        0x443d0000    # 756.0f
        -0x412353f8    # -0.431f
        0x3f66e979    # 0.902f
        0x43998000    # 307.0f
        0x44328000    # 714.0f
        -0x409ba5e3    # -0.892f
        0x3ee76c8b    # 0.452f
        0x43888000    # 273.0f
        0x44220000    # 648.0f
        -0x40800000    # -1.0f
        -0x43fced91    # -0.008f
        0x43730000    # 243.0f
        0x44128000    # 586.0f
        -0x40926e98    # -0.928f
        0x3ebe76c9    # 0.372f
        0x435b0000    # 219.0f
        0x43eb8000    # 471.0f
        -0x40818937    # -0.994f
        0x3dd91687    # 0.106f
    .end array-data

    .line 14
    :array_26e
    .array-data 4
        0x43a28000    # 325.0f
        0x44438000    # 782.0f
        0x43af0000    # 350.0f
        0x442c8000    # 690.0f
        0x43b80000    # 368.0f
        0x44160000    # 600.0f
        0x43b90000    # 370.0f
        0x43fc8000    # 505.0f
        0x43b90000    # 370.0f
        0x43cd0000    # 410.0f
    .end array-data

    .line 16
    :array_286
    .array-data 4
        0x41900000    # 18.0f
        0x42200000    # 40.0f
        0x42680000    # 58.0f
        0x42900000    # 72.0f
        0x42a80000    # 84.0f
    .end array-data

    .line 17
    :array_294
    .array-data 4
        0x43be0000    # 380.0f
        0x43b40000    # 360.0f
        0x43a50000    # 330.0f
        0x43960000    # 300.0f
        0x43820000    # 260.0f
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
