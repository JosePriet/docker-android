.class public Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;
.super Lfr/testudo/spacecorsair/business/mission/MissionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine$1;,
        Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine$Phase;
    }
.end annotation


# static fields
.field private static final ALIEN_POP_BOTTOM_CENER:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static final ALIEN_POP_TOP_EST:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static final alienTopEastSequence:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

.field private static final alienTopSequenceBlate:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

.field static final blattePopPoint:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static final maxWave:I = 0x7


# instance fields
.field completed:Z

.field public currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine$Phase;

.field currentWaveIndex:I

.field fakeDeliveryStation:Lfr/testudo/spacecorsair/business/world/station/Station;

.field private isPlayerInRecompenceZone:Z

.field private isPlayerInTargetZone:Z

.field maxNumberOfCivilanToBeKilled:I

.field recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field remainingNumberOfCivilToBeKilled:I

.field remainingTimeNextWaveAlien:I

.field private stationGiveBackName:Ljava/lang/String;

.field targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field private textDefendCivilian:Ljava/lang/String;

.field private textDockToFakeStation:Ljava/lang/String;

.field private textDockToStation:Ljava/lang/String;

.field private textGotoRecompZone:Ljava/lang/String;

.field private textGotoTargetZone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xfa0

    .line 173
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x459c4000    # 5000.0f

    invoke-direct {v0, v1, v6}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->blattePopPoint:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 174
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;-><init>()V

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/high16 v2, 0x44fa0000    # 2000.0f

    const/16 v3, 0x3e8

    invoke-virtual {v1, v6, v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->alienTopSequenceBlate:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    .line 179
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;-><init>()V

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/high16 v2, -0x3a060000    # -8000.0f

    const v3, 0x44bb8000    # 1500.0f

    const/16 v4, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->withoutDetection()Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    invoke-virtual {v1, v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initRandomCivilAttack(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    invoke-virtual {v1, v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initRandomCivilAttack(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    invoke-virtual {v1, v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initRandomCivilAttack(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    invoke-virtual {v1, v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initRandomCivilAttack(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initJumpTo(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->alienTopEastSequence:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    .line 249
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, -0x39e3c000    # -10000.0f

    const/high16 v2, 0x467a0000    # 16000.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->ALIEN_POP_TOP_EST:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 251
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, -0x39860000    # -16000.0f

    invoke-direct {v0, v6, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->ALIEN_POP_BOTTOM_CENER:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method public constructor <init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;-><init>()V

    .line 42
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->completed:Z

    .line 43
    const/16 v0, 0xa

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->maxNumberOfCivilanToBeKilled:I

    .line 44
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->maxNumberOfCivilanToBeKilled:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->remainingNumberOfCivilToBeKilled:I

    .line 48
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->isPlayerInTargetZone:Z

    .line 49
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->isPlayerInRecompenceZone:Z

    .line 153
    const/16 v0, 0x5dc

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->remainingTimeNextWaveAlien:I

    .line 154
    const/4 v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->currentWaveIndex:I

    .line 63
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 64
    iput-object p2, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 65
    iput-object p3, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->stationGiveBackName:Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->initStrings()V

    .line 68
    return-void
.end method

.method private checkMissionSuccess()V
    .registers 3

    .prologue
    .line 231
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->isThereMoreEnnemiesThan(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 232
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->onSuccess()V

    .line 238
    :goto_10
    return-void

    .line 236
    :cond_11
    const/16 v0, 0x1388

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->remainingTimeNextWaveAlien:I

    goto :goto_10
.end method

.method private doIaAttack(J)V
    .registers 6

    .prologue
    .line 157
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->remainingTimeNextWaveAlien:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->remainingTimeNextWaveAlien:I

    .line 158
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->remainingTimeNextWaveAlien:I

    rem-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-gez v0, :cond_23

    .line 159
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->isThereMoreEnnemiesThan(I)Z

    move-result v0

    if-nez v0, :cond_23

    .line 161
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->remainingTimeNextWaveAlien:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->remainingTimeNextWaveAlien:I

    .line 164
    :cond_23
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->remainingTimeNextWaveAlien:I

    if-gtz v0, :cond_2a

    .line 165
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->onAlienWavePop()V

    .line 170
    :cond_2a
    return-void
.end method

.method private initStrings()V
    .registers 5

    .prologue
    const v3, 0x7f070123

    .line 71
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->textGotoTargetZone:Ljava/lang/String;

    .line 72
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->textGotoRecompZone:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v1, v3}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->stationGiveBackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->textDockToStation:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v1, v3}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "general store"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->textDockToFakeStation:Ljava/lang/String;

    .line 75
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f070200

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->textDefendCivilian:Ljava/lang/String;

    .line 76
    return-void
.end method

.method private onAlienWavePop()V
    .registers 3

    .prologue
    .line 193
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->isPlayerInTargetZone:Z

    if-nez v0, :cond_5

    .line 227
    :goto_4
    return-void

    .line 197
    :cond_5
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->currentWaveIndex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 198
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->popWaveOne()V

    .line 201
    :cond_d
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->currentWaveIndex:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    .line 202
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->popWaveTwo()V

    .line 205
    :cond_15
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->currentWaveIndex:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1d

    .line 206
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->popWaveThree()V

    .line 209
    :cond_1d
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->currentWaveIndex:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_25

    .line 210
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->popWaveFour()V

    .line 212
    :cond_25
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->currentWaveIndex:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2d

    .line 213
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->popWaveFive()V

    .line 216
    :cond_2d
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->currentWaveIndex:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_35

    .line 217
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->popWaveSix()V

    .line 220
    :cond_35
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->currentWaveIndex:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_3d

    .line 221
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->checkMissionSuccess()V

    .line 225
    :cond_3d
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->currentWaveIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->currentWaveIndex:I

    goto :goto_4
.end method

.method private onDeclencheAttackPhase()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 344
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->fakeDeliveryStation:Lfr/testudo/spacecorsair/business/world/station/Station;

    if-eqz v0, :cond_9

    .line 345
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->fakeDeliveryStation:Lfr/testudo/spacecorsair/business/world/station/Station;

    iput-boolean v5, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->isMissionObjective:Z

    .line 348
    :cond_9
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine$Phase;->DEFEND_CIVILIANS:Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine$Phase;

    .line 349
    const/4 v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->currentWaveIndex:I

    .line 352
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    new-instance v1, Lfr/testudo/spacecorsair/game/CharacterDialog;

    const v2, 0x7f020058

    const v3, 0x7f0701ff

    const v4, 0x7f0701fe

    invoke-direct {v1, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/game/CharacterDialog;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(Lfr/testudo/spacecorsair/game/CharacterDialog;)V

    .line 356
    const/16 v0, 0xbb8

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->remainingTimeNextWaveAlien:I

    .line 358
    return-void
.end method

.method private onSuccess()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 241
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702c1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->completed:Z

    .line 243
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine$Phase;->GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine$Phase;

    .line 244
    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->setPhaseGateAndStationTarget(Z)V

    .line 245
    return-void
.end method

.method private popEnemy(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)V
    .registers 13

    .prologue
    .line 321
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->popEnemy(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;IIZ)V

    .line 322
    return-void
.end method

.method private popEnemy(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;IIZ)V
    .registers 9

    .prologue
    .line 325
    invoke-static {p3, p4, p5}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newEnnemis(Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    .line 326
    const/high16 v1, 0x43fa0000    # 500.0f

    invoke-virtual {v0, p1, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initPositionWithRandom(Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 327
    const v1, 0x47afc800    # 90000.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->desengagementDistance:F

    .line 328
    invoke-virtual {v0, p2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setActivitySequence(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 329
    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->isMissionObjective:Z

    .line 330
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 331
    if-eqz p6, :cond_1d

    .line 332
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 334
    :cond_1d
    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ALIEN_BLATTE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-virtual {p3, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 335
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/Level;->requestPlayerGotoLastPosOfElements()V

    .line 338
    :cond_2e
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 340
    return-void
.end method

.method private popWaveFive()V
    .registers 10

    .prologue
    const/4 v8, 0x4

    const/16 v4, 0xf

    const/4 v6, 0x0

    .line 303
    move v7, v6

    :goto_5
    if-ge v7, v8, :cond_16

    .line 304
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->ALIEN_POP_TOP_EST:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->alienTopEastSequence:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ALIEN_RAT:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->popEnemy(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;IIZ)V

    .line 303
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_5

    :cond_16
    move v7, v6

    .line 306
    :goto_17
    if-ge v7, v8, :cond_28

    .line 307
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->ALIEN_POP_BOTTOM_CENER:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->alienTopEastSequence:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->UFO_ALIEN:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->popEnemy(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;IIZ)V

    .line 306
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_17

    .line 310
    :cond_28
    const/16 v0, 0x7530

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->remainingTimeNextWaveAlien:I

    .line 312
    return-void
.end method

.method private popWaveFour()V
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/16 v4, 0xe

    .line 289
    move v7, v6

    :goto_4
    const/4 v0, 0x6

    if-ge v7, v0, :cond_16

    .line 290
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->ALIEN_POP_TOP_EST:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->alienTopEastSequence:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ALIEN_RAT:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->popEnemy(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)V

    .line 289
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_4

    .line 293
    :cond_16
    :goto_16
    const/4 v0, 0x3

    if-ge v6, v0, :cond_28

    .line 294
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->ALIEN_POP_TOP_EST:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->alienTopEastSequence:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->UFO_ALIEN:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->popEnemy(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)V

    .line 293
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_16

    .line 297
    :cond_28
    const v0, 0x11170

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->remainingTimeNextWaveAlien:I

    .line 300
    return-void
.end method

.method private popWaveOne()V
    .registers 7

    .prologue
    const/16 v5, 0x10

    const/16 v4, 0xf

    .line 255
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->ALIEN_POP_TOP_EST:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->alienTopEastSequence:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->UFO_ALIEN:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->popEnemy(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)V

    .line 256
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->ALIEN_POP_TOP_EST:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->alienTopEastSequence:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->UFO_ALIEN:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->popEnemy(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)V

    .line 257
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->ALIEN_POP_TOP_EST:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->alienTopEastSequence:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->UFO_ALIEN:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->popEnemy(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)V

    .line 258
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->ALIEN_POP_TOP_EST:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->alienTopEastSequence:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->UFO_ALIEN:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->popEnemy(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)V

    .line 260
    const v0, 0x13880

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->remainingTimeNextWaveAlien:I

    .line 262
    return-void
.end method

.method private popWaveSix()V
    .registers 9

    .prologue
    const/16 v4, 0xd

    const/4 v6, 0x0

    .line 315
    move v7, v6

    :goto_4
    const/4 v0, 0x1

    if-ge v7, v0, :cond_16

    .line 316
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->blattePopPoint:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->alienTopSequenceBlate:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ALIEN_BLATTE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->popEnemy(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;IIZ)V

    .line 315
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_4

    .line 318
    :cond_16
    return-void
.end method

.method private popWaveThree()V
    .registers 9

    .prologue
    const/16 v4, 0xf

    .line 276
    const/4 v0, 0x0

    move v7, v0

    :goto_4
    const/4 v0, 0x2

    if-ge v7, v0, :cond_17

    .line 277
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->ALIEN_POP_TOP_EST:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->alienTopEastSequence:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->UFO_ALIEN:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/4 v6, 0x1

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->popEnemy(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;IIZ)V

    .line 276
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_4

    .line 280
    :cond_17
    const v0, 0x13880

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->remainingTimeNextWaveAlien:I

    .line 283
    return-void
.end method

.method private popWaveTwo()V
    .registers 8

    .prologue
    .line 266
    const/4 v0, 0x0

    move v6, v0

    :goto_2
    const/16 v0, 0xa

    if-ge v6, v0, :cond_18

    .line 267
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->ALIEN_POP_TOP_EST:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->alienTopEastSequence:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ALIEN_RAT:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v4, 0xc

    const/16 v5, 0xd

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->popEnemy(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)V

    .line 266
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    .line 270
    :cond_18
    const v0, 0x15f90

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->remainingTimeNextWaveAlien:I

    .line 272
    return-void
.end method

.method private setPhaseGateAndStationTarget(Z)V
    .registers 4

    .prologue
    .line 429
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$DefendCiviliansHighWayMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_72

    .line 465
    :cond_d
    :goto_d
    :pswitch_d
    return-void

    .line 431
    :pswitch_e
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->isPlayerInTargetZone:Z

    if-eqz v0, :cond_27

    .line 432
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    const-string v1, "general store"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 433
    if-eqz v0, :cond_27

    .line 434
    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->isMissionObjective:Z

    .line 435
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 439
    :cond_27
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 440
    if-eqz v0, :cond_d

    .line 441
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 442
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 447
    :pswitch_40
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_59

    .line 449
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->stationGiveBackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 450
    if-eqz v0, :cond_d

    .line 451
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->isMissionObjective:Z

    .line 452
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 458
    :cond_59
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 459
    if-eqz v0, :cond_d

    .line 460
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 461
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 429
    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_40
    .end packed-switch
.end method


# virtual methods
.method public getCurrentInstruction()Ljava/lang/String;
    .registers 3

    .prologue
    .line 364
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$DefendCiviliansHighWayMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    .line 392
    const-string v0, ""

    :goto_f
    return-object v0

    .line 367
    :pswitch_10
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->isPlayerInTargetZone:Z

    if-eqz v0, :cond_17

    .line 368
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->textDockToFakeStation:Ljava/lang/String;

    goto :goto_f

    .line 371
    :cond_17
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->textGotoTargetZone:Ljava/lang/String;

    goto :goto_f

    .line 375
    :pswitch_1a
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->isPlayerInTargetZone:Z

    if-eqz v0, :cond_21

    .line 376
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->textDefendCivilian:Ljava/lang/String;

    goto :goto_f

    .line 379
    :cond_21
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->textGotoTargetZone:Ljava/lang/String;

    goto :goto_f

    .line 383
    :pswitch_24
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_2b

    .line 384
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->textDockToStation:Ljava/lang/String;

    goto :goto_f

    .line 387
    :cond_2b
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->textGotoRecompZone:Ljava/lang/String;

    goto :goto_f

    .line 364
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_10
        :pswitch_1a
        :pswitch_24
    .end packed-switch
.end method

.method public giveUp()V
    .registers 1

    .prologue
    .line 414
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->terminate()V

    .line 415
    return-void
.end method

.method public init()V
    .registers 2

    .prologue
    .line 397
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->maxNumberOfCivilanToBeKilled:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->remainingNumberOfCivilToBeKilled:I

    .line 398
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine$Phase;->FAKE_DELIVERY:Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine$Phase;

    .line 399
    return-void
.end method

.method public isCompleted()Z
    .registers 2

    .prologue
    .line 424
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->completed:Z

    return v0
.end method

.method public onDoPhysic(J)V
    .registers 6

    .prologue
    .line 138
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$DefendCiviliansHighWayMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_24

    .line 151
    :cond_d
    :goto_d
    return-void

    .line 141
    :pswitch_e
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->fakeDeliveryStation:Lfr/testudo/spacecorsair/business/world/station/Station;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->fakeDeliveryStation:Lfr/testudo/spacecorsair/business/world/station/Station;

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->distanceToPlayer:F

    const/high16 v1, 0x44af0000    # 1400.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_d

    .line 142
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->onDeclencheAttackPhase()V

    goto :goto_d

    .line 147
    :pswitch_20
    invoke-direct {p0, p1, p2}, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->doIaAttack(J)V

    goto :goto_d

    .line 138
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_e
        :pswitch_20
    .end packed-switch
.end method

.method public onElementDestroyed(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 5

    .prologue
    .line 111
    instance-of v0, p1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_31

    .line 112
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->remainingNumberOfCivilToBeKilled:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->remainingNumberOfCivilToBeKilled:I

    .line 113
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->remainingNumberOfCivilToBeKilled:I

    if-gtz v0, :cond_31

    .line 114
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f07029c

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v2, 0x7f070201

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const/16 v1, 0x1770

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/GameThread;->requestReloadLevelIn(I)V

    .line 116
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->init()V

    .line 119
    :cond_31
    return-void
.end method

.method public onElementDestroyedByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 125
    return-void
.end method

.method public onPlayerDeath()V
    .registers 4

    .prologue
    .line 129
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->isPlayerInTargetZone:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine$Phase;->DEFEND_CIVILIANS:Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 130
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f07029c

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v2, 0x7f070202

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->init()V

    .line 134
    :cond_26
    return-void
.end method

.method public onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 85
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 86
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->isPlayerInTargetZone:Z

    .line 87
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    const-string v1, "general store"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->fakeDeliveryStation:Lfr/testudo/spacecorsair/business/world/station/Station;

    .line 99
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 100
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->isPlayerInRecompenceZone:Z

    .line 106
    :goto_28
    invoke-direct {p0, v3}, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->setPhaseGateAndStationTarget(Z)V

    .line 107
    return-void

    .line 90
    :cond_2c
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->isPlayerInTargetZone:Z

    .line 91
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine$Phase;->DEFEND_CIVILIANS:Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 93
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f07029c

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v2, 0x7f070201

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->init()V

    goto :goto_1c

    .line 103
    :cond_51
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->isPlayerInRecompenceZone:Z

    goto :goto_28
.end method

.method public restoreState()V
    .registers 2

    .prologue
    .line 403
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->maxNumberOfCivilanToBeKilled:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->remainingNumberOfCivilToBeKilled:I

    .line 404
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine$Phase;->FAKE_DELIVERY:Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine$Phase;

    .line 405
    return-void
.end method

.method public saveState()V
    .registers 1

    .prologue
    .line 410
    return-void
.end method

.method public terminate()V
    .registers 2

    .prologue
    .line 419
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/DefendCiviliansHighWayMissionEngine;->setPhaseGateAndStationTarget(Z)V

    .line 420
    return-void
.end method
