.class final Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;
.super Lfr/testudo/spacecorsair/game/levels/LevelAnimator;
.source "SourceFile"


# static fields
.field public static final PORTAL_DISTANCE_TO_CENTER:I = 0x7d0


# instance fields
.field public AREA_FINISHED_PORTAL_ROTATION_SPEED:F

.field public DEFAULT_PORTAL_ROTATION_SPEED:F

.field angleRef:F

.field arenaEnteredLevel:I

.field arenaLevel:I

.field arenaStarted:Z

.field public curWave:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

.field public currentArenaLevel:Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

.field public nextPopInMilli:I

.field playerHasLeftArena:Z

.field public portalRotatonSpeed:F

.field punishmentDamage:I

.field remainingTimeBeforeWave:I

.field waveIndex:I

.field public wavePopIndex:I


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;-><init>()V

    .line 134
    iput v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->remainingTimeBeforeWave:I

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->arenaLevel:I

    .line 136
    iput v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->arenaEnteredLevel:I

    .line 137
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->arenaStarted:Z

    .line 138
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->playerHasLeftArena:Z

    .line 139
    iput v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->punishmentDamage:I

    .line 140
    iput v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->waveIndex:I

    .line 143
    iput v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->wavePopIndex:I

    .line 144
    iput v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->nextPopInMilli:I

    .line 214
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->DEFAULT_PORTAL_ROTATION_SPEED:F

    .line 215
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->DEFAULT_PORTAL_ROTATION_SPEED:F

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->portalRotatonSpeed:F

    .line 216
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->AREA_FINISHED_PORTAL_ROTATION_SPEED:F

    .line 218
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->angleRef:F

    return-void
.end method

.method private checkWaveCondition()V
    .registers 3

    .prologue
    .line 184
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->curWave:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    if-eqz v0, :cond_c

    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->wavePopIndex:I

    iget-object v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->curWave:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    iget v1, v1, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->waveSize:I

    if-ge v0, v1, :cond_d

    .line 210
    :cond_c
    :goto_c
    return-void

    .line 189
    :cond_d
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$2;->$SwitchMap$fr$testudo$spacecorsair$game$levels$arena$NextWaveCondition$Conditiontype:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->curWave:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->nextWaveCondition:Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;->conditionType:Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_58

    goto :goto_c

    .line 193
    :pswitch_1f
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->remainingTimeBeforeWave:I

    if-gtz v0, :cond_c

    .line 194
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->initNextWave()V

    goto :goto_c

    .line 200
    :pswitch_27
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->curWave:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->nextWaveCondition:Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;

    iget v1, v1, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;->ennmisCount:I

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->isThereMoreEnnemiesThan(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 201
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->initNextWave()V

    goto :goto_c

    .line 205
    :pswitch_3d
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->remainingTimeBeforeWave:I

    if-lez v0, :cond_53

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->curWave:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->nextWaveCondition:Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;

    iget v1, v1, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;->ennmisCount:I

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->isThereMoreEnnemiesThan(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 206
    :cond_53
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->initNextWave()V

    goto :goto_c

    .line 189
    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_27
        :pswitch_3d
    .end packed-switch
.end method

.method private ensurePlayerInArena()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 356
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v0

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/Vector2;->length()F

    move-result v0

    const v1, 0x461c4000    # 10000.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_31

    .line 357
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f070326

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->punishmentDamage:I

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->punishmentDamage:I

    .line 359
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->punishmentDamage:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2, v2}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 365
    :goto_30
    return-void

    .line 362
    :cond_31
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->punishmentDamage:I

    goto :goto_30
.end method

.method private initArena()V
    .registers 4

    .prologue
    const/16 v2, 0xd

    const/4 v1, 0x5

    .line 369
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->DEFAULT_PORTAL_ROTATION_SPEED:F

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->portalRotatonSpeed:F

    .line 370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->playerHasLeftArena:Z

    .line 371
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->arenaStarted:Z

    if-eqz v0, :cond_2a

    .line 372
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->arenaLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->arenaLevel:I

    .line 390
    :goto_14
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->arenaLevel:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->getLevelConfig(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->currentArenaLevel:Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    .line 391
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->waveIndex:I

    .line 392
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->initNextWave()V

    .line 393
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->ensureArenaWelcomeMessage()V

    .line 394
    return-void

    .line 374
    :cond_2a
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->getLevel()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->arenaLevel:I

    .line 375
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->arenaLevel:I

    if-ge v0, v1, :cond_3c

    .line 376
    iput v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->arenaLevel:I

    .line 378
    :cond_3c
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->arenaLevel:I

    if-le v0, v2, :cond_42

    .line 379
    iput v2, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->arenaLevel:I

    .line 386
    :cond_42
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->arenaLevel:I

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->arenaEnteredLevel:I

    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->arenaStarted:Z

    goto :goto_14
.end method

.method private rotatePortals(J)V
    .registers 12

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v7, 0x43700000    # 240.0f

    const/high16 v6, 0x42f00000    # 120.0f

    const-wide v4, 0x409f400000000000L    # 2000.0

    .line 221
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->angleRef:F

    long-to-float v1, p1

    iget v2, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->portalRotatonSpeed:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->angleRef:F

    .line 223
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->angleRef:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_22

    .line 224
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->angleRef:F

    sub-float/2addr v0, v3

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->angleRef:F

    .line 228
    :cond_22
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->POP1_PORTAL_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->angleRef:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-float v1, v2

    iget v2, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->angleRef:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 229
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->POP2_PORTAL_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->angleRef:F

    sub-float/2addr v1, v6

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-float v1, v2

    iget v2, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->angleRef:F

    sub-float/2addr v2, v6

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 230
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->POP3_PORTAL_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->angleRef:F

    sub-float/2addr v1, v7

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-float v1, v2

    iget v2, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->angleRef:F

    sub-float/2addr v2, v7

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 231
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->pop1Portal:Lfr/testudo/spacecorsair/business/world/Portal;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->POP1_PORTAL_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    .line 232
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->pop2Portal:Lfr/testudo/spacecorsair/business/world/Portal;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->POP2_PORTAL_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    .line 233
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->pop3Portal:Lfr/testudo/spacecorsair/business/world/Portal;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->POP3_PORTAL_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    .line 235
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->POP1:Lfr/testudo/spacecorsair/engine/PopPoint;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/PopPoint;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->POP1_PORTAL_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 236
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->POP2:Lfr/testudo/spacecorsair/engine/PopPoint;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/PopPoint;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->POP2_PORTAL_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 237
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->POP3:Lfr/testudo/spacecorsair/engine/PopPoint;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/PopPoint;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->POP3_PORTAL_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 239
    return-void
.end method


# virtual methods
.method public initNextWave()V
    .registers 3

    .prologue
    .line 399
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->waveIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->waveIndex:I

    .line 400
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->waveIndex:I

    iget-object v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->currentArenaLevel:Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 402
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->currentArenaLevel:Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    iget v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->waveIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->curWave:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    .line 403
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->wavePopIndex:I

    .line 404
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->curWave:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    iget v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->wavePopDelayInMilli:I

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->nextPopInMilli:I

    .line 405
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->curWave:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->nextWaveCondition:Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;

    iget v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;->timingInSeconds:I

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->remainingTimeBeforeWave:I

    .line 411
    :goto_33
    return-void

    .line 407
    :cond_34
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->curWave:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    .line 408
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->onArenaLevelCompleted()V

    goto :goto_33
.end method

.method public onArenaLevelCompleted()V
    .registers 5

    .prologue
    const v2, 0x7f070329

    const v3, 0x7f070328

    .line 415
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-eqz v0, :cond_f

    .line 441
    :goto_e
    return-void

    .line 419
    :cond_f
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->arenaPortal:Lfr/testudo/spacecorsair/business/world/Portal;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/world/Portal;->showAndEnable()V

    .line 420
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->arenaPortal:Lfr/testudo/spacecorsair/business/world/Portal;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 421
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->arenaPortal:Lfr/testudo/spacecorsair/business/world/Portal;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 422
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->AREA_FINISHED_PORTAL_ROTATION_SPEED:F

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->portalRotatonSpeed:F

    .line 423
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->arenaLevel:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_ae

    .line 425
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f07032a

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->arenaPortal:Lfr/testudo/spacecorsair/business/world/Portal;

    const-string v1, "heliostat"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 427
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->arenaPortal:Lfr/testudo/spacecorsair/business/world/Portal;

    const-string v1, "> galactic arena <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 428
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->arenaPortal:Lfr/testudo/spacecorsair/business/world/Portal;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v2, 0x7f07032b

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->updatePortalName(Ljava/lang/String;)V

    .line 429
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->arenaStarted:Z

    .line 436
    :goto_58
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    iget-object v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->currentArenaLevel:Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    iget v1, v1, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->moneyReward:I

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->addCredit(I)V

    .line 437
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newGoldMessage()Lfr/testudo/spacecorsair/display/GoldTextMessage;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->currentArenaLevel:Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    iget v3, v3, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->moneyReward:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " credits"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/display/GoldTextMessage;->init(Ljava/lang/String;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/GoldTextMessage;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/display/GoldTextMessage;->withTextSize(Lfr/testudo/spacecorsair/textengine/TextSize;)Lfr/testudo/spacecorsair/display/GoldTextMessage;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/display/GoldTextMessage;->withLifeTimeInSec(I)Lfr/testudo/spacecorsair/display/GoldTextMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevelDrawOnly(Lfr/testudo/spacecorsair/business/Element;)V

    .line 439
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->arenaEnteredLevel:I

    iget v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->arenaLevel:I

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onPlayerFinishArena(II)V

    .line 440
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playPhaseComplete()V

    goto/16 :goto_e

    .line 431
    :cond_ae
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v1, v3}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->arenaLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->arenaPortal:Lfr/testudo/spacecorsair/business/world/Portal;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->arenaLevel:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->updatePortalName(Ljava/lang/String;)V

    goto/16 :goto_58
.end method

.method public onDoPhysic(J)V
    .registers 6

    .prologue
    .line 244
    invoke-direct {p0, p1, p2}, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->rotatePortals(J)V

    .line 247
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->remainingTimeBeforeWave:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->remainingTimeBeforeWave:I

    .line 249
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->curWave:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    if-nez v0, :cond_f

    .line 265
    :cond_e
    :goto_e
    return-void

    .line 254
    :cond_f
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->wavePopIndex:I

    iget-object v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->curWave:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    iget v1, v1, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->waveSize:I

    if-ge v0, v1, :cond_e

    .line 255
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->nextPopInMilli:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->nextPopInMilli:I

    .line 256
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->nextPopInMilli:I

    if-gtz v0, :cond_e

    .line 257
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->wavePopIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->wavePopIndex:I

    .line 258
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->onWavePop()V

    .line 259
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->curWave:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    iget v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->wavePopDelayInMilli:I

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->nextPopInMilli:I

    goto :goto_e
.end method

.method public onElementDestroyed(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 447
    return-void
.end method

.method public onElementKilledByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 164
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;->onElementKilledByPlayer(Lfr/testudo/spacecorsair/business/Element;)V

    .line 165
    return-void
.end method

.method public onEverySecond()V
    .registers 1

    .prologue
    .line 176
    invoke-super {p0}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;->onEverySecond()V

    .line 177
    invoke-direct {p0}, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->ensurePlayerInArena()V

    .line 178
    invoke-direct {p0}, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->checkWaveCondition()V

    .line 181
    return-void
.end method

.method public onEveryTenSec()V
    .registers 1

    .prologue
    .line 160
    return-void
.end method

.method public onEveryThirtySec()V
    .registers 1

    .prologue
    .line 152
    invoke-super {p0}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;->onEveryThirtySec()V

    .line 155
    return-void
.end method

.method public onPlayerDeath()V
    .registers 2

    .prologue
    .line 350
    invoke-super {p0}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;->onPlayerDeath()V

    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->arenaStarted:Z

    .line 352
    return-void
.end method

.method public onPlayerEnterInZone()V
    .registers 1

    .prologue
    .line 343
    invoke-super {p0}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;->onPlayerEnterInZone()V

    .line 344
    invoke-direct {p0}, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->initArena()V

    .line 345
    return-void
.end method

.method public onSecretMapReveleaed(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    .registers 2

    .prologue
    .line 171
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;->onSecretMapReveleaed(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 172
    return-void
.end method

.method public onWavePop()V
    .registers 9

    .prologue
    const-wide v6, 0x40a7700000000000L    # 3000.0

    const-wide v4, -0x3f68900000000000L    # -1500.0

    .line 270
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->curWave:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->enemisType:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    iget-object v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->curWave:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    iget v1, v1, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->ennemisLevelMin:I

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->curWave:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    iget v2, v2, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->ennemisLevelMax:I

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newEnnemis(Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    .line 271
    const v1, 0x4cbe8b4c    # 9.99E7f

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->desengagementDistance:F

    .line 273
    iget-object v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->curWave:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->isElite:Z

    if-eqz v1, :cond_28

    .line 274
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 277
    :cond_28
    iget-object v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->curWave:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->extraConfig:Lfr/testudo/spacecorsair/game/levels/arena/ArenaExtraEnemisConfig;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/game/levels/arena/ArenaExtraEnemisConfig;->disableMisile:Z

    if-eqz v1, :cond_30

    .line 280
    :cond_30
    iget-object v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->curWave:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->extraConfig:Lfr/testudo/spacecorsair/game/levels/arena/ArenaExtraEnemisConfig;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/arena/ArenaExtraEnemisConfig;->name:Ljava/lang/String;

    if-eqz v1, :cond_41

    .line 281
    iget-object v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->curWave:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->extraConfig:Lfr/testudo/spacecorsair/game/levels/arena/ArenaExtraEnemisConfig;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/arena/ArenaExtraEnemisConfig;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setSpecificName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/Element;

    .line 287
    :cond_41
    iget-object v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->curWave:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->alterationLaserSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->withLaserAlterations(Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 288
    iget-object v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->curWave:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->alterationMissileSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->withMissileAlterations(Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 291
    iget-object v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->curWave:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->enemisType:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    if-eq v1, v2, :cond_f3

    iget-object v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->curWave:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->enemisType:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ROCKET_TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    if-eq v1, v2, :cond_f3

    iget-object v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->curWave:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->enemisType:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ALIEN_TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    if-eq v1, v2, :cond_f3

    .line 294
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$2;->$SwitchMap$fr$testudo$spacecorsair$game$levels$arena$ArenaWave$PopConfig:[I

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->curWave:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->popConfig:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_106

    .line 324
    :goto_76
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v1

    const/high16 v2, 0x44e10000    # 1800.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_8f

    .line 325
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/engine/SoundManager;->playMissileStart()V

    .line 329
    :cond_8f
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 330
    iget-object v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->curWave:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->enemisType:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ALBATROS:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ac

    iget-object v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;->curWave:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->enemisType:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ALIEN_BLATTE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 331
    :cond_ac
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/Level;->requestPlayerGotoLastPosOfElements()V

    .line 335
    :cond_b5
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initChasePlayer()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 339
    return-void

    .line 297
    :pswitch_b9
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->POP1:Lfr/testudo/spacecorsair/engine/PopPoint;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->applyPopPoint(Lfr/testudo/spacecorsair/engine/PopPoint;)Lfr/testudo/spacecorsair/business/Element;

    goto :goto_76

    .line 300
    :pswitch_bf
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->POP2:Lfr/testudo/spacecorsair/engine/PopPoint;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->applyPopPoint(Lfr/testudo/spacecorsair/engine/PopPoint;)Lfr/testudo/spacecorsair/business/Element;

    goto :goto_76

    .line 303
    :pswitch_c5
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->POP3:Lfr/testudo/spacecorsair/engine/PopPoint;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->applyPopPoint(Lfr/testudo/spacecorsair/engine/PopPoint;)Lfr/testudo/spacecorsair/business/Element;

    goto :goto_76

    .line 306
    :pswitch_cb
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    .line 307
    const-wide v4, 0x3fd51eb851eb851fL    # 0.33

    cmpg-double v1, v2, v4

    if-gez v1, :cond_de

    .line 308
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->POP1:Lfr/testudo/spacecorsair/engine/PopPoint;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->applyPopPoint(Lfr/testudo/spacecorsair/engine/PopPoint;)Lfr/testudo/spacecorsair/business/Element;

    goto :goto_76

    .line 311
    :cond_de
    const-wide v4, 0x3fe51eb851eb851fL    # 0.66

    cmpg-double v1, v2, v4

    if-gez v1, :cond_ed

    .line 312
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->POP2:Lfr/testudo/spacecorsair/engine/PopPoint;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->applyPopPoint(Lfr/testudo/spacecorsair/engine/PopPoint;)Lfr/testudo/spacecorsair/business/Element;

    goto :goto_76

    .line 315
    :cond_ed
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->POP3:Lfr/testudo/spacecorsair/engine/PopPoint;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->applyPopPoint(Lfr/testudo/spacecorsair/engine/PopPoint;)Lfr/testudo/spacecorsair/business/Element;

    goto :goto_76

    .line 321
    :cond_f3
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setPosition(FF)Lfr/testudo/spacecorsair/business/Element;

    goto/16 :goto_76

    .line 294
    :pswitch_data_106
    .packed-switch 0x1
        :pswitch_b9
        :pswitch_bf
        :pswitch_c5
        :pswitch_cb
    .end packed-switch
.end method
