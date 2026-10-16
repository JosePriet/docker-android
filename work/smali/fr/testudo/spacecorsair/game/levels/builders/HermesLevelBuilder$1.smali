.class final Lfr/testudo/spacecorsair/game/levels/builders/HermesLevelBuilder$1;
.super Lfr/testudo/spacecorsair/game/levels/LevelAnimator;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 140
    invoke-direct {p0}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public onElementKilledByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 4

    .prologue
    .line 160
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HermesLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    if-ne p1, v0, :cond_10

    .line 161
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HermesLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    .line 162
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->hermesTreasureOne:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->onTreasureLoot(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 165
    :cond_10
    return-void
.end method

.method public onSecretMapReveleaed(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    .registers 4

    .prologue
    .line 146
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HermesLevelBuilder$2;->$SwitchMap$fr$testudo$spacecorsair$business$loot$SpaceObjectType:[I

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_18

    .line 154
    :goto_b
    return-void

    .line 149
    :pswitch_c
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    # invokes: Lfr/testudo/spacecorsair/game/levels/builders/HermesLevelBuilder;->enableTresureOneIfPossible(Ljava/util/List;)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/HermesLevelBuilder;->access$000(Ljava/util/List;)V

    goto :goto_b

    .line 146
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_c
    .end packed-switch
.end method
