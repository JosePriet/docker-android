.class public Lfr/testudo/spacecorsair/game/levels/builders/OrionLevelBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GATE_TO_OMICRON_SECTOR_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final GATE_TO_SOLAR_FIELD_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final GATE_TO_SOUTH_SECTOR_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final LEVEL_MAX:I = 0xc

.field public static final LEVEL_MIN:I = 0xa

.field private static final basicActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

.field public static final orionAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

.field static final temp:Lfr/testudo/spacecorsair/engine/Vector2;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 35
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x459c4000    # 5000.0f

    const v2, 0x460ca000    # 9000.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OrionLevelBuilder;->GATE_TO_SOLAR_FIELD_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 36
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, -0x39f36000    # -9000.0f

    invoke-direct {v0, v3, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OrionLevelBuilder;->GATE_TO_SOUTH_SECTOR_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 37
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, -0x3a060000    # -8000.0f

    invoke-direct {v0, v1, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OrionLevelBuilder;->GATE_TO_OMICRON_SECTOR_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 100
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OrionLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 102
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;-><init>()V

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/16 v2, 0x2ee0

    invoke-virtual {v1, v3, v3, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/16 v2, 0x9c4

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initIdleDuring(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OrionLevelBuilder;->basicActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    .line 187
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/builders/OrionLevelBuilder$1;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/game/levels/builders/OrionLevelBuilder$1;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OrionLevelBuilder;->orionAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAsteroids(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v4, 0x2ee0

    const v9, 0x3e99999a    # 0.3f

    const/16 v8, 0x2af8

    const/4 v2, 0x0

    .line 92
    const/16 v1, 0x96

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    move-object v0, p0

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v7}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->addRandomAsteroids(Ljava/util/List;IFFIIFZ)V

    .line 93
    const/16 v1, 0xc8

    const v6, 0x3f19999a    # 0.6f

    sget-object v7, Lfr/testudo/spacecorsair/business/ennemis/MineSpec;->MINESPEC_3:Lfr/testudo/spacecorsair/business/ennemis/MineSpec;

    move-object v0, p0

    move v3, v2

    move v4, v8

    move v5, v8

    invoke-static/range {v0 .. v7}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->addRandomMines(Ljava/util/List;IFFIIFLfr/testudo/spacecorsair/business/ennemis/MineSpec;)V

    .line 94
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    mul-double/2addr v0, v4

    double-to-int v1, v0

    move-object v0, p0

    move v3, v2

    move v4, v8

    move v5, v8

    move v6, v9

    invoke-static/range {v0 .. v6}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->addRandomMalachite(Ljava/util/List;IFFIIF)V

    .line 95
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v4

    double-to-int v1, v0

    move-object v0, p0

    move v3, v2

    move v4, v8

    move v5, v8

    move v6, v9

    invoke-static/range {v0 .. v6}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->addRandomRuby(Ljava/util/List;IFFIIF)V

    .line 98
    return-void
.end method

.method public static addEnnemies(Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/16 v13, 0xa

    const/4 v12, 0x0

    const-wide v10, 0x40cf400000000000L    # 16000.0

    const-wide v8, -0x3f40c00000000000L    # -8000.0

    .line 110
    move v0, v1

    :goto_f
    const/16 v2, 0xf

    if-ge v0, v2, :cond_5a

    .line 111
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/OrionLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v12, v12}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 112
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/OrionLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v10

    add-double/2addr v4, v8

    double-to-float v3, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v10

    add-double/2addr v4, v8

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 113
    const/16 v2, 0xc

    invoke-static {v13, v2}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newBasicEnnemisShip(II)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/OrionLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v2

    .line 114
    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/OrionLevelBuilder;->basicActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setActivitySequence(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 115
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v3, v4, v6

    if-lez v3, :cond_54

    .line 116
    sget-object v3, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecsBuilder;->agility_80_10percent_10sec:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v3, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specialLaserAlteration:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 117
    const v3, 0x3f19999a    # 0.6f

    iput v3, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->r:F

    .line 118
    const v3, 0x3f19999a    # 0.6f

    iput v3, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->b:F

    .line 121
    :cond_54
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_5a
    move v0, v1

    .line 125
    :goto_5b
    const/4 v2, 0x3

    if-ge v0, v2, :cond_a2

    .line 126
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/OrionLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v12, v12}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 127
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/OrionLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v10

    add-double/2addr v4, v8

    double-to-float v3, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v10

    add-double/2addr v4, v8

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 128
    const/16 v2, 0xd

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newBasicEnnemisShip(I)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/OrionLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v2

    .line 129
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 130
    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/OrionLevelBuilder;->basicActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setActivitySequence(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 132
    sget-object v3, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecsBuilder;->reload_50pc_20_sec_5poucent:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v3, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specialLaserAlteration:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 133
    const v3, 0x3f666666    # 0.9f

    iput v3, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->r:F

    .line 134
    const v3, 0x3f666666    # 0.9f

    iput v3, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->g:F

    .line 135
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->b:F

    .line 138
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    :cond_a2
    move v0, v1

    .line 144
    :goto_a3
    const/16 v2, 0x19

    if-ge v0, v2, :cond_e9

    .line 145
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/OrionLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v12, v12}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 146
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/OrionLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v10

    add-double/2addr v4, v8

    double-to-float v3, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v10

    add-double/2addr v4, v8

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 147
    const/16 v2, 0xc

    invoke-static {v13, v2}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newTaupe(II)Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/OrionLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v2

    .line 148
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v3, v4, v6

    if-lez v3, :cond_e3

    .line 149
    sget-object v3, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecsBuilder;->agility_80_10percent_10sec:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v3, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specialLaserAlteration:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 150
    const v3, 0x3f19999a    # 0.6f

    iput v3, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->r:F

    .line 151
    const v3, 0x3f19999a    # 0.6f

    iput v3, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->b:F

    .line 154
    :cond_e3
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_a3

    :cond_e9
    move v2, v1

    .line 160
    :goto_ea
    if-ge v2, v13, :cond_11d

    .line 161
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OrionLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v12, v12}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 162
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OrionLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v10

    add-double/2addr v4, v8

    double-to-float v3, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v10

    add-double/2addr v4, v8

    double-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 163
    const/16 v0, 0xc

    invoke-static {v13, v0}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newRocketTourelle(II)Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;

    move-result-object v0

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/OrionLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v3}, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;

    .line 164
    sget-object v3, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecsBuilder;->poison_200dmg_30_proba:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v3, v0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->specialMissileAlteration:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 165
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_ea

    .line 170
    :cond_11d
    :goto_11d
    if-ge v1, v13, :cond_164

    .line 171
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OrionLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v12, v12}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 172
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OrionLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v10

    add-double/2addr v2, v8

    double-to-float v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v10

    add-double/2addr v4, v8

    double-to-float v3, v4

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 173
    const/16 v0, 0xc

    invoke-static {v13, v0}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newFixedTourelle(II)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/OrionLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    .line 174
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v2, v4

    if-lez v2, :cond_15d

    .line 175
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecsBuilder;->snare50_30percent_10sec:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->specialLaserAlteration:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 176
    const v2, 0x3f333333    # 0.7f

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->r:F

    .line 177
    const v2, 0x3f333333    # 0.7f

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->g:F

    .line 180
    :cond_15d
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11d

    .line 184
    :cond_164
    return-void
.end method

.method public static addPortals(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/high16 v4, 0x40e00000    # 7.0f

    const/4 v3, 0x0

    .line 59
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> solar field <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 60
    const-string v1, "solar field"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 61
    const-string v1, "> orion <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 63
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/OrionLevelBuilder;->GATE_TO_SOLAR_FIELD_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 64
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3f200000    # -7.0f

    invoke-virtual {v1, v3, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 65
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 66
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> the vault <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 70
    const-string v1, "the vault"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 71
    const-string v1, "> orion <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 73
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/OrionLevelBuilder;->GATE_TO_SOUTH_SECTOR_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 74
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 75
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 76
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> omicron prime <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 80
    const-string v1, "omicron prime"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 81
    const-string v1, "> orion <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 83
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/OrionLevelBuilder;->GATE_TO_OMICRON_SECTOR_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 84
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v4, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 85
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 86
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public static getOrionLevel()Lfr/testudo/spacecorsair/game/levels/Level;
    .registers 4

    .prologue
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/OrionLevelBuilder;->addPortals(Ljava/util/List;)V

    .line 45
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/OrionLevelBuilder;->addAsteroids(Ljava/util/List;)V

    .line 46
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/OrionLevelBuilder;->addEnnemies(Ljava/util/List;)V

    .line 48
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v1, Lfr/testudo/spacecorsair/game/levels/Level;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->ORION:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/OrionLevelBuilder;->orionAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-direct {v1, v2, v0, v3}, Lfr/testudo/spacecorsair/game/levels/Level;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/List;Lfr/testudo/spacecorsair/game/levels/LevelAnimator;)V

    .line 51
    const v0, 0x7f060029

    iput v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->musicResourceId:I

    .line 52
    sget-object v0, Lfr/testudo/spacecorsair/display/Background$BackImage;->Black_default:Lfr/testudo/spacecorsair/display/Background$BackImage;

    iput-object v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->backGroundImage:Lfr/testudo/spacecorsair/display/Background$BackImage;

    .line 54
    return-object v1
.end method
