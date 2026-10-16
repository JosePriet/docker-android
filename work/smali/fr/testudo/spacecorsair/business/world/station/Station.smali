.class public abstract Lfr/testudo/spacecorsair/business/world/station/Station;
.super Lfr/testudo/spacecorsair/business/Element;
.source "SourceFile"


# instance fields
.field public buyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;",
            ">;"
        }
    .end annotation
.end field

.field public enableDocking:Z

.field public inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

.field public mapHidden:Z

.field public name:Ljava/lang/String;

.field protected textDecal:F

.field public textPos:Lfr/testudo/spacecorsair/engine/Vector2;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/Element;-><init>()V

    .line 32
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/Station;->textPos:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/Station;->buyList:Ljava/util/List;

    .line 36
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/Inventory;->ofStation()Lfr/testudo/spacecorsair/business/player/Inventory;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/Station;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/station/Station;->enableDocking:Z

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/station/Station;->mapHidden:Z

    return-void
.end method


# virtual methods
.method public doPhysic(J)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 78
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/Station;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 79
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/Element;->doPhysic(J)V

    .line 80
    return-void
.end method

.method public init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    .line 48
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 49
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/Station;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->clearItems()V

    .line 50
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/Station;->buyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 51
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/world/station/Station;->doesColideWithOthers:Z

    .line 52
    const v0, 0x48127c00    # 150000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/station/Station;->mass:F

    .line 53
    const v0, 0x459c4000    # 5000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/station/Station;->distanceToPlayer:F

    .line 54
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/station/Station;->radarPointSize:F

    .line 55
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/station/Station;->radarColorR:F

    .line 56
    iput v2, p0, Lfr/testudo/spacecorsair/business/world/station/Station;->radarColorG:F

    .line 57
    iput v2, p0, Lfr/testudo/spacecorsair/business/world/station/Station;->radarColorB:F

    .line 58
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/world/station/Station;->drawOnRadar:Z

    .line 59
    const v0, 0x466a6000    # 15000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/station/Station;->maxLife:F

    .line 60
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/station/Station;->maxLife:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/station/Station;->life:F

    .line 61
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/station/Station;->lifeInPourc:F

    .line 62
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/world/station/Station;->invincible:Z

    .line 63
    iput-object p2, p0, Lfr/testudo/spacecorsair/business/world/station/Station;->name:Ljava/lang/String;

    .line 64
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/station/Station;->textDecal:F

    .line 65
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/world/station/Station;->enableDocking:Z

    .line 66
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/world/station/Station;->mapHidden:Z

    .line 67
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/world/station/Station;->removed:Z

    .line 68
    sget-object v0, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->STATION_S:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/Station;->radarDrawType:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    .line 69
    return-object p0
.end method

.method public onPlayerDock()V
    .registers 2

    .prologue
    .line 84
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-eqz v0, :cond_f

    .line 86
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->onBeforePlayerDock()V

    .line 88
    :cond_f
    invoke-static {}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onPlayerDock()V

    .line 89
    invoke-static {}, Lfr/testudo/spacecorsair/business/economy/PriceUpdater;->updatePrices()V

    .line 90
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/GameThread;->showStationMenu()V

    .line 92
    return-void
.end method
