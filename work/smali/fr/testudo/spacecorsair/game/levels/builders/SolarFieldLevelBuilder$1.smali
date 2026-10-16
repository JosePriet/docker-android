.class final Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder$1;
.super Lfr/testudo/spacecorsair/game/levels/LevelAnimator;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 248
    invoke-direct {p0}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public onSecretMapReveleaed(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    .registers 4

    .prologue
    .line 256
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder$2;->$SwitchMap$fr$testudo$spacecorsair$business$loot$SpaceObjectType:[I

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_24

    .line 269
    :cond_b
    :goto_b
    return-void

    .line 259
    :pswitch_c
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    # getter for: Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->SMUGLER_STATION_NAME:Ljava/lang/String;
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_b

    .line 261
    const/4 v1, 0x0

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->mapHidden:Z

    .line 262
    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->drawOnRadar:Z

    goto :goto_b

    .line 256
    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_c
    .end packed-switch
.end method
