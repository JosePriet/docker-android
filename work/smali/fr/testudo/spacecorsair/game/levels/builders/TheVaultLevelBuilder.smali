.class public Lfr/testudo/spacecorsair/game/levels/builders/TheVaultLevelBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GATE_TO_ORION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final LEVEL_MAX:I = 0xd

.field public static final LEVEL_MIN:I = 0xc

.field static final temp:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final theVaultLevelAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lfr/testudo/spacecorsair/engine/Vector2;->ZERO:Lfr/testudo/spacecorsair/engine/Vector2;

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TheVaultLevelBuilder;->GATE_TO_ORION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 70
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TheVaultLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 176
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/builders/TheVaultLevelBuilder$1;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/game/levels/builders/TheVaultLevelBuilder$1;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TheVaultLevelBuilder;->theVaultLevelAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)V
    .registers 1

    .prologue
    .line 26
    invoke-static {p0}, Lfr/testudo/spacecorsair/game/levels/builders/TheVaultLevelBuilder;->addTreasure(Ljava/util/List;)V

    return-void
.end method

.method private static addEnemies(Ljava/util/List;)V
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
    .line 97
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x1e

    if-ge v0, v1, :cond_79

    .line 99
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/TheVaultLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 100
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/TheVaultLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide v2, -0x3f3c780000000000L    # -10000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x40d3880000000000L    # 20000.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    const-wide v4, -0x3f3c780000000000L    # -10000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x40d3880000000000L    # 20000.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 101
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/TheVaultLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/engine/Vector2;->length()F

    move-result v1

    const v2, 0x453b8000    # 3000.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_45

    .line 102
    add-int/lit8 v0, v0, -0x1

    .line 97
    :goto_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    :cond_45
    const/16 v1, 0xc

    const/16 v2, 0xd

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newBasicEnnemisShip(II)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/TheVaultLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 107
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x3fd3333340000000L    # 0.30000001192092896

    cmpg-double v2, v2, v4

    if-gez v2, :cond_75

    .line 108
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecsBuilder;->crit_time_4_20_percent:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specialLaserAlteration:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 109
    const v2, 0x3f333333    # 0.7f

    iput v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->r:F

    .line 110
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->b:F

    .line 111
    const v2, 0x3f19999a    # 0.6f

    iput v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->g:F

    .line 114
    :cond_75
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .line 117
    :cond_79
    const/4 v0, 0x0

    :goto_7a
    const/16 v1, 0x3c

    if-ge v0, v1, :cond_f2

    .line 118
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/TheVaultLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 119
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/TheVaultLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide v2, -0x3f2c780000000000L    # -20000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x40e3880000000000L    # 40000.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    const-wide v4, -0x3f2c780000000000L    # -20000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x40e3880000000000L    # 40000.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 120
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/TheVaultLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/engine/Vector2;->length()F

    move-result v1

    const v2, 0x463b8000    # 12000.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_be

    .line 121
    add-int/lit8 v0, v0, -0x1

    .line 117
    :goto_bb
    add-int/lit8 v0, v0, 0x1

    goto :goto_7a

    .line 124
    :cond_be
    const/16 v1, 0xc

    const/16 v2, 0xd

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newDefensor(II)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/TheVaultLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 126
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x3fd3333340000000L    # 0.30000001192092896

    cmpg-double v2, v2, v4

    if-gez v2, :cond_ee

    .line 127
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecsBuilder;->agility_80_10percent_10sec:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specialLaserAlteration:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 128
    const v2, 0x3f333333    # 0.7f

    iput v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->r:F

    .line 129
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->b:F

    .line 130
    const v2, 0x3f19999a    # 0.6f

    iput v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->g:F

    .line 133
    :cond_ee
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bb

    .line 136
    :cond_f2
    const/4 v0, 0x0

    :goto_f3
    const/16 v1, 0x50

    if-ge v0, v1, :cond_16b

    .line 137
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/TheVaultLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 138
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/TheVaultLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide v2, -0x3f269c0000000000L    # -26000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x40e9640000000000L    # 52000.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    const-wide v4, -0x3f269c0000000000L    # -26000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x40e9640000000000L    # 52000.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 139
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/TheVaultLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/engine/Vector2;->length()F

    move-result v1

    const v2, 0x469c4000    # 20000.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_137

    .line 140
    add-int/lit8 v0, v0, -0x1

    .line 136
    :goto_134
    add-int/lit8 v0, v0, 0x1

    goto :goto_f3

    .line 143
    :cond_137
    const/16 v1, 0xc

    const/16 v2, 0xd

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFrelon(II)Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/TheVaultLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v1

    .line 144
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 145
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x3fd3333340000000L    # 0.30000001192092896

    cmpg-double v2, v2, v4

    if-gez v2, :cond_167

    .line 146
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecsBuilder;->agility_80_10percent_10sec:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specialLaserAlteration:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 147
    const v2, 0x3f333333    # 0.7f

    iput v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->r:F

    .line 148
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->b:F

    .line 149
    const v2, 0x3f19999a    # 0.6f

    iput v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->g:F

    .line 152
    :cond_167
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_134

    .line 155
    :cond_16b
    const/4 v0, 0x0

    :goto_16c
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1e4

    .line 156
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/TheVaultLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 157
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/TheVaultLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide v2, -0x3f22b40000000000L    # -30000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x40ed4c0000000000L    # 60000.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    const-wide v4, -0x3f22b40000000000L    # -30000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x40ed4c0000000000L    # 60000.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 158
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/TheVaultLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/engine/Vector2;->length()F

    move-result v1

    const v2, 0x46c35000    # 25000.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1b0

    .line 159
    add-int/lit8 v0, v0, -0x1

    .line 155
    :goto_1ad
    add-int/lit8 v0, v0, 0x1

    goto :goto_16c

    .line 162
    :cond_1b0
    const/16 v1, 0xc

    const/16 v2, 0xd

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlbatros(II)Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/TheVaultLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v1

    .line 163
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 164
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x3fd3333340000000L    # 0.30000001192092896

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1e0

    .line 165
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecsBuilder;->agility_80_10percent_10sec:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specialLaserAlteration:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 166
    const v2, 0x3f333333    # 0.7f

    iput v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->r:F

    .line 167
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->b:F

    .line 168
    const v2, 0x3f19999a    # 0.6f

    iput v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->g:F

    .line 171
    :cond_1e0
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1ad

    .line 174
    :cond_1e4
    return-void
.end method

.method public static addPortals(Ljava/util/List;)V
    .registers 5
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
    const/4 v3, 0x0

    .line 58
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> orion <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 59
    const-string v1, "orion"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 60
    const-string v1, "> the vault <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 62
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/TheVaultLevelBuilder;->GATE_TO_ORION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 63
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3f200000    # -7.0f

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 64
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 65
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method private static addTreasure(Ljava/util/List;)V
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
    const/4 v1, 0x0

    .line 74
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->theVaultTreasureOne:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->isTreasureAvail(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 75
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    iget-wide v2, v0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->theVaultTresureOneRemaining:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_21

    .line 76
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    const-wide/16 v2, 0x6

    iput-wide v2, v0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->theVaultTresureOneRemaining:J

    :cond_21
    move v0, v1

    .line 78
    :goto_22
    int-to-long v2, v0

    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    iget-wide v4, v4, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->theVaultTresureOneRemaining:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_6b

    .line 79
    sget-object v2, Lfr/testudo/spacecorsair/engine/Vector2;->ZERO:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/TheVaultLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide v4, 0x40db580000000000L    # 28000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x40af400000000000L    # 4000.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v4, v4

    invoke-static {v2, v3, v4, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->getRandomLocationCirclePoint(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;II)V

    .line 81
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRubyAsteroid()Lfr/testudo/spacecorsair/business/world/RubyAsteroid;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/TheVaultLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v4, Lfr/testudo/spacecorsair/engine/Vector2;->ZERO:Lfr/testudo/spacecorsair/engine/Vector2;

    const v5, -0x41666666    # -0.3f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    double-to-float v6, v6

    const v7, 0x3f19999a    # 0.6f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lfr/testudo/spacecorsair/business/world/RubyAsteroid;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/RubyAsteroid;

    move-result-object v2

    .line 82
    const/4 v3, 0x1

    iput-boolean v3, v2, Lfr/testudo/spacecorsair/business/world/RubyAsteroid;->isMissionObjective:Z

    .line 83
    sget-object v3, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->TREASURE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v3, v2, Lfr/testudo/spacecorsair/business/world/RubyAsteroid;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 85
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 89
    :cond_6b
    return-void
.end method

.method public static getTheVaultLevel()Lfr/testudo/spacecorsair/game/levels/Level;
    .registers 4

    .prologue
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/TheVaultLevelBuilder;->addPortals(Ljava/util/List;)V

    .line 42
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/TheVaultLevelBuilder;->addEnemies(Ljava/util/List;)V

    .line 44
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/TheVaultLevelBuilder;->addTreasure(Ljava/util/List;)V

    .line 46
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v1, Lfr/testudo/spacecorsair/game/levels/Level;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->THE_VAULT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/TheVaultLevelBuilder;->theVaultLevelAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-direct {v1, v2, v0, v3}, Lfr/testudo/spacecorsair/game/levels/Level;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/List;Lfr/testudo/spacecorsair/game/levels/LevelAnimator;)V

    .line 49
    const v0, 0x7f060017

    iput v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->musicResourceId:I

    .line 50
    sget-object v0, Lfr/testudo/spacecorsair/display/Background$BackImage;->Black_default:Lfr/testudo/spacecorsair/display/Background$BackImage;

    iput-object v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->backGroundImage:Lfr/testudo/spacecorsair/display/Background$BackImage;

    .line 52
    return-object v1
.end method
