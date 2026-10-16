.class synthetic Lfr/testudo/spacecorsair/activity/InventoryDetailActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;
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
    .line 164
    invoke-static {}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->values()[Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity$1;->$SwitchMap$fr$testudo$spacecorsair$business$loot$SpaceObjectType:[I

    :try_start_9
    sget-object v0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity$1;->$SwitchMap$fr$testudo$spacecorsair$business$loot$SpaceObjectType:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->instaRepair:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_5f

    .line 136
    :goto_14
    invoke-static {}, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->values()[Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity$1;->$SwitchMap$fr$testudo$spacecorsair$business$loot$stuff$GearSpec$Type:[I

    :try_start_1d
    sget-object v0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity$1;->$SwitchMap$fr$testudo$spacecorsair$business$loot$stuff$GearSpec$Type:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->SHIELD:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_5d

    :goto_28
    :try_start_28
    sget-object v0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity$1;->$SwitchMap$fr$testudo$spacecorsair$business$loot$stuff$GearSpec$Type:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->LASER:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_5b

    :goto_33
    :try_start_33
    sget-object v0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity$1;->$SwitchMap$fr$testudo$spacecorsair$business$loot$stuff$GearSpec$Type:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->MISSILE:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_59

    :goto_3e
    :try_start_3e
    sget-object v0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity$1;->$SwitchMap$fr$testudo$spacecorsair$business$loot$stuff$GearSpec$Type:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->BOOSTER:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_57

    :goto_49
    :try_start_49
    sget-object v0, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity$1;->$SwitchMap$fr$testudo$spacecorsair$business$loot$stuff$GearSpec$Type:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->HYPERDRIVE_ENGINE:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_55

    :goto_54
    return-void

    :catch_55
    move-exception v0

    goto :goto_54

    :catch_57
    move-exception v0

    goto :goto_49

    :catch_59
    move-exception v0

    goto :goto_3e

    :catch_5b
    move-exception v0

    goto :goto_33

    :catch_5d
    move-exception v0

    goto :goto_28

    .line 164
    :catch_5f
    move-exception v0

    goto :goto_14
.end method
