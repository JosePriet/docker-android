.class final Lfr/testudo/spacecorsair/game/levels/builders/HugoWisdomLevelBuilder$1;
.super Lfr/testudo/spacecorsair/game/levels/LevelAnimator;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 161
    invoke-direct {p0}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public onSecretMapReveleaed(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    .registers 4

    .prologue
    .line 166
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HugoWisdomLevelBuilder$2;->$SwitchMap$fr$testudo$spacecorsair$business$loot$SpaceObjectType:[I

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_18

    .line 174
    :goto_b
    return-void

    .line 169
    :pswitch_c
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    # invokes: Lfr/testudo/spacecorsair/game/levels/builders/HugoWisdomLevelBuilder;->enableTresureOneIfPossible(Ljava/util/List;)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/HugoWisdomLevelBuilder;->access$000(Ljava/util/List;)V

    goto :goto_b

    .line 166
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_c
    .end packed-switch
.end method
