.class public final Lfr/testudo/spacecorsair/mod/ModPoi;
.super Ljava/lang/Object;
.source "ModPoi.java"


# static fields
.field static final BASE:F = 1.15f

.field static final FILL:F = 1.1764705f

.field private static final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lfr/testudo/spacecorsair/display/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static memoBase:Ljava/lang/String;

.field private static memoLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoi;->cache:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static artFor(Lfr/testudo/spacecorsair/business/world/station/Station;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;

    if-eqz v0, :cond_b

    const-string v0, "poi_base_kretari"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPoi;->have(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    :cond_a
    :goto_a
    return-object v0

    .line 65
    :cond_b
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;

    if-eqz v0, :cond_16

    const-string v0, "poi_mining_"

    invoke-static {v0, p0}, Lfr/testudo/spacecorsair/mod/ModPoi;->variant(Ljava/lang/String;Lfr/testudo/spacecorsair/business/world/station/Station;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 66
    :cond_16
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPoi;->baseHere()Ljava/lang/String;

    move-result-object v0

    .line 67
    if-nez v0, :cond_a

    .line 68
    const-string v0, "poi_outpost_"

    invoke-static {v0, p0}, Lfr/testudo/spacecorsair/mod/ModPoi;->variant(Ljava/lang/String;Lfr/testudo/spacecorsair/business/world/station/Station;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private static baseHere()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 74
    :try_start_1
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_9} :catch_c

    .line 75
    :goto_9
    if-nez v1, :cond_f

    .line 84
    :goto_b
    return-object v0

    .line 74
    :catch_c
    move-exception v1

    move-object v1, v0

    goto :goto_9

    .line 76
    :cond_f
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPoi;->memoLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eq v1, v2, :cond_42

    .line 77
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModPoi;->memoLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 78
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoi;->memoBase:Ljava/lang/String;

    .line 79
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModMap;->isHome(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 80
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModMap;->owner(Lfr/testudo/spacecorsair/game/levels/LevelId;)I

    move-result v0

    .line 81
    if-ltz v0, :cond_42

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "poi_base_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v0, v2, v0

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPoi;->have(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoi;->memoBase:Ljava/lang/String;

    .line 84
    :cond_42
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoi;->memoBase:Ljava/lang/String;

    goto :goto_b
.end method

.method public static drawable(Lfr/testudo/spacecorsair/business/world/station/Station;Lfr/testudo/spacecorsair/display/Drawable;)Lfr/testudo/spacecorsair/display/Drawable;
    .registers 7

    .prologue
    .line 44
    if-eqz p0, :cond_8

    if-eqz p1, :cond_8

    :try_start_4
    iget-object v0, p1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    if-nez v0, :cond_9

    .line 59
    :cond_8
    :goto_8
    return-object p1

    .line 45
    :cond_9
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPoi;->artFor(Lfr/testudo/spacecorsair/business/world/station/Station;)Ljava/lang/String;

    move-result-object v1

    .line 46
    if-eqz v1, :cond_8

    .line 47
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    .line 48
    if-eqz v2, :cond_8

    .line 49
    const v3, 0x3f969696

    const-string v0, "poi_base_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    const v0, 0x3f933333    # 1.15f

    :goto_23
    mul-float/2addr v0, v3

    .line 50
    iget-object v3, p1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v4, p1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v3, v0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    float-to-int v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoi;->cache:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/display/Drawable;

    .line 53
    if-eqz v0, :cond_57

    iget-object v4, v0, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    if-eq v4, v2, :cond_66

    .line 54
    :cond_57
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    new-instance v4, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v4, v3, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-direct {v0, v4, v2}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    .line 55
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPoi;->cache:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_66} :catch_6b

    :cond_66
    move-object p1, v0

    .line 57
    goto :goto_8

    .line 49
    :cond_68
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_23

    .line 58
    :catch_6b
    move-exception v0

    goto :goto_8
.end method

.method private static have(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModArt;->assetExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-object p0

    :cond_7
    const/4 p0, 0x0

    goto :goto_6
.end method

.method private static variant(Ljava/lang/String;Lfr/testudo/spacecorsair/business/world/station/Station;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/world/station/Station;->name:Ljava/lang/String;

    if-nez v0, :cond_2d

    move v0, v1

    .line 90
    :goto_6
    rem-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x3

    rem-int/lit8 v2, v0, 0x3

    .line 91
    :goto_c
    const/4 v0, 0x3

    if-ge v1, v0, :cond_37

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int v3, v2, v1

    rem-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPoi;->have(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_34

    .line 95
    :goto_2c
    return-object v0

    .line 89
    :cond_2d
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/world/station/Station;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    .line 91
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 95
    :cond_37
    const/4 v0, 0x0

    goto :goto_2c
.end method
