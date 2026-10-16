.class final Lfr/testudo/spacecorsair/business/mission/VentoHighMissions$1;
.super Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionListener;
.source "SourceFile"


# instance fields
.field final synthetic val$stationName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 167
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions$1;->val$stationName:Ljava/lang/String;

    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public fetchOrCreateObjectToFindWhenInZone()Lfr/testudo/spacecorsair/business/Element;
    .registers 3

    .prologue
    .line 211
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions$1;->val$stationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    return-object v0
.end method

.method public onEveryMinuteInZone(Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;Lfr/testudo/spacecorsair/engine/Vector2;)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 179
    iget-boolean v0, p1, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->completed:Z

    if-eqz v0, :cond_6

    .line 206
    :goto_5
    return-void

    .line 184
    :cond_6
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 185
    iget v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v2, p2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v1, v2

    .line 186
    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v2, p2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v0, v2

    .line 189
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3e

    .line 190
    cmpg-float v0, v1, v4

    if-gez v0, :cond_3a

    .line 191
    const v0, 0x7f070159

    .line 204
    :goto_29
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v2, 0x7f02005b

    const v3, 0x7f0702d8

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIII)V

    goto :goto_5

    .line 193
    :cond_3a
    const v0, 0x7f070158

    goto :goto_29

    .line 196
    :cond_3e
    cmpl-float v0, v0, v4

    if-lez v0, :cond_46

    .line 197
    const v0, 0x7f070156

    goto :goto_29

    .line 199
    :cond_46
    const v0, 0x7f070157

    goto :goto_29
.end method

.method public onObjectFound(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 4

    .prologue
    .line 170
    move-object v0, p1

    check-cast v0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->mapHidden:Z

    .line 171
    check-cast p1, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->drawOnRadar:Z

    .line 174
    return-void
.end method
