.class public Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Backup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Backup"
.end annotation


# instance fields
.field public completed:Z

.field public curPhase:Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;

.field public currentValue:I

.field hasSeenTargetZone:Z

.field public objectiveValue:I

.field final synthetic this$0:Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;


# direct methods
.method public constructor <init>(Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 42
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Backup;->this$0:Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;->GATHERING:Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Backup;->curPhase:Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;

    .line 37
    iput v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Backup;->objectiveValue:I

    .line 38
    iput v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Backup;->currentValue:I

    .line 39
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Backup;->completed:Z

    .line 40
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Backup;->hasSeenTargetZone:Z

    .line 44
    return-void
.end method


# virtual methods
.method public applyCurrent(Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;)V
    .registers 3

    .prologue
    .line 47
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Backup;->curPhase:Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;

    .line 48
    iget v0, p1, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->objectiveToGathered:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Backup;->objectiveValue:I

    .line 49
    iget v0, p1, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->currentGathered:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Backup;->currentValue:I

    .line 50
    iget-boolean v0, p1, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->completed:Z

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Backup;->completed:Z

    .line 51
    iget-boolean v0, p1, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->hasSeenTargetZone:Z

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Backup;->hasSeenTargetZone:Z

    .line 52
    return-void
.end method
