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
    .line 201
    :try_start_0
    const-string v0, "basicShieldLevel1"

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 203
    :goto_6
    return-object v0

    .line 202
    :catch_7
    move-exception v0

    .line 203
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static better(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 208
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v2

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getRaretySort()I

    move-result v2

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v3

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getRaretySort()I

    move-result v3

    .line 209
    if-eq v2, v3, :cond_19

    if-le v2, v3, :cond_17

    .line 210
    :cond_16
    :goto_16
    return v0

    :cond_17
    move v0, v1

    .line 209
    goto :goto_16

    .line 210
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
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLock;->requiredShip(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    move-result-object v1

    .line 89
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLock;->fitsHull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Doesn\'t fit this slot"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModV34;->SLOT_NAMES:[Ljava/lang/String;

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->weaponSize(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLock;->toast(Ljava/lang/String;)V

    .line 100
    :goto_47
    return v0

    .line 93
    :cond_48
    if-eqz v1, :cond_56

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLock;->currentShip()Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    move-result-object v2

    if-eq v1, v2, :cond_56

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLock;->carrierOk(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 94
    :cond_56
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLance;->equipBlock(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v1

    .line 95
    if-eqz v1, :cond_60

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLock;->toast(Ljava/lang/String;)V

    goto :goto_47

    .line 96
    :cond_60
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLock;->fitWarning(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 97
    const/4 v0, 0x1

    goto :goto_47

    .line 99
    :cond_65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can only be equipped on the "

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLock;->shipName(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLock;->toast(Ljava/lang/String;)V

    goto :goto_47
.end method

.method private static carrierOk(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 32
    :try_start_1
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    .line 33
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

    .line 35
    :goto_26
    return v0

    :cond_27
    move v0, v1

    .line 33
    goto :goto_26

    .line 34
    :catch_29
    move-exception v0

    move v0, v1

    .line 35
    goto :goto_26
.end method

.method private static currentShip()Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;
    .registers 1

    .prologue
    .line 74
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    .line 75
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
    .line 42
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLock;->devImg:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    if-nez v0, :cond_c

    .line 44
    :try_start_4
    const-string v0, "MOD_DEV_PROTOTYPE"

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLock;->devImg:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_f

    .line 49
    :cond_c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLock;->devImg:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    :goto_e
    return-object v0

    .line 45
    :catch_f
    move-exception v0

    .line 46
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private static fitWarning(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    .registers 5

    .prologue
    .line 106
    :try_start_0
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    .line 107
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    if-nez v1, :cond_9

    .line 114
    :cond_8
    :goto_8
    return-void

    .line 108
    :cond_9
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV34;->gearHullKey()Ljava/lang/String;

    move-result-object v1

    .line 109
    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModV34;->fitState(Ljava/lang/String;Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)I

    move-result v0

    .line 110
    const/4 v2, 0x3

    if-eq v0, v2, :cond_19

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModV34;->fitLine(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLock;->toast(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3b} :catch_3c

    goto :goto_8

    .line 111
    :catch_3c
    move-exception v0

    goto :goto_8
.end method

.method static fitsHull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z
    .registers 3

    .prologue
    .line 65
    :try_start_0
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLock;->requiredShip(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_f

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLock;->currentShip()Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_e

    move-result-object v1

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    .line 70
    :goto_d
    return v0

    .line 67
    :catch_e
    move-exception v0

    .line 70
    :cond_f
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->fits(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v0

    goto :goto_d
.end method

.method public static onShipChanged()V
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 119
    :try_start_2
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    .line 120
    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    .line 121
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLock;->currentShip()Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    move-result-object v5

    .line 122
    if-eqz v5, :cond_15

    iget-object v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->shipTexture:Lfr/testudo/spacecorsair/display/Texture;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->prefetch(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 126
    :cond_15
    iget-object v0, v4, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->LASER:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->standardLaserLevel0:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v0, v2, v5, v6}, Lfr/testudo/spacecorsair/mod/ModLock;->pick(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v2

    .line 127
    iget-object v0, v4, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    if-eq v2, v0, :cond_d6

    .line 128
    iget-object v0, v4, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLock;->requiredShip(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    move-result-object v0

    if-eqz v0, :cond_af

    move v0, v1

    :goto_2c
    or-int/2addr v0, v3

    .line 129
    iget-object v6, v4, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v6, v2}, Lfr/testudo/spacecorsair/mod/ModLock;->swap(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 130
    iput-object v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move v2, v1

    .line 133
    :goto_35
    iget-object v6, v4, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLock;->fitsHull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v6

    if-nez v6, :cond_4a

    .line 135
    iget-object v0, v4, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->standardLaserLevel0:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModLock;->swap(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 136
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->standardLaserLevel0:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v0, v4, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move v0, v1

    move v2, v1

    .line 140
    :cond_4a
    iget-object v6, v4, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    sget-object v7, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->SHIELD:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLock;->basicShield()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v8

    invoke-static {v6, v7, v5, v8}, Lfr/testudo/spacecorsair/mod/ModLock;->pick(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v6

    .line 141
    if-eqz v6, :cond_6e

    iget-object v7, v4, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    if-eq v6, v7, :cond_6e

    .line 142
    iget-object v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLock;->requiredShip(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    move-result-object v2

    if-eqz v2, :cond_b2

    move v2, v1

    :goto_65
    or-int/2addr v0, v2

    .line 143
    iget-object v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2, v6}, Lfr/testudo/spacecorsair/mod/ModLock;->swap(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 144
    iput-object v6, v4, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move v2, v1

    .line 147
    :cond_6e
    iget-object v6, v4, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    sget-object v7, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->MISSILE:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    sget-object v8, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->noMissileMod:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v6, v7, v5, v8}, Lfr/testudo/spacecorsair/mod/ModLock;->pick(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v6

    .line 148
    iget-object v7, v4, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    if-eq v6, v7, :cond_d4

    .line 149
    iget-object v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLock;->requiredShip(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    move-result-object v2

    if-eqz v2, :cond_b4

    move v2, v1

    :goto_85
    or-int/2addr v0, v2

    .line 150
    iget-object v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2, v6}, Lfr/testudo/spacecorsair/mod/ModLock;->swap(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 151
    iput-object v6, v4, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 154
    :goto_8d
    if-eqz v1, :cond_ae

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    if-eqz v1, :cond_ae

    .line 155
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->applyGear()V

    .line 156
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->updateRemainingMissiles()V

    .line 157
    if-eqz v0, :cond_b6

    const-string v0, "Ship-specific gear moved to your hold and swapped for compatible gear."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_ab
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLock;->toast(Ljava/lang/String;)V

    .line 163
    :cond_ae
    :goto_ae
    return-void

    :cond_af
    move v0, v3

    .line 128
    goto/16 :goto_2c

    :cond_b2
    move v2, v3

    .line 142
    goto :goto_65

    :cond_b4
    move v2, v3

    .line 149
    goto :goto_85

    .line 158
    :cond_b6
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
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d0} :catch_d2

    move-result-object v0

    goto :goto_ab

    .line 160
    :catch_d2
    move-exception v0

    goto :goto_ae

    :cond_d4
    move v1, v2

    goto :goto_8d

    :cond_d6
    move v0, v3

    move v2, v3

    goto/16 :goto_35
.end method

.method private static pick(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;
    .registers 13

    .prologue
    const/4 v0, 0x0

    .line 167
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    .line 168
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v4, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    .line 169
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLock;->requiredShip(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    move-result-object v5

    .line 170
    if-eqz v5, :cond_1d

    if-ne v5, p2, :cond_1d

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLance;->equipBlock(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_23

    :cond_1d
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLock;->carrierOk(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 196
    :cond_23
    :goto_23
    return-object p0

    .line 175
    :cond_24
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->getContentAsList()Ljava/util/List;

    move-result-object v1

    .line 176
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v0

    move-object v3, v0

    :cond_2e
    :goto_2e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    .line 177
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v2

    .line 178
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v7

    .line 179
    if-eqz v7, :cond_2e

    iget-object v8, v7, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->gearType:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    if-ne v8, p1, :cond_2e

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v0

    if-lez v0, :cond_2e

    iget v0, v7, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->level:I

    if-gt v0, v4, :cond_2e

    .line 182
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLock;->requiredShip(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    move-result-object v0

    .line 183
    if-ne v0, p2, :cond_6a

    .line 184
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLance;->tierOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    if-gez v0, :cond_2e

    .line 185
    if-eqz v3, :cond_66

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModLock;->better(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v0

    if-eqz v0, :cond_82

    :cond_66
    move-object v0, v1

    move-object v3, v2

    :goto_68
    move-object v1, v0

    .line 189
    goto :goto_2e

    .line 186
    :cond_6a
    if-nez v0, :cond_82

    .line 187
    if-eqz v1, :cond_74

    invoke-static {v2, v1}, Lfr/testudo/spacecorsair/mod/ModLock;->better(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v0

    if-eqz v0, :cond_82

    :cond_74
    move-object v0, v2

    goto :goto_68

    .line 190
    :cond_76
    if-eqz v3, :cond_7a

    move-object p0, v3

    .line 191
    goto :goto_23

    .line 193
    :cond_7a
    if-eqz v5, :cond_23

    .line 196
    if-eqz v1, :cond_80

    :goto_7e
    move-object p0, v1

    goto :goto_23

    :cond_80
    move-object v1, p3

    goto :goto_7e

    :cond_82
    move-object v0, v1

    goto :goto_68
.end method

.method public static requiredShip(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 18
    if-nez p0, :cond_4

    .line 26
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
    const-string v2, "modPhoenixLance"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLance;->monolithImage()Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    move-result-object v0

    goto :goto_3

    .line 25
    :cond_51
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
    .line 53
    if-eqz p0, :cond_b

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLock;->devImage()Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    move-result-object v0

    if-ne p0, v0, :cond_b

    const-string v0, "DEV Prototype X-0"

    .line 59
    :goto_a
    return-object v0

    .line 54
    :cond_b
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->ALIEN_UFO:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    if-ne p0, v0, :cond_12

    const-string v0, "Banshee"

    goto :goto_a

    .line 55
    :cond_12
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->ALIEN_RAT:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    if-ne p0, v0, :cond_19

    const-string v0, "Arwing"

    goto :goto_a

    .line 56
    :cond_19
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->ALIEN_BLATTE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    if-ne p0, v0, :cond_20

    const-string v0, "Regent"

    goto :goto_a

    .line 57
    :cond_20
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->TEST:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    if-ne p0, v0, :cond_27

    const-string v0, "Megatron"

    goto :goto_a

    .line 58
    :cond_27
    if-eqz p0, :cond_32

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLance;->monolithImage()Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    move-result-object v0

    if-ne p0, v0, :cond_32

    const-string v0, "Monolith"

    goto :goto_a

    .line 59
    :cond_32
    const-string v0, "?"

    goto :goto_a
.end method

.method private static swap(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    .registers 6

    .prologue
    .line 214
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    .line 215
    if-eqz p0, :cond_f

    .line 216
    invoke-static {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->forceAddObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 218
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

    .line 219
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v3

    if-ne v3, p1, :cond_17

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v0

    if-lez v0, :cond_17

    .line 220
    invoke-static {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 224
    :cond_36
    return-void
.end method

.method private static toast(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 80
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

    .line 84
    :goto_e
    return-void

    .line 81
    :catch_f
    move-exception v0

    goto :goto_e
.end method
