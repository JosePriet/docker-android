.class public Lfr/testudo/spacecorsair/business/loot/LootFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/loot/LootFactory$1;
    }
.end annotation


# static fields
.field public static inAppLooted:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 93
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/business/loot/LootFactory;->inAppLooted:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method public static GenerateLoots(Lfr/testudo/spacecorsair/business/loot/LootConfig;Lfr/testudo/spacecorsair/business/Element;)V
    .registers 14

    .prologue
    const/4 v2, 0x0

    .line 22
    if-nez p0, :cond_4

    .line 51
    :cond_3
    return-void

    .line 26
    :cond_4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 27
    instance-of v0, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_58

    move-object v0, p1

    .line 28
    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->elite:Z

    if-eqz v0, :cond_56

    .line 29
    const/high16 v0, 0x40c00000    # 6.0f

    add-float/2addr v0, v1

    .line 31
    :goto_14
    iget v1, p1, Lfr/testudo/spacecorsair/business/Element;->level:I

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->level:I

    sub-int/2addr v1, v3

    const/4 v3, 0x3

    if-lt v1, v3, :cond_24

    .line 32
    const v1, 0x3e19999a    # 0.15f

    add-float/2addr v0, v1

    .line 39
    :cond_24
    :goto_24
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/loot/LootConfig;->lootProbability:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

    array-length v4, v1

    move v3, v2

    .line 40
    :goto_28
    if-ge v3, v4, :cond_3

    move v1, v2

    .line 41
    :goto_2b
    iget-object v5, p0, Lfr/testudo/spacecorsair/business/loot/LootConfig;->lootProbability:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

    aget-object v5, v5, v3

    iget v5, v5, Lfr/testudo/spacecorsair/business/loot/LootProbability;->rollCount:I

    if-ge v1, v5, :cond_52

    .line 42
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    .line 43
    iget-object v5, p0, Lfr/testudo/spacecorsair/business/loot/LootConfig;->lootProbability:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

    aget-object v5, v5, v3

    iget-wide v8, v5, Lfr/testudo/spacecorsair/business/loot/LootProbability;->probability:D

    float-to-double v10, v0

    mul-double/2addr v8, v10

    cmpg-double v5, v6, v8

    if-gtz v5, :cond_4f

    .line 45
    iget-object v5, p0, Lfr/testudo/spacecorsair/business/loot/LootConfig;->lootProbability:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

    aget-object v5, v5, v3

    iget-object v5, v5, Lfr/testudo/spacecorsair/business/loot/LootProbability;->lootRarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-static {p0, v5, p1, v2}, Lfr/testudo/spacecorsair/business/loot/LootFactory;->pickALoot(Lfr/testudo/spacecorsair/business/loot/LootConfig;Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/Element;I)V

    .line 41
    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 40
    :cond_52
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_28

    :cond_56
    move v0, v1

    goto :goto_14

    :cond_58
    move v0, v1

    goto :goto_24
.end method

.method private static pickALoot(Lfr/testudo/spacecorsair/business/loot/LootConfig;Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/Element;I)V
    .registers 14

    .prologue
    .line 55
    const/16 v0, 0x14

    if-le p3, v0, :cond_5

    .line 90
    :cond_4
    :goto_4
    return-void

    .line 58
    :cond_5
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/LootConfig;->lootRange:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 59
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 63
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v2, v4

    .line 64
    double-to-int v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 66
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->isMap()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 67
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->isMapOrTreasureUnlockedOrInInv(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 69
    add-int/lit8 v0, p3, 0x1

    invoke-static {p0, p1, p2, v0}, Lfr/testudo/spacecorsair/business/loot/LootFactory;->pickALoot(Lfr/testudo/spacecorsair/business/loot/LootConfig;Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/Element;I)V

    goto :goto_4

    .line 75
    :cond_3c
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootFactory$1;->$SwitchMap$fr$testudo$spacecorsair$business$loot$SpaceObjectType:[I

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_88

    .line 86
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newLoot()Lfr/testudo/spacecorsair/business/loot/LootElement;

    move-result-object v2

    invoke-virtual {v2, p2, v0}, Lfr/testudo/spacecorsair/business/loot/LootElement;->init(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootElement;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 78
    :pswitch_5b
    add-int/lit8 v0, p3, 0x1

    invoke-static {p0, p1, p2, v0}, Lfr/testudo/spacecorsair/business/loot/LootFactory;->pickALoot(Lfr/testudo/spacecorsair/business/loot/LootConfig;Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/Element;I)V

    goto :goto_4

    .line 82
    :pswitch_61
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newLootableSpaceMan()Lfr/testudo/spacecorsair/business/LootableSpaceMan;

    move-result-object v1

    iget-object v2, p2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p2, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    sget-object v5, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->prisonner:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/business/LootableSpaceMan;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;FLfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/LootableSpaceMan;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 75
    nop

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_61
    .end packed-switch
.end method
