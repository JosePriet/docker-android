.class public Lfr/testudo/spacecorsair/mod/ModQol;
.super Ljava/lang/Object;
.source "ModQol.java"


# static fields
.field private static final NO_LEVEL:Ljava/lang/Object;

.field private static final SHOPS:[Lfr/testudo/spacecorsair/game/levels/LevelId;

.field static buttonsDirty:Z

.field private static floating:Z

.field private static gateFont:Ljava/lang/Object;

.field private static gateHalf:[F

.field private static final gateText:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static gateTexts:[Ljava/lang/String;

.field private static homeX:I

.field private static homeY:I

.field private static final inbox:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static inboxFont:Ljava/lang/Object;

.field private static inboxHalf:F

.field private static inboxN:I

.field private static inboxText:Ljava/lang/String;

.field private static lastMission:Ljava/lang/Object;

.field private static lastMissionSector:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field private static lastNum:J

.field private static lastResponse:J

.field private static final levelNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static lifeA:I

.field private static lifeB:I

.field private static lifeText:Ljava/lang/String;

.field private static loaded:Z

.field private static mapFont:Ljava/lang/Object;

.field private static mapHalf:[F

.field private static final mapText:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static mapTexts:[Ljava/lang/String;

.field private static missionHalf:F

.field private static numBudget:I

.field private static optBars:Z

.field private static optBig:Z

.field private static optDmg:Z

.field private static optShake:F

.field private static optStick:Z

.field private static prefs:Landroid/content/SharedPreferences;

.field private static readCount:I

.field private static responseLevel:Ljava/lang/Object;

.field private static responseWave:I

.field private static sellBypass:Z

.field private static shake:F

.field private static final shaken:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static shieldA:I

.field private static shieldB:I

.field private static shieldText:Ljava/lang/String;

.field private static spawningPolice:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 58
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModQol;->optStick:Z

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModQol;->optBars:Z

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModQol;->optDmg:Z

    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModQol;->optBig:Z

    .line 59
    const v0, 0x3f19999a    # 0.6f

    sput v0, Lfr/testudo/spacecorsair/mod/ModQol;->optShake:F

    .line 343
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->gateText:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 377
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->levelNames:Ljava/util/Map;

    .line 378
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->NO_LEVEL:Ljava/lang/Object;

    .line 476
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->shaken:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->inbox:Ljava/util/List;

    .line 615
    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModQol;->homeX:I

    .line 646
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->mapText:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 651
    const/16 v0, 0xc

    new-array v0, v0, [Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->GENESIS:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v1, v0, v3

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->VENTOHIGH:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v1, v0, v2

    const/4 v1, 0x2

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->PIRATE_BAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->HELIOSTAT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->SPARTAN_HQ:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->SOLAR_FIELD:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->OMICRON_PRIME:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->HIGHWAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->ETERNITY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->LOST_PARADISE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->ORE_BELT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->TUTORIAL:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->SHOPS:[Lfr/testudo/spacecorsair/game/levels/LevelId;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()F
    .registers 1

    .prologue
    .line 54
    sget v0, Lfr/testudo/spacecorsair/mod/ModQol;->optShake:F

    return v0
.end method

.method static synthetic access$002(F)F
    .registers 1

    .prologue
    .line 54
    sput p0, Lfr/testudo/spacecorsair/mod/ModQol;->optShake:F

    return p0
.end method

.method static synthetic access$102(Z)Z
    .registers 1

    .prologue
    .line 54
    sput-boolean p0, Lfr/testudo/spacecorsair/mod/ModQol;->optStick:Z

    return p0
.end method

.method static synthetic access$202(Z)Z
    .registers 1

    .prologue
    .line 54
    sput-boolean p0, Lfr/testudo/spacecorsair/mod/ModQol;->optBars:Z

    return p0
.end method

.method static synthetic access$302(Z)Z
    .registers 1

    .prologue
    .line 54
    sput-boolean p0, Lfr/testudo/spacecorsair/mod/ModQol;->optDmg:Z

    return p0
.end method

.method static synthetic access$402(Z)Z
    .registers 1

    .prologue
    .line 54
    sput-boolean p0, Lfr/testudo/spacecorsair/mod/ModQol;->optBig:Z

    return p0
.end method

.method static synthetic access$500(Ljava/lang/String;Z)V
    .registers 2

    .prologue
    .line 54
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModQol;->save(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$602(Z)Z
    .registers 1

    .prologue
    .line 54
    sput-boolean p0, Lfr/testudo/spacecorsair/mod/ModQol;->sellBypass:Z

    return p0
.end method

.method public static addShake(F)V
    .registers 4

    .prologue
    .line 479
    const/high16 v0, 0x3fc00000    # 1.5f

    sget v1, Lfr/testudo/spacecorsair/mod/ModQol;->shake:F

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->shakeLevel()F

    move-result v2

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModQol;->shake:F

    .line 480
    return-void
.end method

.method public static barNumbers()Z
    .registers 1

    .prologue
    .line 205
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->load()V

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModQol;->optBars:Z

    return v0
.end method

.method public static bigButtons()Z
    .registers 1

    .prologue
    .line 207
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->load()V

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModQol;->optBig:Z

    return v0
.end method

.method public static bounty(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;I)V
    .registers 7

    .prologue
    .line 231
    if-eqz p0, :cond_8

    if-lez p1, :cond_8

    :try_start_4
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->xp:I

    if-gtz v0, :cond_9

    .line 246
    :cond_8
    :goto_8
    return-void

    .line 232
    :cond_9
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getLevel()I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV34;->bounty(I)F

    move-result v0

    .line 233
    const v1, 0x3fb9999a    # 1.45f

    int-to-float v2, p1

    iget v3, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->xp:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v0, v1

    .line 234
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->isBoss(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v1

    if-nez v1, :cond_2a

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->xp:I

    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_7a

    :cond_2a
    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    .line 236
    :cond_2d
    :goto_2d
    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 237
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->addCredit(I)V

    .line 238
    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModV34;->rareSalvage(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;I)V

    .line 239
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV35;->partsFromKill(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V

    .line 240
    invoke-static {p0}, Lfr/testudo/spacecorsair/engine/GameThread;->isElementVisible(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 241
    :goto_4b
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    .line 242
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newGoldMessage()Lfr/testudo/spacecorsair/display/GoldTextMessage;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " c"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, p0}, Lfr/testudo/spacecorsair/display/GoldTextMessage;->init(Ljava/lang/String;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/GoldTextMessage;

    move-result-object v0

    .line 241
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 243
    :catch_78
    move-exception v0

    goto :goto_8

    .line 235
    :cond_7a
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->elite:Z

    if-eqz v1, :cond_2d

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    goto :goto_2d

    .line 240
    :cond_82
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object p0, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_86} :catch_78

    goto :goto_4b
.end method

.method public static buttons()V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 587
    :try_start_1
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->bigButtons()Z

    move-result v1

    if-nez v1, :cond_8

    .line 611
    :goto_7
    return-void

    .line 588
    :cond_8
    const v1, 0x3faccccd    # 1.35f

    .line 589
    sget v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthX:I

    mul-int/lit8 v2, v2, 0x78

    div-int/lit16 v2, v2, 0x4b0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_96

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v2, v1

    .line 592
    :try_start_14
    const-class v1, Lfr/testudo/spacecorsair/engine/GameRenderer;

    const-string v3, "butonsDecalBorder"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 593
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 594
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_24} :catch_5a

    move-result v1

    .line 598
    :goto_25
    const/4 v3, 0x4

    :try_start_26
    new-array v3, v3, [Lfr/testudo/spacecorsair/display/hud/Button;

    const/4 v4, 0x0

    sget-object v5, Lfr/testudo/spacecorsair/display/hud/HudImages;->missileButon:Lfr/testudo/spacecorsair/display/hud/Button;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lfr/testudo/spacecorsair/display/hud/HudImages;->laserButon:Lfr/testudo/spacecorsair/display/hud/Button;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Lfr/testudo/spacecorsair/display/hud/HudImages;->boosterButton:Lfr/testudo/spacecorsair/display/hud/Button;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Lfr/testudo/spacecorsair/display/hud/HudImages;->jumpButton:Lfr/testudo/spacecorsair/display/hud/Button;

    aput-object v5, v3, v4

    .line 599
    array-length v4, v3

    :goto_3d
    if-ge v0, v4, :cond_5e

    aget-object v5, v3, v0

    .line 600
    iget-object v6, v5, Lfr/testudo/spacecorsair/display/hud/Button;->imageDim:Lfr/testudo/spacecorsair/engine/Vector2;

    int-to-float v7, v2

    int-to-float v8, v2

    invoke-virtual {v6, v7, v8}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 601
    div-int/lit8 v6, v2, 0x2

    iput v6, v5, Lfr/testudo/spacecorsair/display/hud/Button;->demiDim:I

    .line 602
    iget-object v6, v5, Lfr/testudo/spacecorsair/display/hud/Button;->imageDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    if-eqz v6, :cond_57

    iget-object v6, v5, Lfr/testudo/spacecorsair/display/hud/Button;->imageDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v5, v5, Lfr/testudo/spacecorsair/display/hud/Button;->imageDim:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v6, v5}, Lfr/testudo/spacecorsair/display/Drawable;->setDimension(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 599
    :cond_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 595
    :catch_5a
    move-exception v1

    .line 596
    const/16 v1, 0x14

    goto :goto_25

    .line 604
    :cond_5e
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->laserButon:Lfr/testudo/spacecorsair/display/hud/Button;

    sget v3, Lfr/testudo/spacecorsair/display/hud/Radar;->POSX:I

    int-to-float v3, v3

    div-int/lit8 v4, v2, 0x2

    add-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Lfr/testudo/spacecorsair/display/hud/Button;->initImagePos(FF)V

    .line 605
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->boosterButton:Lfr/testudo/spacecorsair/display/hud/Button;

    sget v3, Lfr/testudo/spacecorsair/display/hud/Radar;->POSX:I

    int-to-float v3, v3

    int-to-float v4, v2

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    div-int/lit8 v4, v2, 0x2

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Lfr/testudo/spacecorsair/display/hud/Button;->initImagePos(FF)V

    .line 606
    sget v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthY:I

    sget v1, Lfr/testudo/spacecorsair/display/hud/Radar;->POSY:I

    sget v3, Lfr/testudo/spacecorsair/display/hud/Radar;->DEMI_DIM:I

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x14

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 607
    sget-object v1, Lfr/testudo/spacecorsair/display/hud/HudImages;->missileButon:Lfr/testudo/spacecorsair/display/hud/Button;

    sget v2, Lfr/testudo/spacecorsair/display/hud/Radar;->POSX:I

    int-to-float v2, v2

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Lfr/testudo/spacecorsair/display/hud/Button;->initImagePos(FF)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_94} :catch_96

    goto/16 :goto_7

    .line 608
    :catch_96
    move-exception v0

    goto/16 :goto_7
.end method

.method public static camCenter(Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 10

    .prologue
    const/4 v2, 0x0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 484
    sget v0, Lfr/testudo/spacecorsair/mod/ModQol;->shake:F

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-lez v0, :cond_14

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-eqz v0, :cond_17

    .line 485
    :cond_14
    sput v2, Lfr/testudo/spacecorsair/mod/ModQol;->shake:F

    .line 491
    :goto_16
    return-object p0

    .line 488
    :cond_17
    sget v0, Lfr/testudo/spacecorsair/mod/ModQol;->shake:F

    const/high16 v1, 0x43e10000    # 450.0f

    div-float v1, p1, v1

    sub-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModQol;->shake:F

    .line 489
    sget v0, Lfr/testudo/spacecorsair/mod/ModQol;->shake:F

    sget v1, Lfr/testudo/spacecorsair/mod/ModQol;->shake:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x42180000    # 38.0f

    mul-float/2addr v0, v1

    .line 490
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->shaken:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    sub-double/2addr v4, v6

    double-to-float v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iget v3, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    sub-double/2addr v4, v6

    double-to-float v4, v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 491
    sget-object p0, Lfr/testudo/spacecorsair/mod/ModQol;->shaken:Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_16
.end method

.method private static check(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/CheckBox;
    .registers 6

    .prologue
    .line 302
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 303
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 304
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 305
    invoke-virtual {v0, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 306
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModQol$2;

    invoke-direct {v1, p2}, Lfr/testudo/spacecorsair/mod/ModQol$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 315
    return-object v0
.end method

.method public static civilAttacked(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V
    .registers 15

    .prologue
    .line 733
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->civilAttacked(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V

    .line 734
    :try_start_3
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModRep;->civilAttacked(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_133

    .line 735
    :goto_6
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModQol;->spawningPolice:Z

    if-eqz v0, :cond_b

    .line 769
    :goto_a
    return-void

    .line 737
    :cond_b
    :try_start_b
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 738
    if-eqz v2, :cond_29

    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->TUTORIAL:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eq v2, v0, :cond_29

    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->GENESIS:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eq v2, v0, :cond_29

    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->GALACTIC_ARENA:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eq v2, v0, :cond_29

    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eq v2, v0, :cond_29

    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->HIGHWAY:Lfr/testudo/spacecorsair/game/levels/LevelId;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_27} :catch_128
    .catchall {:try_start_b .. :try_end_27} :catchall_12e

    if-ne v2, v0, :cond_2d

    .line 767
    :cond_29
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModQol;->spawningPolice:Z

    goto :goto_a

    .line 739
    :cond_2d
    :try_start_2d
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 740
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->responseLevel:Ljava/lang/Object;

    if-eq v0, v1, :cond_3c

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->responseLevel:Ljava/lang/Object;

    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModQol;->responseWave:I

    .line 741
    :cond_3c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 742
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModQol;->lastResponse:J

    sub-long v4, v0, v4

    const-wide/32 v6, 0x9c40

    cmp-long v3, v4, v6

    if-ltz v3, :cond_50

    sget v3, Lfr/testudo/spacecorsair/mod/ModQol;->responseWave:I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4d} :catch_128
    .catchall {:try_start_2d .. :try_end_4d} :catchall_12e

    const/4 v4, 0x3

    if-lt v3, v4, :cond_54

    .line 767
    :cond_50
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModQol;->spawningPolice:Z

    goto :goto_a

    .line 743
    :cond_54
    :try_start_54
    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModQol;->lastResponse:J

    .line 744
    sget v0, Lfr/testudo/spacecorsair/mod/ModQol;->responseWave:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModQol;->responseWave:I

    .line 745
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 746
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findClosestPortal(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 747
    if-eqz v0, :cond_e7

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object v1, v0

    .line 748
    :goto_71
    sget v0, Lfr/testudo/spacecorsair/mod/ModQol;->responseWave:I

    add-int/lit8 v4, v0, 0x1

    iget v0, v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    const/16 v5, 0xa

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v5

    if-lt v0, v5, :cond_f9

    const/4 v0, 0x1

    :goto_80
    add-int/2addr v4, v0

    .line 749
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModQol;->spawningPolice:Z

    .line 750
    const/4 v0, 0x0

    :goto_85
    if-ge v0, v4, :cond_fb

    .line 751
    iget v5, v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMin:I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const/4 v8, 0x0

    iget v9, v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    iget v10, v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMin:I

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    int-to-double v8, v8

    mul-double/2addr v6, v8

    double-to-int v6, v6

    add-int/2addr v5, v6

    .line 752
    invoke-static {v5}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newPolice(I)Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;

    move-result-object v5

    .line 753
    iget v6, v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    const/4 v7, 0x6

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v7

    if-gt v6, v7, :cond_bd

    .line 755
    iget v6, v5, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->maxLife:F

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    iput v6, v5, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->maxLife:F

    .line 756
    iget v6, v5, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->maxLife:F

    iput v6, v5, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->life:F

    .line 757
    iget v6, v5, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->bulletDamage:F

    const v7, 0x3f0ccccd    # 0.55f

    mul-float/2addr v6, v7

    iput v6, v5, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->bulletDamage:F

    .line 759
    :cond_bd
    const/4 v6, 0x0

    new-instance v7, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x4079000000000000L    # 400.0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4069000000000000L    # 200.0

    sub-double/2addr v8, v10

    double-to-float v8, v8

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    const-wide/high16 v12, 0x4079000000000000L    # 400.0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4069000000000000L    # 200.0

    sub-double/2addr v10, v12

    double-to-float v9, v10

    invoke-direct {v7, v8, v9}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-virtual {v5, v1, v6, v7}, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->applyPopPoint(Lfr/testudo/spacecorsair/engine/Vector2;FLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    .line 760
    invoke-virtual {v5}, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->setAtackPlayerMode()V

    .line 761
    sget-object v6, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v6, v5}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 750
    add-int/lit8 v0, v0, 0x1

    goto :goto_85

    .line 747
    :cond_e7
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;)V

    const v1, 0x451c4000    # 2500.0f

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_71

    .line 748
    :cond_f9
    const/4 v0, 0x0

    goto :goto_80

    .line 763
    :cond_fb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "POLICE DISPATCHED ("

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3f0ccccd    # 0.55f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v0, v1, v2, v4}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_123} :catch_128
    .catchall {:try_start_54 .. :try_end_123} :catchall_12e

    .line 767
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModQol;->spawningPolice:Z

    goto/16 :goto_a

    .line 764
    :catch_128
    move-exception v0

    .line 767
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModQol;->spawningPolice:Z

    goto/16 :goto_a

    :catchall_12e
    move-exception v0

    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModQol;->spawningPolice:Z

    .line 768
    throw v0

    .line 734
    :catch_133
    move-exception v0

    goto/16 :goto_6
.end method

.method static compare(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 827
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 828
    if-eqz v1, :cond_1e

    if-eq v1, p0, :cond_1e

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    instance-of v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-eqz v0, :cond_1e

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    instance-of v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-nez v0, :cond_21

    :cond_1e
    const-string v0, ""

    .line 837
    :goto_20
    return-object v0

    .line 829
    :cond_21
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v1

    check-cast v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 830
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<br><br><b>Compared with your ship</b><br>"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 831
    const-string v3, "Armour"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->armorInformational:I

    iget v5, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->armorInformational:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModQol;->delta(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    const-string v3, "Agility"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->agilityInformational:I

    iget v5, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->agilityInformational:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModQol;->delta(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    const-string v3, "Speed"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxSpeedInformational:I

    iget v5, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxSpeedInformational:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModQol;->delta(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    const-string v3, "Hull"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lifeBooster:F

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lifeBooster:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v3, v0}, Lfr/testudo/spacecorsair/mod/ModQol;->delta(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8a} :catch_8c

    move-result-object v0

    goto :goto_20

    .line 836
    :catch_8c
    move-exception v0

    .line 837
    const-string v0, ""

    goto :goto_20
.end method

.method public static confirmSell(Ljava/lang/Object;ILfr/testudo/spacecorsair/business/loot/SpaceObject;Ljava/lang/Object;)Z
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 852
    :try_start_2
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModQol;->sellBypass:Z

    if-nez v0, :cond_16

    if-eqz p2, :cond_16

    if-eqz p3, :cond_16

    const-string v0, "SELL"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    :cond_16
    move v0, v2

    .line 892
    :goto_17
    return v0

    .line 853
    :cond_18
    invoke-virtual {p2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->isDev(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1f} :catch_ff

    move-result v0

    if-eqz v0, :cond_48

    .line 856
    :try_start_22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "this$0"

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModQol;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 857
    if-eqz v0, :cond_46

    .line 858
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 859
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v2, "DEV items cannot be sold."

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_46} :catch_103

    :cond_46
    :goto_46
    move v0, v1

    .line 864
    goto :goto_17

    .line 866
    :cond_48
    :try_start_48
    invoke-virtual {p2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v3

    .line 867
    if-eqz v3, :cond_60

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getRaretySort()I

    move-result v0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getRaretySort()I

    move-result v4

    if-lt v0, v4, :cond_60

    if-gtz p1, :cond_62

    :cond_60
    move v0, v2

    goto :goto_17

    .line 868
    :cond_62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "this$0"

    invoke-static {v0, v4}, Lfr/testudo/spacecorsair/mod/ModQol;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 869
    if-nez v0, :cond_70

    move v0, v2

    goto :goto_17

    .line 870
    :cond_70
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 871
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 872
    invoke-virtual {p2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v4

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v4

    .line 873
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sell "

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " item?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sell "

    .line 874
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " x "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "? This cannot be undone."

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v3, "Sell"

    .line 875
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lfr/testudo/spacecorsair/mod/ModQol$3;

    invoke-direct {v4, p0, p1, p2, p3}, Lfr/testudo/spacecorsair/mod/ModQol$3;-><init>(Ljava/lang/Object;ILfr/testudo/spacecorsair/business/loot/SpaceObject;Ljava/lang/Object;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v3, "Keep it"

    .line 889
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_fc} :catch_ff

    move v0, v1

    .line 890
    goto/16 :goto_17

    .line 891
    :catch_ff
    move-exception v0

    move v0, v2

    .line 892
    goto/16 :goto_17

    .line 861
    :catch_103
    move-exception v0

    goto/16 :goto_46
.end method

.method public static damageNumbers()Z
    .registers 1

    .prologue
    .line 206
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->load()V

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModQol;->optDmg:Z

    return v0
.end method

.method public static deathFee()I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 333
    :try_start_1
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    .line 334
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 335
    if-eqz v2, :cond_15

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModShips;->tech(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_15

    .line 338
    :goto_14
    return v0

    .line 336
    :cond_15
    iget v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV34;->deathFee(I)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1c

    move-result v0

    goto :goto_14

    .line 337
    :catch_1c
    move-exception v1

    goto :goto_14
.end method

.method private static delta(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 842
    if-lez p1, :cond_34

    const-string v0, "#41ff16"

    .line 843
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": <font color=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-lez p1, :cond_3c

    const-string v0, "+"

    :goto_21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</font>&nbsp;&nbsp; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 842
    :cond_34
    if-gez p1, :cond_39

    const-string v0, "#ff5a4a"

    goto :goto_4

    :cond_39
    const-string v0, "#c8c8c8"

    goto :goto_4

    .line 843
    :cond_3c
    const-string v0, ""

    goto :goto_21
.end method

.method public static drawHud(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 12

    .prologue
    .line 400
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModArt;->frameEnd(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 402
    :try_start_3
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v10, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 403
    if-eqz v10, :cond_19

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v0, :cond_19

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->config:Lfr/testudo/spacecorsair/game/Config;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Config;->hideHud:Z

    if-eqz v0, :cond_1a

    .line 442
    :cond_19
    :goto_19
    return-void

    .line 404
    :cond_1a
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->barNumbers()Z

    move-result v0

    if-eqz v0, :cond_fd

    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

    if-eqz v0, :cond_fd

    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->shieldBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

    if-eqz v0, :cond_fd

    .line 405
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

    iget-object v0, v0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

    iget v1, v1, Lfr/testudo/spacecorsair/display/hud/InfoBar;->witdh:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    add-float/2addr v0, v1

    float-to-int v2, v0

    .line 406
    const/4 v0, 0x0

    iget v1, v10, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, v10, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 407
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModQol;->lifeText:Ljava/lang/String;

    if-eqz v3, :cond_57

    sget v3, Lfr/testudo/spacecorsair/mod/ModQol;->lifeA:I

    if-ne v0, v3, :cond_57

    sget v3, Lfr/testudo/spacecorsair/mod/ModQol;->lifeB:I

    if-eq v1, v3, :cond_74

    .line 408
    :cond_57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lfr/testudo/spacecorsair/mod/ModQol;->lifeText:Ljava/lang/String;

    .line 409
    sput v0, Lfr/testudo/spacecorsair/mod/ModQol;->lifeA:I

    .line 410
    sput v1, Lfr/testudo/spacecorsair/mod/ModQol;->lifeB:I

    .line 412
    :cond_74
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->lifeText:Ljava/lang/String;

    sget v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    sget-object v3, Lfr/testudo/spacecorsair/engine/GameRenderer;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

    iget-object v3, v3, Lfr/testudo/spacecorsair/display/hud/InfoBar;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    float-to-int v3, v3

    sub-int/2addr v0, v3

    add-int/lit8 v3, v0, -0x7

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f0ccccd    # 0.55f

    const v7, 0x3f0ccccd    # 0.55f

    const/4 v8, 0x1

    sget-object v9, Lfr/testudo/spacecorsair/textengine/TextSize;->LITTLE:Lfr/testudo/spacecorsair/textengine/TextSize;

    move-object v0, p0

    invoke-static/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawText(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IIFFFFZLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 414
    iget-object v0, v10, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    if-eqz v0, :cond_fd

    iget-object v0, v10, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_fd

    .line 415
    const/4 v0, 0x0

    iget-object v1, v10, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, v10, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 416
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModQol;->shieldText:Ljava/lang/String;

    if-eqz v3, :cond_c1

    sget v3, Lfr/testudo/spacecorsair/mod/ModQol;->shieldA:I

    if-ne v0, v3, :cond_c1

    sget v3, Lfr/testudo/spacecorsair/mod/ModQol;->shieldB:I

    if-eq v1, v3, :cond_de

    .line 417
    :cond_c1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lfr/testudo/spacecorsair/mod/ModQol;->shieldText:Ljava/lang/String;

    .line 418
    sput v0, Lfr/testudo/spacecorsair/mod/ModQol;->shieldA:I

    .line 419
    sput v1, Lfr/testudo/spacecorsair/mod/ModQol;->shieldB:I

    .line 421
    :cond_de
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->shieldText:Ljava/lang/String;

    sget v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    sget-object v3, Lfr/testudo/spacecorsair/engine/GameRenderer;->shieldBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

    iget-object v3, v3, Lfr/testudo/spacecorsair/display/hud/InfoBar;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    float-to-int v3, v3

    sub-int/2addr v0, v3

    add-int/lit8 v3, v0, -0x7

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f0ccccd    # 0.55f

    const v6, 0x3f59999a    # 0.85f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    sget-object v9, Lfr/testudo/spacecorsair/textengine/TextSize;->LITTLE:Lfr/testudo/spacecorsair/textengine/TextSize;

    move-object v0, p0

    invoke-static/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawText(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IIFFFFZLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 425
    :cond_fd
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->unread()I

    move-result v0

    .line 426
    if-lez v0, :cond_17b

    .line 427
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->inboxText:Ljava/lang/String;

    if-eqz v1, :cond_111

    sget v1, Lfr/testudo/spacecorsair/mod/ModQol;->inboxN:I

    if-ne v0, v1, :cond_111

    sget-object v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextLittle:Lfr/testudo/spacecorsair/textengine/GLText;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModQol;->inboxFont:Ljava/lang/Object;

    if-eq v1, v2, :cond_143

    .line 428
    :cond_111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INBOX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new  (open from the Ships or Station screen)"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->inboxText:Ljava/lang/String;

    .line 429
    sput v0, Lfr/testudo/spacecorsair/mod/ModQol;->inboxN:I

    .line 430
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextLittle:Lfr/testudo/spacecorsair/textengine/GLText;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->inboxFont:Ljava/lang/Object;

    .line 431
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextLittle:Lfr/testudo/spacecorsair/textengine/GLText;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->inboxText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sput v0, Lfr/testudo/spacecorsair/mod/ModQol;->inboxHalf:F

    .line 433
    :cond_143
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->inboxText:Ljava/lang/String;

    .line 434
    sget v0, Lfr/testudo/spacecorsair/mod/ModQol;->inboxHalf:F

    .line 435
    const v2, 0x3f19999a    # 0.6f

    const v3, 0x3ecccccd    # 0.4f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide/high16 v6, 0x4079000000000000L    # 400.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    add-float v4, v2, v3

    .line 436
    sget v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthX:I

    int-to-float v2, v2

    sub-float v0, v2, v0

    float-to-int v2, v0

    sget v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    add-int/lit8 v3, v0, -0x64

    const v5, 0x3e2e147b    # 0.17f

    const v6, 0x3f59999a    # 0.85f

    const v7, 0x3ed70a3d    # 0.42f

    const/4 v8, 0x1

    sget-object v9, Lfr/testudo/spacecorsair/textengine/TextSize;->LITTLE:Lfr/testudo/spacecorsair/textengine/TextSize;

    move-object v0, p0

    invoke-static/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawText(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IIFFFFZLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 438
    :cond_17b
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModQol;->buttonsDirty:Z

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModQol;->buttonsDirty:Z

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->buttons()V
    :try_end_185
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_185} :catch_187

    goto/16 :goto_19

    .line 439
    :catch_187
    move-exception v0

    goto/16 :goto_19
.end method

.method static findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 319
    :goto_0
    if-eqz p0, :cond_11

    const-class v0, Ljava/lang/Object;

    if-eq p0, v0, :cond_11

    .line 321
    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_b

    move-result-object v0

    .line 326
    :goto_a
    return-object v0

    .line 322
    :catch_b
    move-exception v0

    .line 323
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 326
    :cond_11
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static fixedStick()Z
    .registers 1

    .prologue
    .line 204
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->load()V

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModQol;->optStick:Z

    return v0
.end method

.method public static galaxyExtra(Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 11

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    .line 657
    if-nez p0, :cond_8

    .line 691
    :cond_7
    :goto_7
    return-void

    .line 658
    :cond_8
    :try_start_8
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModMap;->territory(Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_b} :catch_137
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_10d

    .line 659
    :goto_b
    :try_start_b
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v2

    .line 660
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->mapTexts:[Ljava/lang/String;

    if-eqz v1, :cond_19

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->mapFont:Ljava/lang/Object;

    sget-object v3, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormalPlus:Lfr/testudo/spacecorsair/textengine/GLText;

    if-eq v1, v3, :cond_39

    .line 661
    :cond_19
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/LevelId;->values()[Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v1

    array-length v1, v1

    .line 662
    new-array v3, v1, [Ljava/lang/String;

    sput-object v3, Lfr/testudo/spacecorsair/mod/ModQol;->mapTexts:[Ljava/lang/String;

    .line 663
    new-array v1, v1, [F

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->mapHalf:[F

    .line 664
    sget-object v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormalPlus:Lfr/testudo/spacecorsair/textengine/GLText;

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->mapFont:Ljava/lang/Object;

    .line 665
    sget-object v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormalPlus:Lfr/testudo/spacecorsair/textengine/GLText;

    const-string v3, ">> MISSION <<"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v1

    div-float/2addr v1, v6

    sput v1, Lfr/testudo/spacecorsair/mod/ModQol;->missionHalf:F

    .line 667
    :cond_39
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->mapTexts:[Ljava/lang/String;

    aget-object v3, v1, v2

    .line 668
    if-nez v3, :cond_8f

    .line 670
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 671
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->GALACTIC_ARENA:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eq p0, v1, :cond_6a

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eq p0, v1, :cond_6a

    iget v1, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMin:I

    iget v4, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    if-ne v1, v4, :cond_110

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Lv "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMin:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_67
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    :cond_6a
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->SHOPS:[Lfr/testudo/spacecorsair/game/levels/LevelId;

    array-length v4, v1

    :goto_6d
    if-ge v0, v4, :cond_7c

    aget-object v5, v1, v0

    if-ne v5, p0, :cond_133

    const-string v0, "  $ shop"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    :cond_7c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 674
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->mapHalf:[F

    sget-object v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormalPlus:Lfr/testudo/spacecorsair/textengine/GLText;

    invoke-virtual {v1, v3}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v1

    div-float/2addr v1, v6

    aput v1, v0, v2

    .line 675
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->mapTexts:[Ljava/lang/String;

    aput-object v3, v0, v2

    .line 677
    :cond_8f
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMin:I

    iget v1, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v4, v4, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v4, v4, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    invoke-static {v0, v1, v4}, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->getOfLevelDifference(III)Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    move-result-object v6

    .line 678
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->mapHalf:[F

    aget v0, v0, v2

    .line 679
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->mapText:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    neg-float v0, v0

    const/high16 v2, 0x42d20000    # 105.0f

    invoke-virtual {v1, v0, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 680
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->mapText:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    iget v4, v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->r:F

    iget v5, v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->g:F

    iget v6, v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->b:F

    const/high16 v7, 0x3f800000    # 1.0f

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 681
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->missionSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    if-ne p0, v0, :cond_7

    .line 682
    const-string v0, ">> MISSION <<"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 683
    sget v0, Lfr/testudo/spacecorsair/mod/ModQol;->missionHalf:F

    .line 684
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->mapText:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    neg-float v0, v0

    const/high16 v2, 0x43110000    # 145.0f

    invoke-virtual {v1, v0, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 685
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v4, 0x4072c00000000000L    # 300.0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v9

    add-float v7, v9, v0

    .line 686
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->mapText:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f59999a    # 0.85f

    const/high16 v6, 0x3e800000    # 0.25f

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    goto/16 :goto_7

    .line 688
    :catch_10d
    move-exception v0

    goto/16 :goto_7

    .line 671
    :cond_110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Lv "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMin:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_130} :catch_10d

    move-result-object v1

    goto/16 :goto_67

    .line 672
    :cond_133
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6d

    .line 658
    :catch_137
    move-exception v1

    goto/16 :goto_b
.end method

.method public static gateLabel(Lfr/testudo/spacecorsair/business/world/Portal;)V
    .registers 10

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 353
    :try_start_2
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->levelByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    .line 354
    if-eqz v0, :cond_12

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->GALACTIC_ARENA:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eq v0, v1, :cond_12

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-ne v0, v1, :cond_13

    .line 375
    :cond_12
    :goto_12
    return-void

    .line 355
    :cond_13
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    .line 356
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModQol;->gateTexts:[Ljava/lang/String;

    if-eqz v2, :cond_21

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModQol;->gateFont:Ljava/lang/Object;

    sget-object v3, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormalPlus:Lfr/testudo/spacecorsair/textengine/GLText;

    if-eq v2, v3, :cond_32

    .line 357
    :cond_21
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/LevelId;->values()[Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v2

    array-length v2, v2

    .line 358
    new-array v3, v2, [Ljava/lang/String;

    sput-object v3, Lfr/testudo/spacecorsair/mod/ModQol;->gateTexts:[Ljava/lang/String;

    .line 359
    new-array v2, v2, [F

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModQol;->gateHalf:[F

    .line 360
    sget-object v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormalPlus:Lfr/testudo/spacecorsair/textengine/GLText;

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModQol;->gateFont:Ljava/lang/Object;

    .line 362
    :cond_32
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModQol;->gateTexts:[Ljava/lang/String;

    aget-object v3, v2, v1

    .line 363
    if-nez v3, :cond_66

    .line 364
    iget v2, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMin:I

    iget v3, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    if-ne v2, v3, :cond_ab

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Level "

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 365
    :goto_57
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModQol;->gateHalf:[F

    sget-object v4, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormalPlus:Lfr/testudo/spacecorsair/textengine/GLText;

    invoke-virtual {v4, v3}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v4

    div-float/2addr v4, v5

    aput v4, v2, v1

    .line 366
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModQol;->gateTexts:[Ljava/lang/String;

    aput-object v3, v2, v1

    .line 368
    :cond_66
    iget v2, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMin:I

    iget v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v4, v4, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v4, v4, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    invoke-static {v2, v0, v4}, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->getOfLevelDifference(III)Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    move-result-object v6

    .line 369
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->gateHalf:[F

    aget v0, v0, v1

    .line 370
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->gateText:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    neg-float v0, v0

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/Portal;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v2

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float/2addr v2, v5

    const/high16 v4, 0x42b40000    # 90.0f

    sub-float/2addr v2, v4

    invoke-virtual {v1, v0, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 371
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->gateText:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    iget v4, v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->r:F

    iget v5, v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->g:F

    iget v6, v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->b:F

    const/high16 v7, 0x3f800000    # 1.0f

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    goto/16 :goto_12

    .line 372
    :catch_a8
    move-exception v0

    goto/16 :goto_12

    .line 364
    :cond_ab
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Level "

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_cf} :catch_a8

    move-result-object v3

    goto :goto_57
.end method

.method private static hint(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<br><br><font color=\'#e0c88a\'><i>Rumour: "

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</i></font>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static joyTouch(II)I
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 620
    :try_start_2
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->fixedStick()Z

    move-result v2

    if-nez v2, :cond_c

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModQol;->floating:Z

    if-eqz v2, :cond_e

    :cond_c
    move v0, v1

    .line 630
    :goto_d
    return v0

    .line 621
    :cond_e
    sget v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    sub-int/2addr v2, p1

    .line 622
    int-to-float v3, p0

    sget v4, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthX:I

    int-to-float v4, v4

    const v5, 0x3ee66666    # 0.45f

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_28

    int-to-float v3, v2

    sget v4, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    int-to-float v4, v4

    const/high16 v5, 0x3f400000    # 0.75f

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2a

    :cond_28
    move v0, v1

    goto :goto_d

    .line 623
    :cond_2a
    sget v3, Lfr/testudo/spacecorsair/mod/ModQol;->homeX:I

    if-gez v3, :cond_36

    sget v3, Lfr/testudo/spacecorsair/display/hud/Joystick;->POSX:I

    sput v3, Lfr/testudo/spacecorsair/mod/ModQol;->homeX:I

    sget v3, Lfr/testudo/spacecorsair/display/hud/Joystick;->POSY:I

    sput v3, Lfr/testudo/spacecorsair/mod/ModQol;->homeY:I

    .line 624
    :cond_36
    sput p0, Lfr/testudo/spacecorsair/display/hud/Joystick;->POSX:I

    .line 625
    sput v2, Lfr/testudo/spacecorsair/display/hud/Joystick;->POSY:I

    .line 626
    sget-object v3, Lfr/testudo/spacecorsair/display/hud/Joystick;->drawPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    int-to-float v4, p0

    int-to-float v2, v2

    invoke-virtual {v3, v4, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 627
    const/4 v2, 0x1

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModQol;->floating:Z
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_44} :catch_45

    goto :goto_d

    .line 629
    :catch_45
    move-exception v0

    move v0, v1

    .line 630
    goto :goto_d
.end method

.method public static joyUp()V
    .registers 3

    .prologue
    .line 636
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModQol;->floating:Z

    if-nez v0, :cond_5

    .line 643
    :cond_4
    :goto_4
    return-void

    .line 637
    :cond_5
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModQol;->floating:Z

    .line 638
    sget v0, Lfr/testudo/spacecorsair/mod/ModQol;->homeX:I

    if-ltz v0, :cond_4

    .line 639
    sget v0, Lfr/testudo/spacecorsair/mod/ModQol;->homeX:I

    sput v0, Lfr/testudo/spacecorsair/display/hud/Joystick;->POSX:I

    .line 640
    sget v0, Lfr/testudo/spacecorsair/mod/ModQol;->homeY:I

    sput v0, Lfr/testudo/spacecorsair/display/hud/Joystick;->POSY:I

    .line 641
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/Joystick;->drawPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    sget v1, Lfr/testudo/spacecorsair/mod/ModQol;->homeX:I

    int-to-float v1, v1

    sget v2, Lfr/testudo/spacecorsair/mod/ModQol;->homeY:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_4
.end method

.method static levelByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 381
    if-nez p0, :cond_4

    .line 389
    :cond_3
    :goto_3
    return-object v1

    .line 382
    :cond_4
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->levelNames:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 383
    if-eqz v0, :cond_16

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModQol;->NO_LEVEL:Ljava/lang/Object;

    if-ne v0, v2, :cond_13

    move-object v0, v1

    :goto_11
    move-object v1, v0

    goto :goto_3

    :cond_13
    check-cast v0, Lfr/testudo/spacecorsair/game/levels/LevelId;

    goto :goto_11

    .line 385
    :cond_16
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/LevelId;->values()[Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1d
    if-ge v2, v4, :cond_2a

    aget-object v0, v3, v2

    .line 386
    iget-object v5, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    move-object v1, v0

    .line 388
    :cond_2a
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->levelNames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v2, 0x200

    if-ge v0, v2, :cond_3

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModQol;->levelNames:Ljava/util/Map;

    if-eqz v1, :cond_41

    move-object v0, v1

    :goto_39
    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 385
    :cond_3d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1d

    .line 388
    :cond_41
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->NO_LEVEL:Ljava/lang/Object;

    goto :goto_39
.end method

.method private static load()V
    .registers 7

    .prologue
    const/16 v6, 0x12

    const/16 v5, 0x11

    const/16 v3, 0x10

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 74
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModQol;->loaded:Z

    if-eqz v0, :cond_d

    .line 202
    :cond_c
    :goto_c
    return-void

    .line 75
    :cond_d
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_c

    .line 77
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModQol;->loaded:Z

    .line 78
    const-string v0, "fixedStick"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModQol;->optStick:Z

    .line 79
    const-string v0, "barNumbers"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModQol;->optBars:Z

    .line 80
    const-string v0, "damageNumbers"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModQol;->optDmg:Z

    .line 81
    const-string v0, "bigButtons"

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModQol;->optBig:Z

    .line 82
    const-string v0, "shake"

    const v2, 0x3f19999a    # 0.6f

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModQol;->optShake:F

    .line 83
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModQol;->loadInbox(Landroid/content/SharedPreferences;)V

    .line 84
    const-string v0, "modVersion"

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ge v0, v3, :cond_61

    .line 85
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "modVersion"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 86
    const-string v0, "Mod v16: Ship tree (Ships screen), Inbox, Sort and Sell junk buttons in shops, confirm before selling Rare+ items, where-to-find lines in item descriptions, ship comparisons, gate and galaxy-map level ranges, damage numbers, bar numbers, screen shake, optional floating joystick and bigger buttons (Settings), free repairs for Tech I hulls, sector police, and two titans at level 17: Leviathan and the new Crimson Throne."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 91
    :cond_61
    const-string v0, "modVersion"

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ge v0, v5, :cond_7f

    .line 92
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "modVersion"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 93
    const-string v0, "Mod v16.5 economy: enemies now pay a credit bounty that grows with their level (bosses pay 8x, elites 2x; nothing for enemies 4+ levels below you), story missions pay 3x credits, gear sells for 25% of its value instead of 15%, and ship prices were rebalanced (battleships about 1.1-2M, Nebula Moth 3.5M, Crimson Throne 6M, Leviathan 7M)."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 98
    :cond_7f
    const-string v0, "modVersion"

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ge v0, v6, :cond_9d

    .line 99
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "modVersion"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 100
    const-string v0, "Mod v16.6: shop and inventory lists now scroll clear of the mod toolbar, so the last BUY/SELL/DETAILS buttons are always reachable. Stations have a new Gift code button."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 103
    :cond_9d
    const-string v0, "modVersion"

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x13

    if-ge v0, v2, :cond_bf

    .line 104
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "modVersion"

    const/16 v3, 0x13

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 105
    const-string v0, "Mod v16.8: scrollbars stay visible on every scrollable screen (item details, missions, lists, settings), and long ship descriptions scroll inside their box with a scrollbar. Fixed the Ships screen crash."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 108
    :cond_bf
    const-string v0, "modVersion"

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x14

    if-ge v0, v2, :cond_e1

    .line 109
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "modVersion"

    const/16 v3, 0x14

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 110
    const-string v0, "Mod v17 capital ships: engine plumes, running lights, auras and wakes on the top tier of every class; big hulls now show smoke, fire, scorch marks and hull cracks as they take damage (they disappear once repaired), plus a visible self-repair effect. Titans get new turrets with heavier shots, siege missiles with a wider blast, and a manual EVE-style doomsday: Leviathan and X-0 fire a sustained lance, the Crimson Throne a furnace nova. Press DOOMSDAY at the bottom of the screen."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 115
    :cond_e1
    const-string v0, "modVersion"

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_103

    .line 116
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "modVersion"

    const/16 v3, 0x15

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 117
    const-string v0, "Mod v19: six new weapon families (Railgun, Autocannon, Artillery, Blaster, Disintegrator, Arc Projector) in 4 tiers at laser shops (Ventohigh, Spartan HQ, smugglers, Omicron Prime) and as rare drops. Each faction now keeps a flagship at its HQ (Spartan HQ, Pirate Bay, The Hive, Omicron Prime, Ore Belt, Heliostat, Highway): neutral unless you deal 10% of its hull or attack civilians near it. The DEV kit now only fits the X-0 and swaps in and out with it. Doomsday lances are as wide as 60% of the titan."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 122
    :cond_103
    const-string v0, "modVersion"

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x16

    if-ge v0, v2, :cond_125

    .line 123
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "modVersion"

    const/16 v3, 0x16

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 124
    const-string v0, "Mod v20: the doomsday lance is now a solid band as wide as its damage area. Railgun slugs and artillery shells are larger and leave trails. Fixed a crash when Android restored the Ships screen after closing the game in the background."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 127
    :cond_125
    const-string v0, "modVersion"

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_147

    .line 128
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "modVersion"

    const/16 v3, 0x17

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 129
    const-string v0, "Mod v21: the seven factions now have commanders and story chains (21 missions). Fly to a faction HQ and press HAIL to talk to its commander aboard the flagship: Spartan HQ, Pirate Bay, The Hive, Omicron Prime, Ore Belt, Heliostat, Highway. Chains open from level 10 and end in battles beside, or against, the flagships. The Leviathan and Crimson Throne have new hulls and turrets, and every faction flagship has new turrets."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 134
    :cond_147
    const-string v0, "modVersion"

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x18

    if-ge v0, v2, :cond_169

    .line 135
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "modVersion"

    const/16 v3, 0x18

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 136
    const-string v0, "Mod v22: faction STANDINGS (toolbar button). Missions (+15, finale +20) and contracts (+6) raise your standing; allies share half, enemies lose half. Friendly: +10% payouts, the flagship forgives 25% friendly fire. Trusted: +20%, the flagship gives fire support and its HQ sells a secret faction weapon. Honored: +35% and a secret ship (coming next). Each HQ now offers two daily contracts, or amends jobs if you are Unfriendly. New flagship, Nebula Moth and faction emblem art, weapon-family icons, and combat sounds (alerts, all clear, disengaging enemies, low hull alarm, shield collapse)."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 142
    :cond_169
    const-string v0, "modVersion"

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x19

    if-ge v0, v2, :cond_18b

    .line 143
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "modVersion"

    const/16 v3, 0x19

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 144
    const-string v0, "Mod v23: 21 Exceptional hulls redrawn (each with its own engine glow; Shade, Hornet, Raptor, Sanctum, Bulwark, Warlord, Harbinger and Tempest now belong to factions). Weapon families bring their own turrets: rails, rotary cannons, artillery barrels, blasters, prism emitters and tesla coils, sized to the hull. Seven secret faction ships appear on the Ships screen at Trusted and can be bought at Honored: SRS Resolute, Pillager\'s Due, Cradle of Echoes, Indemnity Crown, Foundry Sentinel, Far Meridian, Wayfarer Prime."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 149
    :cond_18b
    const-string v0, "modVersion"

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_1ad

    .line 150
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "modVersion"

    const/16 v3, 0x1a

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 151
    const-string v0, "Mod v24: the Ships screen is now a faction tech tree (tap a faction emblem, tap a ship for its card, OPEN for its page; BACK returns to the tree). My Ship is a fitting view: hull art with hardpoints, slots around it, full stats; CLASSIC switches back. Shields hug the hull and glow on it while up. A collapsed shield reboots in 1.3 s once above 50% hull and once more below; after that it recharges at half speed until you use a repair. The original alien hulls (Rat, Ufo, Blatte) now sit in the Kre\'tari Brood tree. Ship art is back at full resolution and loads only when needed."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 157
    :cond_1ad
    const-string v0, "modVersion"

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x1b

    if-ge v0, v2, :cond_1cf

    .line 158
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "modVersion"

    const/16 v3, 0x1b

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 159
    const-string v0, "Mod v25: Spanish! Settings > Language / Idioma (Auto, English, Espanol); restart the game after switching. 15 more hulls redrawn in their new factions\' styles (Viper, Bastion, Albatros, Mule, Tortoise, Monolith, Comet, Kite, Seraph, Bulldog, Ironside, Tidewarden, Mantis, Verdant, Imperator) with new lore; new Ships tree and fitting screen art; a new shield bubble with hit ripples; new doomsday charge, nova ring, lance core and explosion effects."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 164
    :cond_1cf
    const-string v0, "modVersion"

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x1c

    if-ge v0, v2, :cond_1f3

    .line 165
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "modVersion"

    const/16 v3, 0x1c

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 166
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->spanish()Z

    move-result v0

    if-eqz v0, :cond_261

    .line 167
    const-string v0, "Mod v26: todo el mod en espanol: misiones de faccion, contratos, reputacion, descripciones y lore de naves, armas y avisos. Las 15 naves del lote 3 tienen el nuevo acabado hibrido."

    .line 166
    :goto_1f0
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 172
    :cond_1f3
    const-string v0, "modVersion"

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_217

    .line 173
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "modVersion"

    const/16 v3, 0x1d

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 174
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->spanish()Z

    move-result v0

    if-eqz v0, :cond_264

    .line 175
    const-string v0, "Mod v28: las naves originales del juego (Corsair one, Condor, Hullraiser, Cosmowarrior, Enforcer, Arwing, Regent y el crucero Guardian) tienen arte remasterizado con el acabado hibrido, tambien como enemigos. El OVNI conserva su animacion original."

    .line 174
    :goto_214
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 180
    :cond_217
    const-string v0, "modVersion"

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_23b

    .line 181
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "modVersion"

    const/16 v3, 0x1e

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 182
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->spanish()Z

    move-result v0

    if-eqz v0, :cond_267

    .line 183
    const-string v0, "Mod v29: el mapa galactico muestra el territorio de cada faccion (capital con emblema y nombre, sectores controlados con su color; el espacio sin reclamar queda neutral). Arreglados los textos de bonificaciones de objetos (missingString) y el escudo ahora cubre todo el casco."

    .line 182
    :goto_238
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 188
    :cond_23b
    const-string v0, "modVersion"

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x1f

    if-ge v0, v2, :cond_c

    .line 189
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "modVersion"

    const/16 v2, 0x1f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 190
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->spanish()Z

    move-result v0

    if-eqz v0, :cond_26a

    .line 191
    const-string v0, "Mod v30: escudos por segmentos que se apagan al perder carga (sin grietas), pulso de recarga y onda en el punto de impacto; la recarga es mas rapida cuanto mas bajo esta el escudo (estilo EVE). Los enemigos recargan a la mitad y no se recuperan desde cero. Las naves grandes se parten en restos fisicos que puedes destruir para obtener botin; tu nave se despedaza antes de reaparecer. Nuevas tablas de botin (casco, nivel, elites, jefes, sector), 12 sitios de restos con historia, jefes con placa de calavera, habilidades unicas y furia, buques insignia con habilidades propias, y naves vivas: luces, motores y criaturas animadas."

    .line 190
    :goto_25c
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 169
    :cond_261
    const-string v0, "Mod v26: the whole mod is now in Spanish when Spanish is selected (faction missions, contracts, standings, ship and weapon descriptions, lore, alerts). All 15 batch-3 hulls now use the new hybrid finish."

    goto :goto_1f0

    .line 177
    :cond_264
    const-string v0, "Mod v28: the original game ships (Corsair one, Condor, Hullraiser, Cosmowarrior, Enforcer, Arwing, Regent and the Guardian cruiser) are remastered in the hybrid finish, as enemies too. The UFO keeps its original spin animation."

    goto :goto_214

    .line 185
    :cond_267
    const-string v0, "Mod v29: the galaxy map shows faction territory (capitals with emblem and name, controlled sectors in faction colours; unclaimed space stays neutral). Fixed item bonus texts showing missingString, and the shield bubble now covers the whole hull."

    goto :goto_238

    .line 196
    :cond_26a
    const-string v0, "Mod v30: segmented shields that power down as they drain (no cracks), a recharge pulse and impact ripples; recharge is fastest when the shield is low (EVE style). Enemies recharge at half rate and never from zero. Big hulls break into physical wrecks you can shoot for loot; your own ship breaks apart before the respawn. New loot tables (hull, level, elites, bosses, sector), 12 lore derelict sites, boss skull plates with unique skills and a one-time enrage, flagship skills, and living ships: lights, engines and animated alien hulls."

    goto :goto_25c
.end method

.method private static declared-synchronized loadInbox(Landroid/content/SharedPreferences;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 499
    const-class v1, Lfr/testudo/spacecorsair/mod/ModQol;

    monitor-enter v1

    :try_start_4
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModQol;->inbox:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 500
    const-string v2, "inbox"

    const-string v3, ""

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 501
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_30

    .line 502
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    :goto_1e
    if-ge v0, v3, :cond_30

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2d

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModQol;->inbox:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 504
    :cond_30
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->inbox:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v2, "inboxRead"

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModQol;->readCount:I
    :try_end_43
    .catchall {:try_start_4 .. :try_end_43} :catchall_45

    .line 505
    monitor-exit v1

    return-void

    .line 499
    :catchall_45
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static missionCredits(I)I
    .registers 1

    .prologue
    .line 216
    return p0
.end method

.method public static missionPay(I)I
    .registers 2

    .prologue
    .line 223
    .line 224
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_d

    .line 225
    :goto_8
    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModV35;->missionCredits(II)I

    move-result v0

    return v0

    .line 224
    :catch_d
    move-exception v0

    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static missionSector()Lfr/testudo/spacecorsair/game/levels/LevelId;
    .registers 13

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 699
    :try_start_2
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 700
    if-nez v0, :cond_a

    move-object v0, v1

    .line 722
    :goto_9
    return-object v0

    .line 701
    :cond_a
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModQol;->lastMission:Ljava/lang/Object;

    if-ne v0, v2, :cond_11

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->lastMissionSector:Lfr/testudo/spacecorsair/game/levels/LevelId;

    goto :goto_9

    .line 702
    :cond_11
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->lastMission:Ljava/lang/Object;

    .line 703
    const/4 v2, 0x0

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModQol;->lastMissionSector:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 704
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    .line 705
    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v6, v4

    const/4 v2, 0x1

    aput-object v0, v6, v2

    array-length v7, v6

    move v5, v3

    :goto_27
    if-ge v5, v7, :cond_68

    aget-object v8, v6, v5

    .line 706
    if-nez v8, :cond_31

    .line 705
    :cond_2d
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_27

    .line 707
    :cond_31
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    move-object v4, v0

    .line 708
    :goto_36
    if-eqz v4, :cond_2d

    const-class v0, Ljava/lang/Object;

    if-eq v4, v0, :cond_2d

    .line 709
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v9

    array-length v10, v9

    move v2, v3

    :goto_42
    if-ge v2, v10, :cond_6e

    aget-object v0, v9, v2

    .line 710
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    const-class v12, Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-ne v11, v12, :cond_6a

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v11

    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v11

    if-nez v11, :cond_6a

    .line 711
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 712
    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 713
    if-eqz v0, :cond_6a

    check-cast v0, Lfr/testudo/spacecorsair/game/levels/LevelId;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->lastMissionSector:Lfr/testudo/spacecorsair/game/levels/LevelId;

    goto :goto_9

    .line 719
    :catch_67
    move-exception v0

    :cond_68
    move-object v0, v1

    .line 722
    goto :goto_9

    .line 709
    :cond_6a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_42

    .line 716
    :cond_6e
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_71} :catch_67

    move-result-object v0

    move-object v4, v0

    goto :goto_36
.end method

.method private static number(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V
    .registers 11

    .prologue
    .line 469
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 470
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModQol;->lastNum:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-lez v2, :cond_13

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModQol;->lastNum:J

    const/4 v0, 0x6

    sput v0, Lfr/testudo/spacecorsair/mod/ModQol;->numBudget:I

    .line 471
    :cond_13
    sget v0, Lfr/testudo/spacecorsair/mod/ModQol;->numBudget:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lfr/testudo/spacecorsair/mod/ModQol;->numBudget:I

    if-gtz v0, :cond_1c

    .line 473
    :goto_1b
    return-void

    .line 472
    :cond_1c
    invoke-static {p0, p1, p2, p3, p4}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    goto :goto_1b
.end method

.method public static onHit(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 451
    if-eqz p2, :cond_c

    :try_start_3
    iget-object v1, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_d

    .line 466
    :cond_c
    :goto_c
    return-void

    .line 452
    :cond_d
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 453
    iget-object v1, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v1, :cond_23

    iget-object v1, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-eq v1, v2, :cond_23

    iget-object v1, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v1

    if-eqz v1, :cond_6f

    :cond_23
    const/4 v1, 0x1

    .line 454
    :goto_24
    iget-boolean v3, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v3, :cond_2a

    if-ne p0, v2, :cond_71

    .line 455
    :cond_2a
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lfr/testudo/spacecorsair/business/Element;->maxLife:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float v1, p1, v1

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v1, 0x3da3d70a    # 0.08f

    add-float/2addr v0, v1

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->addShake(F)V

    .line 456
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->damageNumbers()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3eb33333    # 0.35f

    const v3, 0x3eb33333    # 0.35f

    invoke-static {p0, v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModQol;->number(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    goto :goto_c

    .line 463
    :catch_6d
    move-exception v0

    goto :goto_c

    :cond_6f
    move v1, v0

    .line 453
    goto :goto_24

    .line 457
    :cond_71
    if-eqz v1, :cond_c

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->damageNumbers()Z
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_76} :catch_6d

    move-result v1

    if-eqz v1, :cond_c

    .line 459
    :try_start_79
    iget-boolean v0, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->isCrit:Z
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_7b} :catch_b4
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7b} :catch_6d

    .line 460
    :goto_7b
    if-eqz v0, :cond_a1

    :try_start_7d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f59999a    # 0.85f

    const v3, 0x3e4ccccd    # 0.2f

    invoke-static {p0, v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModQol;->number(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    goto/16 :goto_c

    .line 461
    :cond_a1
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModQol;->number(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_b2} :catch_6d

    goto/16 :goto_c

    .line 459
    :catch_b4
    move-exception v1

    goto :goto_7b
.end method

.method public static onLevelUp(Lfr/testudo/spacecorsair/business/player/PlayerInfo;)V
    .registers 7

    .prologue
    .line 535
    :try_start_0
    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    .line 536
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 537
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_SHIPS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 538
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v4

    .line 539
    if-eqz v4, :cond_d

    iget v4, v4, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->level:I

    if-ne v4, v1, :cond_d

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->isDev(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v4

    const-string v5, "hullSecret"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 540
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v0

    .line 541
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_4c

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    :cond_4c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 557
    :catch_50
    move-exception v0

    .line 560
    :goto_51
    return-void

    .line 545
    :cond_52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Level "

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " reached."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 546
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_96

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " New ships you can fly: "

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 547
    :cond_96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " Level "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " lasers, shields and missiles can now be equipped."

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 548
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 549
    const/16 v0, 0xa

    if-ne v1, v0, :cond_f4

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pilot stats unlock at level 10. They are automatic."

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "ATK: more damage. DEF: less damage taken. REA: dodge."

    .line 551
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "The last 200 points come from faction storylines."

    .line 552
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 550
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 554
    :cond_f4
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModUi;->markNewShips(I)V

    .line 555
    sget-object v1, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->messageHaut:Ljava/lang/String;

    .line 556
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_11b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New ships: "

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 555
    :goto_116
    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_51

    .line 556
    :cond_11b
    const-string v0, "New gear tier unlocked"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_120} :catch_50

    move-result-object v0

    goto :goto_116
.end method

.method public static policeLevel(Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;I)V
    .registers 8

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 774
    :try_start_2
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->policeSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    array-length v0, v0

    add-int/lit8 v1, v0, -0x1

    .line 776
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    if-eqz v0, :cond_34

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 777
    :goto_17
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->HIGHWAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-ne v0, v2, :cond_60

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 778
    :goto_29
    if-gt v0, v1, :cond_36

    .line 779
    if-eq v0, p1, :cond_33

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->level:I

    if-le v0, v1, :cond_33

    .line 780
    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->level:I

    .line 793
    :cond_33
    :goto_33
    return-void

    .line 776
    :cond_34
    const/4 v0, 0x0

    goto :goto_17

    .line 784
    :cond_36
    const v2, 0x3df5c28f    # 0.12f

    sub-int v3, v0, v1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v5

    .line 785
    iget v3, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->maxLife:F

    mul-float/2addr v3, v2

    iput v3, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->maxLife:F

    .line 786
    iget v3, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->maxLife:F

    iput v3, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->life:F

    .line 787
    iget v3, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->bulletDamage:F

    const v4, 0x3dcccccd    # 0.1f

    sub-int v1, v0, v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    add-float/2addr v1, v5

    mul-float/2addr v1, v3

    iput v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->bulletDamage:F

    .line 788
    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->level:I

    .line 789
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->xp:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->xp:I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5d} :catch_5e

    goto :goto_33

    .line 790
    :catch_5e
    move-exception v0

    goto :goto_33

    :cond_60
    move v0, p1

    goto :goto_29
.end method

.method public static post(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 525
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->load()V

    .line 526
    const-class v1, Lfr/testudo/spacecorsair/mod/ModQol;

    monitor-enter v1

    .line 527
    :try_start_6
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->inbox:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->saveInbox()V

    .line 529
    monitor-exit v1

    .line 530
    return-void

    .line 529
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_10

    throw v0
.end method

.method static prefs()Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 63
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->prefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_13

    .line 65
    :try_start_4
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    const-string v1, "modqol"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->prefs:Landroid/content/SharedPreferences;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_13} :catch_16

    .line 70
    :cond_13
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->prefs:Landroid/content/SharedPreferences;

    :goto_15
    return-object v0

    .line 66
    :catch_16
    move-exception v0

    .line 67
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private static save(Ljava/lang/String;Z)V
    .registers 3

    .prologue
    .line 248
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_11
    return-void
.end method

.method private static declared-synchronized saveInbox()V
    .registers 8

    .prologue
    .line 508
    const-class v3, Lfr/testudo/spacecorsair/mod/ModQol;

    monitor-enter v3

    :try_start_3
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_84

    move-result-object v4

    .line 509
    if-nez v4, :cond_b

    .line 520
    :goto_9
    monitor-exit v3

    return-void

    .line 510
    :cond_b
    :try_start_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 511
    const/4 v0, 0x0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->inbox:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x28

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v1, v2

    .line 512
    :goto_1e
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->inbox:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_43

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->inbox:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v6, 0xa

    const/16 v7, 0x20

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1e

    .line 513
    :cond_43
    if-lez v2, :cond_6a

    .line 514
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->inbox:Ljava/util/List;

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModQol;->inbox:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v1, v2, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 515
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->inbox:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 516
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->inbox:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 517
    const/4 v0, 0x0

    sget v1, Lfr/testudo/spacecorsair/mod/ModQol;->readCount:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModQol;->readCount:I

    .line 519
    :cond_6a
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "inbox"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "inboxRead"

    sget v2, Lfr/testudo/spacecorsair/mod/ModQol;->readCount:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_83
    .catchall {:try_start_b .. :try_end_83} :catchall_84

    goto :goto_9

    .line 508
    :catchall_84
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static sellFactor()F
    .registers 1

    .prologue
    .line 213
    const/high16 v0, 0x3e800000    # 0.25f

    return v0
.end method

.method public static settings(Ljava/lang/Object;)V
    .registers 8

    .prologue
    const/high16 v6, 0x42c80000    # 100.0f

    .line 253
    :try_start_2
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->load()V

    .line 254
    check-cast p0, Landroid/app/Activity;

    .line 255
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "ckbHideHud"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModQol;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 256
    :goto_1b
    if-nez v0, :cond_20

    .line 299
    :cond_1d
    :goto_1d
    return-void

    .line 255
    :cond_1e
    const/4 v0, 0x0

    goto :goto_1b

    .line 257
    :cond_20
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 258
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 259
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1d

    .line 260
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 261
    const-string v2, "modqolOptions"

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1d

    .line 262
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 263
    const-string v3, "modqolOptions"

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 264
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 265
    const/high16 v3, 0x41000000    # 8.0f

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 266
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 267
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 268
    const-string v4, "Corsair mod options"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    const v4, -0x952f01

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 270
    const/4 v4, 0x2

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 271
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 272
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->selector(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 273
    const-string v3, "Fixed joystick (off = joystick appears under your thumb)"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "fixedStick"

    sget-boolean v5, Lfr/testudo/spacecorsair/mod/ModQol;->optStick:Z

    invoke-static {p0, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModQol;->check(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 274
    const-string v3, "Numbers on hull and shield bars"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "barNumbers"

    sget-boolean v5, Lfr/testudo/spacecorsair/mod/ModQol;->optBars:Z

    invoke-static {p0, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModQol;->check(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 275
    const-string v3, "Damage numbers"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "damageNumbers"

    sget-boolean v5, Lfr/testudo/spacecorsair/mod/ModQol;->optDmg:Z

    invoke-static {p0, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModQol;->check(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 276
    const-string v3, "Bigger buttons"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "bigButtons"

    sget-boolean v5, Lfr/testudo/spacecorsair/mod/ModQol;->optBig:Z

    invoke-static {p0, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModQol;->check(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 277
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 278
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 279
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Screen shake: "

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lfr/testudo/spacecorsair/mod/ModQol;->optShake:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 281
    new-instance v4, Landroid/widget/SeekBar;

    invoke-direct {v4, p0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 282
    const/16 v5, 0x96

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 283
    sget v5, Lfr/testudo/spacecorsair/mod/ModQol;->optShake:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 284
    new-instance v5, Lfr/testudo/spacecorsair/mod/ModQol$1;

    invoke-direct {v5, v3}, Lfr/testudo/spacecorsair/mod/ModQol$1;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 294
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 295
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_126} :catch_128

    goto/16 :goto_1d

    .line 296
    :catch_128
    move-exception v0

    goto/16 :goto_1d
.end method

.method public static shakeLevel()F
    .registers 1

    .prologue
    .line 208
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->load()V

    sget v0, Lfr/testudo/spacecorsair/mod/ModQol;->optShake:F

    return v0
.end method

.method public static showInbox(Landroid/app/Activity;)V
    .registers 6

    .prologue
    .line 565
    :try_start_0
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->load()V

    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 567
    const-class v3, Lfr/testudo/spacecorsair/mod/ModQol;

    monitor-enter v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_7a

    .line 568
    :try_start_b
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->inbox:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "No messages yet. Level-ups and new unlocks are listed here."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    :cond_1c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->inbox:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_25
    if-ltz v1, :cond_49

    .line 570
    sget v0, Lfr/testudo/spacecorsair/mod/ModQol;->readCount:I

    if-lt v1, v0, :cond_46

    const-string v0, "NEW  "

    :goto_2d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->inbox:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_25

    .line 570
    :cond_46
    const-string v0, ""

    goto :goto_2d

    .line 572
    :cond_49
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->inbox:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModQol;->readCount:I

    .line 573
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->saveInbox()V

    .line 574
    monitor-exit v3
    :try_end_55
    .catchall {:try_start_b .. :try_end_55} :catchall_77

    .line 575
    :try_start_55
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Inbox"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_76} :catch_7a

    .line 579
    :goto_76
    return-void

    .line 574
    :catchall_77
    move-exception v0

    :try_start_78
    monitor-exit v3
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    :try_start_79
    throw v0
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7a} :catch_7a

    .line 576
    :catch_7a
    move-exception v0

    goto :goto_76
.end method

.method static source(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 798
    :try_start_0
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v1

    .line 799
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSpecs;->FAMILY_NAMES:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v3, :cond_33

    aget-object v4, v2, v0

    .line 800
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 801
    const-string v0, "megatron"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "Guardian-class cruisers carry this. Pilots who take them down sometimes come home with one."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->hint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 817
    :goto_24
    return-object v0

    .line 802
    :cond_25
    const-string v0, "Alien hulls sometimes carry this. The bigger the alien, the better the odds."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->hint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 799
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 805
    :cond_33
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModSources;->shop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 806
    if-eqz v0, :cond_57

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<br><br><font color=\'#6ad0ff\'><b>Sold at:</b> "

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</font>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 807
    :cond_57
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    .line 808
    if-eqz v0, :cond_9b

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v1

    if-eqz v1, :cond_9b

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getRaretySort()I

    move-result v1

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getRaretySort()I

    move-result v2

    if-lt v1, v2, :cond_9b

    .line 809
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Legendary gear is never sold. Elite enemies and bosses near level "

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->level:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " are your best chance."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->hint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 811
    :cond_9b
    if-eqz v0, :cond_c9

    instance-of v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-nez v1, :cond_c9

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->isEquipable()Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 812
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<br><br><font color=\'#c8c8c8\'><b>Found:</b> dropped by enemies around level "

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->level:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".</font>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c5} :catch_c8

    move-result-object v0

    goto/16 :goto_24

    .line 814
    :catch_c8
    move-exception v0

    .line 817
    :cond_c9
    const-string v0, ""

    goto/16 :goto_24
.end method

.method public static unread()I
    .registers 3

    .prologue
    .line 522
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->load()V

    const/4 v0, 0x0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->inbox:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lfr/testudo/spacecorsair/mod/ModQol;->readCount:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method
