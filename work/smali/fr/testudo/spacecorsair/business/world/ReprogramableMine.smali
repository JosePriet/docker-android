.class public Lfr/testudo/spacecorsair/business/world/ReprogramableMine;
.super Lfr/testudo/spacecorsair/business/world/Mine;
.source "SourceFile"


# static fields
.field private static final DISABLE_DISTANCE:I = 0x140

.field private static final DISABLE_TIME_IN_MILLI:I = 0x1388


# instance fields
.field private beeingDisabling:Z

.field private remainginTimeForDisabling:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/world/Mine;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/ReprogramableMine;->beeingDisabling:Z

    .line 21
    const/16 v0, 0x1388

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/ReprogramableMine;->remainginTimeForDisabling:I

    return-void
.end method

.method private onDisabled()V
    .registers 3

    .prologue
    const v1, 0x3f333333    # 0.7f

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/ReprogramableMine;->disabled:Z

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/ReprogramableMine;->beeingDisabling:Z

    .line 60
    iput v1, p0, Lfr/testudo/spacecorsair/business/world/ReprogramableMine;->r:F

    .line 61
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/ReprogramableMine;->g:F

    .line 62
    iput v1, p0, Lfr/testudo/spacecorsair/business/world/ReprogramableMine;->b:F

    .line 64
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playDefuse()V

    .line 66
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-eqz v0, :cond_27

    .line 67
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    invoke-virtual {v0, p0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->onMineDisabled(Lfr/testudo/spacecorsair/business/world/ReprogramableMine;)V

    .line 69
    :cond_27
    return-void
.end method


# virtual methods
.method public doPhysic(J)V
    .registers 6

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/world/Mine;->doPhysic(J)V

    .line 37
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/ReprogramableMine;->disabled:Z

    if-eqz v0, :cond_8

    .line 54
    :cond_7
    :goto_7
    return-void

    .line 41
    :cond_8
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/ReprogramableMine;->distanceToPlayer:F

    const/high16 v1, 0x43a00000    # 320.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_26

    const/4 v0, 0x1

    :goto_11
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/ReprogramableMine;->beeingDisabling:Z

    .line 44
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/ReprogramableMine;->beeingDisabling:Z

    if-eqz v0, :cond_28

    .line 45
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/ReprogramableMine;->remainginTimeForDisabling:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/ReprogramableMine;->remainginTimeForDisabling:I

    .line 46
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/ReprogramableMine;->remainginTimeForDisabling:I

    if-gtz v0, :cond_7

    .line 47
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/world/ReprogramableMine;->onDisabled()V

    goto :goto_7

    .line 41
    :cond_26
    const/4 v0, 0x0

    goto :goto_11

    .line 51
    :cond_28
    const/16 v0, 0x1388

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/ReprogramableMine;->remainginTimeForDisabling:I

    goto :goto_7
.end method

.method public bridge synthetic init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;FLfr/testudo/spacecorsair/business/ennemis/MineSpec;)Lfr/testudo/spacecorsair/business/world/Mine;
    .registers 6

    .prologue
    .line 14
    invoke-virtual {p0, p1, p2, p3, p4}, Lfr/testudo/spacecorsair/business/world/ReprogramableMine;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;FLfr/testudo/spacecorsair/business/ennemis/MineSpec;)Lfr/testudo/spacecorsair/business/world/ReprogramableMine;

    move-result-object v0

    return-object v0
.end method

.method public init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;FLfr/testudo/spacecorsair/business/ennemis/MineSpec;)Lfr/testudo/spacecorsair/business/world/ReprogramableMine;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-super {p0, p1, p2, p3, p4}, Lfr/testudo/spacecorsair/business/world/Mine;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;FLfr/testudo/spacecorsair/business/ennemis/MineSpec;)Lfr/testudo/spacecorsair/business/world/Mine;

    .line 25
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/ReprogramableMine;->disabled:Z

    .line 26
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/ReprogramableMine;->beeingDisabling:Z

    .line 27
    const/16 v0, 0x1388

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/ReprogramableMine;->remainginTimeForDisabling:I

    .line 28
    return-object p0
.end method

.method public registerYourselfToDrawQueue()V
    .registers 15

    .prologue
    const/4 v3, 0x0

    const-wide/high16 v12, 0x4044000000000000L    # 40.0

    const-wide/high16 v10, -0x3fcc000000000000L    # -20.0

    .line 75
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/world/Mine;->registerYourselfToDrawQueue()V

    .line 77
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/ReprogramableMine;->beeingDisabling:Z

    if-eqz v0, :cond_47

    move v8, v3

    .line 78
    :goto_d
    const/4 v0, 0x5

    if-ge v8, v0, :cond_47

    .line 79
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/ReprogramableMine;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/ReprogramableMine;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v12

    add-double/2addr v4, v10

    double-to-float v1, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v12

    add-double/2addr v4, v10

    double-to-float v2, v4

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 80
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/ReprogramableMine;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const v4, 0x3f4ccccd    # 0.8f

    const v5, 0x3ef5c28f    # 0.48f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3ea8f5c3    # 0.33f

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFF)V

    .line 78
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_d

    .line 83
    :cond_47
    return-void
.end method
