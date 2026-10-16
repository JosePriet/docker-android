.class final Lfr/testudo/spacecorsair/business/mission/GenesisMissions$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneSpecificConfHandler;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnnemisOfWave(IIILfr/testudo/spacecorsair/engine/Vector2;)V
    .registers 10

    .prologue
    const/4 v4, 0x1

    .line 98
    div-int/lit8 v0, p1, 0x5

    .line 100
    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newBasicEnnemisShip(I)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;

    move-result-object v1

    .line 101
    const-string v0, "pillard"

    iput-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->specificName:Ljava/lang/String;

    .line 102
    invoke-virtual {v1, p4}, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 104
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    rem-int/lit8 v0, p2, 0x2

    if-ne v0, v4, :cond_44

    const/high16 v0, -0x3e900000    # -15.0f

    :goto_16
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 105
    rem-int/lit8 v0, p2, 0x2

    if-ne v0, v4, :cond_47

    const/high16 v0, -0x3d4c0000    # -90.0f

    :goto_20
    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->spin:F

    .line 106
    const-wide/16 v2, 0x9c4

    iput-wide v2, v1, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->nextShootAlowed:J

    .line 107
    const v0, 0x35a4e900

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->setMitigedDistance(I)V

    .line 109
    const v0, 0x495bba00    # 900000.0f

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->desengagementDistance:F

    .line 111
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playMissileStart()V

    .line 112
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    return-void

    .line 104
    :cond_44
    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_16

    .line 105
    :cond_47
    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_20
.end method
