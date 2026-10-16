.class Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$1;
.super Lfr/testudo/spacecorsair/business/world/civil/CivilActivityCompletedListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;)V
    .registers 2

    .prologue
    .line 130
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$1;->this$0:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;

    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivityCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCompleted(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V
    .registers 5

    .prologue
    .line 134
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$1;->this$0:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;->MEETING_POINT:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 135
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$1;->this$0:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->onEscortMeeting()V

    .line 139
    :cond_11
    return-void
.end method
