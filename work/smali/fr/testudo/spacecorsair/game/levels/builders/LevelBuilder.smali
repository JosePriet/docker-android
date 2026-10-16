.class public Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LEVEL:Ljava/lang/String; = "Level "

.field public static final TIRET:Ljava/lang/String; = " - "


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureHasAlreadySeenTheRadarAndConstellation()V
    .registers 12

    .prologue
    const v2, 0x7f070187

    const v1, 0x7f020054

    const/16 v4, 0x1770

    const/4 v5, 0x1

    .line 126
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->getThrough500gates:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    iget-wide v6, v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->value:J

    .line 128
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyOpenRadar:Z

    if-nez v0, :cond_2b

    .line 129
    const-wide/16 v8, 0xf

    rem-long v8, v6, v8

    const-wide/16 v10, 0xe

    cmp-long v0, v8, v10

    if-nez v0, :cond_2b

    .line 131
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v3, 0x7f0702ea

    invoke-virtual/range {v0 .. v5}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIIIZ)V

    .line 135
    :cond_2b
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyGalaxy:Z

    if-nez v0, :cond_48

    .line 136
    const-wide/16 v8, 0x19

    rem-long/2addr v6, v8

    const-wide/16 v8, 0x18

    cmp-long v0, v6, v8

    if-nez v0, :cond_48

    .line 138
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v3, 0x7f0702eb

    invoke-virtual/range {v0 .. v5}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIIIZ)V

    .line 143
    :cond_48
    return-void
.end method

.method private static getLevelByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/Level;
    .registers 4

    .prologue
    .line 148
    const-string v0, "planck Pride"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 149
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/PlanckPrideLevelBuilder;->getPlanckPride()Lfr/testudo/spacecorsair/game/levels/Level;

    move-result-object v0

    .line 249
    :goto_c
    return-object v0

    .line 152
    :cond_d
    const-string v0, "genesis"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 153
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/GenesisLevelBuilder;->getGenesis()Lfr/testudo/spacecorsair/game/levels/Level;

    move-result-object v0

    goto :goto_c

    .line 156
    :cond_1a
    const-string v0, "thor passing"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 157
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/ThorPassingLevelBuilder;->getThorPassing()Lfr/testudo/spacecorsair/game/levels/Level;

    move-result-object v0

    goto :goto_c

    .line 160
    :cond_27
    const-string v0, "ventohigh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 161
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/VentoHighLevelBuilder;->getVentoHigh()Lfr/testudo/spacecorsair/game/levels/Level;

    move-result-object v0

    goto :goto_c

    .line 164
    :cond_34
    const-string v0, "constellation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 165
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->getConstellation()Lfr/testudo/spacecorsair/game/levels/Level;

    move-result-object v0

    goto :goto_c

    .line 168
    :cond_41
    const-string v0, "pirate bay"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 169
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->getPirateBay()Lfr/testudo/spacecorsair/game/levels/Level;

    move-result-object v0

    goto :goto_c

    .line 172
    :cond_4e
    const-string v0, "twin stars"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 173
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->getTwinStars()Lfr/testudo/spacecorsair/game/levels/Level;

    move-result-object v0

    goto :goto_c

    .line 176
    :cond_5b
    const-string v0, "hugo wisdom"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 177
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/HugoWisdomLevelBuilder;->getHugoWisdom()Lfr/testudo/spacecorsair/game/levels/Level;

    move-result-object v0

    goto :goto_c

    .line 180
    :cond_68
    const-string v0, "ore belt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 181
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/OreBeltLevelBuilder;->getOreBelt()Lfr/testudo/spacecorsair/game/levels/Level;

    move-result-object v0

    goto :goto_c

    .line 184
    :cond_75
    const-string v0, "heliostat"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 185
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->getHeliostat()Lfr/testudo/spacecorsair/game/levels/Level;

    move-result-object v0

    goto :goto_c

    .line 188
    :cond_82
    const-string v0, "hermes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 189
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/HermesLevelBuilder;->getHermesLevel()Lfr/testudo/spacecorsair/game/levels/Level;

    move-result-object v0

    goto/16 :goto_c

    .line 192
    :cond_90
    const-string v0, "spartan headquarters"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 193
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/SpartanHQLevelBuilder;->getSpartanHQ()Lfr/testudo/spacecorsair/game/levels/Level;

    move-result-object v0

    goto/16 :goto_c

    .line 196
    :cond_9e
    const-string v0, "tutorial"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 197
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/TutorialLevelBuilder;->getTutorialLevel()Lfr/testudo/spacecorsair/game/levels/Level;

    move-result-object v0

    goto/16 :goto_c

    .line 200
    :cond_ac
    const-string v0, "the wave"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 201
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/TheWaveLevelBuilder;->getTheWaveLevel()Lfr/testudo/spacecorsair/game/levels/Level;

    move-result-object v0

    goto/16 :goto_c

    .line 204
    :cond_ba
    const-string v0, "galactic arena"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 205
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->getArenaLevel()Lfr/testudo/spacecorsair/game/levels/Level;

    move-result-object v0

    goto/16 :goto_c

    .line 208
    :cond_c8
    const-string v0, "solar field"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 209
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->getSolarFieldLevel()Lfr/testudo/spacecorsair/game/levels/Level;

    move-result-object v0

    goto/16 :goto_c

    .line 212
    :cond_d6
    const-string v0, "orion"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 213
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/OrionLevelBuilder;->getOrionLevel()Lfr/testudo/spacecorsair/game/levels/Level;

    move-result-object v0

    goto/16 :goto_c

    .line 216
    :cond_e4
    const-string v0, "omicron prime"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 217
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->getOmicronPrimeLevel()Lfr/testudo/spacecorsair/game/levels/Level;

    move-result-object v0

    goto/16 :goto_c

    .line 220
    :cond_f2
    const-string v0, "the vault"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100

    .line 221
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/TheVaultLevelBuilder;->getTheVaultLevel()Lfr/testudo/spacecorsair/game/levels/Level;

    move-result-object v0

    goto/16 :goto_c

    .line 224
    :cond_100
    const-string v0, "aeria passing"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 225
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/AeriaPassLevelBuilder;->getAeriaPassingLevel()Lfr/testudo/spacecorsair/game/levels/Level;

    move-result-object v0

    goto/16 :goto_c

    .line 228
    :cond_10e
    const-string v0, "eternity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 229
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/EternityLevelBuilder;->getEternityLevel()Lfr/testudo/spacecorsair/game/levels/Level;

    move-result-object v0

    goto/16 :goto_c

    .line 232
    :cond_11c
    const-string v0, "lost paradise"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12a

    .line 233
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/LostParadiseLevelBuilder;->getLostParadiseLevel()Lfr/testudo/spacecorsair/game/levels/Level;

    move-result-object v0

    goto/16 :goto_c

    .line 236
    :cond_12a
    const-string v0, "green border"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_138

    .line 237
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/GreenBorderLevelBuilder;->getGreenBorder()Lfr/testudo/spacecorsair/game/levels/Level;

    move-result-object v0

    goto/16 :goto_c

    .line 240
    :cond_138
    const-string v0, "delta node"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_146

    .line 241
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/DeltaNodeLevelBuilder;->getDeltaNode()Lfr/testudo/spacecorsair/game/levels/Level;

    move-result-object v0

    goto/16 :goto_c

    .line 244
    :cond_146
    const-string v0, "the hive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_154

    .line 245
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/TheHiveLevelBuilder;->getTheHive()Lfr/testudo/spacecorsair/game/levels/Level;

    move-result-object v0

    goto/16 :goto_c

    .line 248
    :cond_154
    const-string v0, "highway"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_162

    .line 249
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->getHighway()Lfr/testudo/spacecorsair/game/levels/Level;

    move-result-object v0

    goto/16 :goto_c

    .line 253
    :cond_162
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static jumpToLastLevel()V
    .registers 2

    .prologue
    .line 31
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->lastUsedGateName:Ljava/lang/String;

    .line 32
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->lastLevelLoaded:Ljava/lang/String;

    .line 33
    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilder;->jumpToLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static jumpToLevel(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 41
    invoke-static {p0}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilder;->getLevelByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/Level;

    move-result-object v0

    .line 43
    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/game/levels/Level;->placeInitialPlayerPos(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/game/levels/Level;->cleanDoors(Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    .line 49
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/engine/Camera;->setToMax()V

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lfr/testudo/spacecorsair/game/levels/Level;->recommandedMinLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lfr/testudo/spacecorsair/game/levels/Level;->recommandedMaxLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    iget-object v2, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    invoke-static {v2, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v1, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->isMulti:Z

    if-eqz v1, :cond_a9

    .line 61
    :goto_3e
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->gameRenderer:Lfr/testudo/spacecorsair/engine/GameRenderer;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/engine/GameRenderer;->resetHudPrecalculedPOs()V

    .line 63
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/game/Game;->started:Z

    if-eqz v1, :cond_56

    .line 64
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->musicManager:Lfr/testudo/spacecorsair/engine/MusicManager;

    iget v2, v0, Lfr/testudo/spacecorsair/game/levels/Level;->musicResourceId:I

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/MusicManager;->playMusicResource(I)V

    .line 67
    :cond_56
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 69
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iput-object v0, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 71
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->ensureLevelVisited(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 73
    iget-boolean v1, v0, Lfr/testudo/spacecorsair/game/levels/Level;->overrideNearbyDistance:Z

    if-eqz v1, :cond_b3

    .line 74
    iget v1, v0, Lfr/testudo/spacecorsair/game/levels/Level;->nearbyDistanceOverrideValue:I

    sput v1, Lfr/testudo/spacecorsair/engine/GameThread;->NEARBY_DISTANCE:I

    .line 80
    :goto_70
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-nez v1, :cond_91

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->currentMission:Ljava/lang/String;

    if-eqz v1, :cond_91

    .line 82
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->loadSavedMission()Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_91

    .line 84
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->restoreState()V

    .line 85
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iput-object v1, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 89
    :cond_91
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-eqz v1, :cond_a0

    .line 90
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    invoke-virtual {v1, p0, p1}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_a0
    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->animator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;->onPlayerEnterInZone()V

    .line 120
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilder;->ensureHasAlreadySeenTheRadarAndConstellation()V

    .line 122
    return-void

    .line 58
    :cond_a9
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    invoke-virtual {v1, p0, p1}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->updateLastLevelVisited(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 76
    :cond_b3
    const/16 v1, 0xbb8

    sput v1, Lfr/testudo/spacecorsair/engine/GameThread;->NEARBY_DISTANCE:I

    goto :goto_70
.end method

.method public static jumpToMultiLevel(Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 3

    .prologue
    .line 26
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    iget-object v1, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->jumpPortalName:Ljava/lang/String;

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilder;->jumpToLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method
