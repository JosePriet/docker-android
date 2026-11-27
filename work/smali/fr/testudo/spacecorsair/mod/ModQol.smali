.class public Lfr/testudo/spacecorsair/mod/ModQol;
.super Ljava/lang/Object;
.source "ModQol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/mod/ModQol$Options;
    }
.end annotation


# static fields
.field private static final KEEP:[Ljava/lang/String;

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

.field private static optEdge:Z

.field private static optShake:F

.field private static optStick:Z

.field private static optThreat:Z

.field private static prefs:Landroid/content/SharedPreferences;

.field private static readCount:I

.field private static sellBypass:Z

.field private static shake:F

.field private static final shaken:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static shieldA:I

.field private static shieldB:I

.field private static shieldText:Ljava/lang/String;

.field private static threatA:I

.field private static threatB:I

.field private static threatText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModQol;->optStick:Z

    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModQol;->optBars:Z

    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModQol;->optDmg:Z

    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModQol;->optBig:Z

    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModQol;->optThreat:Z

    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModQol;->optEdge:Z

    .line 59
    const v0, 0x3f19999a    # 0.6f

    sput v0, Lfr/testudo/spacecorsair/mod/ModQol;->optShake:F

    .line 414
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->gateText:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 448
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->levelNames:Ljava/util/Map;

    .line 449
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->NO_LEVEL:Ljava/lang/Object;

    .line 520
    sput v5, Lfr/testudo/spacecorsair/mod/ModQol;->threatA:I

    sput v5, Lfr/testudo/spacecorsair/mod/ModQol;->threatB:I

    .line 570
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->shaken:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 589
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->inbox:Ljava/util/List;

    .line 593
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "fixedStick"

    aput-object v1, v0, v3

    const-string v1, "barNumbers"

    aput-object v1, v0, v4

    const-string v1, "damageNumbers"

    aput-object v1, v0, v6

    const-string v1, "bigButtons"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "shake"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "visualQuality"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "visualAsk"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "v46_prologue_done"

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->KEEP:[Ljava/lang/String;

    .line 756
    sput v5, Lfr/testudo/spacecorsair/mod/ModQol;->homeX:I

    .line 787
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->mapText:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 792
    const/16 v0, 0xc

    new-array v0, v0, [Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->GENESIS:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v1, v0, v3

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->VENTOHIGH:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v1, v0, v4

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->PIRATE_BAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v1, v0, v6

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->HELIOSTAT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v1, v0, v7

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

.method static synthetic access$502(Z)Z
    .registers 1

    .prologue
    .line 54
    sput-boolean p0, Lfr/testudo/spacecorsair/mod/ModQol;->optThreat:Z

    return p0
.end method

.method static synthetic access$602(Z)Z
    .registers 1

    .prologue
    .line 54
    sput-boolean p0, Lfr/testudo/spacecorsair/mod/ModQol;->optEdge:Z

    return p0
.end method

.method static synthetic access$700(Ljava/lang/String;Z)V
    .registers 2

    .prologue
    .line 54
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModQol;->save(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$802(Z)Z
    .registers 1

    .prologue
    .line 54
    sput-boolean p0, Lfr/testudo/spacecorsair/mod/ModQol;->sellBypass:Z

    return p0
.end method

.method static addCredits(ILfr/testudo/spacecorsair/business/Element;)V
    .registers 6

    .prologue
    .line 280
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v0, p0}, Lfr/testudo/spacecorsair/business/player/Inventory;->addCredit(I)V

    .line 281
    if-eqz p1, :cond_3e

    invoke-static {p1}, Lfr/testudo/spacecorsair/engine/GameThread;->isElementVisible(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 282
    :goto_11
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    .line 283
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newGoldMessage()Lfr/testudo/spacecorsair/display/GoldTextMessage;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lfr/testudo/spacecorsair/display/GoldTextMessage;->init(Ljava/lang/String;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/GoldTextMessage;

    move-result-object v1

    .line 282
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    :goto_3d
    return-void

    .line 281
    :cond_3e
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object p1, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_42} :catch_43

    goto :goto_11

    .line 284
    :catch_43
    move-exception v0

    goto :goto_3d
.end method

.method public static addShake(F)V
    .registers 4

    .prologue
    .line 573
    const/high16 v0, 0x3fc00000    # 1.5f

    sget v1, Lfr/testudo/spacecorsair/mod/ModQol;->shake:F

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->shakeLevel()F

    move-result v2

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModQol;->shake:F

    .line 574
    return-void
.end method

.method public static barNumbers()Z
    .registers 1

    .prologue
    .line 252
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->load()V

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModQol;->optBars:Z

    return v0
.end method

.method public static bigButtons()Z
    .registers 1

    .prologue
    .line 254
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->load()V

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModQol;->optBig:Z

    return v0
.end method

.method public static bounty(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;I)V
    .registers 7

    .prologue
    .line 291
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModAegisDrones;->isDrone(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 310
    :cond_6
    :goto_6
    return-void

    .line 293
    :cond_7
    if-eqz p0, :cond_6

    if-lez p1, :cond_6

    :try_start_b
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->xp:I

    if-lez v0, :cond_6

    .line 294
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->isPolice(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/16 v0, 0x3e8

    invoke-static {v0, p0}, Lfr/testudo/spacecorsair/mod/ModQol;->addCredits(ILfr/testudo/spacecorsair/business/Element;)V

    goto :goto_6

    .line 307
    :catch_1b
    move-exception v0

    goto :goto_6

    .line 295
    :cond_1d
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getLevel()I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV34;->bounty(I)F

    move-result v0

    .line 296
    const v1, 0x3fb9999a    # 1.45f

    int-to-float v2, p1

    iget v3, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->xp:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v0, v1

    .line 297
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->isBoss(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v1

    if-nez v1, :cond_3e

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->xp:I

    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_92

    :cond_3e
    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    .line 299
    :cond_41
    :goto_41
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModChain;->onKill(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)F

    move-result v1

    mul-float/2addr v0, v1

    .line 300
    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 301
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->addCredit(I)V

    .line 302
    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModV34;->rareSalvage(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;I)V

    .line 303
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV35;->partsFromKill(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V

    .line 304
    invoke-static {p0}, Lfr/testudo/spacecorsair/engine/GameThread;->isElementVisible(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 305
    :goto_64
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    .line 306
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

    .line 305
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 298
    :cond_92
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->elite:Z

    if-eqz v1, :cond_41

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    goto :goto_41

    .line 304
    :cond_9a
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object p0, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_9e} :catch_1b

    goto :goto_64
.end method

.method public static buttons()V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 728
    :try_start_1
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->bigButtons()Z

    move-result v1

    if-nez v1, :cond_8

    .line 752
    :goto_7
    return-void

    .line 729
    :cond_8
    const v1, 0x3faccccd    # 1.35f

    .line 730
    sget v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthX:I

    mul-int/lit8 v2, v2, 0x78

    div-int/lit16 v2, v2, 0x4b0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_96

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v2, v1

    .line 733
    :try_start_14
    const-class v1, Lfr/testudo/spacecorsair/engine/GameRenderer;

    const-string v3, "butonsDecalBorder"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 734
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 735
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_24} :catch_5a

    move-result v1

    .line 739
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

    .line 740
    array-length v4, v3

    :goto_3d
    if-ge v0, v4, :cond_5e

    aget-object v5, v3, v0

    .line 741
    iget-object v6, v5, Lfr/testudo/spacecorsair/display/hud/Button;->imageDim:Lfr/testudo/spacecorsair/engine/Vector2;

    int-to-float v7, v2

    int-to-float v8, v2

    invoke-virtual {v6, v7, v8}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 742
    div-int/lit8 v6, v2, 0x2

    iput v6, v5, Lfr/testudo/spacecorsair/display/hud/Button;->demiDim:I

    .line 743
    iget-object v6, v5, Lfr/testudo/spacecorsair/display/hud/Button;->imageDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    if-eqz v6, :cond_57

    iget-object v6, v5, Lfr/testudo/spacecorsair/display/hud/Button;->imageDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v5, v5, Lfr/testudo/spacecorsair/display/hud/Button;->imageDim:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v6, v5}, Lfr/testudo/spacecorsair/display/Drawable;->setDimension(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 740
    :cond_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 736
    :catch_5a
    move-exception v1

    .line 737
    const/16 v1, 0x14

    goto :goto_25

    .line 745
    :cond_5e
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->laserButon:Lfr/testudo/spacecorsair/display/hud/Button;

    sget v3, Lfr/testudo/spacecorsair/display/hud/Radar;->POSX:I

    int-to-float v3, v3

    div-int/lit8 v4, v2, 0x2

    add-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Lfr/testudo/spacecorsair/display/hud/Button;->initImagePos(FF)V

    .line 746
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

    .line 747
    sget v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthY:I

    sget v1, Lfr/testudo/spacecorsair/display/hud/Radar;->POSY:I

    sget v3, Lfr/testudo/spacecorsair/display/hud/Radar;->DEMI_DIM:I

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x14

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 748
    sget-object v1, Lfr/testudo/spacecorsair/display/hud/HudImages;->missileButon:Lfr/testudo/spacecorsair/display/hud/Button;

    sget v2, Lfr/testudo/spacecorsair/display/hud/Radar;->POSX:I

    int-to-float v2, v2

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Lfr/testudo/spacecorsair/display/hud/Button;->initImagePos(FF)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_94} :catch_96

    goto/16 :goto_7

    .line 749
    :catch_96
    move-exception v0

    goto/16 :goto_7
.end method

.method public static camCenter(Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 10

    .prologue
    const/4 v2, 0x0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 578
    sget v0, Lfr/testudo/spacecorsair/mod/ModQol;->shake:F

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-lez v0, :cond_14

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-eqz v0, :cond_17

    .line 579
    :cond_14
    sput v2, Lfr/testudo/spacecorsair/mod/ModQol;->shake:F

    .line 585
    :goto_16
    return-object p0

    .line 582
    :cond_17
    sget v0, Lfr/testudo/spacecorsair/mod/ModQol;->shake:F

    const/high16 v1, 0x43e10000    # 450.0f

    div-float v1, p1, v1

    sub-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModQol;->shake:F

    .line 583
    sget v0, Lfr/testudo/spacecorsair/mod/ModQol;->shake:F

    sget v1, Lfr/testudo/spacecorsair/mod/ModQol;->shake:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x42180000    # 38.0f

    mul-float/2addr v0, v1

    .line 584
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

    .line 585
    sget-object p0, Lfr/testudo/spacecorsair/mod/ModQol;->shaken:Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_16
.end method

.method private static check(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/CheckBox;
    .registers 6

    .prologue
    .line 369
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 370
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 371
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 372
    invoke-virtual {v0, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 373
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModQol$2;

    invoke-direct {v1, p2}, Lfr/testudo/spacecorsair/mod/ModQol$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 384
    return-object v0
.end method

.method public static civilAttacked(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V
    .registers 2

    .prologue
    .line 869
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModPolice;->spawning:Z

    if-eqz v0, :cond_5

    .line 877
    :cond_4
    :goto_4
    return-void

    .line 870
    :cond_5
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCcef;->calm(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 873
    if-eqz p0, :cond_4

    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->damageRecievedByPlayer:I

    if-lez v0, :cond_4

    .line 874
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->civilAttacked(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V

    .line 875
    :try_start_14
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModRep;->civilAttacked(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_17} :catch_1b

    .line 876
    :goto_17
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->civilAttacked(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V

    goto :goto_4

    .line 875
    :catch_1b
    move-exception v0

    goto :goto_17
.end method

.method static declared-synchronized clearProgress()V
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 598
    const-class v4, Lfr/testudo/spacecorsair/mod/ModQol;

    monitor-enter v4

    :try_start_4
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_88

    move-result-object v0

    .line 599
    if-nez v0, :cond_c

    .line 618
    :goto_a
    monitor-exit v4

    return-void

    .line 601
    :cond_c
    :try_start_c
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 602
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 605
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v2

    :cond_1d
    :goto_1d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 606
    sget-object v7, Lfr/testudo/spacecorsair/mod/ModQol;->KEEP:[Ljava/lang/String;

    array-length v8, v7

    move v1, v2

    :goto_2d
    if-ge v1, v8, :cond_3a

    aget-object v9, v7, v1

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1d

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 607
    :cond_3a
    invoke-interface {v5, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 608
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    .line 609
    goto :goto_1d

    .line 610
    :cond_41
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 611
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->inbox:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 612
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModQol;->readCount:I

    .line 613
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModQol;->loaded:Z

    .line 614
    const-string v0, "fresh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mod progress cleared: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " keys"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_6d} :catch_6e
    .catchall {:try_start_c .. :try_end_6d} :catchall_88

    goto :goto_a

    .line 615
    :catch_6e
    move-exception v0

    .line 616
    :try_start_6f
    const-string v1, "fresh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clear failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_87
    .catchall {:try_start_6f .. :try_end_87} :catchall_88

    goto :goto_a

    .line 598
    :catchall_88
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method static compare(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 946
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 947
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

    .line 956
    :goto_20
    return-object v0

    .line 948
    :cond_21
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v1

    check-cast v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 949
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<br><br><b>Compared with your ship</b><br>"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 950
    const-string v3, "Armour"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->armorInformational:I

    iget v5, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->armorInformational:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModQol;->delta(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    const-string v3, "Agility"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->agilityInformational:I

    iget v5, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->agilityInformational:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModQol;->delta(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    const-string v3, "Speed"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxSpeedInformational:I

    iget v5, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxSpeedInformational:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModQol;->delta(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
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

    .line 954
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8a} :catch_8c

    move-result-object v0

    goto :goto_20

    .line 955
    :catch_8c
    move-exception v0

    .line 956
    const-string v0, ""

    goto :goto_20
.end method

.method public static confirmSell(Ljava/lang/Object;ILfr/testudo/spacecorsair/business/loot/SpaceObject;Ljava/lang/Object;)Z
    .registers 14

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 971
    :try_start_2
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModQol;->sellBypass:Z

    if-nez v0, :cond_16

    if-eqz p2, :cond_16

    if-eqz p3, :cond_16

    const-string v0, "SELL"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    :cond_16
    move v0, v7

    .line 1013
    :goto_17
    return v0

    .line 972
    :cond_18
    invoke-virtual {p2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->isDev(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1f} :catch_de

    move-result v0

    if-eqz v0, :cond_48

    .line 975
    :try_start_22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModQol;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 976
    if-eqz v0, :cond_46

    .line 977
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 978
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "DEV items cannot be sold."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_46} :catch_e2

    :cond_46
    :goto_46
    move v0, v6

    .line 983
    goto :goto_17

    .line 985
    :cond_48
    :try_start_48
    invoke-virtual {p2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v0

    .line 986
    if-eqz v0, :cond_60

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getRaretySort()I

    move-result v1

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getRaretySort()I

    move-result v2

    if-lt v1, v2, :cond_60

    if-gtz p1, :cond_62

    :cond_60
    move v0, v7

    goto :goto_17

    .line 987
    :cond_62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "this$0"

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModQol;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 988
    if-nez v1, :cond_70

    move v0, v7

    goto :goto_17

    .line 989
    :cond_70
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 990
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    .line 991
    invoke-virtual {p2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v1

    .line 992
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Sell {0} item?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModLang;->fmt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "Sell {0} x {1}? This cannot be undone."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 993
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModLang;->fmt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const-string v0, "Sell"

    .line 994
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModQol$3;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModQol$3;-><init>(Ljava/lang/Object;ILfr/testudo/spacecorsair/business/loot/SpaceObject;Ljava/lang/Object;Landroid/app/Activity;)V

    invoke-virtual {v8, v9, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Keep it"

    .line 1010
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_db} :catch_de

    move v0, v6

    .line 1011
    goto/16 :goto_17

    .line 1012
    :catch_de
    move-exception v0

    move v0, v7

    .line 1013
    goto/16 :goto_17

    .line 980
    :catch_e2
    move-exception v0

    goto/16 :goto_46
.end method

.method public static damageNumbers()Z
    .registers 1

    .prologue
    .line 253
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->load()V

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModQol;->optDmg:Z

    return v0
.end method

.method public static deathFee()I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 401
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->guestFeeFree()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "death"

    const-string v2, "no fee (guest of an internet game)"

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :cond_e
    :goto_e
    return v0

    .line 402
    :cond_f
    const-string v1, "death"

    const-string v2, "fee charged (respawn)"

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :try_start_16
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    .line 405
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 406
    if-eqz v2, :cond_29

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModShips;->tech(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_e

    .line 407
    :cond_29
    iget v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV34;->deathFee(I)I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2e} :catch_30

    move-result v0

    goto :goto_e

    .line 408
    :catch_30
    move-exception v1

    goto :goto_e
.end method

.method private static delta(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 961
    if-lez p1, :cond_34

    const-string v0, "#41ff16"

    .line 962
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

    .line 961
    :cond_34
    if-gez p1, :cond_39

    const-string v0, "#ff5a4a"

    goto :goto_4

    :cond_39
    const-string v0, "#c8c8c8"

    goto :goto_4

    .line 962
    :cond_3c
    const-string v0, ""

    goto :goto_21
.end method

.method public static drawHud(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 13

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const v7, 0x3f0ccccd    # 0.55f

    const/4 v0, 0x1

    const/4 v10, 0x0

    .line 471
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModArt;->frameEnd(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 473
    :try_start_a
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v11, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 474
    if-eqz v11, :cond_20

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v1, :cond_20

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->config:Lfr/testudo/spacecorsair/game/Config;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/game/Config;->hideHud:Z

    if-eqz v1, :cond_21

    .line 516
    :cond_20
    :goto_20
    return-void

    .line 475
    :cond_21
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->barNumbers()Z

    move-result v1

    if-eqz v1, :cond_12d

    sget-object v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

    if-eqz v1, :cond_12d

    sget-object v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->shieldBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

    if-eqz v1, :cond_12d

    .line 476
    sget-object v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

    iget-object v1, v1, Lfr/testudo/spacecorsair/display/hud/InfoBar;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

    iget v2, v2, Lfr/testudo/spacecorsair/display/hud/InfoBar;->witdh:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    add-float/2addr v1, v2

    float-to-int v2, v1

    .line 477
    const/4 v1, 0x0

    iget v3, v11, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v3, v11, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 478
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModQol;->lifeText:Ljava/lang/String;

    if-eqz v5, :cond_5e

    sget v5, Lfr/testudo/spacecorsair/mod/ModQol;->lifeA:I

    if-ne v1, v5, :cond_5e

    sget v5, Lfr/testudo/spacecorsair/mod/ModQol;->lifeB:I

    if-eq v3, v5, :cond_7b

    .line 479
    :cond_5e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lfr/testudo/spacecorsair/mod/ModQol;->lifeText:Ljava/lang/String;

    .line 480
    sput v1, Lfr/testudo/spacecorsair/mod/ModQol;->lifeA:I

    .line 481
    sput v3, Lfr/testudo/spacecorsair/mod/ModQol;->lifeB:I

    .line 483
    :cond_7b
    if-lez v3, :cond_1b7

    int-to-float v1, v1

    int-to-float v3, v3

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float/2addr v3, v5

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1b7

    .line 484
    :goto_86
    if-eqz v0, :cond_a2

    const v1, 0x3ee66666    # 0.45f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v1, v3

    add-float v4, v7, v1

    .line 485
    :cond_a2
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->lifeText:Ljava/lang/String;

    sget v3, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    sget-object v5, Lfr/testudo/spacecorsair/engine/GameRenderer;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

    iget-object v5, v5, Lfr/testudo/spacecorsair/display/hud/InfoBar;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    float-to-int v5, v5

    sub-int/2addr v3, v5

    add-int/lit8 v3, v3, -0x7

    const/high16 v5, 0x3f800000    # 1.0f

    .line 486
    if-eqz v0, :cond_1ba

    const v6, 0x3e4ccccd    # 0.2f

    :goto_b7
    if-eqz v0, :cond_bc

    const v7, 0x3e19999a    # 0.15f

    :cond_bc
    const/4 v8, 0x1

    sget-object v9, Lfr/testudo/spacecorsair/textengine/TextSize;->LITTLE:Lfr/testudo/spacecorsair/textengine/TextSize;

    move-object v0, p0

    .line 485
    invoke-static/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawText(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IIFFFFZLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 487
    iget-object v0, v11, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    if-eqz v0, :cond_12d

    iget-object v0, v11, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_12d

    .line 488
    const/4 v0, 0x0

    iget-object v1, v11, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, v11, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 489
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModQol;->shieldText:Ljava/lang/String;

    if-eqz v3, :cond_f1

    sget v3, Lfr/testudo/spacecorsair/mod/ModQol;->shieldA:I

    if-ne v0, v3, :cond_f1

    sget v3, Lfr/testudo/spacecorsair/mod/ModQol;->shieldB:I

    if-eq v1, v3, :cond_10e

    .line 490
    :cond_f1
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

    .line 491
    sput v0, Lfr/testudo/spacecorsair/mod/ModQol;->shieldA:I

    .line 492
    sput v1, Lfr/testudo/spacecorsair/mod/ModQol;->shieldB:I

    .line 494
    :cond_10e
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

    .line 498
    :cond_12d
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->threatReadout()Z

    move-result v0

    if-eqz v0, :cond_136

    invoke-static {p0, v11}, Lfr/testudo/spacecorsair/mod/ModQol;->threatLine(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 499
    :cond_136
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->active:Z

    if-eqz v0, :cond_1bd

    move v0, v10

    .line 500
    :goto_13b
    if-lez v0, :cond_1a8

    .line 501
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->inboxText:Ljava/lang/String;

    if-eqz v1, :cond_14b

    sget v1, Lfr/testudo/spacecorsair/mod/ModQol;->inboxN:I

    if-ne v0, v1, :cond_14b

    sget-object v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextLittle:Lfr/testudo/spacecorsair/textengine/GLText;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModQol;->inboxFont:Ljava/lang/Object;

    if-eq v1, v2, :cond_170

    .line 502
    :cond_14b
    const-string v1, "INBOX: {0} new  (open from the Ships or Station screen)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModLang;->fmt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->inboxText:Ljava/lang/String;

    .line 503
    sput v0, Lfr/testudo/spacecorsair/mod/ModQol;->inboxN:I

    .line 504
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextLittle:Lfr/testudo/spacecorsair/textengine/GLText;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->inboxFont:Ljava/lang/Object;

    .line 505
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextLittle:Lfr/testudo/spacecorsair/textengine/GLText;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->inboxText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sput v0, Lfr/testudo/spacecorsair/mod/ModQol;->inboxHalf:F

    .line 507
    :cond_170
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->inboxText:Ljava/lang/String;

    .line 508
    sget v0, Lfr/testudo/spacecorsair/mod/ModQol;->inboxHalf:F

    .line 509
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

    .line 510
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

    .line 512
    :cond_1a8
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModQol;->buttonsDirty:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModQol;->buttonsDirty:Z

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->buttons()V

    goto/16 :goto_20

    .line 513
    :catch_1b4
    move-exception v0

    goto/16 :goto_20

    :cond_1b7
    move v0, v10

    .line 483
    goto/16 :goto_86

    :cond_1ba
    move v6, v7

    .line 486
    goto/16 :goto_b7

    .line 499
    :cond_1bd
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->unread()I
    :try_end_1c0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1c0} :catch_1b4

    move-result v0

    goto/16 :goto_13b
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
    .line 388
    :goto_0
    if-eqz p0, :cond_11

    const-class v0, Ljava/lang/Object;

    if-eq p0, v0, :cond_11

    .line 390
    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_b

    move-result-object v0

    .line 395
    :goto_a
    return-object v0

    .line 391
    :catch_b
    move-exception v0

    .line 392
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 395
    :cond_11
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static fixedStick()Z
    .registers 1

    .prologue
    .line 251
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

    .line 798
    if-nez p0, :cond_8

    .line 832
    :cond_7
    :goto_7
    return-void

    .line 799
    :cond_8
    :try_start_8
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModMap;->territory(Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_b} :catch_14e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_12a

    .line 800
    :goto_b
    :try_start_b
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v2

    .line 801
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->mapTexts:[Ljava/lang/String;

    if-eqz v1, :cond_19

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->mapFont:Ljava/lang/Object;

    sget-object v3, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormalPlus:Lfr/testudo/spacecorsair/textengine/GLText;

    if-eq v1, v3, :cond_39

    .line 802
    :cond_19
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/LevelId;->values()[Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v1

    array-length v1, v1

    .line 803
    new-array v3, v1, [Ljava/lang/String;

    sput-object v3, Lfr/testudo/spacecorsair/mod/ModQol;->mapTexts:[Ljava/lang/String;

    .line 804
    new-array v1, v1, [F

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->mapHalf:[F

    .line 805
    sget-object v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormalPlus:Lfr/testudo/spacecorsair/textengine/GLText;

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->mapFont:Ljava/lang/Object;

    .line 806
    sget-object v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormalPlus:Lfr/testudo/spacecorsair/textengine/GLText;

    const-string v3, ">> MISSION <<"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v1

    div-float/2addr v1, v6

    sput v1, Lfr/testudo/spacecorsair/mod/ModQol;->missionHalf:F

    .line 808
    :cond_39
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->mapTexts:[Ljava/lang/String;

    aget-object v3, v1, v2

    .line 809
    if-nez v3, :cond_ac

    .line 811
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 812
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->GALACTIC_ARENA:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eq p0, v1, :cond_87

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eq p0, v1, :cond_87

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Lv"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v1, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMin:I

    iget v5, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    if-ne v1, v5, :cond_12d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMin:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_7c
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    :cond_87
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->SHOPS:[Lfr/testudo/spacecorsair/game/levels/LevelId;

    array-length v4, v1

    :goto_8a
    if-ge v0, v4, :cond_99

    aget-object v5, v1, v0

    if-ne v5, p0, :cond_14a

    const-string v0, "  $ shop"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    :cond_99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 815
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->mapHalf:[F

    sget-object v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormalPlus:Lfr/testudo/spacecorsair/textengine/GLText;

    invoke-virtual {v1, v3}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v1

    div-float/2addr v1, v6

    aput v1, v0, v2

    .line 816
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->mapTexts:[Ljava/lang/String;

    aput-object v3, v0, v2

    .line 818
    :cond_ac
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMin:I

    iget v1, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v4, v4, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v4, v4, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    invoke-static {v0, v1, v4}, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->getOfLevelDifference(III)Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    move-result-object v6

    .line 819
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->mapHalf:[F

    aget v0, v0, v2

    .line 820
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->mapText:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    neg-float v0, v0

    const/high16 v2, 0x42d20000    # 105.0f

    invoke-virtual {v1, v0, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 821
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

    .line 822
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->missionSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    if-ne p0, v0, :cond_7

    .line 823
    const-string v0, ">> MISSION <<"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 824
    sget v0, Lfr/testudo/spacecorsair/mod/ModQol;->missionHalf:F

    .line 825
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->mapText:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    neg-float v0, v0

    const/high16 v2, 0x43110000    # 145.0f

    invoke-virtual {v1, v0, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 826
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

    .line 827
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

    .line 829
    :catch_12a
    move-exception v0

    goto/16 :goto_7

    .line 812
    :cond_12d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMin:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "-"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_147} :catch_12a

    move-result-object v1

    goto/16 :goto_7c

    .line 813
    :cond_14a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8a

    .line 799
    :catch_14e
    move-exception v1

    goto/16 :goto_b
.end method

.method public static gateLabel(Lfr/testudo/spacecorsair/business/world/Portal;)V
    .registers 10

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 424
    :try_start_2
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->levelByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    .line 425
    if-eqz v0, :cond_12

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->GALACTIC_ARENA:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eq v0, v1, :cond_12

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-ne v0, v1, :cond_13

    .line 446
    :cond_12
    :goto_12
    return-void

    .line 426
    :cond_13
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    .line 427
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModQol;->gateTexts:[Ljava/lang/String;

    if-eqz v2, :cond_21

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModQol;->gateFont:Ljava/lang/Object;

    sget-object v3, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormalPlus:Lfr/testudo/spacecorsair/textengine/GLText;

    if-eq v2, v3, :cond_32

    .line 428
    :cond_21
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/LevelId;->values()[Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v2

    array-length v2, v2

    .line 429
    new-array v3, v2, [Ljava/lang/String;

    sput-object v3, Lfr/testudo/spacecorsair/mod/ModQol;->gateTexts:[Ljava/lang/String;

    .line 430
    new-array v2, v2, [F

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModQol;->gateHalf:[F

    .line 431
    sget-object v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormalPlus:Lfr/testudo/spacecorsair/textengine/GLText;

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModQol;->gateFont:Ljava/lang/Object;

    .line 433
    :cond_32
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModQol;->gateTexts:[Ljava/lang/String;

    aget-object v3, v2, v1

    .line 434
    if-nez v3, :cond_66

    .line 435
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

    .line 436
    :goto_57
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModQol;->gateHalf:[F

    sget-object v4, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormalPlus:Lfr/testudo/spacecorsair/textengine/GLText;

    invoke-virtual {v4, v3}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v4

    div-float/2addr v4, v5

    aput v4, v2, v1

    .line 437
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModQol;->gateTexts:[Ljava/lang/String;

    aput-object v3, v2, v1

    .line 439
    :cond_66
    iget v2, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMin:I

    iget v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v4, v4, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v4, v4, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    invoke-static {v2, v0, v4}, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->getOfLevelDifference(III)Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    move-result-object v6

    .line 440
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->gateHalf:[F

    aget v0, v0, v1

    .line 441
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

    .line 442
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

    .line 443
    :catch_a8
    move-exception v0

    goto/16 :goto_12

    .line 435
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
    .line 940
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

    .line 761
    :try_start_2
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->fixedStick()Z

    move-result v2

    if-nez v2, :cond_c

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModQol;->floating:Z

    if-eqz v2, :cond_e

    :cond_c
    move v0, v1

    .line 771
    :goto_d
    return v0

    .line 762
    :cond_e
    sget v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    sub-int/2addr v2, p1

    .line 763
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

    .line 764
    :cond_2a
    sget v3, Lfr/testudo/spacecorsair/mod/ModQol;->homeX:I

    if-gez v3, :cond_36

    sget v3, Lfr/testudo/spacecorsair/display/hud/Joystick;->POSX:I

    sput v3, Lfr/testudo/spacecorsair/mod/ModQol;->homeX:I

    sget v3, Lfr/testudo/spacecorsair/display/hud/Joystick;->POSY:I

    sput v3, Lfr/testudo/spacecorsair/mod/ModQol;->homeY:I

    .line 765
    :cond_36
    sput p0, Lfr/testudo/spacecorsair/display/hud/Joystick;->POSX:I

    .line 766
    sput v2, Lfr/testudo/spacecorsair/display/hud/Joystick;->POSY:I

    .line 767
    sget-object v3, Lfr/testudo/spacecorsair/display/hud/Joystick;->drawPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    int-to-float v4, p0

    int-to-float v2, v2

    invoke-virtual {v3, v4, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 768
    const/4 v2, 0x1

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModQol;->floating:Z
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_44} :catch_45

    goto :goto_d

    .line 770
    :catch_45
    move-exception v0

    move v0, v1

    .line 771
    goto :goto_d
.end method

.method public static joyUp()V
    .registers 3

    .prologue
    .line 777
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModQol;->floating:Z

    if-nez v0, :cond_5

    .line 784
    :cond_4
    :goto_4
    return-void

    .line 778
    :cond_5
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModQol;->floating:Z

    .line 779
    sget v0, Lfr/testudo/spacecorsair/mod/ModQol;->homeX:I

    if-ltz v0, :cond_4

    .line 780
    sget v0, Lfr/testudo/spacecorsair/mod/ModQol;->homeX:I

    sput v0, Lfr/testudo/spacecorsair/display/hud/Joystick;->POSX:I

    .line 781
    sget v0, Lfr/testudo/spacecorsair/mod/ModQol;->homeY:I

    sput v0, Lfr/testudo/spacecorsair/display/hud/Joystick;->POSY:I

    .line 782
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

    .line 452
    if-nez p0, :cond_4

    .line 460
    :cond_3
    :goto_3
    return-object v1

    .line 453
    :cond_4
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->levelNames:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 454
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

    .line 456
    :cond_16
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/LevelId;->values()[Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1d
    if-ge v2, v4, :cond_2a

    aget-object v0, v3, v2

    .line 457
    iget-object v5, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    move-object v1, v0

    .line 459
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

    .line 456
    :cond_3d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1d

    .line 459
    :cond_41
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->NO_LEVEL:Ljava/lang/Object;

    goto :goto_39
.end method

.method private static load()V
    .registers 8

    .prologue
    const/16 v7, 0x10

    const v6, 0x3f19999a    # 0.6f

    const/16 v5, 0x1f

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 108
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModQol;->loaded:Z

    if-eqz v0, :cond_e

    .line 249
    :cond_d
    :goto_d
    return-void

    .line 109
    :cond_e
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_d

    .line 111
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModQol$Options;

    invoke-direct {v1, v0}, Lfr/testudo/spacecorsair/mod/ModQol$Options;-><init>(Landroid/content/SharedPreferences;)V

    .line 112
    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModQol;->loaded:Z

    .line 113
    const-string v2, "fixedStick"

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModQol;->optStick:Z

    .line 114
    const-string v2, "barNumbers"

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModQol;->optBars:Z

    .line 115
    const-string v2, "damageNumbers"

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModQol;->optDmg:Z

    .line 116
    const-string v2, "bigButtons"

    invoke-virtual {v1, v2, v4}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModQol;->optBig:Z

    .line 117
    const-string v2, "threatReadout"

    invoke-virtual {v1, v2, v4}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModQol;->optThreat:Z

    .line 118
    const-string v2, "radarEdge"

    invoke-virtual {v1, v2, v4}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModQol;->optEdge:Z

    .line 119
    const-string v2, "shake"

    invoke-virtual {v1, v2, v6}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->getFloat(Ljava/lang/String;F)F

    move-result v2

    sput v2, Lfr/testudo/spacecorsair/mod/ModQol;->optShake:F

    .line 120
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModSave;->strictInputs:Z

    if-eqz v2, :cond_68

    sget v2, Lfr/testudo/spacecorsair/mod/ModQol;->optShake:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_66

    sget v2, Lfr/testudo/spacecorsair/mod/ModQol;->optShake:F

    const/high16 v3, 0x3fc00000    # 1.5f

    cmpg-float v2, v2, v3

    if-lez v2, :cond_68

    :cond_66
    sput v6, Lfr/testudo/spacecorsair/mod/ModQol;->optShake:F

    .line 121
    :cond_68
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->loadInbox(Landroid/content/SharedPreferences;)V

    .line 124
    const-string v0, "modVersion"

    invoke-virtual {v1, v0, v4}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_8d

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->active:Z

    if-nez v0, :cond_8d

    .line 125
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "modVersion"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    const-string v0, "Welcome, pilot. This version of Space Corsair adds faction standings and faction missions (Standings button), refits at every station (REFIT), new hulls up to titans, faction flagships and sector police, bosses and elite enemies, the Ship tree on the Ships screen, and options in Settings such as damage numbers, bar numbers, screen shake and a floating joystick. New notices arrive here in the Inbox (Ships or Station screen)."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->note(Ljava/lang/String;)V

    .line 131
    :cond_8d
    const-string v0, "modVersion"

    invoke-virtual {v1, v0, v4}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ge v0, v7, :cond_ab

    .line 132
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "modVersion"

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 133
    const-string v0, "Mod v16: Ship tree (Ships screen), Inbox, Sort and Sell junk buttons in shops, confirm before selling Rare+ items, where-to-find lines in item descriptions, ship comparisons, gate and galaxy-map level ranges, damage numbers, bar numbers, screen shake, optional floating joystick and bigger buttons (Settings), free repairs for Tech I hulls, sector police, and two titans at level 17: Leviathan and the new Crimson Throne."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->note(Ljava/lang/String;)V

    .line 138
    :cond_ab
    const-string v0, "modVersion"

    invoke-virtual {v1, v0, v4}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x11

    if-ge v0, v2, :cond_cd

    .line 139
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "modVersion"

    const/16 v3, 0x11

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 140
    const-string v0, "Mod v16.5 economy: enemies now pay a credit bounty that grows with their level (bosses pay 8x, elites 2x; nothing for enemies 4+ levels below you), story missions pay 3x credits, gear sells for 25% of its value instead of 15%, and ship prices were rebalanced (battleships about 1.1-2M, Nebula Moth 3.5M, Crimson Throne 6M, Leviathan 7M)."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->note(Ljava/lang/String;)V

    .line 145
    :cond_cd
    const-string v0, "modVersion"

    invoke-virtual {v1, v0, v4}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x12

    if-ge v0, v2, :cond_ef

    .line 146
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "modVersion"

    const/16 v3, 0x12

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 147
    const-string v0, "Mod v16.6: shop and inventory lists now scroll clear of the mod toolbar, so the last BUY/SELL/DETAILS buttons are always reachable. Stations have a new Gift code button."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->note(Ljava/lang/String;)V

    .line 150
    :cond_ef
    const-string v0, "modVersion"

    invoke-virtual {v1, v0, v4}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x13

    if-ge v0, v2, :cond_111

    .line 151
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "modVersion"

    const/16 v3, 0x13

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 152
    const-string v0, "Mod v16.8: scrollbars stay visible on every scrollable screen (item details, missions, lists, settings), and long ship descriptions scroll inside their box with a scrollbar. Fixed the Ships screen crash."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->note(Ljava/lang/String;)V

    .line 155
    :cond_111
    const-string v0, "modVersion"

    invoke-virtual {v1, v0, v4}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x14

    if-ge v0, v2, :cond_133

    .line 156
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "modVersion"

    const/16 v3, 0x14

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 157
    const-string v0, "Mod v17 capital ships: engine plumes, running lights, auras and wakes on the top tier of every class; big hulls now show smoke, fire, scorch marks and hull cracks as they take damage (they disappear once repaired), plus a visible self-repair effect. Titans get new turrets with heavier shots, siege missiles with a wider blast, and a manual EVE-style doomsday: Leviathan and X-0 fire a sustained lance, the Crimson Throne a furnace nova. Press DOOMSDAY at the bottom of the screen."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->note(Ljava/lang/String;)V

    .line 162
    :cond_133
    const-string v0, "modVersion"

    invoke-virtual {v1, v0, v4}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_155

    .line 163
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "modVersion"

    const/16 v3, 0x15

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 164
    const-string v0, "Mod v19: six new weapon families (Railgun, Autocannon, Artillery, Blaster, Disintegrator, Arc Projector) in 4 tiers at laser shops (Ventohigh, Spartan HQ, smugglers, Omicron Prime) and as rare drops. Each faction now keeps a flagship at its HQ (Spartan HQ, Pirate Bay, The Hive, Omicron Prime, Ore Belt, Heliostat, Highway): neutral unless you deal 10% of its hull or attack civilians near it. The DEV kit now only fits the X-0 and swaps in and out with it. Doomsday lances are as wide as 60% of the titan."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->note(Ljava/lang/String;)V

    .line 169
    :cond_155
    const-string v0, "modVersion"

    invoke-virtual {v1, v0, v4}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x16

    if-ge v0, v2, :cond_177

    .line 170
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "modVersion"

    const/16 v3, 0x16

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 171
    const-string v0, "Mod v20: the doomsday lance is now a solid band as wide as its damage area. Railgun slugs and artillery shells are larger and leave trails. Fixed a crash when Android restored the Ships screen after closing the game in the background."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->note(Ljava/lang/String;)V

    .line 174
    :cond_177
    const-string v0, "modVersion"

    invoke-virtual {v1, v0, v4}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_199

    .line 175
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "modVersion"

    const/16 v3, 0x17

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 176
    const-string v0, "Mod v21: the seven factions now have commanders and story chains (21 missions). Fly to a faction HQ and press TALK TO COMMANDER to talk to its commander aboard the flagship: Spartan HQ, Pirate Bay, The Hive, Omicron Prime, Ore Belt, Heliostat, Highway. Chains open from level 10 and end in battles beside, or against, the flagships. The Leviathan and Crimson Throne have new hulls and turrets, and every faction flagship has new turrets."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->note(Ljava/lang/String;)V

    .line 181
    :cond_199
    const-string v0, "modVersion"

    invoke-virtual {v1, v0, v4}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x18

    if-ge v0, v2, :cond_1bb

    .line 182
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "modVersion"

    const/16 v3, 0x18

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 183
    const-string v0, "Mod v22: faction STANDINGS (toolbar button). Missions (+15, finale +20) and contracts (+8) raise your standing; allies share half, enemies lose half. Friendly: +10% payouts, the flagship forgives 25% friendly fire. Trusted: +20%, the flagship gives fire support and its HQ sells a secret faction weapon. Honored: +35% and a secret ship (coming next). Each HQ now offers two daily contracts, or amends jobs if you are Unfriendly. New flagship, Nebula Moth and faction emblem art, weapon-family icons, and combat sounds (alerts, all clear, disengaging enemies, low hull alarm, shield collapse)."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->note(Ljava/lang/String;)V

    .line 189
    :cond_1bb
    const-string v0, "modVersion"

    invoke-virtual {v1, v0, v4}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x19

    if-ge v0, v2, :cond_1dd

    .line 190
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "modVersion"

    const/16 v3, 0x19

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 191
    const-string v0, "Mod v23: 21 Exceptional hulls redrawn (each with its own engine glow; Shade, Hornet, Raptor, Sanctum, Bulwark, Warlord, Harbinger and Tempest now belong to factions). Weapon families bring their own turrets: rails, rotary cannons, artillery barrels, blasters, prism emitters and tesla coils, sized to the hull. Seven secret faction ships appear on the Ships screen at Trusted and can be bought at Honored: SRS Resolute, Pillager\'s Due, Cradle of Echoes, Indemnity Crown, Foundry Sentinel, Far Meridian, Wayfarer Prime."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->note(Ljava/lang/String;)V

    .line 196
    :cond_1dd
    const-string v0, "modVersion"

    invoke-virtual {v1, v0, v4}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_1ff

    .line 197
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "modVersion"

    const/16 v3, 0x1a

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 198
    const-string v0, "Mod v24: the Ships screen is now a faction tech tree (tap a faction emblem, tap a ship for its card, OPEN for its page; BACK returns to the tree). My Ship is a fitting view: hull art with hardpoints, slots around it, full stats; CLASSIC switches back. Shields hug the hull and glow on it while up. A collapsed shield reboots in 1.3 s once above 50% hull and once more below; after that it recharges at half speed until you use a repair. The original alien hulls (Rat, Ufo, Blatte) now sit in the Kre\'tari Brood tree. Ship art is back at full resolution and loads only when needed."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->note(Ljava/lang/String;)V

    .line 204
    :cond_1ff
    const-string v0, "modVersion"

    invoke-virtual {v1, v0, v4}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x1b

    if-ge v0, v2, :cond_221

    .line 205
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "modVersion"

    const/16 v3, 0x1b

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 206
    const-string v0, "Mod v25: Spanish! Settings > Language / Idioma (Auto, English, Espanol); restart the game after switching. 15 more hulls redrawn in their new factions\' styles (Viper, Bastion, Albatros, Mule, Tortoise, Monolith, Comet, Kite, Seraph, Bulldog, Ironside, Tidewarden, Mantis, Verdant, Imperator) with new lore; new Ships tree and fitting screen art; a new shield bubble with hit ripples; new doomsday charge, nova ring, lance core and explosion effects."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->note(Ljava/lang/String;)V

    .line 211
    :cond_221
    const-string v0, "modVersion"

    invoke-virtual {v1, v0, v4}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x1c

    if-ge v0, v2, :cond_245

    .line 212
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "modVersion"

    const/16 v3, 0x1c

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 213
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->spanish()Z

    move-result v0

    if-eqz v0, :cond_2af

    .line 214
    const-string v0, "Mod v26: todo el mod en espanol: misiones de faccion, contratos, reputacion, descripciones y lore de naves, armas y avisos. Las 15 naves del lote 3 tienen el nuevo acabado hibrido."

    .line 213
    :goto_242
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->note(Ljava/lang/String;)V

    .line 219
    :cond_245
    const-string v0, "modVersion"

    invoke-virtual {v1, v0, v4}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_269

    .line 220
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "modVersion"

    const/16 v3, 0x1d

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 221
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->spanish()Z

    move-result v0

    if-eqz v0, :cond_2b2

    .line 222
    const-string v0, "Mod v28: las naves originales del juego (Corsair one, Condor, Hullraiser, Cosmowarrior, Enforcer, Arwing, Regent y el crucero Guardian) tienen arte remasterizado con el acabado hibrido, tambien como enemigos. El OVNI conserva su animacion original."

    .line 221
    :goto_266
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->note(Ljava/lang/String;)V

    .line 227
    :cond_269
    const-string v0, "modVersion"

    invoke-virtual {v1, v0, v4}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_28d

    .line 228
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "modVersion"

    const/16 v3, 0x1e

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 229
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->spanish()Z

    move-result v0

    if-eqz v0, :cond_2b5

    .line 230
    const-string v0, "Mod v29: el mapa galactico muestra el territorio de cada faccion (capital con emblema y nombre, sectores controlados con su color; el espacio sin reclamar queda neutral). Arreglados los textos de bonificaciones de objetos (missingString) y el escudo ahora cubre todo el casco."

    .line 229
    :goto_28a
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->note(Ljava/lang/String;)V

    .line 235
    :cond_28d
    const-string v0, "modVersion"

    invoke-virtual {v1, v0, v4}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ge v0, v5, :cond_d

    .line 236
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModQol$Options;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "modVersion"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 237
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->spanish()Z

    move-result v0

    if-eqz v0, :cond_2b8

    .line 238
    const-string v0, "Mod v30: escudos por segmentos que se apagan al perder carga (sin grietas), pulso de recarga y onda en el punto de impacto; la recarga es mas rapida cuanto mas bajo esta el escudo (estilo EVE). Los enemigos recargan a la mitad y no se recuperan desde cero. Las naves grandes se parten en restos fisicos que puedes destruir para obtener botin; tu nave se despedaza antes de reaparecer. Nuevas tablas de botin (casco, nivel, elites, jefes, sector), 12 sitios de restos con historia, jefes con placa de calavera, habilidades unicas y furia, buques insignia con habilidades propias, y naves vivas: luces, motores y criaturas animadas."

    .line 237
    :goto_2aa
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->note(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 216
    :cond_2af
    const-string v0, "Mod v26: the whole mod is now in Spanish when Spanish is selected (faction missions, contracts, standings, ship and weapon descriptions, lore, alerts). All 15 batch-3 hulls now use the new hybrid finish."

    goto :goto_242

    .line 224
    :cond_2b2
    const-string v0, "Mod v28: the original game ships (Corsair one, Condor, Hullraiser, Cosmowarrior, Enforcer, Arwing, Regent and the Guardian cruiser) are remastered in the hybrid finish, as enemies too. The UFO keeps its original spin animation."

    goto :goto_266

    .line 232
    :cond_2b5
    const-string v0, "Mod v29: the galaxy map shows faction territory (capitals with emblem and name, controlled sectors in faction colours; unclaimed space stays neutral). Fixed item bonus texts showing missingString, and the shield bubble now covers the whole hull."

    goto :goto_28a

    .line 243
    :cond_2b8
    const-string v0, "Mod v30: segmented shields that power down as they drain (no cracks), a recharge pulse and impact ripples; recharge is fastest when the shield is low (EVE style). Enemies recharge at half rate and never from zero. Big hulls break into physical wrecks you can shoot for loot; your own ship breaks apart before the respawn. New loot tables (hull, level, elites, bosses, sector), 12 lore derelict sites, boss skull plates with unique skills and a one-time enrage, flagship skills, and living ships: lights, engines and animated alien hulls."

    goto :goto_2aa
.end method

.method private static declared-synchronized loadInbox(Landroid/content/SharedPreferences;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 621
    const-class v1, Lfr/testudo/spacecorsair/mod/ModQol;

    monitor-enter v1

    :try_start_4
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModQol;->inbox:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 622
    const-string v2, "inbox"

    const-string v3, ""

    invoke-static {p0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModQol;->saved(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 623
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_30

    .line 624
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

    .line 626
    :cond_30
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->inbox:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v2, "inboxRead"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModQol;->saved(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModQol;->readCount:I

    .line 627
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModSave;->strictInputs:Z

    if-eqz v0, :cond_6e

    .line 628
    const/4 v0, 0x0

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModQol;->inbox:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x28

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 629
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModQol;->inbox:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 630
    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lfr/testudo/spacecorsair/mod/ModQol;->readCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v0, v3, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModQol;->readCount:I
    :try_end_6e
    .catchall {:try_start_4 .. :try_end_6e} :catchall_70

    .line 632
    :cond_6e
    monitor-exit v1

    return-void

    .line 621
    :catchall_70
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static missionCredits(I)I
    .registers 1

    .prologue
    .line 265
    return p0
.end method

.method public static missionPay(I)I
    .registers 2

    .prologue
    .line 272
    .line 273
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_d

    .line 274
    :goto_8
    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModV35;->missionCredits(II)I

    move-result v0

    return v0

    .line 273
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

    .line 840
    :try_start_2
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 841
    if-nez v0, :cond_a

    move-object v0, v1

    .line 863
    :goto_9
    return-object v0

    .line 842
    :cond_a
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModQol;->lastMission:Ljava/lang/Object;

    if-ne v0, v2, :cond_11

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->lastMissionSector:Lfr/testudo/spacecorsair/game/levels/LevelId;

    goto :goto_9

    .line 843
    :cond_11
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->lastMission:Ljava/lang/Object;

    .line 844
    const/4 v2, 0x0

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModQol;->lastMissionSector:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 845
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    .line 846
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

    .line 847
    if-nez v8, :cond_31

    .line 846
    :cond_2d
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_27

    .line 848
    :cond_31
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    move-object v4, v0

    .line 849
    :goto_36
    if-eqz v4, :cond_2d

    const-class v0, Ljava/lang/Object;

    if-eq v4, v0, :cond_2d

    .line 850
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v9

    array-length v10, v9

    move v2, v3

    :goto_42
    if-ge v2, v10, :cond_6e

    aget-object v0, v9, v2

    .line 851
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    const-class v12, Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-ne v11, v12, :cond_6a

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v11

    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v11

    if-nez v11, :cond_6a

    .line 852
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 853
    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 854
    if-eqz v0, :cond_6a

    check-cast v0, Lfr/testudo/spacecorsair/game/levels/LevelId;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->lastMissionSector:Lfr/testudo/spacecorsair/game/levels/LevelId;

    goto :goto_9

    .line 860
    :catch_67
    move-exception v0

    :cond_68
    move-object v0, v1

    .line 863
    goto :goto_9

    .line 850
    :cond_6a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_42

    .line 857
    :cond_6e
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_71} :catch_67

    move-result-object v0

    move-object v4, v0

    goto :goto_36
.end method

.method static note(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 665
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->load()V

    .line 666
    const-class v1, Lfr/testudo/spacecorsair/mod/ModQol;

    monitor-enter v1

    .line 667
    :try_start_6
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->inbox:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->saveInbox()V

    .line 669
    monitor-exit v1

    .line 670
    return-void

    .line 669
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_10

    throw v0
.end method

.method private static number(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V
    .registers 11

    .prologue
    .line 563
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 564
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModQol;->lastNum:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-lez v2, :cond_13

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModQol;->lastNum:J

    const/4 v0, 0x6

    sput v0, Lfr/testudo/spacecorsair/mod/ModQol;->numBudget:I

    .line 565
    :cond_13
    sget v0, Lfr/testudo/spacecorsair/mod/ModQol;->numBudget:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lfr/testudo/spacecorsair/mod/ModQol;->numBudget:I

    if-gtz v0, :cond_1c

    .line 567
    :goto_1b
    return-void

    .line 566
    :cond_1c
    invoke-static {p0, p1, p2, p3, p4}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    goto :goto_1b
.end method

.method public static onHit(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 545
    if-eqz p2, :cond_c

    :try_start_3
    iget-object v1, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_d

    .line 560
    :cond_c
    :goto_c
    return-void

    .line 546
    :cond_d
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 547
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

    .line 548
    :goto_24
    iget-boolean v3, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v3, :cond_2a

    if-ne p0, v2, :cond_71

    .line 549
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

    .line 550
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

    .line 557
    :catch_6d
    move-exception v0

    goto :goto_c

    :cond_6f
    move v1, v0

    .line 547
    goto :goto_24

    .line 551
    :cond_71
    if-eqz v1, :cond_c

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->damageNumbers()Z
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_76} :catch_6d

    move-result v1

    if-eqz v1, :cond_c

    .line 553
    :try_start_79
    iget-boolean v0, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->isCrit:Z
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_7b} :catch_b4
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7b} :catch_6d

    .line 554
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

    .line 555
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

    .line 553
    :catch_b4
    move-exception v1

    goto :goto_7b
.end method

.method public static onLevelUp(Lfr/testudo/spacecorsair/business/player/PlayerInfo;)V
    .registers 8

    .prologue
    .line 675
    :try_start_0
    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    .line 676
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 677
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

    .line 678
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v4

    .line 679
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

    .line 680
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v0

    .line 681
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_4c

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    :cond_4c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 698
    :catch_50
    move-exception v0

    .line 701
    :goto_51
    return-void

    .line 686
    :cond_52
    const-string v0, "Level {0} reached."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lfr/testudo/spacecorsair/mod/ModLang;->fmt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 687
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_8b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "New ships you can fly: {0}."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModLang;->fmt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 688
    :cond_8b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Level {0} lasers, shields and missiles can now be equipped."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModLang;->fmt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 689
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 690
    const/16 v0, 0xa

    if-ne v1, v0, :cond_ef

    .line 691
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

    .line 692
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "The last 200 points come from faction storylines."

    .line 693
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 691
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 695
    :cond_ef
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModUi;->markNewShips(I)V

    .line 696
    sget-object v1, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->messageHaut:Ljava/lang/String;

    .line 697
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_116

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

    .line 696
    :goto_111
    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_51

    .line 697
    :cond_116
    const-string v0, "New gear tier unlocked"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11b} :catch_50

    move-result-object v0

    goto :goto_111
.end method

.method public static policeLevel(Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;I)V
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 882
    :try_start_1
    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->policeSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    array-length v1, v1

    add-int/lit8 v3, v1, -0x1

    .line 884
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    if-eqz v1, :cond_92

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-object v2, v1

    .line 885
    :goto_17
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->HIGHWAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-ne v2, v1, :cond_a5

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 886
    :goto_29
    if-eqz v2, :cond_35

    iget v4, v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    if-lez v4, :cond_35

    iget v2, v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 887
    :cond_35
    iget v2, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->level:I

    if-ge v1, v2, :cond_3b

    iput v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->level:I

    .line 888
    :cond_3b
    if-gt v1, v3, :cond_95

    .line 889
    if-eq v1, p1, :cond_45

    iget v2, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->level:I

    if-le v1, v2, :cond_45

    .line 890
    iput v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->level:I

    .line 897
    :cond_45
    :goto_45
    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->level:I

    .line 898
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV34;->baseHull(I)F

    move-result v2

    .line 899
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV34;->curve(I)F

    move-result v1

    .line 900
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_61

    .line 901
    const/4 v3, 0x2

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModV34;->classFactor(I)F

    move-result v3

    mul-float/2addr v2, v3

    mul-float/2addr v2, v1

    iput v2, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->maxLife:F

    .line 902
    iget v2, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->maxLife:F

    iput v2, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->life:F

    .line 904
    :cond_61
    const/4 v2, 0x2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV34;->dmgClass(I)F

    move-result v2

    mul-float/2addr v2, v1

    .line 905
    iget v3, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->bulletDamage:F

    mul-float/2addr v3, v2

    iput v3, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->bulletDamage:F

    .line 906
    const/4 v3, 0x2

    new-array v3, v3, [Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    const/4 v4, 0x0

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    aput-object v5, v3, v4

    array-length v4, v3

    :goto_7a
    if-ge v0, v4, :cond_9a

    aget-object v5, v3, v0

    .line 907
    if-eqz v5, :cond_8f

    const/4 v6, 0x1

    iget v7, v5, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->shootDamage:I

    int-to-float v7, v7

    mul-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v5, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->shootDamage:I

    .line 906
    :cond_8f
    add-int/lit8 v0, v0, 0x1

    goto :goto_7a

    .line 884
    :cond_92
    const/4 v1, 0x0

    move-object v2, v1

    goto :goto_17

    .line 893
    :cond_95
    iput v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->level:I

    goto :goto_45

    .line 909
    :catch_98
    move-exception v0

    .line 912
    :goto_99
    return-void

    .line 908
    :cond_9a
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->xp:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->xp:I
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a4} :catch_98

    goto :goto_99

    :cond_a5
    move v1, p1

    goto :goto_29
.end method

.method public static post(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 654
    const-string v0, "ai"

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    return-void
.end method

.method public static post(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 659
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModQol;->note(Ljava/lang/String;)V

    .line 660
    invoke-static {p1, p0}, Lfr/testudo/spacecorsair/mod/ModNotify;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    return-void
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

.method public static radarEdge()Z
    .registers 1

    .prologue
    .line 256
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->load()V

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModQol;->optEdge:Z

    return v0
.end method

.method private static save(Ljava/lang/String;Z)V
    .registers 3

    .prologue
    .line 312
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
    .line 635
    const-class v3, Lfr/testudo/spacecorsair/mod/ModQol;

    monitor-enter v3

    :try_start_3
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->active:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_88

    if-eqz v0, :cond_9

    .line 648
    :cond_7
    :goto_7
    monitor-exit v3

    return-void

    .line 636
    :cond_9
    :try_start_9
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 637
    if-eqz v4, :cond_7

    .line 638
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 639
    const/4 v0, 0x0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->inbox:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x28

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v1, v2

    .line 640
    :goto_22
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->inbox:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_47

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

    goto :goto_22

    .line 641
    :cond_47
    if-lez v2, :cond_6e

    .line 642
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->inbox:Ljava/util/List;

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModQol;->inbox:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v1, v2, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 643
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->inbox:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 644
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->inbox:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 645
    const/4 v0, 0x0

    sget v1, Lfr/testudo/spacecorsair/mod/ModQol;->readCount:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModQol;->readCount:I

    .line 647
    :cond_6e
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
    :try_end_87
    .catchall {:try_start_9 .. :try_end_87} :catchall_88

    goto :goto_7

    .line 635
    :catchall_88
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method static saved(Landroid/content/SharedPreferences;Ljava/lang/String;F)F
    .registers 5

    .prologue
    .line 80
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 81
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModSave;->strictInputs:Z

    if-eqz v1, :cond_15

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z
    :try_end_11
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_11} :catch_17

    move-result v1

    if-eqz v1, :cond_15

    .line 83
    :cond_14
    :goto_14
    return p2

    :cond_15
    move p2, v0

    .line 81
    goto :goto_14

    .line 83
    :catch_17
    move-exception v0

    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModSave;->strictInputs:Z

    if-nez v1, :cond_14

    throw v0
.end method

.method static saved(Landroid/content/SharedPreferences;Ljava/lang/String;I)I
    .registers 5

    .prologue
    .line 92
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_3} :catch_5

    move-result p2

    .line 93
    :cond_4
    return p2

    :catch_5
    move-exception v0

    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModSave;->strictInputs:Z

    if-nez v1, :cond_4

    throw v0
.end method

.method static saved(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 74
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object p2

    .line 75
    :cond_4
    return-object p2

    :catch_5
    move-exception v0

    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModSave;->strictInputs:Z

    if-nez v1, :cond_4

    throw v0
.end method

.method static saved(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z
    .registers 5

    .prologue
    .line 87
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_3} :catch_5

    move-result p2

    .line 88
    :cond_4
    return p2

    :catch_5
    move-exception v0

    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModSave;->strictInputs:Z

    if-nez v1, :cond_4

    throw v0
.end method

.method public static sellFactor()F
    .registers 1

    .prologue
    .line 262
    const/high16 v0, 0x3e800000    # 0.25f

    return v0
.end method

.method public static settings(Ljava/lang/Object;)V
    .registers 8

    .prologue
    const/high16 v6, 0x42c80000    # 100.0f

    .line 317
    :try_start_2
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->load()V

    .line 318
    check-cast p0, Landroid/app/Activity;

    .line 319
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

    .line 320
    :goto_1b
    if-nez v0, :cond_20

    .line 366
    :cond_1d
    :goto_1d
    return-void

    .line 319
    :cond_1e
    const/4 v0, 0x0

    goto :goto_1b

    .line 321
    :cond_20
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 322
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 323
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1d

    .line 324
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 325
    const-string v2, "modqolOptions"

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1d

    .line 326
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 327
    const-string v3, "modqolOptions"

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 328
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 329
    const/high16 v3, 0x41000000    # 8.0f

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 330
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 331
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 332
    const-string v4, "Corsair mod options"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    const v4, -0x952f01

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 334
    const/4 v4, 0x2

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 335
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 336
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->selector(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 337
    const-string v3, "Fixed joystick (off = joystick appears under your thumb)"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "fixedStick"

    sget-boolean v5, Lfr/testudo/spacecorsair/mod/ModQol;->optStick:Z

    invoke-static {p0, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModQol;->check(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 338
    const-string v3, "Numbers on hull and shield bars"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "barNumbers"

    sget-boolean v5, Lfr/testudo/spacecorsair/mod/ModQol;->optBars:Z

    invoke-static {p0, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModQol;->check(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 339
    const-string v3, "Damage numbers"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "damageNumbers"

    sget-boolean v5, Lfr/testudo/spacecorsair/mod/ModQol;->optDmg:Z

    invoke-static {p0, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModQol;->check(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 340
    const-string v3, "Bigger buttons"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "bigButtons"

    sget-boolean v5, Lfr/testudo/spacecorsair/mod/ModQol;->optBig:Z

    invoke-static {p0, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModQol;->check(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 341
    const-string v3, "Threat readout (engaging enemies, top level)"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "threatReadout"

    sget-boolean v5, Lfr/testudo/spacecorsair/mod/ModQol;->optThreat:Z

    invoke-static {p0, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModQol;->check(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 342
    const-string v3, "Radar edge pointers (bosses, hostile flagships)"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "radarEdge"

    sget-boolean v5, Lfr/testudo/spacecorsair/mod/ModQol;->optEdge:Z

    invoke-static {p0, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModQol;->check(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 343
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 344
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 345
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

    .line 346
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 347
    new-instance v4, Landroid/widget/SeekBar;

    invoke-direct {v4, p0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 348
    const/16 v5, 0x96

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 349
    sget v5, Lfr/testudo/spacecorsair/mod/ModQol;->optShake:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 350
    new-instance v5, Lfr/testudo/spacecorsair/mod/ModQol$1;

    invoke-direct {v5, v3}, Lfr/testudo/spacecorsair/mod/ModQol$1;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 360
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 361
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModVfx;->settingsRow(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 362
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_14f} :catch_151

    goto/16 :goto_1d

    .line 363
    :catch_151
    move-exception v0

    goto/16 :goto_1d
.end method

.method public static shakeLevel()F
    .registers 1

    .prologue
    .line 257
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->load()V

    sget v0, Lfr/testudo/spacecorsair/mod/ModQol;->optShake:F

    return v0
.end method

.method public static showInbox(Landroid/app/Activity;)V
    .registers 6

    .prologue
    .line 706
    :try_start_0
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->load()V

    .line 707
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 708
    const-class v3, Lfr/testudo/spacecorsair/mod/ModQol;

    monitor-enter v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_95

    .line 709
    :try_start_b
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->inbox:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "No messages yet. Level-ups and new unlocks are listed here."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    :cond_1c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->inbox:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_25
    if-ltz v1, :cond_60

    .line 711
    sget v0, Lfr/testudo/spacecorsair/mod/ModQol;->readCount:I

    if-lt v1, v0, :cond_5d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NEW"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_44
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

    .line 710
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_25

    .line 711
    :cond_5d
    const-string v0, ""

    goto :goto_44

    .line 713
    :cond_60
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModQol;->inbox:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModQol;->readCount:I

    .line 714
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->saveInbox()V

    .line 715
    monitor-exit v3
    :try_end_6c
    .catchall {:try_start_b .. :try_end_6c} :catchall_92

    .line 716
    :try_start_6c
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

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_91} :catch_95

    .line 720
    :goto_91
    return-void

    .line 715
    :catchall_92
    move-exception v0

    :try_start_93
    monitor-exit v3
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_92

    :try_start_94
    throw v0
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_95} :catch_95

    .line 717
    :catch_95
    move-exception v0

    goto :goto_91
.end method

.method static source(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 917
    :try_start_0
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v1

    .line 918
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSpecs;->FAMILY_NAMES:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v3, :cond_33

    aget-object v4, v2, v0

    .line 919
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 920
    const-string v0, "megatron"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "Guardian-class cruisers carry this. Pilots who take them down sometimes come home with one."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->hint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 936
    :goto_24
    return-object v0

    .line 921
    :cond_25
    const-string v0, "Alien hulls sometimes carry this. The bigger the alien, the better the odds."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->hint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 918
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 924
    :cond_33
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModSources;->shop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 925
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

    .line 926
    :cond_57
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    .line 927
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

    .line 928
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

    .line 930
    :cond_9b
    if-eqz v0, :cond_c9

    instance-of v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-nez v1, :cond_c9

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->isEquipable()Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 931
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

    .line 933
    :catch_c8
    move-exception v0

    .line 936
    :cond_c9
    const-string v0, ""

    goto/16 :goto_24
.end method

.method private static threatLine(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 12

    .prologue
    .line 524
    sget v0, Lfr/testudo/spacecorsair/mod/ModAlerts;->threatN:I

    sget v1, Lfr/testudo/spacecorsair/mod/ModAlerts;->threatTop:I

    .line 525
    if-lez v0, :cond_a

    sget-object v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->shieldBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

    if-nez v2, :cond_b

    .line 536
    :cond_a
    :goto_a
    return-void

    .line 526
    :cond_b
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModQol;->threatText:Ljava/lang/String;

    if-eqz v2, :cond_17

    sget v2, Lfr/testudo/spacecorsair/mod/ModQol;->threatA:I

    if-ne v0, v2, :cond_17

    sget v2, Lfr/testudo/spacecorsair/mod/ModQol;->threatB:I

    if-eq v1, v2, :cond_34

    .line 527
    :cond_17
    const-string v2, "HOSTILES {0}  \u00b7  TOP Lv {1}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModLang;->fmt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModQol;->threatText:Ljava/lang/String;

    .line 528
    sput v0, Lfr/testudo/spacecorsair/mod/ModQol;->threatA:I

    .line 529
    sput v1, Lfr/testudo/spacecorsair/mod/ModQol;->threatB:I

    .line 531
    :cond_34
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV34;->playerLevel()I

    move-result v0

    sub-int v0, v1, v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_6e

    const/4 v0, 0x1

    .line 532
    :goto_3e
    sget-object v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->shieldBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

    iget-object v1, v1, Lfr/testudo/spacecorsair/display/hud/InfoBar;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->shieldBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

    iget v2, v2, Lfr/testudo/spacecorsair/display/hud/InfoBar;->witdh:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v2, v1

    .line 533
    sget v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    sget-object v3, Lfr/testudo/spacecorsair/engine/GameRenderer;->shieldBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

    iget-object v3, v3, Lfr/testudo/spacecorsair/display/hud/InfoBar;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    float-to-int v3, v3

    sub-int/2addr v1, v3

    add-int/lit8 v3, v1, -0x22

    .line 534
    if-eqz v0, :cond_70

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->threatText:Ljava/lang/String;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3e99999a    # 0.3f

    const/high16 v7, 0x3e800000    # 0.25f

    const/4 v8, 0x1

    sget-object v9, Lfr/testudo/spacecorsair/textengine/TextSize;->LITTLE:Lfr/testudo/spacecorsair/textengine/TextSize;

    move-object v0, p0

    invoke-static/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawText(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IIFFFFZLfr/testudo/spacecorsair/textengine/TextSize;)V

    goto :goto_a

    .line 531
    :cond_6e
    const/4 v0, 0x0

    goto :goto_3e

    .line 535
    :cond_70
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModQol;->threatText:Ljava/lang/String;

    const v4, 0x3f666666    # 0.9f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f59999a    # 0.85f

    const v7, 0x3ecccccd    # 0.4f

    const/4 v8, 0x1

    sget-object v9, Lfr/testudo/spacecorsair/textengine/TextSize;->LITTLE:Lfr/testudo/spacecorsair/textengine/TextSize;

    move-object v0, p0

    invoke-static/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawText(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IIFFFFZLfr/testudo/spacecorsair/textengine/TextSize;)V

    goto :goto_a
.end method

.method public static threatReadout()Z
    .registers 1

    .prologue
    .line 255
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->load()V

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModQol;->optThreat:Z

    return v0
.end method

.method public static unread()I
    .registers 3

    .prologue
    .line 650
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
