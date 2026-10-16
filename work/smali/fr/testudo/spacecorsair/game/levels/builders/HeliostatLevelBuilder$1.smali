.class final Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder$1;
.super Lfr/testudo/spacecorsair/game/levels/LevelAnimator;
.source "SourceFile"


# instance fields
.field final hermesTripAndGoBackActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

.field remainingEnnemisToPop:I

.field final transporteurToStationAndGoBack:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;


# direct methods
.method constructor <init>()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x41000000    # 8.0f

    .line 174
    invoke-direct {p0}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;-><init>()V

    .line 177
    iput v6, p0, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder$1;->remainingEnnemisToPop:I

    .line 191
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;-><init>()V

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->GATE_TO_HERMES_SORTIE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoPoint(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const v2, -0x3ac48000    # -3000.0f

    const v3, 0x453b8000    # 3000.0f

    const/16 v4, 0x1194

    invoke-virtual {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initRandomCivilAttack(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->GATE_TO_HERMES_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoPoint(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initJumpHyperspace()Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder$1;->hermesTripAndGoBackActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    .line 208
    const/16 v0, 0x9

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->GATE_TO_CONSTELLATION_SORTIE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x1

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->SOLAR_PLAN_TWO_TRANSPORT_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {v5}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->SOLAR_PLAN_ONE_TRANSPORT_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {v5}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->SOLAR_PLAN_THREE_TRANSPORT_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->GATE_TO_CONSTELLATION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newDiseapear()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder$1;->transporteurToStationAndGoBack:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    return-void
.end method

.method private addTransportToSolarPlanFromConstellation()V
    .registers 6

    .prologue
    .line 223
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilType;->TRANSPORTEUR:Lfr/testudo/spacecorsair/business/world/civil/CivilType;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->CONSTELLATION_POP_POINT:Lfr/testudo/spacecorsair/engine/PopPoint;

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder$1;->transporteurToStationAndGoBack:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    const/4 v3, 0x4

    const/4 v4, 0x5

    invoke-static {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/game/levels/CivilAnimatorHelper;->addCivilFromXWithActivity(Lfr/testudo/spacecorsair/business/world/civil/CivilType;Lfr/testudo/spacecorsair/engine/PopPoint;[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;II)V

    .line 224
    return-void
.end method

.method private popEnnemisFromHermes()V
    .registers 3

    .prologue
    .line 201
    const/4 v0, 0x4

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newBasicEnnemisShip(II)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;

    move-result-object v0

    .line 202
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->HERMES_POP_POINT:Lfr/testudo/spacecorsair/engine/PopPoint;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->applyPopPoint(Lfr/testudo/spacecorsair/engine/PopPoint;)Lfr/testudo/spacecorsair/business/Element;

    .line 203
    sget-object v1, Lfr/testudo/spacecorsair/business/world/UniverseName;->PATHFINDER_LOCALIZED:Ljava/lang/String;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->specificName:Ljava/lang/String;

    .line 204
    iget-object v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder$1;->hermesTripAndGoBackActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->setActivitySequence(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 205
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 206
    return-void
.end method


# virtual methods
.method public onEverySecond()V
    .registers 2

    .prologue
    .line 182
    invoke-super {p0}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;->onEverySecond()V

    .line 183
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder$1;->remainingEnnemisToPop:I

    if-lez v0, :cond_10

    .line 184
    invoke-direct {p0}, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder$1;->popEnnemisFromHermes()V

    .line 185
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder$1;->remainingEnnemisToPop:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder$1;->remainingEnnemisToPop:I

    .line 188
    :cond_10
    return-void
.end method

.method public onEveryThirtySec()V
    .registers 5

    .prologue
    .line 229
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3fe3333340000000L    # 0.6000000238418579

    cmpl-double v0, v0, v2

    if-lez v0, :cond_19

    .line 230
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder$1;->remainingEnnemisToPop:I

    .line 233
    :cond_19
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v2

    if-lez v0, :cond_26

    .line 234
    invoke-direct {p0}, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder$1;->addTransportToSolarPlanFromConstellation()V

    .line 237
    :cond_26
    return-void
.end method
