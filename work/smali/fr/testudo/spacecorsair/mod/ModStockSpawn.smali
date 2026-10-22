.class public Lfr/testudo/spacecorsair/mod/ModStockSpawn;
.super Ljava/lang/Object;
.source "ModStockSpawn.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newAlbatros(I)Lfr/testudo/spacecorsair/business/ennemis/Albatros;
    .registers 2

    .prologue
    .line 23
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlbatros(I)Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    move-result-object v0

    return-object v0
.end method

.method public static newAlbatros(II)Lfr/testudo/spacecorsair/business/ennemis/Albatros;
    .registers 4

    .prologue
    .line 24
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v0

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlbatros(II)Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    move-result-object v0

    return-object v0
.end method

.method public static newAlienBlatte(II)Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;
    .registers 4

    .prologue
    .line 25
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v0

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlienBlatte(II)Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;

    move-result-object v0

    return-object v0
.end method

.method public static newAlienTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;
    .registers 2

    .prologue
    .line 26
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlienTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;

    move-result-object v0

    return-object v0
.end method

.method public static newBasicEnnemisShip(I)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;
    .registers 2

    .prologue
    .line 27
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newBasicEnnemisShip(I)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;

    move-result-object v0

    return-object v0
.end method

.method public static newBasicEnnemisShip(II)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;
    .registers 4

    .prologue
    .line 28
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v0

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newBasicEnnemisShip(II)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;

    move-result-object v0

    return-object v0
.end method

.method public static newDefensor(I)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;
    .registers 2

    .prologue
    .line 29
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newDefensor(I)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v0

    return-object v0
.end method

.method public static newDefensor(II)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;
    .registers 4

    .prologue
    .line 30
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v0

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newDefensor(II)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v0

    return-object v0
.end method

.method public static newEnnemis(Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 5

    .prologue
    .line 31
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v0

    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v1

    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newEnnemis(Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    return-object v0
.end method

.method public static newFixedTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;
    .registers 2

    .prologue
    .line 32
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFixedTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v0

    return-object v0
.end method

.method public static newFixedTourelle(II)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;
    .registers 4

    .prologue
    .line 33
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v0

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFixedTourelle(II)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v0

    return-object v0
.end method

.method public static newFrelon(I)Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;
    .registers 2

    .prologue
    .line 34
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFrelon(I)Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    move-result-object v0

    return-object v0
.end method

.method public static newFrelon(II)Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;
    .registers 4

    .prologue
    .line 35
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v0

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFrelon(II)Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    move-result-object v0

    return-object v0
.end method

.method public static newRocketTourelle(II)Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;
    .registers 4

    .prologue
    .line 36
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v0

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newRocketTourelle(II)Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;

    move-result-object v0

    return-object v0
.end method

.method public static newTaupe(II)Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;
    .registers 4

    .prologue
    .line 37
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v0

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newTaupe(II)Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;

    move-result-object v0

    return-object v0
.end method

.method public static newUfo(II)Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;
    .registers 4

    .prologue
    .line 38
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v0

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newUfo(II)Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;

    move-result-object v0

    return-object v0
.end method
