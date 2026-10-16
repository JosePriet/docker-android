.class public Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;
.super Lfr/testudo/spacecorsair/business/mission/MissionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$1;,
        Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;
    }
.end annotation


# instance fields
.field public completed:Z

.field public configAddTourelle:Z

.field public currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;

.field hasDialogueChefDone:Z

.field private isPlayerInRecompenceZone:Z

.field private isPlayerInTargetZone:Z

.field public level:I

.field public missionTarget:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

.field public recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public stationGiveBackName:Ljava/lang/String;

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
.method public constructor <init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;IILfr/testudo/spacecorsair/business/ennemis/EnnemisType;Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;-><init>()V

    .line 40
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->completed:Z

    .line 54
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->hasDialogueChefDone:Z

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 63
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->zonePosition:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 65
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->configAddTourelle:Z

    .line 68
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 72
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 73
    iput-object p2, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 74
    iput p3, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->level:I

    .line 75
    iput p4, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->targetLevel:I

    .line 76
    iput-object p5, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->targetType:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    .line 77
    iput-object p7, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->targetName:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->zonePosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p6}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 79
    iput-object p8, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->stationGiveBackName:Ljava/lang/String;

    .line 81
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->initStrings()V

    .line 83
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;->DESTROY_TARGET:Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;

    .line 84
    return-void
.end method

.method private addTargetToLevel()V
    .registers 11

    .prologue
    const/high16 v5, 0x43fa0000    # 500.0f

    const/high16 v4, -0x3c060000    # -500.0f

    .line 98
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->targetLevel:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newDefensor(I)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 99
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->zonePosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    .line 100
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->isMissionObjective:Z

    .line 101
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 102
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->targetName:Ljava/lang/String;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    .line 103
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    const/16 v0, -0x5dc

    :goto_33
    const/16 v1, 0x5dc

    if-ge v0, v1, :cond_62

    .line 110
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->zonePosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    const v2, -0x3b448000    # -1500.0f

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 111
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    iget v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->targetLevel:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFixedTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v2

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit16 v0, v0, 0x1f4

    goto :goto_33

    .line 119
    :cond_62
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v0

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 120
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 121
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    iget v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->targetLevel:I

    add-int/lit8 v2, v2, -0x2

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFixedTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v2

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 123
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    iget v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->targetLevel:I

    add-int/lit8 v2, v2, -0x2

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFixedTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v2

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 125
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    iget v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->targetLevel:I

    add-int/lit8 v2, v2, -0x2

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFixedTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v2

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 127
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->targetLevel:I

    add-int/lit8 v1, v1, -0x2

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFixedTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    const/4 v0, 0x0

    :goto_f1
    const/16 v1, 0x14

    if-ge v0, v1, :cond_132

    .line 132
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v2, v4

    double-to-float v2, v2

    const-wide v4, -0x3f50c00000000000L    # -4000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x40bf400000000000L    # 8000.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 133
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    iget v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->targetLevel:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFixedTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v2

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_f1

    .line 136
    :cond_132
    return-void
.end method

.method private initStrings()V
    .registers 4

    .prologue
    .line 88
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->textGotoTargetZone:Ljava/lang/String;

    .line 89
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->textGotoRecompZone:Ljava/lang/String;

    .line 90
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

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v2, 0x7f0701bd

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->targetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->textDestroyTarget:Ljava/lang/String;

    .line 91
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->stationGiveBackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->textDockToStation:Ljava/lang/String;

    .line 92
    return-void
.end method

.method private setPhaseGateTarget(Z)V
    .registers 4

    .prologue
    .line 161
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$KillPillardBossMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5c

    .line 189
    :cond_d
    :goto_d
    return-void

    .line 163
    :pswitch_e
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->isPlayerInTargetZone:Z

    if-nez v0, :cond_d

    .line 167
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_d

    .line 169
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 170
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 174
    :pswitch_2b
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_43

    .line 175
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->stationGiveBackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_43

    .line 177
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->isMissionObjective:Z

    .line 178
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 182
    :cond_43
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_d

    .line 184
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 185
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 161
    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_e
        :pswitch_2b
    .end packed-switch
.end method


# virtual methods
.method public getCurrentInstruction()Ljava/lang/String;
    .registers 3

    .prologue
    .line 269
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$KillPillardBossMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_28

    .line 292
    :cond_d
    const-string v0, ""

    :goto_f
    return-object v0

    .line 273
    :pswitch_10
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->isPlayerInTargetZone:Z

    if-nez v0, :cond_17

    .line 274
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->textGotoTargetZone:Ljava/lang/String;

    goto :goto_f

    .line 276
    :cond_17
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_d

    .line 277
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->textDestroyTarget:Ljava/lang/String;

    goto :goto_f

    .line 283
    :pswitch_1e
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_25

    .line 284
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->textDockToStation:Ljava/lang/String;

    goto :goto_f

    .line 287
    :cond_25
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->textGotoRecompZone:Ljava/lang/String;

    goto :goto_f

    .line 269
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_10
        :pswitch_1e
    .end packed-switch
.end method

.method public giveUp()V
    .registers 2

    .prologue
    .line 315
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v0, :cond_23

    .line 316
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 317
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->remove()V

    .line 318
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/Level;->commitChanges()V

    .line 321
    :cond_23
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->terminate()V

    .line 323
    return-void
.end method

.method public init()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 299
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;->DESTROY_TARGET:Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;

    .line 300
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->completed:Z

    .line 301
    iput-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 302
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->hasDialogueChefDone:Z

    .line 303
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public isCompleted()Z
    .registers 2

    .prologue
    .line 308
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->completed:Z

    return v0
.end method

.method public onBeforePlayerDock()V
    .registers 1

    .prologue
    .line 237
    return-void
.end method

.method public onDoPhysic(J)V
    .registers 8

    .prologue
    .line 258
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->hasDialogueChefDone:Z

    if-nez v0, :cond_2e

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;->DESTROY_TARGET:Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;

    if-ne v0, v1, :cond_2e

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->distanceToPlayer:F

    const/high16 v1, 0x44960000    # 1200.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2e

    .line 259
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f020053

    const v2, 0x7f070139

    const v3, 0x7f07013a

    const/4 v4, 0x5

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIII)V

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->hasDialogueChefDone:Z

    .line 264
    :cond_2e
    return-void
.end method

.method public onElementDestroyed(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 211
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 212
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;->GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;

    .line 213
    invoke-direct {p0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->setPhaseGateTarget(Z)V

    .line 214
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->completed:Z

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
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 222
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;->GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;

    .line 223
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->completed:Z

    .line 224
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702c1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->setPhaseGateTarget(Z)V

    .line 227
    :cond_20
    return-void
.end method

.method public onEveryMinute()V
    .registers 1

    .prologue
    .line 205
    return-void
.end method

.method public onEveryTenGameSec()V
    .registers 1

    .prologue
    .line 200
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
    .line 194
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
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 142
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 143
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->isPlayerInTargetZone:Z

    .line 144
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->addTargetToLevel()V

    .line 149
    :goto_14
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 150
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->isPlayerInRecompenceZone:Z

    .line 156
    :goto_20
    invoke-direct {p0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->setPhaseGateTarget(Z)V

    .line 157
    return-void

    .line 146
    :cond_24
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->isPlayerInTargetZone:Z

    goto :goto_14

    .line 153
    :cond_27
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->isPlayerInRecompenceZone:Z

    goto :goto_20
.end method

.method public restoreState()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 336
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;->DESTROY_TARGET:Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;

    .line 337
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->completed:Z

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 339
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->hasDialogueChefDone:Z

    .line 341
    return-void
.end method

.method public saveState()V
    .registers 1

    .prologue
    .line 346
    return-void
.end method

.method public terminate()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 327
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->completed:Z

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 329
    invoke-direct {p0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->setPhaseGateTarget(Z)V

    .line 330
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;->DESTROY_TARGET:Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine$Phase;

    .line 331
    return-void
.end method
