.class synthetic Lfr/testudo/spacecorsair/business/world/civil/CivilShip$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/business/world/civil/CivilShip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$fr$testudo$spacecorsair$business$world$civil$CivilActivity$Kind:[I

.field static final synthetic $SwitchMap$fr$testudo$spacecorsair$business$world$civil$CivilShip$SelfDefenseStatus:[I

.field static final synthetic $SwitchMap$fr$testudo$spacecorsair$business$world$civil$CivilState:[I

.field static final synthetic $SwitchMap$fr$testudo$spacecorsair$business$world$civil$CivilType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 704
    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilType;->values()[Lfr/testudo/spacecorsair/business/world/civil/CivilType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$1;->$SwitchMap$fr$testudo$spacecorsair$business$world$civil$CivilType:[I

    :try_start_9
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$1;->$SwitchMap$fr$testudo$spacecorsair$business$world$civil$CivilType:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilType;->TURTULE:Lfr/testudo/spacecorsair/business/world/civil/CivilType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_125

    :goto_14
    :try_start_14
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$1;->$SwitchMap$fr$testudo$spacecorsair$business$world$civil$CivilType:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilType;->SQUID:Lfr/testudo/spacecorsair/business/world/civil/CivilType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_122

    :goto_1f
    :try_start_1f
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$1;->$SwitchMap$fr$testudo$spacecorsair$business$world$civil$CivilType:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilType;->TRANSPORTEUR:Lfr/testudo/spacecorsair/business/world/civil/CivilType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_11f

    :goto_2a
    :try_start_2a
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$1;->$SwitchMap$fr$testudo$spacecorsair$business$world$civil$CivilType:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilType;->GUARDIAN:Lfr/testudo/spacecorsair/business/world/civil/CivilType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_11c

    .line 244
    :goto_35
    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;->values()[Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$1;->$SwitchMap$fr$testudo$spacecorsair$business$world$civil$CivilShip$SelfDefenseStatus:[I

    :try_start_3e
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$1;->$SwitchMap$fr$testudo$spacecorsair$business$world$civil$CivilShip$SelfDefenseStatus:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;->peacefull:Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_119

    :goto_49
    :try_start_49
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$1;->$SwitchMap$fr$testudo$spacecorsair$business$world$civil$CivilShip$SelfDefenseStatus:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;->target_engaged:Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_116

    .line 203
    :goto_54
    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;->values()[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$1;->$SwitchMap$fr$testudo$spacecorsair$business$world$civil$CivilActivity$Kind:[I

    :try_start_5d
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$1;->$SwitchMap$fr$testudo$spacecorsair$business$world$civil$CivilActivity$Kind:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;->mooveUntilNextToPlayer:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_68
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_68} :catch_113

    :goto_68
    :try_start_68
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$1;->$SwitchMap$fr$testudo$spacecorsair$business$world$civil$CivilActivity$Kind:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;->moove:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_68 .. :try_end_73} :catch_110

    :goto_73
    :try_start_73
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$1;->$SwitchMap$fr$testudo$spacecorsair$business$world$civil$CivilActivity$Kind:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;->mooveRandom:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_7e} :catch_10d

    :goto_7e
    :try_start_7e
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$1;->$SwitchMap$fr$testudo$spacecorsair$business$world$civil$CivilActivity$Kind:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;->mooveNextPortal:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_89} :catch_10a

    :goto_89
    :try_start_89
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$1;->$SwitchMap$fr$testudo$spacecorsair$business$world$civil$CivilActivity$Kind:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;->wait:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_94
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_94} :catch_108

    :goto_94
    :try_start_94
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$1;->$SwitchMap$fr$testudo$spacecorsair$business$world$civil$CivilActivity$Kind:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;->diseapear:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_94 .. :try_end_9f} :catch_106

    :goto_9f
    :try_start_9f
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$1;->$SwitchMap$fr$testudo$spacecorsair$business$world$civil$CivilActivity$Kind:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;->lockAsteroidAndGather:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_aa} :catch_104

    :goto_aa
    :try_start_aa
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$1;->$SwitchMap$fr$testudo$spacecorsair$business$world$civil$CivilActivity$Kind:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;->waitUntilPlayerClose:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b6} :catch_102

    :goto_b6
    :try_start_b6
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$1;->$SwitchMap$fr$testudo$spacecorsair$business$world$civil$CivilActivity$Kind:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;->openMobileShop:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c2} :catch_100

    .line 139
    :goto_c2
    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->values()[Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$1;->$SwitchMap$fr$testudo$spacecorsair$business$world$civil$CivilState:[I

    :try_start_cb
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$1;->$SwitchMap$fr$testudo$spacecorsair$business$world$civil$CivilState:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->IDLE:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_d6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cb .. :try_end_d6} :catch_fe

    :goto_d6
    :try_start_d6
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$1;->$SwitchMap$fr$testudo$spacecorsair$business$world$civil$CivilState:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ACTIVITY:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_e1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d6 .. :try_end_e1} :catch_fc

    :goto_e1
    :try_start_e1
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$1;->$SwitchMap$fr$testudo$spacecorsair$business$world$civil$CivilState:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ATTACK_TARGET:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_ec
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e1 .. :try_end_ec} :catch_fa

    :goto_ec
    :try_start_ec
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$1;->$SwitchMap$fr$testudo$spacecorsair$business$world$civil$CivilState:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ESCAPE:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_f7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ec .. :try_end_f7} :catch_f8

    :goto_f7
    return-void

    :catch_f8
    move-exception v0

    goto :goto_f7

    :catch_fa
    move-exception v0

    goto :goto_ec

    :catch_fc
    move-exception v0

    goto :goto_e1

    :catch_fe
    move-exception v0

    goto :goto_d6

    .line 203
    :catch_100
    move-exception v0

    goto :goto_c2

    :catch_102
    move-exception v0

    goto :goto_b6

    :catch_104
    move-exception v0

    goto :goto_aa

    :catch_106
    move-exception v0

    goto :goto_9f

    :catch_108
    move-exception v0

    goto :goto_94

    :catch_10a
    move-exception v0

    goto/16 :goto_89

    :catch_10d
    move-exception v0

    goto/16 :goto_7e

    :catch_110
    move-exception v0

    goto/16 :goto_73

    :catch_113
    move-exception v0

    goto/16 :goto_68

    .line 244
    :catch_116
    move-exception v0

    goto/16 :goto_54

    :catch_119
    move-exception v0

    goto/16 :goto_49

    .line 704
    :catch_11c
    move-exception v0

    goto/16 :goto_35

    :catch_11f
    move-exception v0

    goto/16 :goto_2a

    :catch_122
    move-exception v0

    goto/16 :goto_1f

    :catch_125
    move-exception v0

    goto/16 :goto_14
.end method
