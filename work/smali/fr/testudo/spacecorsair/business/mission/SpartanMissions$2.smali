.class final Lfr/testudo/spacecorsair/business/mission/SpartanMissions$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine$TargetZoneEnterListener;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayerEnteredInTargetZone()V
    .registers 5

    .prologue
    .line 190
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    const-class v1, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v3, 0x7f0701b5

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/game/levels/Level;->addNameToAllEnemies(Ljava/lang/Class;Ljava/lang/String;)V

    .line 191
    return-void
.end method
