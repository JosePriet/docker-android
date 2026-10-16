.class public Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newGuardianCivilShip(I)Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;
    .registers 3

    .prologue
    .line 24
    .line 27
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->albatrosSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    array-length v0, v0

    if-gt v0, p0, :cond_a

    .line 28
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->albatrosSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    array-length v0, v0

    add-int/lit8 p0, v0, -0x1

    .line 31
    :cond_a
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newGuardianCivilShip()Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    move-result-object v0

    .line 32
    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->albatrosSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 33
    return-object v0
.end method

.method public static newGuardianCivilShip(II)Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;
    .registers 6

    .prologue
    .line 19
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v2, p0

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/2addr v0, p0

    .line 20
    invoke-static {v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newGuardianCivilShip(I)Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    move-result-object v0

    return-object v0
.end method

.method public static newPolice(I)Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;
    .registers 4

    .prologue
    move v2, p0

    .line 99
    .line 101
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->policeSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    array-length v0, v0

    if-gt v0, p0, :cond_a

    .line 102
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->policeSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    array-length v0, v0

    add-int/lit8 p0, v0, -0x1

    .line 105
    :cond_a
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPoliceShip()Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;

    move-result-object v0

    .line 106
    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->policeSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;

    .line 107
    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModQol;->policeLevel(Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;I)V

    return-object v0
.end method

.method public static newPolice(II)Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;
    .registers 6

    .prologue
    .line 94
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v2, p0

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/2addr v0, p0

    .line 95
    invoke-static {v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newPolice(I)Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;

    move-result-object v0

    return-object v0
.end method

.method public static newRandomCivil(II)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;
    .registers 8

    .prologue
    .line 120
    const-wide v2, 0x3fd51eb851eb851fL    # 0.33

    const-wide v4, 0x3fe51eb851eb851fL    # 0.66

    move v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newRandomCivil(IIDD)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v0

    return-object v0
.end method

.method public static newRandomCivil(IIDD)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;
    .registers 10

    .prologue
    .line 132
    .line 133
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    .line 134
    cmpg-double v2, v0, p2

    if-gez v2, :cond_d

    .line 136
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newTurtuleCivil(II)Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;

    move-result-object v0

    .line 151
    :goto_c
    return-object v0

    .line 139
    :cond_d
    cmpg-double v0, v0, p4

    if-gez v0, :cond_16

    .line 141
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newSquidCivil(II)Lfr/testudo/spacecorsair/business/world/civil/SquidCivilShip;

    move-result-object v0

    goto :goto_c

    .line 145
    :cond_16
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newTrasnporteur(II)Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    move-result-object v0

    .line 146
    invoke-static {}, Lfr/testudo/spacecorsair/business/world/UniverseName;->getRandomTransporteurName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->specificName:Ljava/lang/String;

    goto :goto_c
.end method

.method public static newSquidCivil(I)Lfr/testudo/spacecorsair/business/world/civil/SquidCivilShip;
    .registers 3

    .prologue
    .line 81
    .line 83
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    array-length v0, v0

    if-gt v0, p0, :cond_a

    .line 84
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    array-length v0, v0

    add-int/lit8 p0, v0, -0x1

    .line 87
    :cond_a
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newSquidCivilShip()Lfr/testudo/spacecorsair/business/world/civil/SquidCivilShip;

    move-result-object v0

    .line 88
    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->squidCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/business/world/civil/SquidCivilShip;->initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/world/civil/SquidCivilShip;

    .line 89
    return-object v0
.end method

.method public static newSquidCivil(II)Lfr/testudo/spacecorsair/business/world/civil/SquidCivilShip;
    .registers 6

    .prologue
    .line 76
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v2, p0

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/2addr v0, p0

    .line 77
    invoke-static {v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newSquidCivil(I)Lfr/testudo/spacecorsair/business/world/civil/SquidCivilShip;

    move-result-object v0

    return-object v0
.end method

.method public static newTrasnporteur(I)Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;
    .registers 3

    .prologue
    .line 43
    .line 45
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    array-length v0, v0

    if-gt v0, p0, :cond_a

    .line 46
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    array-length v0, v0

    add-int/lit8 p0, v0, -0x1

    .line 50
    :cond_a
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newTransportCivilShip()Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    move-result-object v0

    .line 51
    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->transportSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    .line 52
    return-object v0
.end method

.method public static newTrasnporteur(II)Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;
    .registers 6

    .prologue
    .line 38
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v2, p0

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/2addr v0, p0

    .line 39
    invoke-static {v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newTrasnporteur(I)Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    move-result-object v0

    return-object v0
.end method

.method public static newTurtuleCivil(I)Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;
    .registers 3

    .prologue
    .line 62
    .line 64
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    array-length v0, v0

    if-gt v0, p0, :cond_a

    .line 65
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    array-length v0, v0

    add-int/lit8 p0, v0, -0x1

    .line 69
    :cond_a
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newTurtleCivilSpaceShip()Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;

    move-result-object v0

    .line 70
    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->turtuleCivilSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;

    .line 71
    return-object v0
.end method

.method public static newTurtuleCivil(II)Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;
    .registers 6

    .prologue
    .line 57
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v2, p0

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/2addr v0, p0

    .line 58
    invoke-static {v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newTurtuleCivil(I)Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;

    move-result-object v0

    return-object v0
.end method
