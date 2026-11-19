.class public Lfr/testudo/spacecorsair/mod/ModStockSpawn;
.super Ljava/lang/Object;
.source "ModStockSpawn.java"


# static fields
.field static volatile band:Lfr/testudo/spacecorsair/game/levels/LevelId;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static L(I)I
    .registers 5

    .prologue
    .line 38
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v0

    .line 39
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->band:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 40
    if-eqz v1, :cond_12

    iget v2, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    iget v3, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMin:I

    if-lt v2, v3, :cond_12

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModPrologue;->active:Z

    if-eqz v2, :cond_13

    .line 41
    :cond_12
    :goto_12
    return v0

    :cond_13
    iget v2, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMin:I

    iget v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_12
.end method

.method static building(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 32
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModQol;->levelByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_12

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->GALACTIC_ARENA:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eq v0, v1, :cond_12

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eq v0, v1, :cond_12

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->TUTORIAL:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-ne v0, v1, :cond_13

    :cond_12
    const/4 v0, 0x0

    :cond_13
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->band:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 34
    return-void
.end method

.method public static mission(Lfr/testudo/spacecorsair/business/mission/Mission;)V
    .registers 2

    .prologue
    .line 46
    if-eqz p0, :cond_a

    :try_start_2
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/Mission;->level:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/Mission;->level:I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_a} :catch_b

    .line 47
    :cond_a
    :goto_a
    return-void

    .line 46
    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public static newAlbatros(I)Lfr/testudo/spacecorsair/business/ennemis/Albatros;
    .registers 2

    .prologue
    .line 49
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->L(I)I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlbatros(I)Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    move-result-object v0

    return-object v0
.end method

.method public static newAlbatros(II)Lfr/testudo/spacecorsair/business/ennemis/Albatros;
    .registers 4

    .prologue
    .line 50
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->L(I)I

    move-result v0

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->L(I)I

    move-result v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlbatros(II)Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    move-result-object v0

    return-object v0
.end method

.method public static newAlienBlatte(II)Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;
    .registers 4

    .prologue
    .line 51
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->L(I)I

    move-result v0

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->L(I)I

    move-result v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlienBlatte(II)Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;

    move-result-object v0

    return-object v0
.end method

.method public static newAlienTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;
    .registers 2

    .prologue
    .line 52
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->L(I)I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlienTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;

    move-result-object v0

    return-object v0
.end method

.method public static newBasicEnnemisShip(I)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;
    .registers 2

    .prologue
    .line 53
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->L(I)I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newBasicEnnemisShip(I)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;

    move-result-object v0

    return-object v0
.end method

.method public static newBasicEnnemisShip(II)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;
    .registers 4

    .prologue
    .line 54
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->L(I)I

    move-result v0

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->L(I)I

    move-result v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newBasicEnnemisShip(II)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;

    move-result-object v0

    return-object v0
.end method

.method public static newDefensor(I)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;
    .registers 2

    .prologue
    .line 55
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->L(I)I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newDefensor(I)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v0

    return-object v0
.end method

.method public static newDefensor(II)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;
    .registers 4

    .prologue
    .line 56
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->L(I)I

    move-result v0

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->L(I)I

    move-result v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newDefensor(II)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v0

    return-object v0
.end method

.method public static newEnnemis(Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 5

    .prologue
    .line 57
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->L(I)I

    move-result v0

    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->L(I)I

    move-result v1

    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newEnnemis(Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    return-object v0
.end method

.method public static newFixedTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;
    .registers 2

    .prologue
    .line 58
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->L(I)I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFixedTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v0

    return-object v0
.end method

.method public static newFixedTourelle(II)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;
    .registers 4

    .prologue
    .line 59
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->L(I)I

    move-result v0

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->L(I)I

    move-result v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFixedTourelle(II)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v0

    return-object v0
.end method

.method public static newFrelon(I)Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;
    .registers 2

    .prologue
    .line 60
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->L(I)I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFrelon(I)Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    move-result-object v0

    return-object v0
.end method

.method public static newFrelon(II)Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;
    .registers 4

    .prologue
    .line 61
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->L(I)I

    move-result v0

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->L(I)I

    move-result v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFrelon(II)Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    move-result-object v0

    return-object v0
.end method

.method public static newRocketTourelle(II)Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;
    .registers 4

    .prologue
    .line 62
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->L(I)I

    move-result v0

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->L(I)I

    move-result v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newRocketTourelle(II)Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;

    move-result-object v0

    return-object v0
.end method

.method public static newTaupe(II)Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;
    .registers 4

    .prologue
    .line 63
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->L(I)I

    move-result v0

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->L(I)I

    move-result v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newTaupe(II)Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;

    move-result-object v0

    return-object v0
.end method

.method public static newUfo(II)Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;
    .registers 4

    .prologue
    .line 64
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->L(I)I

    move-result v0

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->L(I)I

    move-result v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newUfo(II)Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;

    move-result-object v0

    return-object v0
.end method
