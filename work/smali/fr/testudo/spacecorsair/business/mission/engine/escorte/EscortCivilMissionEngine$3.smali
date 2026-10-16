.class Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$3;
.super Lfr/testudo/spacecorsair/business/world/civil/CivilActivityCompletedListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;)V
    .registers 2

    .prologue
    .line 525
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$3;->this$0:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;

    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivityCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCompleted(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V
    .registers 4

    .prologue
    .line 528
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$3;->this$0:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;

    # invokes: Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->onEscortReachedDestinationPoint()V
    invoke-static {v0}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->access$000(Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;)V

    .line 529
    return-void
.end method
