.class public Lfr/testudo/spacecorsair/business/loot/LootConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NONE:Lfr/testudo/spacecorsair/business/loot/LootConfig;


# instance fields
.field public final lootProbability:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

.field public final lootRange:Ljava/util/Map;
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
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 28
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/LootConfig;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;->NONE:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/business/loot/LootConfig;-><init>([Lfr/testudo/spacecorsair/business/loot/LootProbability;Ljava/util/Map;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/LootConfig;->NONE:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    return-void
.end method

.method public constructor <init>([Lfr/testudo/spacecorsair/business/loot/LootProbability;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lfr/testudo/spacecorsair/business/loot/LootProbability;",
            "Ljava/util/Map",
            "<",
            "Lfr/testudo/spacecorsair/business/loot/LootRarety;",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/loot/LootConfig;->lootProbability:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

    .line 23
    iput-object p2, p0, Lfr/testudo/spacecorsair/business/loot/LootConfig;->lootRange:Ljava/util/Map;

    .line 24
    return-void
.end method
