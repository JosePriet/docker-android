.class public Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties$1;
    }
.end annotation


# instance fields
.field public gameTimeMilli:J

.field public hasAlreadyAttackCivil:Z

.field public hasAlreadyDied:Z

.field public hasAlreadyGalaxy:Z

.field public hasAlreadyGotOneMissile:Z

.field public hasAlreadyJump:Z

.field public hasAlreadyKilledEnemy:Z

.field public hasAlreadyLoot:Z

.field public hasAlreadyOpenGalaxyWithJumpEngine:Z

.field public hasAlreadyOpenRadar:Z

.field public hasAlreadyShownBoosterExistanceNotification:Z

.field public hasAlreadyShownJumpEngineExistanceNotification:Z

.field public hasAlreadyVisitedArena:Z

.field public hasAlreadyVisitedGreenBorder:Z

.field public hasAlreadyseeWelcomeFromSpartanGuy:Z

.field public nextTreasurHermesOneAvail:J

.field public nextTreasurHugoWisdomOneAvail:J

.field public nextTreasurTheVaultOneAvail:J

.field public nextTreasureConstellationOneAvail:J

.field public nextTreasurePirateBayOneAvail:J

.field public portalUnlolocked:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public theVaultTresureOneRemaining:J

.field public unlockedMapAndTreasures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;",
            ">;"
        }
    .end annotation
.end field

.field public visitedLevels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/game/levels/LevelId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyLoot:Z

    .line 24
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyJump:Z

    .line 25
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyDied:Z

    .line 26
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyOpenRadar:Z

    .line 27
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyGalaxy:Z

    .line 28
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyAttackCivil:Z

    .line 29
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyKilledEnemy:Z

    .line 30
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyOpenGalaxyWithJumpEngine:Z

    .line 31
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyGotOneMissile:Z

    .line 32
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyseeWelcomeFromSpartanGuy:Z

    .line 33
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyVisitedArena:Z

    .line 34
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyShownJumpEngineExistanceNotification:Z

    .line 35
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyShownBoosterExistanceNotification:Z

    .line 36
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyVisitedGreenBorder:Z

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->unlockedMapAndTreasures:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->visitedLevels:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->portalUnlolocked:Ljava/util/List;

    .line 45
    iput-wide v2, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->gameTimeMilli:J

    .line 47
    iput-wide v2, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->nextTreasurePirateBayOneAvail:J

    .line 48
    iput-wide v2, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->nextTreasureConstellationOneAvail:J

    .line 49
    iput-wide v2, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->nextTreasurHugoWisdomOneAvail:J

    .line 50
    iput-wide v2, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->nextTreasurHermesOneAvail:J

    .line 51
    iput-wide v2, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->nextTreasurTheVaultOneAvail:J

    .line 52
    const-wide/16 v0, 0x6

    iput-wide v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->theVaultTresureOneRemaining:J

    return-void
.end method

.method public static getDefault()Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;
    .registers 1

    .prologue
    .line 108
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;-><init>()V

    .line 111
    return-object v0
.end method


# virtual methods
.method public checkFirstCivilAttacked()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 207
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyAttackCivil:Z

    if-nez v0, :cond_1b

    .line 208
    iput-boolean v5, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyAttackCivil:Z

    .line 209
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f020054

    const v2, 0x7f070187

    const v3, 0x7f0702ed

    const/16 v4, 0x7d0

    invoke-virtual/range {v0 .. v5}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIIIZ)V

    .line 211
    :cond_1b
    return-void
.end method

.method public checkFirstEnnemyDestroyed()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 217
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyKilledEnemy:Z

    if-nez v0, :cond_1b

    .line 218
    iput-boolean v5, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyKilledEnemy:Z

    .line 219
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f020054

    const v2, 0x7f070187

    const v3, 0x7f0702ee

    const/16 v4, 0x7d0

    invoke-virtual/range {v0 .. v5}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIIIZ)V

    .line 221
    :cond_1b
    return-void
.end method

.method public checkFirstGalaxyMode()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 197
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyGalaxy:Z

    if-nez v0, :cond_19

    .line 198
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f020054

    const v2, 0x7f070187

    const v3, 0x7f0702ec

    const/16 v4, 0x7d0

    invoke-virtual/range {v0 .. v5}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIIIZ)V

    .line 200
    :cond_19
    iput-boolean v5, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyGalaxy:Z

    .line 201
    return-void
.end method

.method public checkFirstGotMissile()V
    .registers 7

    .prologue
    const v2, 0x7f070187

    const v1, 0x7f020054

    const/16 v4, 0x7d0

    const/4 v5, 0x1

    .line 229
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyGotOneMissile:Z

    if-nez v0, :cond_23

    .line 230
    iput-boolean v5, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyGotOneMissile:Z

    .line 231
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mogaConnected:Z

    if-eqz v0, :cond_24

    .line 232
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v3, 0x7f0702f0

    invoke-virtual/range {v0 .. v5}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIIIZ)V

    .line 237
    :cond_23
    :goto_23
    return-void

    .line 234
    :cond_24
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v3, 0x7f0702ef

    invoke-virtual/range {v0 .. v5}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIIIZ)V

    goto :goto_23
.end method

.method public checkFirstRadarMode()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 183
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyOpenRadar:Z

    if-nez v0, :cond_19

    .line 184
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f020054

    const v2, 0x7f070187

    const v3, 0x7f0702e9

    const/16 v4, 0x7d0

    invoke-virtual/range {v0 .. v5}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIIIZ)V

    .line 186
    :cond_19
    iput-boolean v5, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyOpenRadar:Z

    .line 188
    return-void
.end method

.method public checkFirstTimeDied()V
    .registers 6

    .prologue
    .line 171
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyDied:Z

    if-nez v0, :cond_1b

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyDied:Z

    .line 173
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f020054

    const v2, 0x7f070187

    const v3, 0x7f0702e8

    const/16 v4, 0x1f40

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIII)V

    .line 175
    :cond_1b
    return-void
.end method

.method public checkFirstTimeLoot()V
    .registers 6

    .prologue
    .line 161
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyLoot:Z

    if-nez v0, :cond_1b

    .line 162
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f020054

    const v2, 0x7f070187

    const v3, 0x7f0702e7

    const/16 v4, 0x7d0

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIII)V

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyLoot:Z

    .line 165
    :cond_1b
    return-void
.end method

.method public checkKnowBooster()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 247
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyShownBoosterExistanceNotification:Z

    if-nez v0, :cond_1b

    .line 248
    iput-boolean v5, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyShownBoosterExistanceNotification:Z

    .line 249
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f020054

    const v2, 0x7f070187

    const v3, 0x7f0702f2

    const/16 v4, 0x1388

    invoke-virtual/range {v0 .. v5}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIIIZ)V

    .line 251
    :cond_1b
    return-void
.end method

.method public checkKnowJumpEngine()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 240
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyShownJumpEngineExistanceNotification:Z

    if-nez v0, :cond_1b

    .line 241
    iput-boolean v5, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyShownJumpEngineExistanceNotification:Z

    .line 242
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f020054

    const v2, 0x7f070187

    const v3, 0x7f0702f1

    const/16 v4, 0x1388

    invoke-virtual/range {v0 .. v5}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIIIZ)V

    .line 244
    :cond_1b
    return-void
.end method

.method public ensureArenaWelcomeMessage()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 268
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyVisitedArena:Z

    if-nez v0, :cond_1b

    .line 269
    iput-boolean v5, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyVisitedArena:Z

    .line 270
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f020054

    const v2, 0x7f070187

    const v3, 0x7f07032d

    const/16 v4, 0x7d0

    invoke-virtual/range {v0 .. v5}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIIIZ)V

    .line 272
    :cond_1b
    return-void
.end method

.method public ensureLevelVisited(Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 3

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->isLevelVisited(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 139
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->visitedLevels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-static {p1}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onLevelVisited(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 142
    :cond_e
    return-void
.end method

.method public ensureSeeSpartanHQWelecomeMessage()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 258
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyseeWelcomeFromSpartanGuy:Z

    if-nez v0, :cond_1b

    .line 259
    iput-boolean v5, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyseeWelcomeFromSpartanGuy:Z

    .line 260
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f02005a

    const v2, 0x7f0702f5

    const v3, 0x7f0702f3

    const/16 v4, 0x1388

    invoke-virtual/range {v0 .. v5}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIIIZ)V

    .line 262
    :cond_1b
    return-void
.end method

.method public ensureSeenAllLevel()V
    .registers 1

    .prologue
    .line 154
    return-void
.end method

.method public isLevelVisited(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z
    .registers 3

    .prologue
    .line 133
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->visitedLevels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMapOrTreasureUnlocked(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z
    .registers 3

    .prologue
    .line 123
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->unlockedMapAndTreasures:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMapOrTreasureUnlockedOrInInv(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z
    .registers 3

    .prologue
    .line 128
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->unlockedMapAndTreasures:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/business/player/Inventory;->containObject(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public isPortalUlocked(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 280
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->portalUnlolocked:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTreasureAvail(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 86
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->isMapOrTreasureUnlocked(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v2

    if-eqz v2, :cond_21

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLevelMaxTreasure()I

    move-result v3

    if-gt v2, v3, :cond_21

    .line 88
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties$1;->$SwitchMap$fr$testudo$spacecorsair$business$loot$SpaceObjectType:[I

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_56

    :cond_21
    move v0, v1

    .line 103
    :cond_22
    :goto_22
    return v0

    .line 90
    :pswitch_23
    iget-wide v2, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->gameTimeMilli:J

    iget-wide v4, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->nextTreasurePirateBayOneAvail:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_22

    move v0, v1

    goto :goto_22

    .line 92
    :pswitch_2d
    iget-wide v2, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->gameTimeMilli:J

    iget-wide v4, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->nextTreasureConstellationOneAvail:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_22

    move v0, v1

    goto :goto_22

    .line 94
    :pswitch_37
    iget-wide v2, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->gameTimeMilli:J

    iget-wide v4, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->nextTreasurHugoWisdomOneAvail:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_22

    move v0, v1

    goto :goto_22

    .line 96
    :pswitch_41
    iget-wide v2, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->gameTimeMilli:J

    iget-wide v4, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->nextTreasurHermesOneAvail:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_22

    move v0, v1

    goto :goto_22

    .line 98
    :pswitch_4b
    iget-wide v2, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->gameTimeMilli:J

    iget-wide v4, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->nextTreasurTheVaultOneAvail:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_22

    move v0, v1

    goto :goto_22

    .line 88
    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_23
        :pswitch_2d
        :pswitch_37
        :pswitch_41
        :pswitch_4b
    .end packed-switch
.end method

.method public onPortalUnlocked(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 276
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->portalUnlolocked:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    return-void
.end method

.method public onTreasureLoot(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    .registers 6

    .prologue
    .line 57
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties$1;->$SwitchMap$fr$testudo$spacecorsair$business$loot$SpaceObjectType:[I

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_60

    .line 82
    :cond_b
    :goto_b
    return-void

    .line 59
    :pswitch_c
    iget-wide v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->gameTimeMilli:J

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getTreasureReloadTimeInGameSec()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->nextTreasurePirateBayOneAvail:J

    goto :goto_b

    .line 62
    :pswitch_19
    iget-wide v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->gameTimeMilli:J

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getTreasureReloadTimeInGameSec()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->nextTreasureConstellationOneAvail:J

    goto :goto_b

    .line 66
    :pswitch_26
    iget-wide v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->gameTimeMilli:J

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getTreasureReloadTimeInGameSec()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->nextTreasurHugoWisdomOneAvail:J

    goto :goto_b

    .line 70
    :pswitch_33
    iget-wide v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->gameTimeMilli:J

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getTreasureReloadTimeInGameSec()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->nextTreasurHermesOneAvail:J

    goto :goto_b

    .line 74
    :pswitch_40
    iget-wide v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->theVaultTresureOneRemaining:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->theVaultTresureOneRemaining:J

    .line 75
    iget-wide v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->theVaultTresureOneRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_b

    .line 76
    const-wide/16 v0, 0x6

    iput-wide v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->theVaultTresureOneRemaining:J

    .line 77
    iget-wide v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->gameTimeMilli:J

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getTreasureReloadTimeInGameSec()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->nextTreasurTheVaultOneAvail:J

    goto :goto_b

    .line 57
    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_c
        :pswitch_19
        :pswitch_26
        :pswitch_33
        :pswitch_40
    .end packed-switch
.end method

.method public setMapUnlocked(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    .registers 3

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->isMapOrTreasureUnlocked(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 117
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->unlockedMapAndTreasures:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_b
    return-void
.end method
