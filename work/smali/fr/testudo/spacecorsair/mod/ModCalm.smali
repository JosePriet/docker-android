.class public final Lfr/testudo/spacecorsair/mod/ModCalm;
.super Ljava/lang/Object;
.source "ModCalm.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static active()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 19
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->holdingZone()Z

    move-result v0

    if-eqz v0, :cond_a

    move v2, v1

    .line 29
    :cond_9
    :goto_9
    return v2

    .line 21
    :cond_a
    :try_start_a
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 22
    if-eqz v0, :cond_9

    .line 23
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    .line 24
    instance-of v3, v0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;

    if-eqz v3, :cond_9

    .line 25
    check-cast v0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;

    .line 26
    iget-boolean v3, v0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->completed:Z

    if-nez v3, :cond_9

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;

    sget-object v4, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;->DEFEND_ZONE:Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;

    if-ne v3, v4, :cond_9

    .line 27
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    if-eqz v3, :cond_3d

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->attackZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_38} :catch_3f

    if-ne v3, v0, :cond_3d

    move v0, v1

    :goto_3b
    move v2, v0

    goto :goto_9

    :cond_3d
    move v0, v2

    goto :goto_3b

    .line 28
    :catch_3f
    move-exception v0

    goto :goto_9
.end method

.method public static add(Ljava/util/List;Lfr/testudo/spacecorsair/business/Element;)V
    .registers 5

    .prologue
    .line 35
    instance-of v0, p1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_3b

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v0

    if-nez v0, :cond_3b

    move-object v0, p1

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->isMissionObjective:Z

    if-nez v0, :cond_3b

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCalm;->active()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p1, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    .line 37
    const-string v0, "v42calm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blocked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :goto_3a
    return-void

    .line 40
    :cond_3b
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3a
.end method
