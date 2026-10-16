.class public Lfr/testudo/spacecorsair/business/mission/MissionRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/mission/MissionRepository$1;
    }
.end annotation


# static fields
.field public static transient dirty:Z


# instance fields
.field public currentMission:Ljava/lang/String;

.field public doneMissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->dirty:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->doneMissions:Ljava/util/List;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->currentMission:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lfr/testudo/spacecorsair/business/mission/MissionRepository;
    .registers 1

    .prologue
    .line 171
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addMissionToDoneList(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 29
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->doneMissions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 30
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->doneMissions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->dirty:Z

    .line 33
    :cond_10
    invoke-static {p1}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onMissionCompleted(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public getAvaillableMission(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfr/testudo/spacecorsair/game/levels/LevelId;",
            ")",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/mission/Mission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionRepository$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_92

    .line 72
    :goto_10
    if-nez v1, :cond_38

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    :goto_17
    invoke-static {p1, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->addAvailable(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/List;)V

    return-object v0

    .line 58
    :pswitch_18
    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/GenesisMissions;->getGenesisMission()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_10

    .line 61
    :pswitch_20
    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->getVentoHighMission()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_10

    .line 64
    :pswitch_28
    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/SpartanMissions;->getSpartanMissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_10

    .line 68
    :pswitch_30
    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->getOmicronPrimeMissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_10

    .line 76
    :cond_38
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_41
    :goto_41
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 79
    iget-object v4, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->hasDoneMission(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5f

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/Mission;->levelAcceptable()Z

    move-result v4

    if-nez v4, :cond_5f

    .line 81
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 85
    :cond_5f
    iget-object v4, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->hasDoneMission(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6f

    iget-boolean v4, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->repeatable:Z

    if-nez v4, :cond_6f

    .line 87
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 93
    :cond_6f
    iget-object v4, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->restrictedMissionId:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->hasDoneMission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_41

    .line 95
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 102
    :cond_7b
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 103
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_7f

    :cond_8f
    move-object v0, v1

    .line 107
    goto :goto_17

    .line 55
    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_18
        :pswitch_20
        :pswitch_28
        :pswitch_30
    .end packed-switch
.end method

.method public getMissionById(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 6

    .prologue
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModFaction;->byId(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v0

    if-eqz v0, :mod_faction_none

    return-object v0

    :mod_faction_none
    const/4 v1, 0x0

    .line 124
    .line 125
    const-string v0, "HY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 129
    :cond_9
    const-string v0, "GENESIS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 130
    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/GenesisMissions;->getGenesisMission()Ljava/util/List;

    move-result-object v0

    .line 133
    :goto_15
    const-string v2, "VENTOHIGH"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 134
    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->getVentoHighMission()Ljava/util/List;

    move-result-object v0

    .line 137
    :cond_21
    const-string v2, "SPARTAN"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 138
    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/SpartanMissions;->getSpartanMissions()Ljava/util/List;

    move-result-object v0

    .line 141
    :cond_2d
    const-string v2, "OMICRON"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 142
    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->getOmicronPrimeMissions()Ljava/util/List;

    move-result-object v0

    .line 146
    :cond_39
    if-nez v0, :cond_3c

    .line 156
    :cond_3b
    :goto_3b
    return-object v1

    .line 150
    :cond_3c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 151
    iget-object v3, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    move-object v1, v0

    .line 152
    goto :goto_3b

    :cond_56
    move-object v0, v1

    goto :goto_15
.end method

.method public hasDoneMission(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 162
    if-nez p1, :cond_4

    .line 163
    const/4 v0, 0x1

    .line 166
    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->doneMissions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public isAllGenesisMissionFinished()Z
    .registers 3

    .prologue
    .line 176
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->doneMissions:Ljava/util/List;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/GenesisMissions;->GENESIS_MISSIONS_ID_LIST:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public isAllSpartanMissionFinished()Z
    .registers 3

    .prologue
    .line 184
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->doneMissions:Ljava/util/List;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/SpartanMissions;->SPARTAN_ID_MISSION_LIST:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public isAllVentohighMissionFinished()Z
    .registers 3

    .prologue
    .line 180
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->doneMissions:Ljava/util/List;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_ID_MISSION_LIST:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public loadSavedMission()Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->currentMission:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->getMissionById(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v0

    return-object v0
.end method

.method public saveMissionAsCurrentOne(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 42
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->currentMission:Ljava/lang/String;

    .line 43
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->dirty:Z

    .line 44
    return-void
.end method

.method public saveNoCorrentMission()V
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->currentMission:Ljava/lang/String;

    .line 38
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->dirty:Z

    .line 39
    return-void
.end method
