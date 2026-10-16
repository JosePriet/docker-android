.class synthetic Lfr/testudo/spacecorsair/business/player/PlayerInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/business/player/PlayerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$fr$testudo$spacecorsair$business$loot$SpaceObjectType:[I

.field static final synthetic $SwitchMap$fr$testudo$spacecorsair$business$loot$stuff$GearSpec$Type:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 312
    invoke-static {}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->values()[Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo$1;->$SwitchMap$fr$testudo$spacecorsair$business$loot$SpaceObjectType:[I

    :try_start_9
    sget-object v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo$1;->$SwitchMap$fr$testudo$spacecorsair$business$loot$SpaceObjectType:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->instaRepair:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_86

    :goto_14
    :try_start_14
    sget-object v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo$1;->$SwitchMap$fr$testudo$spacecorsair$business$loot$SpaceObjectType:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->instaRepairInfinite:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_84

    :goto_1f
    :try_start_1f
    sget-object v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo$1;->$SwitchMap$fr$testudo$spacecorsair$business$loot$SpaceObjectType:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->callMobileSeller:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_82

    :goto_2a
    :try_start_2a
    sget-object v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo$1;->$SwitchMap$fr$testudo$spacecorsair$business$loot$SpaceObjectType:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->infiniteMobileSeller:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_80

    .line 116
    :goto_35
    invoke-static {}, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->values()[Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo$1;->$SwitchMap$fr$testudo$spacecorsair$business$loot$stuff$GearSpec$Type:[I

    :try_start_3e
    sget-object v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo$1;->$SwitchMap$fr$testudo$spacecorsair$business$loot$stuff$GearSpec$Type:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->SHIELD:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_7e

    :goto_49
    :try_start_49
    sget-object v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo$1;->$SwitchMap$fr$testudo$spacecorsair$business$loot$stuff$GearSpec$Type:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->LASER:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_7c

    :goto_54
    :try_start_54
    sget-object v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo$1;->$SwitchMap$fr$testudo$spacecorsair$business$loot$stuff$GearSpec$Type:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->BOOSTER:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_7a

    :goto_5f
    :try_start_5f
    sget-object v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo$1;->$SwitchMap$fr$testudo$spacecorsair$business$loot$stuff$GearSpec$Type:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->HYPERDRIVE_ENGINE:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_78

    :goto_6a
    :try_start_6a
    sget-object v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo$1;->$SwitchMap$fr$testudo$spacecorsair$business$loot$stuff$GearSpec$Type:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->MISSILE:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_76

    :goto_75
    return-void

    :catch_76
    move-exception v0

    goto :goto_75

    :catch_78
    move-exception v0

    goto :goto_6a

    :catch_7a
    move-exception v0

    goto :goto_5f

    :catch_7c
    move-exception v0

    goto :goto_54

    :catch_7e
    move-exception v0

    goto :goto_49

    .line 312
    :catch_80
    move-exception v0

    goto :goto_35

    :catch_82
    move-exception v0

    goto :goto_2a

    :catch_84
    move-exception v0

    goto :goto_1f

    :catch_86
    move-exception v0

    goto :goto_14
.end method
