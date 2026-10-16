.class synthetic Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$fr$testudo$spacecorsair$business$ennemis$EnnemisType:[I

.field static final synthetic $SwitchMap$fr$testudo$spacecorsair$business$mission$engine$DestroyStationMissionEngine$Phase:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 511
    invoke-static {}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->values()[Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$ennemis$EnnemisType:[I

    :try_start_9
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$ennemis$EnnemisType:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->DEFENSOR:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_79

    :goto_14
    :try_start_14
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$ennemis$EnnemisType:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_77

    .line 141
    :goto_1f
    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->values()[Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$DestroyStationMissionEngine$Phase:[I

    :try_start_28
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$DestroyStationMissionEngine$Phase:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->STATION_95:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_75

    :goto_33
    :try_start_33
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$DestroyStationMissionEngine$Phase:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->STATION_75:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_73

    :goto_3e
    :try_start_3e
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$DestroyStationMissionEngine$Phase:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->STATION_50:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_71

    :goto_49
    :try_start_49
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$DestroyStationMissionEngine$Phase:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->STATION_25:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_6f

    :goto_54
    :try_start_54
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$DestroyStationMissionEngine$Phase:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->DESTROY_TARGET:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_6d

    :goto_5f
    :try_start_5f
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$DestroyStationMissionEngine$Phase:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_6b

    :goto_6a
    return-void

    :catch_6b
    move-exception v0

    goto :goto_6a

    :catch_6d
    move-exception v0

    goto :goto_5f

    :catch_6f
    move-exception v0

    goto :goto_54

    :catch_71
    move-exception v0

    goto :goto_49

    :catch_73
    move-exception v0

    goto :goto_3e

    :catch_75
    move-exception v0

    goto :goto_33

    .line 511
    :catch_77
    move-exception v0

    goto :goto_1f

    :catch_79
    move-exception v0

    goto :goto_14
.end method
