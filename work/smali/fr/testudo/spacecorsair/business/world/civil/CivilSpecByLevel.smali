.class public Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final level0a3CivilLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

.field public static final level0a3CivilLootPlus:Lfr/testudo/spacecorsair/business/loot/LootConfig;

.field public static final level0a6TransportLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

.field public static final level11a15CivilLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

.field public static final level3a6CivilLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

.field public static final level3a6CivilLootPlus:Lfr/testudo/spacecorsair/business/loot/LootConfig;

.field public static final level6a10CivilLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

.field public static final level6a15TransportLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

.field public static final lootMap0a3:Ljava/util/Map;
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

.field public static final lootMap0a6Transport:Ljava/util/Map;
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

.field public static final lootMap11a15:Ljava/util/Map;
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

.field public static final lootMap3a6:Ljava/util/Map;
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

.field public static final lootMap6a10:Ljava/util/Map;
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

.field public static final lootMap6a15Transport:Ljava/util/Map;
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

.field public static final policeSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

.field public static final rockLootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

.field public static final squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

.field public static final transportRockLootMap:Ljava/util/Map;
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

.field public static final transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

.field public static final turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/16 v8, 0x9

    const/16 v7, 0x1770

    const/4 v6, 0x6

    const/4 v5, 0x3

    const/4 v1, 0x0

    .line 25
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;-><init>()V

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->energyCell:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3, v5}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goldLootBasic:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3, v6}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goldLootFine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3, v6}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3, v6}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->instaRepair:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->diamond:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ruby:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->basicShieldLevel0:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->basicShieldLevel1:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->basicShieldLevel2:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->fastReloadShieldLevel0:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->fastReloadShieldLevel1:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->fastReloadShieldLevel2:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->fastReloadShieldLevel3:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->standardFastLaserLevel0:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->standardFastLaserLevel1:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->standardFastLaserLevel2:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->standardFastLaserLevel3:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->standardSlowLaserLevel0:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->standardSlowLaserLevel1:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->standardSlowLaserLevel2:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->standardLaserLevel1WithCrit:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->decentLaserLevel0:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->decentLaserLevel1:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->decentLaserLevel2:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->build()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->lootMap0a3:Ljava/util/Map;

    .line 61
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/LootConfig;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootProbability;->BASIC:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->lootMap0a3:Ljava/util/Map;

    invoke-direct {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootConfig;-><init>([Lfr/testudo/spacecorsair/business/loot/LootProbability;Ljava/util/Map;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level0a3CivilLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 62
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/LootConfig;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootProbability;->BASIC_EASIER:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->lootMap0a3:Ljava/util/Map;

    invoke-direct {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootConfig;-><init>([Lfr/testudo/spacecorsair/business/loot/LootProbability;Ljava/util/Map;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level0a3CivilLootPlus:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 71
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;-><init>()V

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->energyCell:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3, v5}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goldLootBasic:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3, v6}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goldLootFine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3, v6}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3, v6}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->instaRepair:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->diamond:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ruby:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->basicShieldLevel4:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->basicShieldLevel5:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->basicShieldLevel3:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->fastReloadShieldLevel4:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->fastReloadShieldLevel5:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->fastReloadShieldLevel6:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->standardFastLaserLevel4:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->standardFastLaserLevel5:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->standardFastLaserLevel6:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->standardFastLaserLevel4:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->standardSlowLaserLevel5:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->standardSlowLaserLevel6:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->decentLaserLevel4:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->decentLaserLevel5:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->decentLaserLevel6:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->exceptionalLaserLevel3:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->build()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->lootMap3a6:Ljava/util/Map;

    .line 104
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/LootConfig;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootProbability;->BASIC:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->lootMap3a6:Ljava/util/Map;

    invoke-direct {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootConfig;-><init>([Lfr/testudo/spacecorsair/business/loot/LootProbability;Ljava/util/Map;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level3a6CivilLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 105
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/LootConfig;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootProbability;->BASIC_EASIER:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->lootMap3a6:Ljava/util/Map;

    invoke-direct {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootConfig;-><init>([Lfr/testudo/spacecorsair/business/loot/LootProbability;Ljava/util/Map;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level3a6CivilLootPlus:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 112
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;-><init>()V

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->energyCell:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3, v5}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goldLootFine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3, v6}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->prisonner:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->instaRepair:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->diamond:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ruby:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->basicShieldLevel8:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->fastReloadShieldLevel8:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->fastReloadShieldLevel9:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->decentShieldLevel7:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->standardFastLaserLevel7:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->standardSlowLaserLevel9:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->decentLaserLevel7:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->decentLaserLevel9:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->exceptionalLaserLevel8:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->exceptionalLaserLevel9:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->build()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->lootMap6a10:Ljava/util/Map;

    .line 140
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/LootConfig;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootProbability;->BASIC_EASIER:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->lootMap6a10:Ljava/util/Map;

    invoke-direct {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootConfig;-><init>([Lfr/testudo/spacecorsair/business/loot/LootProbability;Ljava/util/Map;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level6a10CivilLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 146
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;-><init>()V

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->energyCell:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3, v5}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goldLootFine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3, v6}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->prisonner:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->instaRepair:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->callMobileSeller:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->diamond:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ruby:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->antimissileShieldLevel11:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->healerShieldLevel11:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->argonLaserLevel10:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->acidMisisleModLevel8:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->radonLaserLevel9:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->badAssLaserLevel3:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->healerShieldLevel14:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goodHyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->build()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->lootMap11a15:Ljava/util/Map;

    .line 175
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/LootConfig;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootProbability;->BASIC_EASIER:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->lootMap11a15:Ljava/util/Map;

    invoke-direct {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootConfig;-><init>([Lfr/testudo/spacecorsair/business/loot/LootProbability;Ljava/util/Map;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level11a15CivilLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 184
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;-><init>()V

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->energyCell:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3, v5}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goldLootBasic:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goldLootFine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->malachite:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->diamond:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ruby:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->build()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->lootMap0a6Transport:Ljava/util/Map;

    .line 196
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/LootConfig;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootProbability;->TRANSPORTER:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->lootMap0a6Transport:Ljava/util/Map;

    invoke-direct {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootConfig;-><init>([Lfr/testudo/spacecorsair/business/loot/LootProbability;Ljava/util/Map;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level0a6TransportLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 203
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;-><init>()V

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->energyCell:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3, v5}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goldLootBasic:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goldLootFine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->malachite:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->diamond:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ruby:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->prisonner:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->build()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->lootMap6a15Transport:Ljava/util/Map;

    .line 216
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/LootConfig;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootProbability;->TRANSPORTER:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->lootMap6a15Transport:Ljava/util/Map;

    invoke-direct {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootConfig;-><init>([Lfr/testudo/spacecorsair/business/loot/LootProbability;Ljava/util/Map;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level6a15TransportLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 224
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;-><init>()V

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->energyCell:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2, v3, v5}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->stone:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    const/16 v4, 0x14

    invoke-virtual {v0, v2, v3, v4}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->build()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportRockLootMap:Ljava/util/Map;

    .line 229
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/LootConfig;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootProbability;->TRANSPORTER_ROCK:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportRockLootMap:Ljava/util/Map;

    invoke-direct {v0, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootConfig;-><init>([Lfr/testudo/spacecorsair/business/loot/LootProbability;Ljava/util/Map;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->rockLootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 233
    const/16 v0, 0x10

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    move v0, v1

    .line 236
    :goto_3d4
    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    array-length v2, v2

    if-ge v0, v2, :cond_3ee

    .line 237
    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    new-instance v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    invoke-direct {v3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;-><init>()V

    aput-object v3, v2, v0

    .line 238
    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v2, v2, v0

    const v3, 0x3eb851ec    # 0.36f

    iput v3, v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->maxTurnFactor:F

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d4

    .line 242
    :cond_3ee
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v1

    const/16 v2, 0x32

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 243
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v1

    const/16 v2, 0x1f4

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 244
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v1

    const/16 v2, 0x7d0

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 245
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v1

    const/16 v2, 0xf

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 246
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v1

    iput v5, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 247
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v1

    const/16 v2, 0x4e20

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 248
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v1

    const/16 v2, 0x5dc

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 249
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v1

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 250
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v1

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level0a3CivilLootPlus:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 251
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v1

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 252
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 254
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const/16 v2, 0x32

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 255
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const/16 v2, 0x258

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 256
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const/16 v2, 0x7d0

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 257
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const/16 v2, 0x10

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 258
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iput v5, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 259
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const/16 v2, 0x4e20

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 260
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const/16 v2, 0x5dc

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 261
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 262
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level0a3CivilLootPlus:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 263
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 264
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 267
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    const/16 v2, 0x32

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 268
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    const/16 v2, 0x2bc

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 269
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    const/16 v2, 0x7d0

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 270
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    const/16 v2, 0x13

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 271
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    iput v5, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 272
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    const/16 v2, 0x4e20

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 273
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    const/16 v2, 0x578

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 274
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 275
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level0a3CivilLootPlus:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 276
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 277
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 280
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v5

    const/16 v2, 0x32

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 281
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v5

    const/16 v2, 0x2ee

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 282
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v5

    const/16 v2, 0x7d0

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 283
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v5

    const/16 v2, 0x16

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 284
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v5

    iput v5, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 285
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v5

    const/16 v2, 0x4e20

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 286
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v5

    const/16 v2, 0x578

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 287
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v5

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 288
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v5

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level0a3CivilLootPlus:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 289
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v5

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 290
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v5

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 293
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const/16 v2, 0x32

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 294
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const/16 v2, 0x320

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 295
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const/16 v2, 0x7d0

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 296
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const/16 v2, 0x19

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 297
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    iput v5, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 298
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const/16 v2, 0x4e20

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 299
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const/16 v2, 0x514

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 300
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 301
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level3a6CivilLootPlus:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 302
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 303
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 306
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0x32

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 307
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0x352

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 308
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0x7d0

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 309
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0x19

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 310
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    iput v5, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 311
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0x4e20

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 312
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0x514

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 313
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 314
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level3a6CivilLootPlus:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 315
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 316
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    invoke-static {v5}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 319
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v6

    const/16 v2, 0x32

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 320
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v6

    const/16 v2, 0x384

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 321
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v6

    const/16 v2, 0x7d0

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 322
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v6

    const/16 v2, 0x1b

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 323
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v6

    iput v5, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 324
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v6

    const/16 v2, 0x4e20

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 325
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v6

    const/16 v2, 0x3e8

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 326
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v6

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 327
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v6

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level3a6CivilLootPlus:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 328
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v6

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 329
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v6

    invoke-static {v5}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 331
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    const/16 v2, 0x32

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 332
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    const/16 v2, 0x3e8

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 333
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    const/16 v2, 0x7d0

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 334
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    const/16 v2, 0x1e

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 335
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    iput v5, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 336
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    const/16 v2, 0x4e20

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 337
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    const/16 v2, 0x1f4

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 338
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 339
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level6a10CivilLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 340
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 341
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    invoke-static {v5}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 344
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    const/16 v2, 0x32

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 345
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    const/16 v2, 0x4b0

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 346
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    const/16 v2, 0x7d0

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 347
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    const/16 v2, 0x21

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 348
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    iput v5, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 349
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    const/16 v2, 0x4e20

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 350
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    const/16 v2, 0x1f4

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 351
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 352
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level6a10CivilLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 353
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 354
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    invoke-static {v6}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 358
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v8

    const/16 v2, 0x32

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 359
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v8

    const/16 v2, 0x4b0

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 360
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v8

    const/16 v2, 0x708

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 361
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v8

    const/16 v2, 0x21

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 362
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v8

    iput v5, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 363
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v8

    const/16 v2, 0x4e20

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 364
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v8

    const/16 v2, 0x12c

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 365
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v8

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 366
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v8

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level6a10CivilLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 367
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v8

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 368
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v8

    invoke-static {v6}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 372
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    const/16 v2, 0x32

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 373
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    const/16 v2, 0x514

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 374
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    const/16 v2, 0x708

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 375
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    const/16 v2, 0x23

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 376
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    iput v5, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 377
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    const/16 v2, 0x4e20

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 378
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    const/16 v2, 0xc8

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 379
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 380
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level6a10CivilLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 381
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 382
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    invoke-static {v6}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 386
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    const/16 v2, 0x32

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 387
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    const/16 v2, 0x514

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 388
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    const/16 v2, 0x6a4

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 389
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    const/16 v2, 0x23

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 390
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    const/4 v2, 0x4

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 391
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    const/16 v2, 0x4e20

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 392
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    const/16 v2, 0x3e8

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 393
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 394
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level11a15CivilLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 395
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 396
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    invoke-static {v6}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 398
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    const/16 v2, 0x32

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 399
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    const/16 v2, 0x578

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 400
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    const/16 v2, 0x640

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 401
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    const/16 v2, 0x23

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 402
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    const/4 v2, 0x4

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 403
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    const/16 v2, 0x4650

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 404
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    const/16 v2, 0xc8

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 405
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 406
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level11a15CivilLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 407
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 408
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    invoke-static {v6}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 410
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    const/16 v2, 0x32

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 411
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    const/16 v2, 0x5dc

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 412
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    const/16 v2, 0x5dc

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 413
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    const/16 v2, 0x26

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 414
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    const/4 v2, 0x4

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 415
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    const/16 v2, 0x4268

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 416
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    const/16 v2, 0xc8

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 417
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    const/4 v2, 0x1

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 418
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level11a15CivilLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 419
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 420
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    invoke-static {v6}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 423
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    const/16 v2, 0x32

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 424
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    const/16 v2, 0x5dc

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 425
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    const/16 v2, 0x578

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 426
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    const/16 v2, 0x26

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 427
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    const/4 v2, 0x4

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 428
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    const/16 v2, 0x36b0

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 429
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    const/16 v2, 0xc8

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 430
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    const/4 v2, 0x1

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 431
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level11a15CivilLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 432
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 433
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    invoke-static {v8}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 436
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    const/16 v2, 0x32

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 437
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    const/16 v2, 0x5dc

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 438
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    const/16 v2, 0x514

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 439
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    const/16 v2, 0x28

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 440
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    const/4 v2, 0x4

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 441
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    const/16 v2, 0x2710

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 442
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    const/16 v2, 0xc8

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 443
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    const/4 v2, 0x1

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 444
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level11a15CivilLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 445
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 446
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    invoke-static {v8}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 452
    const/16 v0, 0x10

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    move v0, v1

    .line 455
    :goto_a0e
    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    array-length v2, v2

    if-ge v0, v2, :cond_a28

    .line 456
    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    new-instance v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    invoke-direct {v3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;-><init>()V

    aput-object v3, v2, v0

    .line 457
    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v2, v2, v0

    const v3, 0x3eb851ec    # 0.36f

    iput v3, v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->maxTurnFactor:F

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_a0e

    .line 461
    :cond_a28
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v1

    const/16 v2, 0x32

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 462
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v1

    const/16 v2, 0x190

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 463
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v1

    const/16 v2, 0xfa0

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 464
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v1

    const/16 v2, 0xc

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 465
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v1

    iput v5, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 466
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v1

    const/16 v2, 0x4e20

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 467
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v1

    const/16 v2, 0x5dc

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 468
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v1

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 469
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v1

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level0a3CivilLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 470
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v1

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 471
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 473
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const/16 v2, 0x32

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 474
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const/16 v2, 0x1f4

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 475
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const/16 v2, 0xed8

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 476
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const/16 v2, 0xd

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 477
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iput v5, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 478
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const/16 v2, 0x4e20

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 479
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const/16 v2, 0x5dc

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 480
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 481
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level0a3CivilLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 482
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 483
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 486
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    const/16 v2, 0x32

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 487
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    const/16 v2, 0x226

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 488
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    const/16 v2, 0xe74

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 489
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    const/16 v2, 0xe

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 490
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    iput v5, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 491
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    const/16 v2, 0x4e20

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 492
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    const/16 v2, 0x5dc

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 493
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 494
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level0a3CivilLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 495
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 496
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 499
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v5

    const/16 v2, 0x32

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 500
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v5

    const/16 v2, 0x258

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 501
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v5

    const/16 v2, 0xe10

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 502
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v5

    const/16 v2, 0xf

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 503
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v5

    iput v5, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 504
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v5

    const/16 v2, 0x4e20

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 505
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v5

    const/16 v2, 0x5dc

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 506
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v5

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 507
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v5

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level0a3CivilLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 508
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v5

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 509
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v5

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 512
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const/16 v2, 0x32

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 513
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const/16 v2, 0x26c

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 514
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const/16 v2, 0xdac

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 515
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const/16 v2, 0x10

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 516
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    iput v5, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 517
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const/16 v2, 0x4e20

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 518
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const/16 v2, 0x5dc

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 519
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 520
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level3a6CivilLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 521
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 522
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 525
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0x32

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 526
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0x28a

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 527
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0xc80

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 528
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0x11

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 529
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    iput v5, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 530
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0x4e20

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 531
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0x5dc

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 532
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 533
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level3a6CivilLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 534
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 535
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    invoke-static {v5}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 538
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v6

    const/16 v2, 0x32

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 539
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v6

    const/16 v2, 0x2bc

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 540
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v6

    const/16 v2, 0xbb8

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 541
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v6

    const/16 v2, 0x12

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 542
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v6

    iput v5, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 543
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v6

    const/16 v2, 0x4e20

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 544
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v6

    const/16 v2, 0x5dc

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 545
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v6

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 546
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v6

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level3a6CivilLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 547
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v6

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 548
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v6

    invoke-static {v5}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 550
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    const/16 v2, 0x32

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 551
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    const/16 v2, 0x320

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 552
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    const/16 v2, 0xbb8

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 553
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    const/16 v2, 0x19

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 554
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    iput v5, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 555
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    const/16 v2, 0x4650

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 556
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    const/16 v2, 0x5dc

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 557
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 558
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level6a10CivilLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 559
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 560
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    invoke-static {v5}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 562
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    const/16 v2, 0x32

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 563
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    const/16 v2, 0x384

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 564
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    const/16 v2, 0xbb8

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 565
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    const/16 v2, 0x1e

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 566
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    iput v5, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 567
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    const/16 v2, 0x3a98

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 568
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    const/16 v2, 0x12c

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 569
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 570
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level6a10CivilLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 571
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 572
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    invoke-static {v6}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 575
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v8

    const/16 v2, 0x32

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 576
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v8

    const/16 v2, 0x3e8

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 577
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v8

    const/16 v2, 0xbb8

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 578
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v8

    const/16 v2, 0x23

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 579
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v8

    iput v5, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 580
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v8

    const/16 v2, 0x3a98

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 581
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v8

    const/16 v2, 0x12c

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 582
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v8

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 583
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v8

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level6a10CivilLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 584
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v8

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 585
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v8

    invoke-static {v6}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 587
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    const/16 v2, 0x32

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 588
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    const/16 v2, 0x3e8

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 589
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    const/16 v2, 0xbb8

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 590
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    const/16 v2, 0x28

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 591
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    iput v5, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 592
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    const/16 v2, 0x3a98

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 593
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    const/16 v2, 0x12c

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 594
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 595
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level6a10CivilLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 596
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 597
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    invoke-static {v6}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 599
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    const/16 v2, 0x32

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 600
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    const/16 v2, 0x4b0

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 601
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    const/16 v2, 0xa8c

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 602
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    const/16 v2, 0x28

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 603
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    iput v5, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 604
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    const/16 v2, 0x3a98

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 605
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    const/16 v2, 0x12c

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 606
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 607
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level11a15CivilLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 608
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 609
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    invoke-static {v8}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 612
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    const/16 v2, 0x32

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 613
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    const/16 v2, 0x578

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 614
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    const/16 v2, 0xa8c

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 615
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    const/16 v2, 0x2c

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 616
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    iput v5, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 617
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    const/16 v2, 0x3a98

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 618
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    const/16 v2, 0x12c

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 619
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 620
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level11a15CivilLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 621
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 622
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    invoke-static {v8}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 625
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    const/16 v2, 0x32

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 626
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    const/16 v2, 0x578

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 627
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    const/16 v2, 0xa8c

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 628
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    const/16 v2, 0x30

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 629
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    iput v5, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 630
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    const/16 v2, 0x3a98

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 631
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    const/16 v2, 0x12c

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 632
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 633
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level11a15CivilLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 634
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 635
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    invoke-static {v8}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 637
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    const/16 v2, 0x32

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 638
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    const/16 v2, 0x640

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 639
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    const/16 v2, 0x9c4

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 640
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    const/16 v2, 0x30

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 641
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    iput v5, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 642
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    const/16 v2, 0x3a98

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 643
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    const/16 v2, 0x12c

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 644
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 645
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level11a15CivilLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 646
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 647
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    invoke-static {v8}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 650
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    const/16 v2, 0x32

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 651
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    const/16 v2, 0x708

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 652
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    const/16 v2, 0x8fc

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 653
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    const/16 v2, 0x32

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 654
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    iput v5, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 655
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    const/16 v2, 0x3a98

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 656
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    const/16 v2, 0x12c

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 657
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 658
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level11a15CivilLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 659
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 660
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    invoke-static {v8}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 673
    const/16 v0, 0x10

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    move v0, v1

    .line 676
    :goto_1040
    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    array-length v2, v2

    if-ge v0, v2, :cond_105a

    .line 677
    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    new-instance v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    invoke-direct {v3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;-><init>()V

    aput-object v3, v2, v0

    .line 678
    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v2, v2, v0

    const v3, 0x3e851eb8    # 0.26f

    iput v3, v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->maxTurnFactor:F

    .line 676
    add-int/lit8 v0, v0, 0x1

    goto :goto_1040

    .line 682
    :cond_105a
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v1

    const/16 v2, 0x32

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 683
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v1

    const/16 v2, 0x708

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 684
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v1

    const/16 v2, 0x7d0

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 685
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v1

    const/16 v2, 0xf

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 686
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v1

    iput v6, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 687
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v1

    const/16 v2, 0x2710

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 688
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v1

    const/16 v2, 0x64

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 689
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v1

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 690
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v1

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level0a6TransportLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 691
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v1

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 692
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 694
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const v2, 0x3e851eb8    # 0.26f

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->maxTurnFactor:F

    .line 695
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const/16 v2, 0x46

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 696
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const/16 v2, 0x7d0

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 697
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const/16 v2, 0x7d0

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 698
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const/16 v2, 0xf

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 699
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iput v6, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 700
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const/16 v2, 0x2710

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 701
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 702
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 703
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level0a6TransportLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 704
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 705
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 708
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    const v2, 0x3e851eb8    # 0.26f

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->maxTurnFactor:F

    .line 709
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    const/16 v2, 0x46

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 710
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    const/16 v2, 0x8fc

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 711
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    const/16 v2, 0x7d0

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 712
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    const/16 v2, 0x11

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 713
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    iput v6, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 714
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    const/16 v2, 0x2710

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 715
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 716
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 717
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level0a6TransportLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 718
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 719
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 722
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v5

    const v2, 0x3e851eb8    # 0.26f

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->maxTurnFactor:F

    .line 723
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v5

    const/16 v2, 0x46

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 724
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v5

    const/16 v2, 0xa8c

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 725
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v5

    const/16 v2, 0x76c

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 726
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v5

    const/16 v2, 0x14

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 727
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v5

    iput v6, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 728
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v5

    const/16 v2, 0x2710

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 729
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v5

    const/16 v2, 0x64

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 730
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v5

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 731
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v5

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level0a6TransportLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 732
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v5

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 733
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v5

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 736
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const v2, 0x3e851eb8    # 0.26f

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->maxTurnFactor:F

    .line 737
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 738
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const/16 v2, 0xbb8

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 739
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const/16 v2, 0x708

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 740
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const/16 v2, 0x15

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 741
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    iput v6, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 742
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const/16 v2, 0x2710

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 743
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 744
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 745
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level0a6TransportLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 746
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 747
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 750
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const v2, 0x3e851eb8    # 0.26f

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->maxTurnFactor:F

    .line 751
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 752
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0xce4

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 753
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0x6a4

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 754
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0x15

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 755
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/4 v2, 0x7

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 756
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0x2710

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 757
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 758
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 759
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level0a6TransportLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 760
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 761
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    invoke-static {v5}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 764
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v6

    const v2, 0x3e851eb8    # 0.26f

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->maxTurnFactor:F

    .line 765
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v6

    const/16 v2, 0x64

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 766
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v6

    const/16 v2, 0xdac

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 767
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v6

    const/16 v2, 0x5dc

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 768
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v6

    const/16 v2, 0x17

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 769
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v6

    const/4 v2, 0x7

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 770
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v6

    const/16 v2, 0x2710

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 771
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v6

    const/16 v2, 0x64

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 772
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v6

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 773
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v6

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level0a6TransportLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 774
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v6

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 775
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v6

    invoke-static {v5}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 778
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    const v2, 0x3e851eb8    # 0.26f

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->maxTurnFactor:F

    .line 779
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 780
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    const/16 v2, 0xfa0

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 781
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    const/16 v2, 0x578

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 782
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    const/16 v2, 0x1b

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 783
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    const/4 v2, 0x7

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 784
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    const/16 v2, 0x2710

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 785
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 786
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 787
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level6a15TransportLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 788
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 789
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    invoke-static {v6}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getMosquitoSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 792
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    const v2, 0x3e851eb8    # 0.26f

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->maxTurnFactor:F

    .line 793
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 794
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    const/16 v2, 0x1194

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 795
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    const/16 v2, 0x578

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 796
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    const/16 v2, 0x23

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 797
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    const/4 v2, 0x7

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 798
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    const/16 v2, 0x2710

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 799
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 800
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 801
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level6a15TransportLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 802
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 803
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    invoke-static {v6}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getMosquitoSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 806
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v8

    const v2, 0x3e851eb8    # 0.26f

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->maxTurnFactor:F

    .line 807
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v8

    const/16 v2, 0x64

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 808
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v8

    const/16 v2, 0x1388

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 809
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v8

    const/16 v2, 0x578

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 810
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v8

    const/16 v2, 0x30

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 811
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v8

    const/4 v2, 0x7

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 812
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v8

    const/16 v2, 0x2710

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 813
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v8

    const/16 v2, 0x64

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 814
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v8

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 815
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v8

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level6a15TransportLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 816
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v8

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 817
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v0, v0, v8

    invoke-static {v6}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getMosquitoSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 820
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    const v2, 0x3e851eb8    # 0.26f

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->maxTurnFactor:F

    .line 821
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 822
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 823
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    const/16 v2, 0x578

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 824
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    const/16 v2, 0x3c

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 825
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    const/4 v2, 0x7

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 826
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    const/16 v2, 0x2710

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 827
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 828
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 829
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level6a15TransportLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 830
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 831
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    invoke-static {v6}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getMosquitoSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 833
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    const v2, 0x3e851eb8    # 0.26f

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->maxTurnFactor:F

    .line 834
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 835
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    const/16 v2, 0x1b58

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 836
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    const/16 v2, 0x578

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 837
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    const/16 v2, 0x41

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 838
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    const/16 v2, 0x8

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 839
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    const/16 v2, 0x2710

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 840
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 841
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    const/4 v2, 0x2

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 842
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level6a15TransportLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 843
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 844
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    invoke-static {v8}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 846
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    const v2, 0x3e947ae1    # 0.29f

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->maxTurnFactor:F

    .line 847
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 848
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    const/16 v2, 0x1d4c

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 849
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    const/16 v2, 0x578

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 850
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    const/16 v2, 0x41

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 851
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    const/16 v2, 0x8

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 852
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    const/16 v2, 0x2710

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 853
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 854
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    const/4 v2, 0x2

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 855
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level6a15TransportLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 856
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 857
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    invoke-static {v8}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 859
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    const v2, 0x3e947ae1    # 0.29f

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->maxTurnFactor:F

    .line 860
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 861
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    const/16 v2, 0x1f40

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 862
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    const/16 v2, 0x514

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 863
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    const/16 v2, 0x41

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 864
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    const/16 v2, 0x8

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 865
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    const/16 v2, 0x2710

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 866
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 867
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    const/4 v2, 0x4

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 868
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level6a15TransportLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 869
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 870
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    invoke-static {v8}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 872
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    const v2, 0x3e947ae1    # 0.29f

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->maxTurnFactor:F

    .line 873
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 874
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    const/16 v2, 0x2328

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 875
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    const/16 v2, 0x514

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 876
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    const/16 v2, 0x41

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 877
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    const/16 v2, 0x8

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 878
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    const/16 v2, 0x2710

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 879
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 880
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    const/4 v2, 0x4

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 881
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level6a15TransportLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 882
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 883
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    invoke-static {v8}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 885
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    const v2, 0x3e947ae1    # 0.29f

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->maxTurnFactor:F

    .line 886
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 887
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    const/16 v2, 0x2710

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 888
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    const/16 v2, 0x514

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 889
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    const/16 v2, 0x41

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 890
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    const/16 v2, 0x8

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 891
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    const/16 v2, 0x2710

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 892
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 893
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    const/4 v2, 0x4

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 894
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level6a15TransportLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 895
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    iput v7, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 896
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    invoke-static {v8}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getTorpedoSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 902
    const/16 v0, 0x15

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->policeSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    move v0, v1

    .line 905
    :goto_171f
    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->policeSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    array-length v2, v2

    if-ge v0, v2, :cond_1803

    .line 906
    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->policeSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    new-instance v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    invoke-direct {v3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;-><init>()V

    aput-object v3, v2, v0

    .line 907
    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->policeSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v2, v2, v0

    const v3, 0x3eb851ec    # 0.36f

    iput v3, v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->maxTurnFactor:F

    .line 908
    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->policeSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v2, v2, v0

    add-int/lit8 v3, v0, 0x2d

    iput v3, v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 909
    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->policeSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v2, v2, v0

    mul-int/lit8 v3, v0, 0x28

    add-int/lit16 v3, v3, 0x190

    iput v3, v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 910
    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->policeSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v3, v2, v0

    const/16 v2, 0x14

    if-le v0, v2, :cond_17ad

    const/16 v2, 0x7d0

    :goto_1752
    iput v2, v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 911
    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->policeSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v2, v2, v0

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0xc

    iput v3, v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 912
    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->policeSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v2, v2, v0

    div-int/lit8 v3, v0, 0x3

    iput v3, v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 913
    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->policeSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v3, v2, v0

    const/16 v2, 0x14

    if-le v0, v2, :cond_17b2

    const/16 v2, 0x2710

    :goto_1770
    iput v2, v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 914
    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->policeSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v2, v2, v0

    iput v1, v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 915
    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->policeSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v2, v2, v0

    const/16 v3, 0x1f40

    iput v3, v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 916
    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->policeSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v2, v2, v0

    const/16 v3, 0x32

    iput v3, v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 917
    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->policeSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v2, v2, v0

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shieldSpec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    mul-int/lit16 v3, v0, 0xc8

    iput v3, v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 918
    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->policeSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v2, v2, v0

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shieldSpec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v3, 0xbb8

    iput v3, v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 919
    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->policeSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v2, v2, v0

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shieldSpec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    mul-int/lit8 v3, v0, 0x8

    iput v3, v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 922
    packed-switch v0, :pswitch_data_1804

    .line 905
    :goto_17a9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_171f

    .line 910
    :cond_17ad
    mul-int/lit8 v2, v0, 0x64

    rsub-int v2, v2, 0xfa0

    goto :goto_1752

    .line 913
    :cond_17b2
    mul-int/lit16 v2, v0, 0x1f4

    rsub-int v2, v2, 0x4e20

    goto :goto_1770

    .line 924
    :pswitch_17b7
    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->policeSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v2, v2, v0

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level0a3CivilLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v3, v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 925
    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->policeSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v2, v2, v0

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v3

    iput-object v3, v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    goto :goto_17a9

    .line 929
    :pswitch_17ca
    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->policeSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v2, v2, v0

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level3a6CivilLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v3, v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 930
    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->policeSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v2, v2, v0

    invoke-static {v5}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v3

    iput-object v3, v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    goto :goto_17a9

    .line 936
    :pswitch_17dd
    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->policeSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v2, v2, v0

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level6a10CivilLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v3, v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 937
    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->policeSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v2, v2, v0

    invoke-static {v6}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v3

    iput-object v3, v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    goto :goto_17a9

    .line 941
    :pswitch_17f0
    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->policeSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v2, v2, v0

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->level11a15CivilLoot:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v3, v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 942
    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->policeSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v2, v2, v0

    invoke-static {v8}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getAlbatrosSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v3

    iput-object v3, v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    goto :goto_17a9

    .line 957
    :cond_1803
    return-void

    .line 922
    :pswitch_data_1804
    .packed-switch 0x1
        :pswitch_17b7
        :pswitch_17b7
        :pswitch_17b7
        :pswitch_17ca
        :pswitch_17ca
        :pswitch_17ca
        :pswitch_17dd
        :pswitch_17dd
        :pswitch_17dd
        :pswitch_17dd
        :pswitch_17f0
        :pswitch_17f0
        :pswitch_17f0
        :pswitch_17f0
        :pswitch_17f0
        :pswitch_17f0
        :pswitch_17f0
        :pswitch_17f0
        :pswitch_17f0
    .end packed-switch
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
