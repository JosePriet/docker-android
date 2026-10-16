.class final Lfr/testudo/spacecorsair/business/mission/SpartanMissions$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine$TargetZoneEnterListener;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayerEnteredInTargetZone()V
    .registers 9

    .prologue
    const/16 v4, 0x2af8

    const/4 v2, 0x0

    .line 211
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    const-class v1, Lfr/testudo/spacecorsair/business/world/Mine;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->removeAllOf(Ljava/lang/Class;)V

    .line 212
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    const/16 v1, 0xc8

    const v6, 0x3f19999a    # 0.6f

    sget-object v7, Lfr/testudo/spacecorsair/business/ennemis/MineSpec;->MINESPEC_3:Lfr/testudo/spacecorsair/business/ennemis/MineSpec;

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v7}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->addRandomReprogramableMines(Ljava/util/List;IFFIIFLfr/testudo/spacecorsair/business/ennemis/MineSpec;)V

    .line 214
    return-void
.end method
