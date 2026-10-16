.class final Lfr/testudo/spacecorsair/game/levels/builders/GreenBorderLevelBuilder$1;
.super Lfr/testudo/spacecorsair/game/levels/LevelAnimator;
.source "SourceFile"


# instance fields
.field public fromDeltaToBaladeAndThenDelta:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;


# direct methods
.method constructor <init>()V
    .registers 6

    .prologue
    .line 82
    invoke-direct {p0}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;-><init>()V

    .line 127
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;-><init>()V

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/high16 v2, -0x3b860000    # -1000.0f

    const/high16 v3, 0x447a0000    # 1000.0f

    const/16 v4, 0x1194

    invoke-virtual {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/16 v2, 0x61a8

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initIdleDuring(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/high16 v2, -0x3b060000    # -2000.0f

    const/high16 v3, -0x3a860000    # -4000.0f

    const/16 v4, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/GreenBorderLevelBuilder;->GATE_TO_DELTA_NODE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoPoint(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/16 v2, 0x96

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initIdleDuring(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initJumpHyperspace()Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/GreenBorderLevelBuilder$1;->fromDeltaToBaladeAndThenDelta:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    return-void
.end method


# virtual methods
.method public PopEnemisFromDeltaNodePortal(I)V
    .registers 8

    .prologue
    .line 113
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p1, :cond_3b

    .line 114
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpg-double v0, v2, v4

    if-gez v0, :cond_32

    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->UFO_ALIEN:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    .line 115
    :goto_13
    const/16 v2, 0xc

    const/16 v3, 0xd

    invoke-static {v0, v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newEnnemis(Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    .line 116
    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_35

    .line 117
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/GreenBorderLevelBuilder;->GATE_TO_DELTA_NODE_POS_POP_POINT1:Lfr/testudo/spacecorsair/engine/PopPoint;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->applyPopPoint(Lfr/testudo/spacecorsair/engine/PopPoint;)Lfr/testudo/spacecorsair/business/Element;

    .line 121
    :goto_24
    iget-object v2, p0, Lfr/testudo/spacecorsair/game/levels/builders/GreenBorderLevelBuilder$1;->fromDeltaToBaladeAndThenDelta:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setActivitySequence(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 122
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v2, v0}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 113
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 114
    :cond_32
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ALIEN_RAT:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    goto :goto_13

    .line 119
    :cond_35
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/GreenBorderLevelBuilder;->GATE_TO_DELTA_NODE_POS_POP_POINT2:Lfr/testudo/spacecorsair/engine/PopPoint;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->applyPopPoint(Lfr/testudo/spacecorsair/engine/PopPoint;)Lfr/testudo/spacecorsair/business/Element;

    goto :goto_24

    .line 124
    :cond_3b
    return-void
.end method

.method public onEveryTenSec()V
    .registers 5

    .prologue
    .line 100
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3fd3333340000000L    # 0.30000001192092896

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_17

    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/GreenBorderLevelBuilder;->PORTAL_DELTA_NODE:Lfr/testudo/spacecorsair/business/world/Portal;

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/Portal;->distanceToPlayer:F

    const/high16 v1, 0x43c80000    # 400.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_18

    .line 110
    :cond_17
    :goto_17
    return-void

    .line 104
    :cond_18
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/Level;->countEnemiesInLevel()I

    move-result v0

    .line 105
    const/16 v1, 0xf

    if-ge v0, v1, :cond_17

    .line 106
    const/16 v1, 0x9

    if-ge v0, v1, :cond_2f

    const/4 v0, 0x2

    :goto_2b
    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/game/levels/builders/GreenBorderLevelBuilder$1;->PopEnemisFromDeltaNodePortal(I)V

    goto :goto_17

    :cond_2f
    const/4 v0, 0x1

    goto :goto_2b
.end method

.method public onPlayerEnterInZone()V
    .registers 4

    .prologue
    .line 87
    invoke-super {p0}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;->onPlayerEnterInZone()V

    .line 88
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyVisitedGreenBorder:Z

    if-nez v0, :cond_24

    .line 91
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f070390

    const/16 v2, 0xfa0

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/game/CharacterDialog;->ofDroid(II)Lfr/testudo/spacecorsair/game/CharacterDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(Lfr/testudo/spacecorsair/game/CharacterDialog;)V

    .line 93
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyVisitedGreenBorder:Z

    .line 95
    :cond_24
    return-void
.end method
