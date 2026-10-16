.class public Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private range:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lfr/testudo/spacecorsair/business/loot/LootRarety;",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->range:Ljava/util/Map;

    .line 18
    return-void
.end method


# virtual methods
.method public add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;
    .registers 4

    .prologue
    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    return-object v0
.end method

.method public add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;
    .registers 6

    .prologue
    .line 22
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->range:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 23
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->range:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_12
    const/4 v0, 0x0

    move v1, v0

    :goto_14
    if-ge v1, p3, :cond_25

    .line 26
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->range:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    .line 28
    :cond_25
    return-object p0
.end method

.method public add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/util/List;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfr/testudo/spacecorsair/business/loot/LootRarety;",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;",
            ">;)",
            "Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->range:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 38
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->range:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_12
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->range:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 41
    return-object p0
.end method

.method public build()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lfr/testudo/spacecorsair/business/loot/LootRarety;",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->range:Ljava/util/Map;

    return-object v0
.end method
