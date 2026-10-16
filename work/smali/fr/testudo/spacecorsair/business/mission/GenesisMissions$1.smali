.class final Lfr/testudo/spacecorsair/business/mission/GenesisMissions$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngineListener;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnterInGatherZoneFirstTime()V
    .registers 6

    .prologue
    .line 48
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f020054

    const v2, 0x7f070187

    const v3, 0x7f07012d

    const/16 v4, 0x1388

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIII)V

    .line 49
    return-void
.end method
