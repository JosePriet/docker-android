.class public Lfr/testudo/spacecorsair/mod/ModLoot;
.super Ljava/lang/Object;
.source "ModLoot.java"


# static fields
.field private static final ALIEN:[I

.field private static final CLASS_CHANCE:[F

.field private static final CLASS_Q:[F

.field private static final FACTION_FAMILIES:[[I

.field private static final SPARTAN:[I

.field private static byRarity:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 26
    new-array v0, v4, [I

    fill-array-data v0, :array_58

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLoot;->ALIEN:[I

    .line 27
    new-array v0, v3, [I

    fill-array-data v0, :array_64

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLoot;->SPARTAN:[I

    .line 132
    const/4 v0, 0x7

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_6c

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_74

    aput-object v2, v0, v1

    new-array v1, v5, [I

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_7c

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_84

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_8c

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_94

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLoot;->FACTION_FAMILIES:[[I

    .line 158
    new-array v0, v4, [F

    fill-array-data v0, :array_9c

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLoot;->CLASS_Q:[F

    .line 159
    new-array v0, v4, [F

    fill-array-data v0, :array_a8

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLoot;->CLASS_CHANCE:[F

    return-void

    .line 26
    nop

    :array_58
    .array-data 4
        0x0
        0x1
        0x2
        0x5
    .end array-data

    .line 27
    :array_64
    .array-data 4
        0x3
        0x4
    .end array-data

    .line 132
    :array_6c
    .array-data 4
        0x0
        0x3
    .end array-data

    :array_74
    .array-data 4
        0x1
        0x2
    .end array-data

    :array_7c
    .array-data 4
        0x4
        0x0
    .end array-data

    :array_84
    .array-data 4
        0x2
        0x1
    .end array-data

    :array_8c
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_94
    .array-data 4
        0x5
        0x0
    .end array-data

    .line 158
    :array_9c
    .array-data 4
        0x0
        0x40400000    # 3.0f
        0x40e00000    # 7.0f
        0x41400000    # 12.0f
    .end array-data

    .line 159
    :array_a8
    .array-data 4
        0x3d23d70a    # 0.04f
        0x3da3d70a    # 0.08f
        0x3e6147ae    # 0.22f
        0x3f19999a    # 0.6f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bossBonus(I)V
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 258
    :try_start_1
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLoot;->tierForPilot()I

    move-result v1

    .line 259
    if-ne p0, v0, :cond_5f

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLoot;->SPARTAN:[I

    :goto_9
    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLoot;->family([II)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    const-string v1, "BOSS DROP: "

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x3f51eb85    # 0.82f

    const v3, 0x3ee66666    # 0.45f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/ModLoot;->toHold(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Ljava/lang/String;FFF)V

    .line 260
    const/4 v0, 0x1

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 261
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLoot;->sectorMod()F

    move-result v0

    float-to-double v4, v0

    div-double/2addr v2, v4

    .line 262
    const-wide v4, 0x3faeb851eb851eb8L    # 0.06

    cmpg-double v0, v2, v4

    if-gez v0, :cond_62

    .line 263
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLoot;->secretItem()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    .line 264
    if-nez v0, :cond_4c

    sget-object v0, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLoot;->pick(Lfr/testudo/spacecorsair/business/loot/LootRarety;I)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    .line 265
    :cond_4c
    if-eqz v0, :cond_5e

    const-string v1, "SECRET LOOT: "

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f4ccccd    # 0.8f

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-static {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/ModLoot;->toHold(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Ljava/lang/String;FFF)V

    .line 273
    :cond_5e
    :goto_5e
    return-void

    .line 259
    :cond_5f
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLoot;->ALIEN:[I

    goto :goto_9

    .line 266
    :cond_62
    const-wide v4, 0x3fd6666666666666L    # 0.35

    cmpg-double v0, v2, v4

    if-gez v0, :cond_5e

    .line 267
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLoot;->pick(Lfr/testudo/spacecorsair/business/loot/LootRarety;I)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_5e

    const-string v1, "RARE DROP: "

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x3f51eb85    # 0.82f

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/ModLoot;->toHold(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Ljava/lang/String;FFF)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_86} :catch_87

    goto :goto_5e

    .line 270
    :catch_87
    move-exception v0

    goto :goto_5e
.end method

.method private static clamp(FFF)F
    .registers 4

    .prologue
    .line 180
    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    :goto_4
    return p1

    :cond_5
    cmpl-float v0, p0, p2

    if-lez v0, :cond_b

    move p1, p2

    goto :goto_4

    :cond_b
    move p1, p0

    goto :goto_4
.end method

.method private static drop(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    .registers 5

    .prologue
    const v2, 0x3f666666    # 0.9f

    .line 59
    if-nez p1, :cond_6

    .line 65
    :goto_5
    return-void

    .line 61
    :cond_6
    :try_start_6
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newLoot()Lfr/testudo/spacecorsair/business/loot/LootElement;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lfr/testudo/spacecorsair/business/loot/LootElement;->init(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootElement;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_19} :catch_1a

    goto :goto_5

    .line 62
    :catch_1a
    move-exception v0

    .line 63
    const-string v0, "LOOT: "

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2, v2, v2}, Lfr/testudo/spacecorsair/mod/ModLoot;->toHold(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Ljava/lang/String;FFF)V

    goto :goto_5
.end method

.method static factionItem()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 145
    :try_start_1
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModMap;->owner(Lfr/testudo/spacecorsair/game/levels/LevelId;)I

    move-result v1

    .line 146
    if-ltz v1, :cond_14

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLoot;->FACTION_FAMILIES:[[I

    array-length v2, v2

    if-lt v1, v2, :cond_15

    .line 154
    :cond_14
    :goto_14
    return-object v0

    .line 147
    :cond_15
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLoot;->tierForPilot()I

    move-result v2

    .line 148
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v3, v3, v1

    iget-object v3, v3, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    .line 149
    const-string v4, "kretari"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLoot;->ALIEN:[I

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModLoot;->family([II)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    goto :goto_14

    .line 150
    :cond_2e
    const-string v4, "spartan"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x3fd3333333333333L    # 0.3

    cmpg-double v3, v4, v6

    if-gez v3, :cond_4a

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLoot;->SPARTAN:[I

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModLoot;->family([II)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    goto :goto_14

    .line 151
    :cond_4a
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLoot;->FACTION_FAMILIES:[[I

    aget-object v1, v3, v1

    .line 152
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    array-length v3, v1

    int-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-int v3, v4

    aget v1, v1, v3

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModWeapons;->typeName(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_5f} :catch_61

    move-result-object v0

    goto :goto_14

    .line 153
    :catch_61
    move-exception v1

    goto :goto_14
.end method

.method private static family([II)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;
    .registers 6

    .prologue
    .line 45
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    array-length v2, p0

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    aget v0, p0, v0

    .line 46
    invoke-static {v0, p1}, Lfr/testudo/spacecorsair/mod/ModLoot;->typeName(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    return-object v0
.end method

.method static fromWreck(Lfr/testudo/spacecorsair/mod/ModWreck;)V
    .registers 11

    .prologue
    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 227
    :try_start_3
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->group:[Z

    if-eqz v3, :cond_15

    .line 228
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->group:[Z

    const/4 v4, 0x0

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_f

    .line 242
    :cond_e
    :goto_e
    return-void

    .line 229
    :cond_f
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->group:[Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .line 231
    :cond_15
    const/4 v4, 0x1

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->srcLevel:I

    if-lez v3, :cond_8f

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->srcLevel:I

    :goto_1c
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 232
    iget-boolean v3, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->srcBoss:Z

    if-eqz v3, :cond_98

    const/high16 v3, 0x3f800000    # 1.0f

    .line 233
    :goto_26
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    float-to-double v8, v3

    cmpl-double v3, v6, v8

    if-gez v3, :cond_e

    .line 234
    iget-boolean v3, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->derelict:Z

    if-eqz v3, :cond_ae

    :goto_33
    iget-boolean v3, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->srcBoss:Z

    if-eqz v3, :cond_b0

    :goto_37
    add-int/2addr v0, v2

    .line 235
    const/4 v1, 0x2

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->srcClass:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->srcElite:Z

    invoke-static {v4, v1, v2, v0}, Lfr/testudo/spacecorsair/mod/ModLoot;->roll(IIZI)Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v2

    .line 236
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getRaretySort()I

    move-result v0

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getRaretySort()I

    move-result v1

    if-lt v0, v1, :cond_b8

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->derelict:Z

    if-eqz v0, :cond_b2

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    :goto_5b
    cmpg-double v0, v6, v0

    if-gez v0, :cond_b8

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLoot;->factionItem()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    .line 237
    :goto_63
    if-eqz v0, :cond_ba

    :goto_65
    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLoot;->drop(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 238
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3fbeb851eb851eb8L    # 0.12

    cmpg-double v0, v0, v2

    if-gez v0, :cond_e

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLoot;->tierForPilot()I

    move-result v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModWeapons;->typeName(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLoot;->drop(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    goto :goto_e

    .line 239
    :catch_8d
    move-exception v0

    goto :goto_e

    .line 231
    :cond_8f
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    goto :goto_1c

    .line 232
    :cond_98
    iget-boolean v3, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->derelict:Z

    if-eqz v3, :cond_a0

    const v3, 0x3f19999a    # 0.6f

    goto :goto_26

    :cond_a0
    iget-boolean v3, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->srcElite:Z

    if-eqz v3, :cond_a9

    const v3, 0x3f333333    # 0.7f

    goto/16 :goto_26

    :cond_a9
    const v3, 0x3eb33333    # 0.35f

    goto/16 :goto_26

    :cond_ae
    move v2, v1

    .line 234
    goto :goto_33

    :cond_b0
    move v0, v1

    goto :goto_37

    .line 236
    :cond_b2
    const-wide v0, 0x3fd3333333333333L    # 0.3

    goto :goto_5b

    :cond_b8
    const/4 v0, 0x0

    goto :goto_63

    .line 237
    :cond_ba
    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModLoot;->pick(Lfr/testudo/spacecorsair/business/loot/LootRarety;I)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;
    :try_end_bd
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_bd} :catch_8d

    move-result-object v0

    goto :goto_65
.end method

.method private static index()V
    .registers 6

    .prologue
    const/4 v4, 0x5

    const/4 v0, 0x0

    .line 72
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLoot;->byRarity:[Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    .line 88
    :goto_6
    return-void

    .line 73
    :cond_7
    new-array v2, v4, [Ljava/util/ArrayList;

    move v1, v0

    .line 74
    :goto_a
    if-ge v1, v4, :cond_16

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 75
    :cond_16
    invoke-static {}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->values()[Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    array-length v3, v1

    :goto_1b
    if-ge v0, v3, :cond_66

    aget-object v4, v1, v0

    .line 77
    :try_start_1f
    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->isEquipable()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->isConsommable()Z

    move-result v5

    if-nez v5, :cond_31

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->isMap()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 75
    :cond_31
    :goto_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 78
    :cond_34
    sget-object v5, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_SHIPS:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_31

    sget-object v5, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_INAPP:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_31

    .line 79
    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v5

    .line 80
    if-eqz v5, :cond_31

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v5

    if-eqz v5, :cond_31

    .line 81
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModRep;->secretIndex(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v5

    if-gez v5, :cond_31

    .line 82
    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v5

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getRaretySort()I

    move-result v5

    aget-object v5, v2, v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_63} :catch_64

    goto :goto_31

    .line 83
    :catch_64
    move-exception v4

    goto :goto_31

    .line 87
    :cond_66
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLoot;->byRarity:[Ljava/util/ArrayList;

    goto :goto_6
.end method

.method public static onEnemyKilled(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V
    .registers 9

    .prologue
    const-wide/16 v2, 0x0

    .line 185
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModRep;->enemyKilled(Lfr/testudo/spacecorsair/business/Element;)V

    .line 187
    if-eqz p0, :cond_d

    :try_start_7
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->isBoss(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 222
    :cond_d
    :goto_d
    return-void

    .line 190
    :cond_e
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLoot;->ALIEN:[I

    .line 191
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;

    if-eqz v0, :cond_c8

    .line 192
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->elite:Z

    if-eqz v0, :cond_c1

    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    :goto_1a
    move-wide v6, v0

    .line 199
    :goto_1b
    cmpl-double v0, v6, v2

    if-lez v0, :cond_32

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    cmpg-double v0, v0, v6

    if-gez v0, :cond_32

    .line 200
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLoot;->tierForPilot()I

    move-result v0

    invoke-static {v4, v0}, Lfr/testudo/spacecorsair/mod/ModLoot;->family([II)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLoot;->drop(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 203
    :cond_32
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModWreck;->sizeClass(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v1

    .line 204
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->elite:Z

    if-eqz v0, :cond_f6

    const/high16 v0, 0x3f800000    # 1.0f

    .line 205
    :goto_3c
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    float-to-double v4, v0

    cmpg-double v0, v2, v4

    if-gez v0, :cond_94

    .line 206
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->level:I

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->elite:Z

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLoot;->roll(IIZI)Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v1

    .line 207
    const/4 v0, 0x0

    .line 208
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getRaretySort()I

    move-result v2

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getRaretySort()I

    move-result v3

    if-lt v2, v3, :cond_6c

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x3fd3333333333333L    # 0.3

    cmpg-double v2, v2, v4

    if-gez v2, :cond_6c

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLoot;->factionItem()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    .line 209
    :cond_6c
    if-nez v0, :cond_79

    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->level:I

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModLoot;->pick(Lfr/testudo/spacecorsair/business/loot/LootRarety;I)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    .line 210
    :cond_79
    if-nez v0, :cond_81

    const/16 v0, 0x3e7

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModLoot;->pick(Lfr/testudo/spacecorsair/business/loot/LootRarety;I)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    .line 211
    :cond_81
    if-nez v0, :cond_91

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->elite:Z

    if-eqz v1, :cond_91

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLoot;->ALIEN:[I

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLoot;->tierForPilot()I

    move-result v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLoot;->family([II)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    .line 212
    :cond_91
    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLoot;->drop(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 214
    :cond_94
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->elite:Z

    if-eqz v0, :cond_10f

    const-wide v0, 0x3fa999999999999aL    # 0.05

    :goto_a1
    cmpg-double v0, v2, v0

    if-gez v0, :cond_d

    .line 216
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 217
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLoot;->tierForPilot()I

    move-result v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModWeapons;->typeName(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLoot;->drop(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    goto/16 :goto_d

    .line 219
    :catch_be
    move-exception v0

    goto/16 :goto_d

    .line 192
    :cond_c1
    const-wide v0, 0x3fb47ae147ae147bL    # 0.08

    goto/16 :goto_1a

    .line 193
    :cond_c8
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;

    if-nez v0, :cond_d0

    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;

    if-eqz v0, :cond_de

    .line 194
    :cond_d0
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->elite:Z

    if-eqz v0, :cond_dc

    const-wide v0, 0x3fa47ae147ae147bL    # 0.04

    :goto_d9
    move-wide v6, v0

    goto/16 :goto_1b

    :cond_dc
    move-wide v0, v2

    goto :goto_d9

    .line 195
    :cond_de
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    if-eqz v0, :cond_115

    .line 196
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->elite:Z

    if-eqz v0, :cond_f0

    const-wide v6, 0x3fc999999999999aL    # 0.2

    .line 197
    :goto_eb
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLoot;->SPARTAN:[I

    move-object v4, v0

    goto/16 :goto_1b

    .line 196
    :cond_f0
    const-wide v6, 0x3faeb851eb851eb8L    # 0.06

    goto :goto_eb

    .line 204
    :cond_f6
    const v0, 0x3f666666    # 0.9f

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLoot;->CLASS_CHANCE:[F

    aget v2, v2, v1

    iget v3, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->level:I

    int-to-float v3, v3

    const v4, 0x3b03126f    # 0.002f

    mul-float/2addr v3, v4

    add-int/lit8 v4, v1, 0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10c} :catch_be

    move-result v0

    goto/16 :goto_3c

    .line 214
    :cond_10f
    const-wide v0, 0x3f889374bc6a7efaL    # 0.012

    goto :goto_a1

    :cond_115
    move-wide v6, v2

    goto/16 :goto_1b
.end method

.method static pick(Lfr/testudo/spacecorsair/business/loot/LootRarety;I)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;
    .registers 13

    .prologue
    const/16 v10, 0x18

    const/4 v2, 0x0

    .line 92
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLoot;->index()V

    .line 93
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getRaretySort()I

    move-result v0

    move v3, v0

    :goto_b
    if-ltz v3, :cond_64

    .line 94
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLoot;->byRarity:[Ljava/util/ArrayList;

    aget-object v4, v0, v3

    .line 95
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 93
    :cond_17
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_b

    :cond_1b
    move v1, v2

    .line 96
    :goto_1c
    if-ge v1, v10, :cond_42

    .line 97
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-double v8, v0

    mul-double/2addr v6, v8

    double-to-int v0, v6

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 98
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v5

    iget v5, v5, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->level:I

    .line 99
    add-int/lit8 v6, p1, 0x2

    if-gt v5, v6, :cond_3e

    add-int/lit8 v6, p1, -0x6

    if-lt v5, v6, :cond_3e

    .line 106
    :cond_3d
    :goto_3d
    return-object v0

    .line 96
    :cond_3e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1c

    :cond_42
    move v1, v2

    .line 101
    :goto_43
    if-ge v1, v10, :cond_17

    .line 102
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-double v8, v0

    mul-double/2addr v6, v8

    double-to-int v0, v6

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 103
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v5

    iget v5, v5, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->level:I

    add-int/lit8 v6, p1, 0x2

    if-le v5, v6, :cond_3d

    .line 101
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_43

    .line 106
    :cond_64
    const/4 v0, 0x0

    goto :goto_3d
.end method

.method static roll(IIZI)Lfr/testudo/spacecorsair/business/loot/LootRarety;
    .registers 12

    .prologue
    const/4 v0, 0x0

    .line 163
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 164
    int-to-float v1, p0

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLoot;->CLASS_Q:[F

    aget v2, v2, v4

    add-float/2addr v1, v2

    mul-int/lit8 v2, p3, 0x4

    int-to-float v2, v2

    add-float v3, v1, v2

    .line 165
    const v1, 0x3ca3d70a    # 0.02f

    const v2, 0x3c449ba6    # 0.012f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const v2, 0x3ee66666    # 0.45f

    invoke-static {v1, v0, v2}, Lfr/testudo/spacecorsair/mod/ModLoot;->clamp(FFF)F

    move-result v2

    .line 166
    const/high16 v1, 0x41000000    # 8.0f

    sub-float v1, v3, v1

    const v5, 0x3c03126f    # 0.008f

    mul-float/2addr v1, v5

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-static {v1, v0, v5}, Lfr/testudo/spacecorsair/mod/ModLoot;->clamp(FFF)F

    move-result v1

    .line 167
    const/high16 v5, 0x41900000    # 18.0f

    sub-float/2addr v3, v5

    const v5, 0x3b83126f    # 0.004f

    mul-float/2addr v3, v5

    const v5, 0x3da3d70a    # 0.08f

    invoke-static {v3, v0, v5}, Lfr/testudo/spacecorsair/mod/ModLoot;->clamp(FFF)F

    move-result v3

    .line 168
    if-nez v4, :cond_9d

    if-nez p2, :cond_9d

    const v3, 0x3eb33333    # 0.35f

    mul-float/2addr v2, v3

    const v3, 0x3e19999a    # 0.15f

    mul-float/2addr v1, v3

    .line 169
    :goto_4d
    if-eqz p2, :cond_64

    const v3, 0x3f0ccccd    # 0.55f

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const v3, 0x3e99999a    # 0.3f

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const v3, 0x3d75c28f    # 0.06f

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 170
    :cond_64
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLoot;->sectorMod()F

    move-result v3

    .line 171
    mul-float/2addr v2, v3

    mul-float/2addr v1, v3

    mul-float/2addr v0, v3

    .line 172
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    .line 173
    float-to-double v6, v0

    cmpg-double v3, v4, v6

    if-gez v3, :cond_77

    sget-object v0, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 176
    :goto_76
    return-object v0

    .line 174
    :cond_77
    add-float v3, v0, v1

    float-to-double v6, v3

    cmpg-double v3, v4, v6

    if-gez v3, :cond_81

    sget-object v0, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    goto :goto_76

    .line 175
    :cond_81
    add-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-double v0, v0

    cmpg-double v0, v4, v0

    if-ltz v0, :cond_8a

    if-eqz p2, :cond_8d

    :cond_8a
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    goto :goto_76

    .line 176
    :cond_8d
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-gez v0, :cond_9a

    sget-object v0, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    goto :goto_76

    :cond_9a
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    goto :goto_76

    :cond_9d
    move v0, v3

    goto :goto_4d
.end method

.method static secretItem()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;
    .registers 6

    .prologue
    .line 246
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 247
    invoke-static {}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->values()[Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v3, :cond_29

    aget-object v4, v2, v0

    .line 249
    :try_start_f
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModRep;->secretIndex(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v5

    if-ltz v5, :cond_26

    sget-object v5, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_SHIPS:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_26

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v5

    if-eqz v5, :cond_26

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_26} :catch_43

    .line 247
    :cond_26
    :goto_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 252
    :cond_29
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x0

    :goto_30
    return-object v0

    :cond_31
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    goto :goto_30

    .line 250
    :catch_43
    move-exception v4

    goto :goto_26
.end method

.method static sectorMod()F
    .registers 3

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 113
    :try_start_2
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModMap;->owner(Lfr/testudo/spacecorsair/game/levels/LevelId;)I

    move-result v1

    .line 114
    if-gez v1, :cond_14

    const v0, 0x3f99999a    # 1.2f

    .line 124
    :cond_13
    :goto_13
    return v0

    .line 115
    :cond_14
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v1, v2, v1

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    .line 116
    const-string v2, "reaver"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const v0, 0x3fa66666    # 1.3f

    goto :goto_13

    .line 117
    :cond_26
    const-string v2, "kretari"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    const v0, 0x3fb33333    # 1.4f

    goto :goto_13

    .line 118
    :cond_32
    const-string v2, "varn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    const/high16 v0, 0x3fa00000    # 1.25f

    goto :goto_13

    .line 119
    :cond_3d
    const-string v2, "helion"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    const v0, 0x3f933333    # 1.15f

    goto :goto_13

    .line 120
    :cond_49
    const-string v2, "ironclad"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    const v0, 0x3f8ccccd    # 1.1f

    goto :goto_13

    .line 121
    :cond_55
    const-string v2, "warden"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5a} :catch_61

    move-result v1

    if-eqz v1, :cond_13

    const v0, 0x3f666666    # 0.9f

    goto :goto_13

    .line 123
    :catch_61
    move-exception v1

    goto :goto_13
.end method

.method private static tierForPilot()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 31
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    move v0, v1

    move v2, v1

    .line 33
    :goto_b
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSpecs;->TIER_LEVELS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1b

    .line 34
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSpecs;->TIER_REQ:[I

    aget v1, v1, v0

    if-gt v1, v3, :cond_1c

    move v1, v0

    .line 33
    :goto_17
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_b

    .line 36
    :cond_1b
    return v2

    :cond_1c
    move v1, v2

    goto :goto_17
.end method

.method private static toHold(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Ljava/lang/String;FFF)V
    .registers 8

    .prologue
    .line 50
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-static {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->forceAddObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 51
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playLoot()V

    .line 52
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    if-eqz v0, :cond_36

    .line 53
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p3, p4}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 55
    :cond_36
    return-void
.end method

.method private static typeName(II)Ljava/lang/String;
    .registers 4

    .prologue
    .line 40
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->FAMILY_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 41
    if-nez p1, :cond_7

    :goto_6
    return-object v0

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSpecs;->TIER_LEVELS:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
