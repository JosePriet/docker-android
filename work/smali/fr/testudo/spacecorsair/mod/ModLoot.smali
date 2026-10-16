.class public Lfr/testudo/spacecorsair/mod/ModLoot;
.super Ljava/lang/Object;
.source "ModLoot.java"


# static fields
.field private static final ALIEN:[I

.field private static final SPARTAN:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLoot;->ALIEN:[I

    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1e

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLoot;->SPARTAN:[I

    return-void

    .line 14
    nop

    :array_12
    .array-data 4
        0x0
        0x1
        0x2
        0x5
    .end array-data

    .line 15
    :array_1e
    .array-data 4
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bossBonus(I)V
    .registers 5

    .prologue
    .line 77
    :try_start_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3fd6666666666666L    # 0.35

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1b

    .line 78
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1c

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLoot;->SPARTAN:[I

    :goto_12
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLoot;->tierForPilot()I

    move-result v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModLoot;->give([IILjava/lang/String;)V

    .line 83
    :cond_1b
    :goto_1b
    return-void

    .line 78
    :cond_1c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLoot;->ALIEN:[I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    goto :goto_12

    .line 80
    :catch_1f
    move-exception v0

    goto :goto_1b
.end method

.method private static give([IILjava/lang/String;)V
    .registers 8

    .prologue
    .line 33
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    array-length v2, p0

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    aget v0, p0, v0

    .line 34
    invoke-static {v0, p1}, Lfr/testudo/spacecorsair/mod/ModLoot;->typeName(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    .line 35
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->forceAddObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 36
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/engine/SoundManager;->playLoot()V

    .line 37
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    if-eqz v1, :cond_56

    .line 38
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RARE DROP: "

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, 0x3f51eb85    # 0.82f

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v0, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 40
    :cond_56
    return-void
.end method

.method public static onEnemyKilled(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V
    .registers 9

    .prologue
    const-wide/16 v2, 0x0

    .line 44
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModRep;->enemyKilled(Lfr/testudo/spacecorsair/business/Element;)V

    .line 46
    if-eqz p0, :cond_d

    :try_start_7
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->isBoss(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 72
    :cond_d
    :goto_d
    return-void

    .line 48
    :cond_e
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLoot;->ALIEN:[I

    .line 49
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;

    if-eqz v0, :cond_39

    .line 50
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->elite:Z

    if-eqz v0, :cond_33

    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    :goto_1a
    move-wide v6, v0

    .line 57
    :goto_1b
    cmpl-double v0, v6, v2

    if-lez v0, :cond_65

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    cmpg-double v0, v0, v6

    if-gez v0, :cond_65

    .line 58
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLoot;->tierForPilot()I

    move-result v0

    const-string v1, ""

    invoke-static {v4, v0, v1}, Lfr/testudo/spacecorsair/mod/ModLoot;->give([IILjava/lang/String;)V

    goto :goto_d

    .line 69
    :catch_31
    move-exception v0

    goto :goto_d

    .line 50
    :cond_33
    const-wide v0, 0x3fb47ae147ae147bL    # 0.08

    goto :goto_1a

    .line 51
    :cond_39
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;

    if-nez v0, :cond_41

    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;

    if-eqz v0, :cond_4e

    .line 52
    :cond_41
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->elite:Z

    if-eqz v0, :cond_4c

    const-wide v0, 0x3fa47ae147ae147bL    # 0.04

    :goto_4a
    move-wide v6, v0

    goto :goto_1b

    :cond_4c
    move-wide v0, v2

    goto :goto_4a

    .line 53
    :cond_4e
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    if-eqz v0, :cond_d6

    .line 54
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->elite:Z

    if-eqz v0, :cond_5f

    const-wide v6, 0x3fc999999999999aL    # 0.2

    .line 55
    :goto_5b
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLoot;->SPARTAN:[I

    move-object v4, v0

    goto :goto_1b

    .line 54
    :cond_5f
    const-wide v6, 0x3faeb851eb851eb8L    # 0.06

    goto :goto_5b

    .line 59
    :cond_65
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->elite:Z

    if-eqz v0, :cond_d0

    const-wide v0, 0x3fa999999999999aL    # 0.05

    :goto_72
    cmpg-double v0, v2, v0

    if-gez v0, :cond_d

    .line 61
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 62
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLoot;->tierForPilot()I

    move-result v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModWeapons;->typeName(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    .line 63
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->forceAddObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 64
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/engine/SoundManager;->playLoot()V

    .line 65
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    if-eqz v1, :cond_d

    .line 66
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WEAPON DROP: "

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, 0x3ecccccd    # 0.4f

    const v3, 0x3f666666    # 0.9f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v0, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_ce} :catch_31

    goto/16 :goto_d

    .line 59
    :cond_d0
    const-wide v0, 0x3f889374bc6a7efaL    # 0.012

    goto :goto_72

    :cond_d6
    move-wide v6, v2

    goto/16 :goto_1b
.end method

.method private static tierForPilot()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 19
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    move v0, v1

    move v2, v1

    .line 21
    :goto_b
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSpecs;->TIER_LEVELS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1b

    .line 22
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSpecs;->TIER_LEVELS:[I

    aget v1, v1, v0

    if-gt v1, v3, :cond_1c

    move v1, v0

    .line 21
    :goto_17
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_b

    .line 24
    :cond_1b
    return v2

    :cond_1c
    move v1, v2

    goto :goto_17
.end method

.method private static typeName(II)Ljava/lang/String;
    .registers 4

    .prologue
    .line 28
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->FAMILY_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 29
    if-nez p1, :cond_7

    :goto_6
    return-object v0

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSpecs;->TIER_LEVELS:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
