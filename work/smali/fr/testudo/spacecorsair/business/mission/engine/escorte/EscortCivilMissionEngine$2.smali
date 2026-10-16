.class Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$2;
.super Lfr/testudo/spacecorsair/business/world/civil/CivilActivityCompletedListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;)V
    .registers 2

    .prologue
    .line 143
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$2;->this$0:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;

    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivityCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCompleted(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V
    .registers 4

    .prologue
    .line 147
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$2;->this$0:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->onEscortJumped()V

    .line 148
    return-void
.end method
