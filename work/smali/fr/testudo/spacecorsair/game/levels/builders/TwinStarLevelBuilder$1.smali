.class final Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder$1;
.super Lfr/testudo/spacecorsair/game/levels/LevelAnimator;
.source "SourceFile"


# instance fields
.field private final fromHugoToVentoAcivity:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

.field private final fromVentoToHugoAcivity:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

.field private nextPopActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

.field private nextPopType:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

.field pirateSequenceCenterThenHugo:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

.field pirateSequenceTightThenBack:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

.field private remainingPopStation1:I


# direct methods
.method constructor <init>()V
    .registers 11

    .prologue
    const v9, -0x39a54000    # -14000.0f

    const v8, -0x39d42000    # -11000.0f

    const/4 v7, 0x0

    const/high16 v6, 0x45fa0000    # 8000.0f

    const/4 v5, 0x0

    .line 188
    invoke-direct {p0}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;-><init>()V

    .line 191
    const/4 v0, 0x6

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->HUGO_ESCAPE_POINT:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x1

    const v2, 0x453b8000    # 3000.0f

    invoke-static {v5, v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(FF)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, -0x3a63c000    # -5000.0f

    invoke-static {v6, v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(FF)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->GATE_TO_VENTOHIGH_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newDiseapear()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder$1;->fromHugoToVentoAcivity:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    .line 200
    const/4 v0, 0x6

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->VENTO_ESCAPE_POINT:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x1

    const v2, 0x460ca000    # 9000.0f

    invoke-static {v5, v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(FF)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, -0x39e3c000    # -10000.0f

    invoke-static {v2, v6}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(FF)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->GATE_TO_HUGO_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newDiseapear()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder$1;->fromVentoToHugoAcivity:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    .line 210
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;-><init>()V

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    invoke-virtual {v1, v9, v8}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoPoint(FF)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/16 v2, 0x320

    invoke-virtual {v1, v5, v5, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const v2, 0x453b8000    # 3000.0f

    const v3, 0x459c4000    # 5000.0f

    const/16 v4, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initIdleDuring(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

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

    const v2, 0x45bb8000    # 6000.0f

    const v3, 0x45dac000    # 7000.0f

    const/16 v4, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/16 v2, 0x1388

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initIdleDuring(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const v2, -0x39b4e000    # -13000.0f

    invoke-virtual {v1, v2, v6}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoPoint(FF)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->GATE_TO_HUGO_POS:Lfr/testudo/spacecorsair/engine/Vector2;

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

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder$1;->pirateSequenceCenterThenHugo:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    .line 224
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;-><init>()V

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    invoke-virtual {v1, v9, v8}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoPoint(FF)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/high16 v2, -0x3a860000    # -4000.0f

    const/16 v3, 0x320

    invoke-virtual {v1, v5, v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initIdleDuring(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const v2, 0x463b8000    # 12000.0f

    const v3, -0x3a254000    # -7000.0f

    const/16 v4, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/16 v2, 0x1388

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initIdleDuring(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/16 v2, 0xfa0

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initRandomCivilAttack(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const v2, -0x3995a000    # -15000.0f

    invoke-virtual {v1, v5, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoPoint(FF)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const v2, -0x3995a000    # -15000.0f

    const/high16 v3, -0x39860000    # -16000.0f

    const/16 v4, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initIdleDuring(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    # getter for: Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->INTERNAL_STATION_DECK:Lfr/testudo/spacecorsair/engine/Vector2;
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->access$000()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoPoint(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initIdleDuring(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initJumpHyperspace()Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder$1;->pirateSequenceTightThenBack:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    .line 240
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder$1;->nextPopType:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder$1;->nextPopActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    .line 242
    iput v7, p0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder$1;->remainingPopStation1:I

    return-void
.end method

.method private checkPopEnnemisStation(Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;)V
    .registers 6

    .prologue
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 277
    if-eqz p1, :cond_9

    iget-boolean v0, p1, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->removed:Z

    if-eqz v0, :cond_9

    .line 278
    const/4 p1, 0x0

    .line 280
    :cond_9
    if-eqz p1, :cond_14

    .line 281
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    mul-double/2addr v0, v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder$1;->remainingPopStation1:I

    .line 285
    :cond_14
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3fe4cccccccccccdL    # 0.65

    cmpl-double v0, v0, v2

    if-lez v0, :cond_34

    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->DEFENSOR:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    :goto_23
    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder$1;->nextPopType:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    .line 286
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v2

    if-lez v0, :cond_37

    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder$1;->pirateSequenceCenterThenHugo:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    :goto_31
    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder$1;->nextPopActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    .line 288
    return-void

    .line 285
    :cond_34
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    goto :goto_23

    .line 286
    :cond_37
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder$1;->pirateSequenceTightThenBack:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    goto :goto_31
.end method

.method private popEnnemiesFromStation()V
    .registers 6

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    .line 304
    sget-object v0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->stationRelativePop:[Lfr/testudo/spacecorsair/engine/PopPoint;

    iget v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder$1;->remainingPopStation1:I

    sget-object v2, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->stationRelativePop:[Lfr/testudo/spacecorsair/engine/PopPoint;

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v1, v0, v1

    .line 307
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder$2;->$SwitchMap$fr$testudo$spacecorsair$business$ennemis$EnnemisType:[I

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder$1;->nextPopType:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_52

    .line 312
    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newBasicEnnemisShip(II)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;

    move-result-object v0

    .line 319
    :goto_1d
    iget-object v2, p0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder$1;->nextPopActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setActivitySequence(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 322
    const-string v2, "pirate"

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    .line 323
    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->applyPopPoint(Lfr/testudo/spacecorsair/engine/PopPoint;)Lfr/testudo/spacecorsair/business/Element;

    .line 324
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->PIRATE_STATION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 325
    iget v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder$1;->remainingPopStation1:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder$1;->remainingPopStation1:I

    .line 326
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 327
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->pirateStation1:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->distanceToPlayer:F

    const/high16 v1, 0x44fa0000    # 2000.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4c

    .line 328
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playMissileStart()V

    .line 330
    :cond_4c
    return-void

    .line 309
    :pswitch_4d
    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newDefensor(II)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v0

    goto :goto_1d

    .line 307
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_4d
    .end packed-switch
.end method

.method private tryPopCivilian()V
    .registers 9

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    .line 259
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    cmpg-double v0, v0, v2

    if-gez v0, :cond_10

    .line 271
    :goto_f
    return-void

    .line 262
    :cond_10
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    cmpl-double v0, v0, v2

    if-lez v0, :cond_31

    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilType;->SQUID:Lfr/testudo/spacecorsair/business/world/civil/CivilType;

    .line 264
    :goto_1f
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, v2, v4

    if-lez v1, :cond_34

    .line 265
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->VENTO_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder$1;->fromVentoToHugoAcivity:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-static {v0, v1, v2, v6, v7}, Lfr/testudo/spacecorsair/game/levels/CivilAnimatorHelper;->addCivilFromXWithActivity(Lfr/testudo/spacecorsair/business/world/civil/CivilType;Lfr/testudo/spacecorsair/engine/PopPoint;[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;II)V

    goto :goto_f

    .line 262
    :cond_31
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilType;->TRANSPORTEUR:Lfr/testudo/spacecorsair/business/world/civil/CivilType;

    goto :goto_1f

    .line 268
    :cond_34
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->HUGO_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder$1;->fromHugoToVentoAcivity:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-static {v0, v1, v2, v6, v7}, Lfr/testudo/spacecorsair/game/levels/CivilAnimatorHelper;->addCivilFromXWithActivity(Lfr/testudo/spacecorsair/business/world/civil/CivilType;Lfr/testudo/spacecorsair/engine/PopPoint;[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;II)V

    goto :goto_f
.end method


# virtual methods
.method public onEverySecond()V
    .registers 2

    .prologue
    .line 296
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder$1;->remainingPopStation1:I

    if-lez v0, :cond_7

    .line 297
    invoke-direct {p0}, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder$1;->popEnnemiesFromStation()V

    .line 300
    :cond_7
    return-void
.end method

.method public onEveryTenSec()V
    .registers 1

    .prologue
    .line 337
    return-void
.end method

.method public onEveryThirtySec()V
    .registers 2

    .prologue
    .line 249
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->pirateStation1:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder$1;->checkPopEnnemisStation(Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;)V

    .line 251
    invoke-direct {p0}, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder$1;->tryPopCivilian()V

    .line 253
    return-void
.end method
