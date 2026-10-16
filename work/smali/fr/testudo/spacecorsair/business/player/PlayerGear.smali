.class public Lfr/testudo/spacecorsair/business/player/PlayerGear;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public booster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

.field public hyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

.field public laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

.field public missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

.field public playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

.field public shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->defaultPlayerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    return-void
.end method

.method public static getDefault()Lfr/testudo/spacecorsair/business/player/PlayerGear;
    .registers 2

    .prologue
    .line 26
    new-instance v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/player/PlayerGear;-><init>()V

    .line 27
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->basicShieldLevel0:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 28
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->standardLaserLevel0:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 29
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->noMissileMod:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 30
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->nopBooster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->booster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 31
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->nopHyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->hyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 32
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->defaultPlayerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 34
    return-object v0
.end method

.method public static getLevel1()Lfr/testudo/spacecorsair/business/player/PlayerGear;
    .registers 2

    .prologue
    .line 52
    new-instance v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/player/PlayerGear;-><init>()V

    .line 53
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->basicShieldLevel1:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 54
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->devDebugLaser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 55
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->mosquitoMissileLevel0:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 56
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->extraBooster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->booster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 57
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goodHyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->hyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 58
    return-object v0
.end method

.method public static getLevel12WithExtraStuff()Lfr/testudo/spacecorsair/business/player/PlayerGear;
    .registers 2

    .prologue
    .line 126
    new-instance v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/player/PlayerGear;-><init>()V

    .line 127
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->fermiumLaserLevel15:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 128
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->diamondShieldLevel15:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 129
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->torpedoMissileLevel12:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 130
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goodBooster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->booster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 131
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goodHyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->hyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 132
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->hullBreaker:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 134
    return-object v0
.end method

.method public static getLevel12WithGoodLaser()Lfr/testudo/spacecorsair/business/player/PlayerGear;
    .registers 2

    .prologue
    .line 114
    new-instance v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/player/PlayerGear;-><init>()V

    .line 115
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->argonLaserLevel10:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 116
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->healerShieldLevel11:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 117
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->agressorMissileModLevel9:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 118
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goodBooster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->booster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 119
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goodHyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->hyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 120
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->defaultPlayerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 122
    return-object v0
.end method

.method public static getLevel14WithNormalStuff()Lfr/testudo/spacecorsair/business/player/PlayerGear;
    .registers 2

    .prologue
    .line 139
    new-instance v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/player/PlayerGear;-><init>()V

    .line 140
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->argonLaserLevel13:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 141
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->xenonShieldLevel12:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 142
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->percuteurMissileModLevel12Crit:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 143
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goodBooster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->booster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 144
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goodHyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->hyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 145
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->hullBreaker:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 147
    return-object v0
.end method

.method public static getLevel3()Lfr/testudo/spacecorsair/business/player/PlayerGear;
    .registers 2

    .prologue
    .line 73
    new-instance v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/player/PlayerGear;-><init>()V

    .line 74
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->basicShieldLevel3:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 75
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->standardLaserLevel3:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 76
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->mosquitoMissileLevel0:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 77
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goodBooster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->booster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 78
    return-object v0
.end method

.method public static getLevel4()Lfr/testudo/spacecorsair/business/player/PlayerGear;
    .registers 2

    .prologue
    .line 82
    new-instance v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/player/PlayerGear;-><init>()V

    .line 83
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->decentShieldLevel4:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 84
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ventohighGovLaser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 85
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->mosquitoMissileLevel6:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 86
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goodBooster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->booster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 87
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goodHyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->hyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 88
    return-object v0
.end method

.method public static getLevel5WithJaspine()Lfr/testudo/spacecorsair/business/player/PlayerGear;
    .registers 2

    .prologue
    .line 63
    new-instance v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/player/PlayerGear;-><init>()V

    .line 64
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->basicShieldLevel5:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 65
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->jaspinBite5:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 66
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->mosquitoMissileLevel3:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 67
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->extraBooster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->booster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 68
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goodHyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->hyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 69
    return-object v0
.end method

.method public static getLevel6()Lfr/testudo/spacecorsair/business/player/PlayerGear;
    .registers 2

    .prologue
    .line 92
    new-instance v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/player/PlayerGear;-><init>()V

    .line 93
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->decentShieldLevel6:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 94
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->standardFastLaserLevel6:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 95
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->mosquitoMissileLevel6:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 96
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goodBooster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->booster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 97
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goodHyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->hyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 98
    return-object v0
.end method

.method public static getLevel8()Lfr/testudo/spacecorsair/business/player/PlayerGear;
    .registers 2

    .prologue
    .line 103
    new-instance v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/player/PlayerGear;-><init>()V

    .line 105
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->mirrorShieldLevel9:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 106
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->corrosiveLaserLevel5:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 107
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->acidMisisleModLevel8:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 108
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goodBooster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->booster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 109
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goodHyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->hyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 110
    return-object v0
.end method

.method public static getMulti()Lfr/testudo/spacecorsair/business/player/PlayerGear;
    .registers 2

    .prologue
    .line 39
    new-instance v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/player/PlayerGear;-><init>()V

    .line 40
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->multiShieldStart:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 41
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->multiLaserStart:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 42
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->noMissileMod:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 43
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->nopBooster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->booster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 44
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->nopHyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->hyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 45
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->defaultPlayerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 47
    return-object v0
.end method
