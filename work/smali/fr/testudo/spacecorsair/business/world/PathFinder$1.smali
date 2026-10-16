.class synthetic Lfr/testudo/spacecorsair/business/world/PathFinder$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/business/world/PathFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 27
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/LevelId;->values()[Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    :try_start_9
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->GENESIS:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_17c

    :goto_14
    :try_start_14
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->PLANCK_PRIDE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_179

    :goto_1f
    :try_start_1f
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->THOR_PASSING:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_176

    :goto_2a
    :try_start_2a
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->VENTOHIGH:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_173

    :goto_35
    :try_start_35
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->CONSTELLATION:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_170

    :goto_40
    :try_start_40
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->PIRATE_BAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_16d

    :goto_4b
    :try_start_4b
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->TWIN_STAR:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_16a

    :goto_56
    :try_start_56
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->HUGO_WISDOM:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_167

    :goto_62
    :try_start_62
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->ORE_BELT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_164

    :goto_6e
    :try_start_6e
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->HERMES:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_161

    :goto_7a
    :try_start_7a
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->HELIOSTAT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_15e

    :goto_86
    :try_start_86
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->SPARTAN_HQ:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_15b

    :goto_92
    :try_start_92
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->TUTORIAL:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9e} :catch_158

    :goto_9e
    :try_start_9e
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->THE_WAVE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_aa} :catch_155

    :goto_aa
    :try_start_aa
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->GALACTIC_ARENA:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b6} :catch_152

    :goto_b6
    :try_start_b6
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->SOLAR_FIELD:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c2} :catch_14f

    :goto_c2
    :try_start_c2
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->ORION:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_ce
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c2 .. :try_end_ce} :catch_14d

    :goto_ce
    :try_start_ce
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->OMICRON_PRIME:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_da
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ce .. :try_end_da} :catch_14b

    :goto_da
    :try_start_da
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->THE_VAULT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_e6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_da .. :try_end_e6} :catch_149

    :goto_e6
    :try_start_e6
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->AERIA_PASSING:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_f2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e6 .. :try_end_f2} :catch_147

    :goto_f2
    :try_start_f2
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->ETERNITY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_fe
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f2 .. :try_end_fe} :catch_145

    :goto_fe
    :try_start_fe
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->LOST_PARADISE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_10a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fe .. :try_end_10a} :catch_143

    :goto_10a
    :try_start_10a
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->GREEN_BORDER:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_116
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10a .. :try_end_116} :catch_141

    :goto_116
    :try_start_116
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->DELTA_NODE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_122
    .catch Ljava/lang/NoSuchFieldError; {:try_start_116 .. :try_end_122} :catch_13f

    :goto_122
    :try_start_122
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->THE_HIVE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_12e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_122 .. :try_end_12e} :catch_13d

    :goto_12e
    :try_start_12e
    sget-object v0, Lfr/testudo/spacecorsair/business/world/PathFinder$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->HIGHWAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_13a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12e .. :try_end_13a} :catch_13b

    :goto_13a
    return-void

    :catch_13b
    move-exception v0

    goto :goto_13a

    :catch_13d
    move-exception v0

    goto :goto_12e

    :catch_13f
    move-exception v0

    goto :goto_122

    :catch_141
    move-exception v0

    goto :goto_116

    :catch_143
    move-exception v0

    goto :goto_10a

    :catch_145
    move-exception v0

    goto :goto_fe

    :catch_147
    move-exception v0

    goto :goto_f2

    :catch_149
    move-exception v0

    goto :goto_e6

    :catch_14b
    move-exception v0

    goto :goto_da

    :catch_14d
    move-exception v0

    goto :goto_ce

    :catch_14f
    move-exception v0

    goto/16 :goto_c2

    :catch_152
    move-exception v0

    goto/16 :goto_b6

    :catch_155
    move-exception v0

    goto/16 :goto_aa

    :catch_158
    move-exception v0

    goto/16 :goto_9e

    :catch_15b
    move-exception v0

    goto/16 :goto_92

    :catch_15e
    move-exception v0

    goto/16 :goto_86

    :catch_161
    move-exception v0

    goto/16 :goto_7a

    :catch_164
    move-exception v0

    goto/16 :goto_6e

    :catch_167
    move-exception v0

    goto/16 :goto_62

    :catch_16a
    move-exception v0

    goto/16 :goto_56

    :catch_16d
    move-exception v0

    goto/16 :goto_4b

    :catch_170
    move-exception v0

    goto/16 :goto_40

    :catch_173
    move-exception v0

    goto/16 :goto_35

    :catch_176
    move-exception v0

    goto/16 :goto_2a

    :catch_179
    move-exception v0

    goto/16 :goto_1f

    :catch_17c
    move-exception v0

    goto/16 :goto_14
.end method
