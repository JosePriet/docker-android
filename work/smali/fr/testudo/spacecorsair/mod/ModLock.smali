.class public Lfr/testudo/spacecorsair/mod/ModLock;
.super Ljava/lang/Object;
.source "ModLock.java"


# static fields
.field private static devImg:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static basicShield()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;
    .registers 1

    .prologue
    .line 160
    :try_start_0
    const-string v0, "basicShieldLevel1"

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 162
    :goto_6
    return-object v0

    .line 161
    :catch_7
    move-exception v0

    .line 162
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static better(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 167
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v2

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getRaretySort()I

    move-result v2

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v3

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getRaretySort()I

    move-result v3

    .line 168
    if-eq v2, v3, :cond_19

    if-le v2, v3, :cond_17

    .line 169
    :cond_16
    :goto_16
    return v0

    :cond_17
    move v0, v1

    .line 168
    goto :goto_16

    .line 169
    :cond_19
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v2

    iget v2, v2, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->level:I

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v3

    iget v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->level:I

    if-gt v2, v3, :cond_16

    move v0, v1

    goto :goto_16
.end method

.method public static canEquip(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z
    .registers 4

    .prologue
    .line 75
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLock;->requiredShip(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_12

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLock;->currentShip()Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    move-result-object v1

    if-eq v0, v1, :cond_12

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLock;->carrierOk(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 77
    :cond_12
    const/4 v0, 0x1

    .line 80
    :goto_13
    return v0

    .line 79
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only be equipped on the "

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLock;->shipName(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLock;->toast(Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private static carrierOk(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 31
    :try_start_1
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    .line 32
    if-eqz p0, :cond_27

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "regentHiveBay"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->isCarrier(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_29

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    .line 34
    :goto_26
    return v0

    :cond_27
    move v0, v1

    .line 32
    goto :goto_26

    .line 33
    :catch_29
    move-exception v0

    move v0, v1

    .line 34
    goto :goto_26
.end method

.method private static currentShip()Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    .line 62
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->image:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    return-object v0
.end method

.method static devImage()Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLock;->devImg:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    if-nez v0, :cond_c

    .line 43
    :try_start_4
    const-string v0, "MOD_DEV_PROTOTYPE"

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLock;->devImg:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_f

    .line 48
    :cond_c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLock;->devImg:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    :goto_e
    return-object v0

    .line 44
    :catch_f
    move-exception v0

    .line 45
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static onShipChanged()V
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 86
    :try_start_2
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    .line 87
    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    .line 88
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLock;->currentShip()Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    move-result-object v5

    .line 89
    if-eqz v5, :cond_15

    iget-object v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->shipTexture:Lfr/testudo/spacecorsair/display/Texture;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->prefetch(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 93
    :cond_15
    iget-object v0, v4, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->LASER:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->standardLaserLevel0:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v0, v2, v5, v6}, Lfr/testudo/spacecorsair/mod/ModLock;->pick(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v2

    .line 94
    iget-object v0, v4, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    if-eq v2, v0, :cond_c0

    .line 95
    iget-object v0, v4, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLock;->requiredShip(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    move-result-object v0

    if-eqz v0, :cond_9a

    move v0, v1

    :goto_2c
    or-int/2addr v0, v3

    .line 96
    iget-object v6, v4, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v6, v2}, Lfr/testudo/spacecorsair/mod/ModLock;->swap(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 97
    iput-object v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move v2, v1

    .line 100
    :goto_35
    iget-object v6, v4, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    sget-object v7, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->SHIELD:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLock;->basicShield()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v8

    invoke-static {v6, v7, v5, v8}, Lfr/testudo/spacecorsair/mod/ModLock;->pick(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v6

    .line 101
    if-eqz v6, :cond_59

    iget-object v7, v4, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    if-eq v6, v7, :cond_59

    .line 102
    iget-object v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLock;->requiredShip(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    move-result-object v2

    if-eqz v2, :cond_9c

    move v2, v1

    :goto_50
    or-int/2addr v0, v2

    .line 103
    iget-object v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2, v6}, Lfr/testudo/spacecorsair/mod/ModLock;->swap(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 104
    iput-object v6, v4, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move v2, v1

    .line 107
    :cond_59
    iget-object v6, v4, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    sget-object v7, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->MISSILE:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    sget-object v8, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->noMissileMod:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v6, v7, v5, v8}, Lfr/testudo/spacecorsair/mod/ModLock;->pick(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v6

    .line 108
    iget-object v7, v4, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    if-eq v6, v7, :cond_be

    .line 109
    iget-object v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLock;->requiredShip(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    move-result-object v2

    if-eqz v2, :cond_9e

    move v2, v1

    :goto_70
    or-int/2addr v0, v2

    .line 110
    iget-object v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2, v6}, Lfr/testudo/spacecorsair/mod/ModLock;->swap(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 111
    iput-object v6, v4, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 114
    :goto_78
    if-eqz v1, :cond_99

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    if-eqz v1, :cond_99

    .line 115
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->applyGear()V

    .line 116
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->updateRemainingMissiles()V

    .line 117
    if-eqz v0, :cond_a0

    const-string v0, "Ship-specific gear moved to your hold and swapped for compatible gear."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_96
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLock;->toast(Ljava/lang/String;)V

    .line 123
    :cond_99
    :goto_99
    return-void

    :cond_9a
    move v0, v3

    .line 95
    goto :goto_2c

    :cond_9c
    move v2, v3

    .line 102
    goto :goto_50

    :cond_9e
    move v2, v3

    .line 109
    goto :goto_70

    .line 118
    :cond_a0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLock;->shipName(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " gear equipped from your hold."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_ba} :catch_bc

    move-result-object v0

    goto :goto_96

    .line 120
    :catch_bc
    move-exception v0

    goto :goto_99

    :cond_be
    move v1, v2

    goto :goto_78

    :cond_c0
    move v0, v3

    move v2, v3

    goto/16 :goto_35
.end method

.method private static pick(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;
    .registers 13

    .prologue
    const/4 v0, 0x0

    .line 127
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    .line 128
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v4, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    .line 129
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLock;->requiredShip(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    move-result-object v5

    .line 130
    if-eqz v5, :cond_17

    if-eq v5, p2, :cond_1d

    :cond_17
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLock;->carrierOk(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 155
    :cond_1d
    :goto_1d
    return-object p0

    .line 135
    :cond_1e
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->getContentAsList()Ljava/util/List;

    move-result-object v1

    .line 136
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v0

    move-object v3, v0

    :cond_28
    :goto_28
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    .line 137
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v2

    .line 138
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v7

    .line 139
    if-eqz v7, :cond_28

    iget-object v8, v7, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->gearType:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    if-ne v8, p1, :cond_28

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v0

    if-lez v0, :cond_28

    iget v0, v7, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->level:I

    if-gt v0, v4, :cond_28

    .line 142
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLock;->requiredShip(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    move-result-object v0

    .line 143
    if-ne v0, p2, :cond_5e

    .line 144
    if-eqz v3, :cond_5a

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModLock;->better(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v0

    if-eqz v0, :cond_76

    :cond_5a
    move-object v0, v1

    move-object v3, v2

    :goto_5c
    move-object v1, v0

    .line 148
    goto :goto_28

    .line 145
    :cond_5e
    if-nez v0, :cond_76

    .line 146
    if-eqz v1, :cond_68

    invoke-static {v2, v1}, Lfr/testudo/spacecorsair/mod/ModLock;->better(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v0

    if-eqz v0, :cond_76

    :cond_68
    move-object v0, v2

    goto :goto_5c

    .line 149
    :cond_6a
    if-eqz v3, :cond_6e

    move-object p0, v3

    .line 150
    goto :goto_1d

    .line 152
    :cond_6e
    if-eqz v5, :cond_1d

    .line 155
    if-eqz v1, :cond_74

    :goto_72
    move-object p0, v1

    goto :goto_1d

    :cond_74
    move-object v1, p3

    goto :goto_72

    :cond_76
    move-object v0, v1

    goto :goto_5c
.end method

.method public static requiredShip(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 18
    if-nez p0, :cond_4

    .line 25
    :cond_3
    :goto_3
    return-object v0

    .line 19
    :cond_4
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v1

    .line 20
    const-string v2, "alienBeamLaser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->ALIEN_UFO:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    goto :goto_3

    .line 21
    :cond_13
    const-string v2, "arwingBoltLaser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->ALIEN_RAT:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    goto :goto_3

    .line 22
    :cond_1e
    const-string v2, "regentBeamLaser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    const-string v2, "regentHiveBay"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    :cond_2e
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->ALIEN_BLATTE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    goto :goto_3

    .line 23
    :cond_31
    const-string v2, "megatronBattery"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_41

    const-string v2, "megatronSalvo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    :cond_41
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->TEST:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    goto :goto_3

    .line 24
    :cond_44
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModDev;->isDev(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "hullDev"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLock;->devImage()Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    move-result-object v0

    goto :goto_3
.end method

.method public static shipName(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    if-eqz p0, :cond_b

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLock;->devImage()Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    move-result-object v0

    if-ne p0, v0, :cond_b

    const-string v0, "DEV Prototype X-0"

    .line 57
    :goto_a
    return-object v0

    .line 53
    :cond_b
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->ALIEN_UFO:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    if-ne p0, v0, :cond_12

    const-string v0, "Banshee"

    goto :goto_a

    .line 54
    :cond_12
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->ALIEN_RAT:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    if-ne p0, v0, :cond_19

    const-string v0, "Arwing"

    goto :goto_a

    .line 55
    :cond_19
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->ALIEN_BLATTE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    if-ne p0, v0, :cond_20

    const-string v0, "Regent"

    goto :goto_a

    .line 56
    :cond_20
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->TEST:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    if-ne p0, v0, :cond_27

    const-string v0, "Megatron"

    goto :goto_a

    .line 57
    :cond_27
    const-string v0, "?"

    goto :goto_a
.end method

.method private static swap(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    .registers 6

    .prologue
    .line 173
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    .line 174
    if-eqz p0, :cond_f

    .line 175
    invoke-static {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->forceAddObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 177
    :cond_f
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->getContentAsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    .line 178
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v3

    if-ne v3, p1, :cond_17

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v0

    if-lez v0, :cond_17

    .line 179
    invoke-static {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 183
    :cond_36
    return-void
.end method

.method private static toast(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 67
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 71
    :goto_e
    return-void

    .line 68
    :catch_f
    move-exception v0

    goto :goto_e
.end method
