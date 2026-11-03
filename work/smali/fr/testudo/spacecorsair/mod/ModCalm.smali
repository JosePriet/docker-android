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
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 20
    :try_start_1
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 21
    if-nez v0, :cond_8

    .line 28
    :cond_7
    :goto_7
    return v1

    .line 22
    :cond_8
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    .line 23
    instance-of v2, v0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;

    if-eqz v2, :cond_7

    .line 24
    check-cast v0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;

    .line 25
    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->completed:Z

    if-nez v2, :cond_7

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;

    sget-object v3, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;->DEFEND_ZONE:Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;

    if-ne v2, v3, :cond_7

    .line 26
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    if-eqz v2, :cond_35

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->attackZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_30} :catch_37

    if-ne v2, v0, :cond_35

    const/4 v0, 0x1

    :goto_33
    move v1, v0

    goto :goto_7

    :cond_35
    move v0, v1

    goto :goto_33

    .line 27
    :catch_37
    move-exception v0

    goto :goto_7
.end method

.method public static add(Ljava/util/List;Lfr/testudo/spacecorsair/business/Element;)V
    .registers 5

    .prologue
    .line 34
    instance-of v0, p1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_34

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v0

    if-nez v0, :cond_34

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCalm;->active()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p1, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    .line 36
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

    .line 40
    :goto_33
    return-void

    .line 39
    :cond_34
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33
.end method
