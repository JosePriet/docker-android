.class public Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;
    }
.end annotation


# instance fields
.field public activity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

.field public alterationLaserSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

.field public alterationMissileSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

.field public enemisType:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

.field public ennemisLevelMax:I

.field public ennemisLevelMin:I

.field public extraConfig:Lfr/testudo/spacecorsair/game/levels/arena/ArenaExtraEnemisConfig;

.field public isBoss:Z

.field public isElite:Z

.field public isEnnemyLevelRelativeToPlayer:Z

.field public nextWaveCondition:Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;

.field public popConfig:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

.field public wavePopDelayInMilli:I

.field public waveSize:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->DEFAULT_IDLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->activity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    .line 39
    iput v1, p0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->ennemisLevelMin:I

    .line 40
    iput v1, p0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->ennemisLevelMax:I

    .line 42
    iput v1, p0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->waveSize:I

    .line 43
    const/16 v0, 0x3e8

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->wavePopDelayInMilli:I

    .line 45
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->isBoss:Z

    .line 46
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->isElite:Z

    .line 47
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->DEFAULT:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->alterationLaserSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 48
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->DEFAULT:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->alterationMissileSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 49
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->isEnnemyLevelRelativeToPlayer:Z

    .line 53
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaExtraEnemisConfig;->DEFAULT:Lfr/testudo/spacecorsair/game/levels/arena/ArenaExtraEnemisConfig;

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->extraConfig:Lfr/testudo/spacecorsair/game/levels/arena/ArenaExtraEnemisConfig;

    .line 55
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;->CLEAN_LEVEL:Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->nextWaveCondition:Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;

    return-void
.end method

.method public static newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;
    .registers 5

    .prologue
    .line 104
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;-><init>()V

    .line 105
    iput-object p1, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->enemisType:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    .line 106
    iput p0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->waveSize:I

    .line 107
    iput p2, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->ennemisLevelMin:I

    .line 108
    iput p2, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->ennemisLevelMax:I

    .line 109
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->RANDOM:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->popConfig:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    .line 110
    return-object v0
.end method

.method public static newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;
    .registers 6

    .prologue
    .line 114
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;-><init>()V

    .line 115
    iput-object p1, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->enemisType:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    .line 116
    iput p0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->waveSize:I

    .line 117
    iput p2, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->ennemisLevelMin:I

    .line 118
    iput p3, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->ennemisLevelMax:I

    .line 119
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->RANDOM:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->popConfig:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    .line 120
    return-object v0
.end method

.method public static newPause(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 125
    const/4 v0, 0x0

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v0, v1, v2, v2, p0}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v0

    return-object v0
.end method

.method public static newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;
    .registers 7

    .prologue
    .line 129
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;-><init>()V

    .line 130
    iput-object p1, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->enemisType:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    .line 131
    iput p0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->waveSize:I

    .line 132
    iput p2, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->ennemisLevelMin:I

    .line 133
    iput p3, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->ennemisLevelMax:I

    .line 134
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->RANDOM:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->popConfig:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    .line 135
    invoke-static {p4}, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;->newTiming(I)Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->nextWaveCondition:Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;

    .line 136
    return-object v0
.end method

.method public static newTimingAndClean(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;
    .registers 7

    .prologue
    .line 156
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;-><init>()V

    .line 157
    iput-object p1, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->enemisType:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    .line 158
    iput p0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->waveSize:I

    .line 159
    iput p2, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->ennemisLevelMin:I

    .line 160
    iput p3, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->ennemisLevelMax:I

    .line 161
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->RANDOM:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->popConfig:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    .line 162
    const/4 v1, 0x0

    invoke-static {p4, v1}, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;->newTimingAndCount(II)Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->nextWaveCondition:Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;

    .line 163
    return-object v0
.end method

.method public static newTimingOrCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;
    .registers 11

    .prologue
    .line 141
    const/4 v5, 0x0

    move v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTimingOrCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;IIII)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v0

    return-object v0
.end method

.method public static newTimingOrCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;IIII)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;
    .registers 8

    .prologue
    .line 145
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;-><init>()V

    .line 146
    iput-object p1, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->enemisType:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    .line 147
    iput p0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->waveSize:I

    .line 148
    iput p2, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->ennemisLevelMin:I

    .line 149
    iput p3, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->ennemisLevelMax:I

    .line 150
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->RANDOM:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->popConfig:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    .line 151
    invoke-static {p4, p5}, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;->newTimingOrEnnemis(II)Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->nextWaveCondition:Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;

    .line 152
    return-object v0
.end method


# virtual methods
.method public asBoss()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;
    .registers 6

    .prologue
    const v4, 0x7f07032c

    .line 93
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->extraConfig:Lfr/testudo/spacecorsair/game/levels/arena/ArenaExtraEnemisConfig;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/arena/ArenaExtraEnemisConfig;->DEFAULT:Lfr/testudo/spacecorsair/game/levels/arena/ArenaExtraEnemisConfig;

    if-ne v0, v1, :cond_1d

    .line 94
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaExtraEnemisConfig;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaExtraEnemisConfig;-><init>(ZFLjava/lang/String;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->extraConfig:Lfr/testudo/spacecorsair/game/levels/arena/ArenaExtraEnemisConfig;

    .line 98
    :goto_19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->isBoss:Z

    .line 99
    return-object p0

    .line 96
    :cond_1d
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->extraConfig:Lfr/testudo/spacecorsair/game/levels/arena/ArenaExtraEnemisConfig;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v1, v4}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaExtraEnemisConfig;->name:Ljava/lang/String;

    goto :goto_19
.end method

.method public asElite()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;
    .registers 2

    .prologue
    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->isElite:Z

    .line 79
    return-object p0
.end method

.method public setLevelRelative()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;
    .registers 2

    .prologue
    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->isEnnemyLevelRelativeToPlayer:Z

    .line 169
    return-object p0
.end method

.method public untilRemains(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;
    .registers 3

    .prologue
    .line 88
    invoke-static {p1}, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;->newEnemisCount(I)Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->nextWaveCondition:Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;

    .line 89
    return-object p0
.end method

.method public withActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->activity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    .line 59
    return-object p0
.end method

.method public withLaserAlteration(Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;
    .registers 2

    .prologue
    .line 63
    iput-object p1, p0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->alterationLaserSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 64
    return-object p0
.end method

.method public withMissileAlteration(Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;
    .registers 2

    .prologue
    .line 68
    iput-object p1, p0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->alterationMissileSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 69
    return-object p0
.end method

.method public withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;
    .registers 2

    .prologue
    .line 83
    iput p1, p0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->wavePopDelayInMilli:I

    .line 84
    return-object p0
.end method

.method public withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;
    .registers 2

    .prologue
    .line 73
    iput-object p1, p0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->popConfig:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    .line 74
    return-object p0
.end method
