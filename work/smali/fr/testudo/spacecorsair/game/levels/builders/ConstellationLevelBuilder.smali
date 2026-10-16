.class public Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder$2;
    }
.end annotation


# static fields
.field public static final GATE_TO_HELIOSTAT_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final GATE_TO_PIRATEBAT_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final GATE_TO_VENTOHIGH_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final HELIO_ESCAPE:Lfr/testudo/spacecorsair/engine/Vector2;

.field static final HELIO_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

.field public static final HELO_TO_VENTO:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

.field public static final LEVEL_MAX:I = 0x5

.field public static final LEVEL_MIN:I = 0x4

.field public static final PIRATE_ESCAPE:Lfr/testudo/spacecorsair/engine/Vector2;

.field static final PIRATE_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

.field public static final POP_FROM_PIRATE_ACTIVITY:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

.field public static final SMUGGLER:Ljava/lang/String;

.field public static final TEST_ACTIVITY:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

.field private static TREASURE_ACTIVITY:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

.field private static final TREASURE_ONE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final VENTO_ESCAPE:Lfr/testudo/spacecorsair/engine/Vector2;

.field static final VENTO_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

.field public static final VENTO_TO_HELO_CIVIL_ACTIVITY:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

.field private static myAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

.field private static treasureOne:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x43480000    # 200.0f

    const/high16 v6, -0x3b060000    # -2000.0f

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 81
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, -0x39c48000    # -12000.0f

    invoke-direct {v0, v4, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->TREASURE_ONE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 83
    const/4 v0, 0x4

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    const/high16 v1, 0x45fa0000    # 8000.0f

    const/high16 v2, -0x39860000    # -16000.0f

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(FF)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v5

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x2

    const v2, -0x3a254000    # -7000.0f

    const v3, -0x39c48000    # -12000.0f

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(FF)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->TREASURE_ACTIVITY:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    .line 85
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702bf

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->SMUGGLER:Ljava/lang/String;

    .line 156
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, -0x3a860000    # -4000.0f

    const v2, 0x450fc000    # 2300.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->GATE_TO_VENTOHIGH_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 157
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x45bb8000    # 6000.0f

    invoke-direct {v0, v1, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->GATE_TO_PIRATEBAT_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 158
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x447a0000    # 1000.0f

    const v2, 0x45dac000    # 7000.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->GATE_TO_HELIOSTAT_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 160
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->GATE_TO_PIRATEBAT_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v1, v7

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->GATE_TO_PIRATEBAT_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x43c80000    # 400.0f

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->PIRATE_ESCAPE:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 161
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->GATE_TO_VENTOHIGH_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v1, v7

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->GATE_TO_VENTOHIGH_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x44960000    # 1200.0f

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->VENTO_ESCAPE:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 162
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->GATE_TO_HELIOSTAT_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v2, 0x44960000    # 1200.0f

    add-float/2addr v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->GATE_TO_HELIOSTAT_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float/2addr v2, v7

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->HELIO_ESCAPE:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 164
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->GATE_TO_PIRATEBAT_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0}, Lfr/testudo/spacecorsair/engine/PopPoint;->newRight(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/PopPoint;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->PIRATE_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

    .line 167
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->GATE_TO_VENTOHIGH_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0}, Lfr/testudo/spacecorsair/engine/PopPoint;->newLeft(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/PopPoint;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->VENTO_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

    .line 168
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->GATE_TO_HELIOSTAT_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0}, Lfr/testudo/spacecorsair/engine/PopPoint;->newTop(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/PopPoint;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->HELIO_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

    .line 171
    const/4 v0, 0x4

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->VENTO_ESCAPE:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v5

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->GATE_TO_HELIOSTAT_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newDiseapear()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->VENTO_TO_HELO_CIVIL_ACTIVITY:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    .line 178
    const/4 v0, 0x5

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->HELIO_ESCAPE:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v5

    const/high16 v1, -0x3b860000    # -1000.0f

    const/high16 v2, 0x44fa0000    # 2000.0f

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(FF)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x2

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->GATE_TO_VENTOHIGH_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newDiseapear()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->HELO_TO_VENTO:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    .line 187
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;-><init>()V

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    invoke-virtual {v1, v4, v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoPoint(FF)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

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

    const/16 v2, 0x1388

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initRandomCivilAttack(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    invoke-virtual {v1, v6, v6}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoPoint(FF)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    invoke-virtual {v1, v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initJumpTo(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->TEST_ACTIVITY:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    .line 195
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;-><init>()V

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->PIRATE_ESCAPE:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoPoint(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    invoke-virtual {v1, v4, v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoPoint(FF)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/16 v2, 0x7d0

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initRandomCivilAttack(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/high16 v2, 0x44fa0000    # 2000.0f

    invoke-virtual {v1, v6, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoPoint(FF)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

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

    const/high16 v2, -0x3a860000    # -4000.0f

    invoke-virtual {v1, v4, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoPoint(FF)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->GATE_TO_PIRATEBAT_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoPoint(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/16 v2, 0x190

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

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->POP_FROM_PIRATE_ACTIVITY:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    .line 207
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder$1;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder$1;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->myAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    return-void
.end method

.method static synthetic access$000()Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    return-object v0
.end method

.method static synthetic access$002(Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;)Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;
    .registers 1

    .prologue
    .line 31
    sput-object p0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    return-object p0
.end method

.method static synthetic access$100(Ljava/util/List;)V
    .registers 1

    .prologue
    .line 31
    invoke-static {p0}, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->enableTresureOneIfPossible(Ljava/util/List;)V

    return-void
.end method

.method private static addAsteroids(Ljava/util/List;)V
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
    .line 60
    new-instance v1, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    .line 61
    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    .line 63
    const/4 v0, 0x0

    :goto_b
    const/16 v3, 0x32

    if-ge v0, v3, :cond_6f

    .line 64
    const-wide v4, -0x3f48900000000000L    # -6000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x40c7700000000000L    # 12000.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    const-wide v4, -0x3f48900000000000L    # -6000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x40c7700000000000L    # 12000.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 65
    const-wide v4, -0x401ccccccccccccdL    # -0.6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    const-wide v4, -0x401ccccccccccccdL    # -0.6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 66
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomSizeAsteroid()Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v3

    const-wide/high16 v4, -0x4020000000000000L    # -0.5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-float v4, v4

    invoke-virtual {v3, v1, v2, v4}, Lfr/testudo/spacecorsair/business/world/Asteroid;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 72
    :cond_6f
    return-void
.end method

.method private static addEnnemies(Ljava/util/List;)V
    .registers 1
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
    .line 76
    invoke-static {p0}, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->addTourelles(Ljava/util/List;)V

    .line 78
    return-void
.end method

.method private static addPortals(Ljava/util/List;)V
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
    const/high16 v4, -0x3f200000    # -7.0f

    const/4 v3, 0x0

    .line 125
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> ventohigh <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 126
    const-string v1, "ventohigh"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 127
    const-string v1, "> constellation <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 129
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->GATE_TO_VENTOHIGH_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 130
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 131
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 132
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> pirate bay <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 136
    const-string v1, "pirate bay"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 137
    const-string v1, "> constellation <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 139
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->GATE_TO_PIRATEBAT_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 140
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v4, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 141
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 142
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> heliostat <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 146
    const-string v1, "heliostat"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 147
    const-string v1, "> constellation <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 149
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->GATE_TO_HELIOSTAT_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 150
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 151
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 152
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method

.method private static addTourelles(Ljava/util/List;)V
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
    .line 111
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_DESTROY_TOURELLES_CONSTELL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->hasDoneMission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 114
    new-instance v1, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    .line 115
    const/4 v0, 0x0

    :goto_12
    const/16 v2, 0xf

    if-ge v0, v2, :cond_4b

    .line 116
    const-wide v2, -0x3f50c00000000000L    # -4000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x40c1940000000000L    # 9000.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    const-wide v4, -0x3f4c780000000000L    # -5000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 117
    const/4 v2, 0x4

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFixedTourelle(II)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v2

    invoke-virtual {v2, v1}, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 120
    :cond_4b
    return-void
.end method

.method private static enableTresureOneIfPossible(Ljava/util/List;)V
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
    const/high16 v3, 0x3f800000    # 1.0f

    const v2, 0x3f333333    # 0.7f

    .line 88
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->constellationTreasureOne:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->isTreasureAvail(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 90
    const/4 v0, 0x6

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newTrasnporteur(I)Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    .line 91
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->TREASURE_ONE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    .line 93
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->TREASURE_ACTIVITY:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 94
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->TREASURE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 95
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->isMissionObjective:Z

    .line 96
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->SMUGGLER:Ljava/lang/String;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->specificName:Ljava/lang/String;

    .line 97
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->station_pirate_5a10:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 98
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    iput v3, v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->r:F

    .line 99
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    iput v2, v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->g:F

    .line 100
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    iput v2, v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->b:F

    .line 101
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    iput v3, v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->a:F

    .line 103
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_52
    return-void
.end method

.method public static getConstellation()Lfr/testudo/spacecorsair/game/levels/Level;
    .registers 4

    .prologue
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->addPortals(Ljava/util/List;)V

    .line 42
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->addAsteroids(Ljava/util/List;)V

    .line 44
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->addEnnemies(Ljava/util/List;)V

    .line 46
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->enableTresureOneIfPossible(Ljava/util/List;)V

    .line 48
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v1, Lfr/testudo/spacecorsair/game/levels/Level;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->CONSTELLATION:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->myAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-direct {v1, v2, v0, v3}, Lfr/testudo/spacecorsair/game/levels/Level;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/List;Lfr/testudo/spacecorsair/game/levels/LevelAnimator;)V

    .line 51
    const v0, 0x7f060029

    iput v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->musicResourceId:I

    .line 53
    return-object v1
.end method
