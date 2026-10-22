.class public Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;
.super Lfr/testudo/spacecorsair/business/mission/MissionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine$1;,
        Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine$Phase;
    }
.end annotation


# instance fields
.field public completed:Z

.field public configAddTourelle:Z

.field public currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine$Phase;

.field public deferedTargetCreation:Z

.field private isPlayerInRecompenceZone:Z

.field private isPlayerInTargetZone:Z

.field public level:I

.field public missionTarget:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

.field public recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public stationGiveBackName:Ljava/lang/String;

.field public targetCreator:Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveTargetCreator;

.field public targetLevel:I

.field public targetName:Ljava/lang/String;

.field public targetType:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

.field public targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field private tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

.field public textDestroyTarget:Ljava/lang/String;

.field public textDockToStation:Ljava/lang/String;

.field public textGotoRecompZone:Ljava/lang/String;

.field public textGotoTargetZone:Ljava/lang/String;

.field public zonePosition:Lfr/testudo/spacecorsair/engine/Vector2;


# direct methods
.method public constructor <init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;IILfr/testudo/spacecorsair/business/ennemis/EnnemisType;Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;Ljava/lang/String;ZLfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveTargetCreator;)V
    .registers 14

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;-><init>()V

    .line 42
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->completed:Z

    .line 59
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->zonePosition:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 61
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->configAddTourelle:Z

    .line 64
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->targetCreator:Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveTargetCreator;

    .line 67
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->deferedTargetCreation:Z

    .line 71
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 72
    iput-object p2, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 73
    iput p3, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->level:I

    .line 74
    iput p4, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->targetLevel:I

    .line 75
    iput-object p5, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->targetType:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    .line 76
    iput-object p7, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->targetName:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->zonePosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p6}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 78
    iput-object p8, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->stationGiveBackName:Ljava/lang/String;

    .line 79
    iput-object p10, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->targetCreator:Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveTargetCreator;

    .line 80
    iput-boolean p9, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->deferedTargetCreation:Z

    .line 81
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->initStrings()V

    .line 83
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine$Phase;->DESTROY_TARGET:Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine$Phase;

    .line 84
    return-void
.end method

.method private addTargetToLevel()V
    .registers 6

    .prologue
    const/high16 v4, 0x43fa0000    # 500.0f

    const/high16 v3, -0x3c060000    # -500.0f

    .line 109
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->deferedTargetCreation:Z

    if-eqz v0, :cond_13

    .line 110
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->targetCreator:Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveTargetCreator;

    invoke-interface {v0}, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveTargetCreator;->addElementToTheLevel()Lfr/testudo/spacecorsair/business/Element;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 135
    :cond_12
    :goto_12
    return-void

    .line 114
    :cond_13
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->targetType:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->targetLevel:I

    iget v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->targetLevel:I

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newEnnemis(Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 116
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->zonePosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    .line 117
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->isMissionObjective:Z

    .line 118
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 119
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->targetName:Ljava/lang/String;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    .line 121
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->configAddTourelle:Z

    if-eqz v0, :cond_12

    .line 125
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->zonePosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 126
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->targetLevel:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newFixedTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->zonePosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 128
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->targetLevel:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newFixedTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->zonePosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 130
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->targetLevel:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newFixedTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->zonePosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 132
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->targetLevel:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newFixedTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12
.end method

.method private initStrings()V
    .registers 4

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v2, 0x7f070120

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->textGotoTargetZone:Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v2, 0x7f070121

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->textGotoRecompZone:Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v2, 0x7f070122

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->targetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->textDestroyTarget:Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v2, 0x7f070123

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->stationGiveBackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->textDockToStation:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public static newDynamicPLacement(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;ILjava/lang/String;Ljava/lang/String;Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveTargetCreator;)Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;
    .registers 17

    .prologue
    .line 92
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;IILfr/testudo/spacecorsair/business/ennemis/EnnemisType;Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;Ljava/lang/String;ZLfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveTargetCreator;)V

    return-object v0
.end method

.method public static newStaticPlacement(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;IILfr/testudo/spacecorsair/business/ennemis/EnnemisType;Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;
    .registers 19

    .prologue
    .line 88
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v10}, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;IILfr/testudo/spacecorsair/business/ennemis/EnnemisType;Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;Ljava/lang/String;ZLfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveTargetCreator;)V

    return-object v0
.end method

.method private setPhaseGateTarget(Z)V
    .registers 4

    .prologue
    .line 162
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$BountyMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5e

    .line 191
    :cond_d
    :goto_d
    return-void

    .line 164
    :pswitch_e
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->isPlayerInTargetZone:Z

    if-nez v0, :cond_d

    .line 168
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_d

    .line 170
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 171
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 175
    :pswitch_2b
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_44

    .line 176
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->stationGiveBackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_d

    .line 178
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->isMissionObjective:Z

    .line 179
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 184
    :cond_44
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_d

    .line 186
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 187
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 162
    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_e
        :pswitch_2b
    .end packed-switch
.end method


# virtual methods
.method public getCurrentInstruction()Ljava/lang/String;
    .registers 3

    .prologue
    .line 262
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$BountyMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_28

    .line 285
    :cond_d
    const-string v0, ""

    :goto_f
    return-object v0

    .line 266
    :pswitch_10
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->isPlayerInTargetZone:Z

    if-nez v0, :cond_17

    .line 267
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->textGotoTargetZone:Ljava/lang/String;

    goto :goto_f

    .line 269
    :cond_17
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_d

    .line 270
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->textDestroyTarget:Ljava/lang/String;

    goto :goto_f

    .line 276
    :pswitch_1e
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_25

    .line 277
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->textDockToStation:Ljava/lang/String;

    goto :goto_f

    .line 280
    :cond_25
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->textGotoRecompZone:Ljava/lang/String;

    goto :goto_f

    .line 262
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_10
        :pswitch_1e
    .end packed-switch
.end method

.method public giveUp()V
    .registers 2

    .prologue
    .line 305
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v0, :cond_23

    .line 306
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 307
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->remove()V

    .line 308
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/Level;->commitChanges()V

    .line 311
    :cond_23
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->terminate()V

    .line 313
    return-void
.end method

.method public init()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 290
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine$Phase;->DESTROY_TARGET:Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine$Phase;

    .line 291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->completed:Z

    .line 292
    iput-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 293
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public isCompleted()Z
    .registers 2

    .prologue
    .line 298
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->completed:Z

    return v0
.end method

.method public onBeforePlayerDock()V
    .registers 1

    .prologue
    .line 237
    return-void
.end method

.method public onDoPhysic(J)V
    .registers 3

    .prologue
    .line 257
    return-void
.end method

.method public onElementDestroyed(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 211
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 212
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine$Phase;->GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine$Phase;

    .line 213
    invoke-direct {p0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->setPhaseGateTarget(Z)V

    .line 214
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->completed:Z

    .line 215
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702c1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_20
    return-void
.end method

.method public onElementDestroyedByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 221
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 222
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine$Phase;->GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine$Phase;

    .line 223
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->completed:Z

    .line 224
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702c1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->setPhaseGateTarget(Z)V

    .line 227
    :cond_20
    return-void
.end method

.method public onEveryMinute()V
    .registers 1

    .prologue
    .line 207
    return-void
.end method

.method public onEveryTenGameSec()V
    .registers 1

    .prologue
    .line 202
    return-void
.end method

.method public onPlayerBuyItem(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 2

    .prologue
    .line 247
    return-void
.end method

.method public onPlayerDeath()V
    .registers 1

    .prologue
    .line 232
    return-void
.end method

.method public onPlayerLoot(Lfr/testudo/spacecorsair/business/loot/LootElement;)Z
    .registers 3

    .prologue
    .line 196
    const/4 v0, 0x1

    return v0
.end method

.method public onPlayerSellItem(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 2

    .prologue
    .line 242
    return-void
.end method

.method public onPlayerUndock()V
    .registers 1

    .prologue
    .line 252
    return-void
.end method

.method public onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 141
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 142
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->isPlayerInTargetZone:Z

    .line 143
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine$Phase;->DESTROY_TARGET:Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 144
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->addTargetToLevel()V

    .line 150
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 151
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->isPlayerInRecompenceZone:Z

    .line 157
    :goto_2a
    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->setPhaseGateTarget(Z)V

    .line 158
    return-void

    .line 147
    :cond_2e
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->isPlayerInTargetZone:Z

    goto :goto_1e

    .line 154
    :cond_31
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->isPlayerInRecompenceZone:Z

    goto :goto_2a
.end method

.method public restoreState()V
    .registers 2

    .prologue
    .line 326
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine$Phase;->DESTROY_TARGET:Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine$Phase;

    .line 327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->completed:Z

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 330
    return-void
.end method

.method public saveState()V
    .registers 1

    .prologue
    .line 335
    return-void
.end method

.method public terminate()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 317
    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->setPhaseGateTarget(Z)V

    .line 318
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->completed:Z

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 320
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine$Phase;->DESTROY_TARGET:Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/BountyMissionEngine$Phase;

    .line 321
    return-void
.end method
