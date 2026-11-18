.class public Lfr/testudo/spacecorsair/mod/ModMissionSpawn;
.super Ljava/lang/Object;
.source "ModMissionSpawn.java"


# static fields
.field static final CAP_ABOVE:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static L(I)I
    .registers 4

    .prologue
    .line 30
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v0

    .line 32
    :try_start_4
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 33
    if-eqz v1, :cond_14

    iget-object v2, v1, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    instance-of v2, v2, Lfr/testudo/spacecorsair/business/mission/engine/KillPillardBossMissionEngine;

    if-nez v2, :cond_14

    iget v2, v1, Lfr/testudo/spacecorsair/business/mission/Mission;->level:I

    if-gtz v2, :cond_15

    .line 36
    :cond_14
    :goto_14
    return v0

    .line 34
    :cond_15
    const/16 v2, 0x28

    iget v1, v1, Lfr/testudo/spacecorsair/business/mission/Mission;->level:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_22} :catch_24

    move-result v0

    goto :goto_14

    .line 35
    :catch_24
    move-exception v1

    goto :goto_14
.end method

.method public static newAlbatros(I)Lfr/testudo/spacecorsair/business/ennemis/Albatros;
    .registers 2

    .prologue
    .line 40
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModMissionSpawn;->L(I)I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlbatros(I)Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    move-result-object v0

    return-object v0
.end method

.method public static newAlbatros(II)Lfr/testudo/spacecorsair/business/ennemis/Albatros;
    .registers 4

    .prologue
    .line 41
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModMissionSpawn;->L(I)I

    move-result v0

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModMissionSpawn;->L(I)I

    move-result v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlbatros(II)Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    move-result-object v0

    return-object v0
.end method

.method public static newAlienBlatte(II)Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;
    .registers 4

    .prologue
    .line 42
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModMissionSpawn;->L(I)I

    move-result v0

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModMissionSpawn;->L(I)I

    move-result v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlienBlatte(II)Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;

    move-result-object v0

    return-object v0
.end method

.method public static newAlienTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;
    .registers 2

    .prologue
    .line 43
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModMissionSpawn;->L(I)I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlienTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;

    move-result-object v0

    return-object v0
.end method

.method public static newBasicEnnemisShip(I)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;
    .registers 2

    .prologue
    .line 44
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModMissionSpawn;->L(I)I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newBasicEnnemisShip(I)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;

    move-result-object v0

    return-object v0
.end method

.method public static newBasicEnnemisShip(II)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;
    .registers 4

    .prologue
    .line 45
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModMissionSpawn;->L(I)I

    move-result v0

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModMissionSpawn;->L(I)I

    move-result v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newBasicEnnemisShip(II)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;

    move-result-object v0

    return-object v0
.end method

.method public static newDefensor(I)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;
    .registers 2

    .prologue
    .line 46
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModMissionSpawn;->L(I)I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newDefensor(I)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v0

    return-object v0
.end method

.method public static newDefensor(II)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;
    .registers 4

    .prologue
    .line 47
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModMissionSpawn;->L(I)I

    move-result v0

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModMissionSpawn;->L(I)I

    move-result v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newDefensor(II)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v0

    return-object v0
.end method

.method public static newEnnemis(Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 5

    .prologue
    .line 48
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModMissionSpawn;->L(I)I

    move-result v0

    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModMissionSpawn;->L(I)I

    move-result v1

    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newEnnemis(Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    return-object v0
.end method

.method public static newFixedTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;
    .registers 2

    .prologue
    .line 49
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModMissionSpawn;->L(I)I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFixedTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v0

    return-object v0
.end method

.method public static newFixedTourelle(II)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;
    .registers 4

    .prologue
    .line 50
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModMissionSpawn;->L(I)I

    move-result v0

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModMissionSpawn;->L(I)I

    move-result v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFixedTourelle(II)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v0

    return-object v0
.end method

.method public static newFrelon(I)Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;
    .registers 2

    .prologue
    .line 51
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModMissionSpawn;->L(I)I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFrelon(I)Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    move-result-object v0

    return-object v0
.end method

.method public static newFrelon(II)Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;
    .registers 4

    .prologue
    .line 52
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModMissionSpawn;->L(I)I

    move-result v0

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModMissionSpawn;->L(I)I

    move-result v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFrelon(II)Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    move-result-object v0

    return-object v0
.end method

.method public static newRocketTourelle(II)Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;
    .registers 4

    .prologue
    .line 53
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModMissionSpawn;->L(I)I

    move-result v0

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModMissionSpawn;->L(I)I

    move-result v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newRocketTourelle(II)Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;

    move-result-object v0

    return-object v0
.end method

.method public static newTaupe(II)Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;
    .registers 4

    .prologue
    .line 54
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModMissionSpawn;->L(I)I

    move-result v0

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModMissionSpawn;->L(I)I

    move-result v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newTaupe(II)Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;

    move-result-object v0

    return-object v0
.end method

.method public static newUfo(II)Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;
    .registers 4

    .prologue
    .line 55
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModMissionSpawn;->L(I)I

    move-result v0

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModMissionSpawn;->L(I)I

    move-result v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newUfo(II)Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;

    move-result-object v0

    return-object v0
.end method
