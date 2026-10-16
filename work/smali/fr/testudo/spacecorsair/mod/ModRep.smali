.class public final Lfr/testudo/spacecorsair/mod/ModRep;
.super Ljava/lang/Object;
.source "ModRep.java"


# static fields
.field public static final FRIENDLY:I = 0x3

.field public static final HONORED:I = 0x5

.field public static final HOSTILE:I = 0x0

.field public static final NEUTRAL:I = 0x2

.field static final PAYOUT:[F

.field private static final PREF_KEY:[Ljava/lang/String;

.field static final RANK_NAMES:[Ljava/lang/String;

.field static final REL:[[I

.field private static final SECRET:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field static final SECRET_DMG:[F

.field static final SECRET_RELOAD:[F

.field public static final SECRET_TYPES:[Ljava/lang/String;

.field public static final TRUSTED:I = 0x4

.field public static final UNFRIENDLY:I = 0x1

.field private static final a:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static final cacheAt:[J

.field private static final cacheVal:[F

.field private static hostileMs:I

.field private static final seen:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static stockMs:I

.field private static final stocked:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lfr/testudo/spacecorsair/business/world/station/Station;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static supportMs:I

.field private static testRep:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x6

    const/4 v3, 0x7

    .line 32
    new-array v0, v4, [F

    fill-array-data v0, :array_d4

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModRep;->PAYOUT:[F

    .line 33
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Hostile"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "Unfriendly"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "Neutral"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "Friendly"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Trusted"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Honored"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModRep;->RANK_NAMES:[Ljava/lang/String;

    .line 36
    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_e4

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_f6

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_108

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_11a

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_12c

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_13e

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_150

    aput-object v1, v0, v4

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModRep;->REL:[[I

    .line 57
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModRep;->cacheVal:[F

    .line 58
    const/16 v0, 0x10

    new-array v0, v0, [J

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModRep;->cacheAt:[J

    .line 59
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModRep;->PREF_KEY:[Ljava/lang/String;

    .line 155
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModRep;->seen:Ljava/util/Map;

    .line 215
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModRep;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 274
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "repSecretSpartan"

    aput-object v1, v0, v5

    const-string v1, "repSecretReaver"

    aput-object v1, v0, v6

    const-string v1, "repSecretKretari"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "repSecretVarn"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "repSecretIronclad"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "repSecretHelion"

    aput-object v2, v0, v1

    const-string v1, "repSecretWarden"

    aput-object v1, v0, v4

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModRep;->SECRET_TYPES:[Ljava/lang/String;

    .line 276
    new-array v0, v3, [Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModRep;->SECRET:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 278
    new-array v0, v3, [F

    fill-array-data v0, :array_162

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModRep;->SECRET_DMG:[F

    .line 279
    new-array v0, v3, [F

    fill-array-data v0, :array_174

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModRep;->SECRET_RELOAD:[F

    .line 326
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModRep;->stocked:Ljava/util/Map;

    return-void

    .line 32
    :array_d4
    .array-data 4
        0x0
        0x0
        0x0
        0x3dcccccd    # 0.1f
        0x3e4ccccd    # 0.2f
        0x3eb33333    # 0.35f
    .end array-data

    .line 36
    :array_e4
    .array-data 4
        0x0
        -0x1
        -0x1
        0x0
        0x1
        0x0
        0x1
    .end array-data

    :array_f6
    .array-data 4
        -0x1
        0x0
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_108
    .array-data 4
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_11a
    .array-data 4
        0x0
        0x0
        -0x1
        0x0
        0x0
        0x1
        -0x1
    .end array-data

    :array_12c
    .array-data 4
        0x1
        -0x1
        -0x1
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_13e
    .array-data 4
        0x0
        -0x1
        -0x1
        0x1
        0x0
        0x0
        0x0
    .end array-data

    :array_150
    .array-data 4
        0x1
        -0x1
        -0x1
        -0x1
        0x1
        0x0
        0x0
    .end array-data

    .line 278
    :array_162
    .array-data 4
        0x3fa00000    # 1.25f
        0x3fa00000    # 1.25f
        0x3fa00000    # 1.25f
        0x3fb9999a    # 1.45f
        0x3fa00000    # 1.25f
        0x3fa00000    # 1.25f
        0x3f8f5c29    # 1.12f
    .end array-data

    .line 279
    :array_174
    .array-data 4
        0x3f666666    # 0.9f
        0x3f666666    # 0.9f
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
        0x3f666666    # 0.9f
        0x3f47ae14    # 0.78f
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static change(Ljava/lang/String;FZ)V
    .registers 7

    .prologue
    .line 118
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModRep;->index(Ljava/lang/String;)I

    move-result v1

    .line 119
    if-ltz v1, :cond_b

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_c

    .line 125
    :cond_b
    return-void

    .line 120
    :cond_c
    invoke-static {v1, p1}, Lfr/testudo/spacecorsair/mod/ModRep;->set(IF)V

    .line 121
    if-eqz p2, :cond_b

    .line 122
    const/4 v0, 0x0

    :goto_12
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModRep;->REL:[[I

    array-length v2, v2

    if-ge v0, v2, :cond_b

    .line 123
    if-eq v0, v1, :cond_2f

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModRep;->REL:[[I

    aget-object v2, v2, v1

    aget v2, v2, v0

    if-eqz v2, :cond_2f

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, p1

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModRep;->REL:[[I

    aget-object v3, v3, v1

    aget v3, v3, v0

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModRep;->set(IF)V

    .line 122
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method

.method static civilAttacked(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V
    .registers 4

    .prologue
    .line 180
    if-eqz p0, :cond_10

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModRep;->seen:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 185
    :cond_10
    :goto_10
    return-void

    .line 181
    :cond_11
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModRep;->hqHere()I

    move-result v0

    .line 182
    if-ltz v0, :cond_10

    .line 183
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModRep;->seen:Ljava/util/Map;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v0, v1, v0

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    const/high16 v1, -0x40c00000    # -0.75f

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModRep;->change(Ljava/lang/String;FZ)V

    goto :goto_10
.end method

.method static desc(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;
    .registers 9

    .prologue
    const/high16 v6, 0x42c80000    # 100.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 316
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModRep;->secretIndex(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v1

    .line 317
    if-gez v1, :cond_c

    const/4 v0, 0x0

    .line 321
    :goto_b
    return-object v0

    .line 318
    :cond_c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModRepData;->SECRET_WEAPON:[[Ljava/lang/Object;

    aget-object v0, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 319
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModRepData;->KEYS:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    .line 320
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModRep;->SECRET_DMG:[F

    aget v3, v3, v1

    sub-float/2addr v3, v5

    mul-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModRep;->SECRET_RELOAD:[F

    aget v4, v4, v1

    sub-float v4, v5, v4

    mul-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 321
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<b>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModRepData;->SECRET_WEAPON:[[Ljava/lang/Object;

    aget-object v6, v6, v1

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</b>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModWeapons;->familyName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "% more damage"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 322
    if-lez v4, :cond_f0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " and "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "% faster reload"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " than the Siege tier.<br><br>"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModRepData;->SECRET_WEAPON:[[Ljava/lang/Object;

    aget-object v0, v0, v1

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    .line 323
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<br><br><i>Sold at "

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->hq:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->pretty(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to pilots the "

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " trusts (Trusted standing).</i>"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    .line 322
    :cond_f0
    const-string v0, ""

    goto :goto_9d
.end method

.method public static enemyKilled(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 4

    .prologue
    .line 189
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-nez v0, :cond_5

    .line 195
    :cond_4
    :goto_4
    return-void

    .line 190
    :cond_5
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModRep;->hqHere()I

    move-result v0

    .line 191
    if-ltz v0, :cond_4

    .line 192
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v0, v1, v0

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    .line 193
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModRep;->rank(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_4

    .line 194
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModRep;->change(Ljava/lang/String;FZ)V

    goto :goto_4
.end method

.method static flagshipDestroyed(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 175
    const/high16 v0, -0x3ee00000    # -10.0f

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModRep;->change(Ljava/lang/String;FZ)V

    .line 176
    return-void
.end method

.method static flagshipProvoked(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 170
    const/high16 v0, -0x3fe00000    # -2.5f

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModRep;->change(Ljava/lang/String;FZ)V

    .line 171
    return-void
.end method

.method static hqHere()I
    .registers 3

    .prologue
    .line 160
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 161
    const/4 v0, 0x0

    :goto_9
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v2, v2

    if-ge v0, v2, :cond_1b

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v2, v2, v0

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->hq:Lfr/testudo/spacecorsair/game/levels/LevelId;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_14} :catch_1a

    if-ne v2, v1, :cond_17

    .line 165
    :goto_16
    return v0

    .line 161
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 162
    :catch_1a
    move-exception v0

    .line 165
    :cond_1b
    const/4 v0, -0x1

    goto :goto_16
.end method

.method static index(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 47
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModRepData;->KEYS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModRepData;->KEYS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 48
    :goto_10
    return v0

    .line 47
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 48
    :cond_14
    const/4 v0, -0x1

    goto :goto_10
.end method

.method static label(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 311
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModRep;->secretIndex(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    .line 312
    if-gez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModRepData;->SECRET_WEAPON:[[Ljava/lang/Object;

    aget-object v0, v1, v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    goto :goto_7
.end method

.method static payoutBonus(Ljava/lang/String;)F
    .registers 3

    .prologue
    .line 108
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModRep;->PAYOUT:[F

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModRep;->rank(Ljava/lang/String;)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method private static prefKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 82
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModRep;->index(Ljava/lang/String;)I

    move-result v1

    .line 83
    if-ltz v1, :cond_b

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModRep;->PREF_KEY:[Ljava/lang/String;

    array-length v0, v0

    if-lt v1, v0, :cond_1f

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rep_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    :cond_1e
    :goto_1e
    return-object v0

    .line 84
    :cond_1f
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModRep;->PREF_KEY:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 85
    if-nez v0, :cond_1e

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModRep;->PREF_KEY:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rep_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    goto :goto_1e
.end method

.method private static prefs()Landroid/content/SharedPreferences;
    .registers 1

    .prologue
    .line 52
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static rank(Ljava/lang/String;)I
    .registers 2

    .prologue
    .line 99
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModRep;->standing(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModRep;->rankOf(F)I

    move-result v0

    return v0
.end method

.method static rankOf(F)I
    .registers 2

    .prologue
    .line 90
    const/high16 v0, -0x3db80000    # -50.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_8

    const/4 v0, 0x0

    .line 95
    :goto_7
    return v0

    .line 91
    :cond_8
    const/high16 v0, -0x3ee00000    # -10.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_7

    .line 92
    :cond_10
    const/high16 v0, 0x41a00000    # 20.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_18

    const/4 v0, 0x2

    goto :goto_7

    .line 93
    :cond_18
    const/high16 v0, 0x42480000    # 50.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_20

    const/4 v0, 0x3

    goto :goto_7

    .line 94
    :cond_20
    const/high16 v0, 0x42a00000    # 80.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_28

    const/4 v0, 0x4

    goto :goto_7

    .line 95
    :cond_28
    const/4 v0, 0x5

    goto :goto_7
.end method

.method private static read(Ljava/lang/String;)F
    .registers 4

    .prologue
    .line 76
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModRep;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 77
    const-string v0, "kretari"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/high16 v0, -0x3e600000    # -20.0f

    .line 78
    :goto_e
    if-nez v1, :cond_13

    :goto_10
    return v0

    .line 77
    :cond_11
    const/4 v0, 0x0

    goto :goto_e

    .line 78
    :cond_13
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModRep;->prefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    goto :goto_10
.end method

.method static secretIndex(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 304
    if-nez p0, :cond_5

    move v0, v1

    .line 307
    :cond_4
    :goto_4
    return v0

    .line 305
    :cond_5
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v2

    .line 306
    const/4 v0, 0x0

    :goto_a
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModRep;->SECRET_TYPES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1c

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModRep;->SECRET_TYPES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1c
    move v0, v1

    .line 307
    goto :goto_4
.end method

.method private static set(IF)V
    .registers 14

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 128
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModRepData;->KEYS:[Ljava/lang/String;

    aget-object v5, v0, p0

    .line 129
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModRep;->read(Ljava/lang/String;)F

    move-result v2

    .line 130
    const/high16 v0, -0x3d380000    # -100.0f

    const/high16 v1, 0x42c80000    # 100.0f

    add-float v6, v2, p1

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 131
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModRep;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_2f

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModRep;->prefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 135
    :cond_2f
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModRep;->cacheAt:[J

    array-length v6, v6

    if-ge p0, v6, :cond_43

    .line 136
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModRep;->cacheVal:[F

    if-eqz v0, :cond_4e

    move v0, v1

    :goto_39
    aput v0, v6, p0

    .line 137
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModRep;->cacheAt:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    aput-wide v6, v0, p0

    .line 139
    :cond_43
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModRep;->rankOf(F)I

    move-result v2

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModRep;->rankOf(F)I

    move-result v6

    .line 140
    if-ne v2, v6, :cond_50

    .line 152
    :goto_4d
    return-void

    :cond_4e
    move v0, v2

    .line 136
    goto :goto_39

    .line 141
    :cond_50
    const/4 v0, 0x0

    .line 142
    if-le v6, v2, :cond_16c

    const/4 v1, 0x3

    if-lt v6, v1, :cond_16c

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModRepData;->RANK_UP:[[Ljava/lang/String;

    aget-object v0, v0, p0

    add-int/lit8 v1, v6, -0x3

    aget-object v0, v0, v1

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    :cond_62
    :goto_62
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v4

    aget-object v4, v1, v4

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ": you are now "

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModRepData;->RANKS:[[Ljava/lang/String;

    aget-object v7, v7, p0

    aget-object v7, v7, v6

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " ("

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModRep;->RANK_NAMES:[Ljava/lang/String;

    aget-object v7, v7, v6

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ")."

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v0, :cond_181

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModFactionData;->COMMANDER:[Ljava/lang/String;

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->commander(Ljava/lang/String;)I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ": \""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_df
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 147
    if-ne v6, v10, :cond_185

    if-ge v2, v10, :cond_185

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " The "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModRepData;->SECRET_WEAPON:[[Ljava/lang/Object;

    aget-object v8, v8, p0

    aget-object v8, v8, v3

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " is now sold at "

    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v4, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->hq:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->pretty(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_11a
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 148
    if-ne v6, v11, :cond_188

    if-ge v2, v11, :cond_188

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " The "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModRepData;->SECRET_SHIP:[[Ljava/lang/String;

    aget-object v7, v7, p0

    aget-object v3, v7, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is now offered to you on the Ships screen."

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_145
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 149
    if-eqz v0, :cond_157

    const/16 v1, 0x2328

    invoke-static {v5, v0, v1}, Lfr/testudo/spacecorsair/mod/ModComms;->show(Ljava/lang/String;Ljava/lang/String;I)V

    .line 150
    :cond_157
    if-le v6, v2, :cond_165

    const-string v0, "rank_up"

    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x1f4

    invoke-static {v0, v1, v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 151
    :cond_165
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModRep;->stocked:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto/16 :goto_4d

    .line 143
    :cond_16c
    if-ge v6, v2, :cond_62

    if-gt v6, v4, :cond_62

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModRepData;->RANK_DOWN:[[Ljava/lang/String;

    aget-object v1, v0, p0

    if-ne v6, v4, :cond_17f

    move v0, v3

    :goto_177
    aget-object v0, v1, v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_62

    :cond_17f
    move v0, v4

    goto :goto_177

    .line 146
    :cond_181
    const-string v1, ""

    goto/16 :goto_df

    .line 147
    :cond_185
    const-string v1, ""

    goto :goto_11a

    .line 148
    :cond_188
    const-string v1, ""

    goto :goto_145
.end method

.method public static spec(I)Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;
    .registers 5

    .prologue
    .line 283
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModRep;->SECRET:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v0, v0, p0

    if-nez v0, :cond_66

    .line 284
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModRepData;->SECRET_WEAPON:[[Ljava/lang/Object;

    aget-object v0, v0, p0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 285
    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModWeapons;->spec(I)Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 286
    new-instance v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    .line 287
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 288
    const/16 v2, 0xf

    iput v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 289
    iget v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    int-to-float v2, v2

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModRep;->SECRET_DMG:[F

    aget v3, v3, p0

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 290
    iget v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    int-to-float v2, v2

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModRep;->SECRET_RELOAD:[F

    aget v3, v3, p0

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 291
    iget v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    iput v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 292
    iget v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    iput v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 293
    iget v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->heatBySec:I

    iput v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->heatBySec:I

    .line 294
    iget v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    iput v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 295
    iget v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    iput v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 296
    iget v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    iput v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    .line 297
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v0, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 298
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModRep;->SECRET:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aput-object v1, v0, p0

    .line 300
    :cond_66
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModRep;->SECRET:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static standing(Ljava/lang/String;)F
    .registers 11

    .prologue
    .line 62
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModRep;->index(Ljava/lang/String;)I

    move-result v1

    .line 63
    if-ltz v1, :cond_37

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModRep;->cacheAt:[J

    array-length v0, v0

    if-ge v1, v0, :cond_37

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 65
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModRep;->cacheAt:[J

    aget-wide v4, v0, v1

    .line 66
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2a

    sub-long v6, v2, v4

    const-wide/16 v8, 0x3e8

    cmp-long v0, v6, v8

    if-gez v0, :cond_2a

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2a

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModRep;->cacheVal:[F

    aget v0, v0, v1

    .line 72
    :goto_29
    return v0

    .line 67
    :cond_2a
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModRep;->read(Ljava/lang/String;)F

    move-result v0

    .line 68
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModRep;->cacheVal:[F

    aput v0, v4, v1

    .line 69
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModRep;->cacheAt:[J

    aput-wide v2, v4, v1

    goto :goto_29

    .line 72
    :cond_37
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModRep;->read(Ljava/lang/String;)F

    move-result v0

    goto :goto_29
.end method

.method private static stockSecret(II)V
    .registers 9

    .prologue
    .line 329
    const/4 v1, 0x4

    if-ge p1, v1, :cond_4

    .line 342
    :cond_3
    :goto_3
    return-void

    .line 331
    :cond_4
    :try_start_4
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v1, v1, p0

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModRep;->index(Ljava/lang/String;)I

    move-result v4

    .line 332
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v5, v1, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 333
    const/4 v1, 0x0

    move v3, v1

    :goto_18
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_3

    .line 334
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr/testudo/spacecorsair/business/Element;

    .line 335
    instance-of v2, v1, Lfr/testudo/spacecorsair/business/world/station/Station;

    if-eqz v2, :cond_30

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModRep;->stocked:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 333
    :cond_30
    :goto_30
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_18

    .line 336
    :cond_34
    move-object v0, v1

    check-cast v0, Lfr/testudo/spacecorsair/business/world/station/Station;

    move-object v2, v0

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/world/station/Station;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModRep;->SECRET_TYPES:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-static {v6}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v6

    invoke-static {v6}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v6

    invoke-virtual {v2, v6}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 337
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModRep;->stocked:Ljava/util/Map;

    check-cast v1, Lfr/testudo/spacecorsair/business/world/station/Station;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_52} :catch_53

    goto :goto_30

    .line 339
    :catch_53
    move-exception v1

    goto :goto_3
.end method

.method static testTick()V
    .registers 3

    .prologue
    const/16 v2, 0x3a

    .line 201
    const-string v0, "corsair_rep"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_18

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModRep;->testRep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_19

    .line 211
    :cond_18
    :goto_18
    return-void

    .line 203
    :cond_19
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModRep;->testRep:Ljava/lang/String;

    .line 205
    const/4 v1, 0x0

    const/16 v2, 0x3a

    :try_start_1e
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 206
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 207
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModRep;->standing(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lfr/testudo/spacecorsair/mod/ModRep;->change(Ljava/lang/String;FZ)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_3f} :catch_40

    goto :goto_18

    .line 208
    :catch_40
    move-exception v0

    goto :goto_18
.end method

.method static tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 18

    .prologue
    .line 220
    if-eqz p0, :cond_a

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-eqz v0, :cond_b

    .line 271
    :cond_a
    :goto_a
    return-void

    .line 221
    :cond_b
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModRep;->hqHere()I

    move-result v4

    .line 222
    if-ltz v4, :cond_a

    .line 223
    const/4 v2, 0x0

    .line 224
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->caps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18c

    .line 225
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->caps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 226
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v5, v5, v4

    if-ne v1, v5, :cond_24

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->removed:Z

    if-nez v1, :cond_24

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    move-object v11, v0

    .line 229
    :goto_4f
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v0, v0, v4

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    .line 230
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModRep;->rank(Ljava/lang/String;)I

    move-result v5

    .line 232
    sget v1, Lfr/testudo/spacecorsair/mod/ModRep;->stockMs:I

    int-to-long v2, v1

    sub-long v2, v2, p1

    long-to-int v1, v2

    sput v1, Lfr/testudo/spacecorsair/mod/ModRep;->stockMs:I

    .line 233
    sget v1, Lfr/testudo/spacecorsair/mod/ModRep;->stockMs:I

    if-gtz v1, :cond_6c

    .line 234
    const/16 v1, 0x1f4

    sput v1, Lfr/testudo/spacecorsair/mod/ModRep;->stockMs:I

    .line 235
    invoke-static {v4, v5}, Lfr/testudo/spacecorsair/mod/ModRep;->stockSecret(II)V

    .line 237
    :cond_6c
    if-eqz v11, :cond_a

    .line 238
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModRep;->tolerance(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, v11, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->amountOfDamageAllowedInRatioByPlayerBeforeRebelion:I

    .line 239
    iget-object v0, v11, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    .line 240
    if-nez v5, :cond_9f

    .line 242
    sget v1, Lfr/testudo/spacecorsair/mod/ModRep;->hostileMs:I

    int-to-long v2, v1

    sub-long v2, v2, p1

    long-to-int v1, v2

    sput v1, Lfr/testudo/spacecorsair/mod/ModRep;->hostileMs:I

    .line 243
    sget v1, Lfr/testudo/spacecorsair/mod/ModRep;->hostileMs:I

    if-gtz v1, :cond_a

    const v1, 0x458ca000    # 4500.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a

    iget-object v0, v11, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    if-nez v0, :cond_a

    .line 244
    const/16 v0, 0xbb8

    sput v0, Lfr/testudo/spacecorsair/mod/ModRep;->hostileMs:I

    .line 245
    invoke-virtual {v11}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->attackPlayerIfItNotTheCaseAlready()V

    goto/16 :goto_a

    .line 247
    :cond_9f
    const/4 v1, 0x4

    if-lt v5, v1, :cond_a

    iget-object v1, v11, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    if-nez v1, :cond_a

    const v1, 0x459c4000    # 5000.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a

    .line 249
    sget v0, Lfr/testudo/spacecorsair/mod/ModRep;->supportMs:I

    int-to-long v0, v0

    sub-long v0, v0, p1

    long-to-int v0, v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModRep;->supportMs:I

    .line 250
    sget v0, Lfr/testudo/spacecorsair/mod/ModRep;->supportMs:I

    if-gtz v0, :cond_a

    .line 251
    const/16 v0, 0x5dc

    sput v0, Lfr/testudo/spacecorsair/mod/ModRep;->supportMs:I

    .line 252
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v6, v0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 253
    const/4 v12, 0x0

    .line 254
    const v1, 0x45228000    # 2600.0f

    .line 255
    const/4 v0, 0x0

    move v3, v0

    :goto_cb
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_fc

    .line 256
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 257
    instance-of v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v2, :cond_189

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v2, :cond_189

    iget v2, v0, Lfr/testudo/spacecorsair/business/Element;->life:F

    const/4 v7, 0x0

    cmpg-float v2, v2, v7

    if-gtz v2, :cond_ec

    move-object v0, v12

    .line 255
    :goto_e7
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v12, v0

    goto :goto_cb

    .line 258
    :cond_ec
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v7, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v2

    .line 259
    cmpg-float v7, v2, v1

    if-gez v7, :cond_189

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move v1, v2

    goto :goto_e7

    .line 261
    :cond_fc
    if-eqz v12, :cond_a

    .line 262
    const/high16 v1, 0x41f00000    # 30.0f

    iget v2, v12, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    const/4 v0, 0x5

    if-ne v5, v0, :cond_185

    const v0, 0x3df5c28f    # 0.12f

    :goto_108
    mul-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 263
    const/4 v1, 0x0

    invoke-virtual {v12, v0, v11, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 264
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v13, v0, v4

    .line 265
    const-string v0, "fx_beam"

    iget-object v1, v11, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, v11, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v3, v12, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v4, v12, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x42700000    # 60.0f

    iget v6, v13, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->r:F

    iget v7, v13, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->g:F

    iget v8, v13, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->b:F

    const v9, 0x3f666666    # 0.9f

    const/4 v10, 0x1

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->strip(Ljava/lang/String;FFFFFFFFFZ)V

    .line 266
    const-string v0, "fx_beamcore"

    iget-object v1, v11, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, v11, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v3, v12, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v4, v12, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x41b00000    # 22.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f666666    # 0.9f

    const/4 v10, 0x1

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->strip(Ljava/lang/String;FFFFFFFFFZ)V

    .line 267
    const-string v0, "fx_core"

    iget-object v1, v12, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, v12, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x43820000    # 260.0f

    const/high16 v6, 0x42700000    # 60.0f

    const/high16 v7, 0x43200000    # 160.0f

    iget v8, v13, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->r:F

    iget v9, v13, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->g:F

    iget v10, v13, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->b:F

    const v11, 0x3f666666    # 0.9f

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-static/range {v0 .. v13}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 268
    const-string v0, "gun_heavy"

    const/high16 v1, 0x3f000000    # 0.5f

    const v2, 0x3f4ccccd    # 0.8f

    const-wide/16 v4, 0x258

    invoke-static {v0, v1, v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    goto/16 :goto_a

    .line 262
    :cond_185
    const v0, 0x3da3d70a    # 0.08f

    goto :goto_108

    :cond_189
    move-object v0, v12

    goto/16 :goto_e7

    :cond_18c
    move-object v11, v2

    goto/16 :goto_4f
.end method

.method static title(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 103
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModRep;->index(Ljava/lang/String;)I

    move-result v0

    .line 104
    if-gez v0, :cond_13

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModRep;->RANK_NAMES:[Ljava/lang/String;

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModRep;->rank(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModRepData;->RANKS:[[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModRep;->rank(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method static tolerance(Ljava/lang/String;)F
    .registers 3

    .prologue
    .line 113
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModRep;->rank(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_a

    const/high16 v0, 0x41c80000    # 25.0f

    :goto_9
    return v0

    :cond_a
    const/high16 v0, 0x41200000    # 10.0f

    goto :goto_9
.end method
