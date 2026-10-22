.class public Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder$2;
    }
.end annotation


# static fields
.field public static ALBATROS_PATROLL:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence; = null

.field public static final CONTREBANDE_STATION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static DEFENSOR_PATROLL:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence; = null

.field public static FRELON_PATROLL:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence; = null

.field public static final GATE_TO_SOLAR_FIELD_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final GATE_TO_THE_WAVE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final LEVEL_MAX:I = 0xc

.field public static final LEVEL_MIN:I = 0x9

.field private static final SMUGLER_STATION_NAME:Ljava/lang/String;

.field public static final SOLAR_PLAN_NAME:Ljava/lang/String;

.field public static final SOLAR_PLAN_ONE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final SOLAR_PLAN_THREE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final SOLAR_PLAN_TWO_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static solarAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

.field public static temp:Lfr/testudo/spacecorsair/engine/Vector2;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const v9, 0x45dac000    # 7000.0f

    const/high16 v8, 0x44fa0000    # 2000.0f

    const/16 v7, 0xbb8

    const/16 v6, 0xfa0

    const/4 v5, 0x0

    .line 36
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x466a6000    # 15000.0f

    const v2, 0x460ca000    # 9000.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->GATE_TO_THE_WAVE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 37
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, -0x3ac48000    # -3000.0f

    const v2, -0x3a63c000    # -5000.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->GATE_TO_SOLAR_FIELD_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 39
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, -0x3a060000    # -8000.0f

    const v2, -0x3a63c000    # -5000.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->CONTREBANDE_STATION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 41
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x461c4000    # 10000.0f

    const v2, 0x45bb8000    # 6000.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->SOLAR_PLAN_ONE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 42
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-direct {v0, v1, v9}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->SOLAR_PLAN_TWO_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 43
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, -0x3a060000    # -8000.0f

    const v2, 0x459c4000    # 5000.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->SOLAR_PLAN_THREE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 45
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702dc

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->SOLAR_PLAN_NAME:Ljava/lang/String;

    .line 47
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702b8

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->SMUGLER_STATION_NAME:Ljava/lang/String;

    .line 117
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;-><init>()V

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    invoke-virtual {v1, v5, v5, v7}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    invoke-virtual {v1, v6}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initIdleDuring(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->GATE_TO_SOLAR_FIELD_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->GATE_TO_SOLAR_FIELD_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/16 v4, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/16 v2, 0x36b0

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initIdleDuring(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/high16 v2, -0x3a860000    # -4000.0f

    const v3, 0x453b8000    # 3000.0f

    const/16 v4, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/16 v2, 0x5dc0

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initIdleDuring(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const v2, 0x46435000    # 12500.0f

    const/16 v3, 0x1b58

    invoke-virtual {v1, v2, v8, v3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->ALBATROS_PATROLL:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    .line 128
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;-><init>()V

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/high16 v2, 0x447a0000    # 1000.0f

    invoke-virtual {v1, v2, v5, v6}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    invoke-virtual {v1, v6}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initIdleDuring(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const v2, 0x459c4000    # 5000.0f

    const/16 v3, 0x3e8

    invoke-virtual {v1, v2, v8, v3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/16 v2, 0x36b0

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initIdleDuring(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const v2, -0x3ac48000    # -3000.0f

    const/high16 v3, -0x3b060000    # -2000.0f

    invoke-virtual {v1, v2, v3, v7}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/16 v2, 0x5dc0

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initIdleDuring(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    invoke-virtual {v1, v9, v5, v7}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->FRELON_PATROLL:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    .line 138
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;-><init>()V

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const v2, 0x461c4000    # 10000.0f

    invoke-virtual {v1, v2, v5, v6}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    invoke-virtual {v1, v9, v8, v6}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const v2, 0x453b8000    # 3000.0f

    const v3, -0x3a448000    # -6000.0f

    invoke-virtual {v1, v2, v3, v7}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->DEFENSOR_PATROLL:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    .line 144
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 248
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder$1;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder$1;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->solarAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->SMUGLER_STATION_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static addAsteroids(Ljava/util/List;)V
    .registers 10
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
    const v2, 0x45bb8000    # 6000.0f

    const/high16 v3, 0x447a0000    # 1000.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/16 v4, 0x2710

    .line 108
    const/16 v1, 0x190

    const/16 v5, 0x1b58

    const/4 v7, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->addRandomAsteroids(Ljava/util/List;IFFIIFZ)V

    .line 109
    const/16 v1, 0x28

    const/16 v5, 0x1b58

    sget-object v7, Lfr/testudo/spacecorsair/business/ennemis/MineSpec;->MINESPEC_3:Lfr/testudo/spacecorsair/business/ennemis/MineSpec;

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->addRandomMines(Ljava/util/List;IFFIIFLfr/testudo/spacecorsair/business/ennemis/MineSpec;)V

    .line 111
    const/4 v1, 0x3

    const/16 v5, 0x2328

    const v6, 0x3e99999a    # 0.3f

    move-object v0, p0

    move v2, v8

    move v3, v8

    invoke-static/range {v0 .. v6}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->addEpaveAlbatros(Ljava/util/List;IFFIIF)V

    .line 114
    return-void
.end method

.method public static addEnnemies(Ljava/util/List;)V
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
    .line 149
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3fe3333333333333L    # 0.6

    cmpl-double v0, v0, v2

    if-lez v0, :cond_4e

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->level:I

    const/16 v1, 0xd

    if-gt v0, v1, :cond_4e

    .line 150
    const/16 v0, 0xa

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newAlbatros(I)Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    move-result-object v0

    const-wide v2, -0x3f60c00000000000L    # -2000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x40af400000000000L    # 4000.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    const-wide v2, -0x3f60c00000000000L    # -2000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x40af400000000000L    # 4000.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->setPosition(FF)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v1

    move-object v0, v1

    .line 151
    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->ALBATROS_PATROLL:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->setActivitySequence(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 152
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_4e
    const/4 v0, 0x0

    :goto_4f
    const/16 v1, 0x28

    if-ge v0, v1, :cond_98

    .line 159
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    const v2, 0x45bb8000    # 6000.0f

    const/high16 v3, 0x447a0000    # 1000.0f

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 160
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide v2, -0x3f40c00000000000L    # -8000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x40cf400000000000L    # 16000.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    const-wide v4, -0x3f48900000000000L    # -6000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x40c7700000000000L    # 12000.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 161
    const/16 v1, 0x9

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newTaupe(II)Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    .line 167
    :cond_98
    const/4 v0, 0x0

    move v1, v0

    :goto_9a
    const/4 v0, 0x2

    if-ge v1, v0, :cond_ea

    .line 168
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    const v2, 0x45bb8000    # 6000.0f

    const/high16 v3, -0x3b860000    # -1000.0f

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 169
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide v2, -0x3f4c780000000000L    # -5000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    const-wide v4, -0x3f50c00000000000L    # -4000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x40bf400000000000L    # 8000.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 170
    const/16 v0, 0x9

    const/16 v2, 0xc

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newFrelon(II)Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    .line 171
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->FRELON_PATROLL:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->setActivitySequence(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 172
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9a

    .line 178
    :cond_ea
    const/4 v0, 0x0

    move v1, v0

    :goto_ec
    const/4 v0, 0x4

    if-ge v1, v0, :cond_13b

    .line 179
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    const v2, 0x461c4000    # 10000.0f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 180
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide v2, -0x3f50c00000000000L    # -4000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x40bf400000000000L    # 8000.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    const-wide v4, -0x3f50c00000000000L    # -4000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x40bf400000000000L    # 8000.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 181
    const/16 v0, 0x9

    const/16 v2, 0xc

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newDefensor(II)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    .line 182
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->DEFENSOR_PATROLL:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->setActivitySequence(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 183
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_ec

    .line 189
    :cond_13b
    const/4 v0, 0x0

    move v1, v0

    :goto_13d
    const/16 v0, 0x14

    if-ge v1, v0, :cond_189

    .line 190
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    const v2, 0x45bb8000    # 6000.0f

    const/high16 v3, 0x447a0000    # 1000.0f

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 191
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide v2, -0x3f40c00000000000L    # -8000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x40cf400000000000L    # 16000.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    const-wide v4, -0x3f48900000000000L    # -6000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x40c7700000000000L    # 12000.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 192
    const/16 v0, 0x9

    const/16 v2, 0xc

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newRocketTourelle(II)Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;

    .line 193
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13d

    .line 198
    :cond_189
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

    .line 84
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> the wave <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 85
    const-string v1, "the wave"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 86
    const-string v1, "> solar field <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 88
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->GATE_TO_THE_WAVE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 89
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3f200000    # -7.0f

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 90
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 91
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> orion <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 95
    const-string v1, "orion"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 96
    const-string v1, "> solar field <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 98
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->GATE_TO_SOLAR_FIELD_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 99
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-virtual {v1, v3, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 100
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 101
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method public static addStation(Ljava/util/List;)V
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
    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    .line 202
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newSolarPlan()Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->SOLAR_PLAN_ONE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->SOLAR_PLAN_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;

    move-result-object v0

    .line 203
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->energyCell:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 204
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->buyList:Ljava/util/List;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_SELLABLE_BY_PLAYER:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 205
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newSolarPlan()Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->SOLAR_PLAN_TWO_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->SOLAR_PLAN_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;

    move-result-object v0

    .line 208
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->energyCell:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 209
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->instaRepair:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 210
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->buyList:Ljava/util/List;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_SELLABLE_BY_PLAYER:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 211
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newSolarPlan()Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->SOLAR_PLAN_THREE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->SOLAR_PLAN_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;

    move-result-object v0

    .line 215
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->energyCell:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 216
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->buyList:Ljava/util/List;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_SELLABLE_BY_PLAYER:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 217
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newBasicTradeStation()Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->CONTREBANDE_STATION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->SMUGLER_STATION_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;

    move-result-object v2

    .line 222
    iput v4, v2, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->r:F

    .line 223
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v2, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->g:F

    .line 224
    iput v4, v2, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->b:F

    .line 226
    iput-boolean v1, v2, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->isSpeciale:Z

    .line 228
    iget-object v0, v2, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->buyList:Ljava/util/List;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_SELLABLE_BY_PLAYER:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 229
    iget-object v0, v2, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->buyList:Ljava/util/List;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->prisonner:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->solarFieldSmugglerPos:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v3}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->isMapOrTreasureUnlocked(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v0

    if-nez v0, :cond_eb

    move v0, v1

    :goto_a2
    iput-boolean v0, v2, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->mapHidden:Z

    .line 232
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->solarFieldSmugglerPos:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v3}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->isMapOrTreasureUnlocked(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v0

    iput-boolean v0, v2, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->drawOnRadar:Z

    .line 234
    iget-object v0, v2, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->periousShieldLevel13:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 235
    iget-object v0, v2, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 236
    iget-object v0, v2, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->instaRepair:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v3, v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 237
    iget-object v0, v2, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->solitaireLaserLevel12:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 238
    iget-object v0, v2, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->corrosifMissileMod11:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 240
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    return-void

    .line 231
    :cond_eb
    const/4 v0, 0x0

    goto :goto_a2
.end method

.method public static getSolarFieldLevel()Lfr/testudo/spacecorsair/game/levels/Level;
    .registers 7

    .prologue
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->addPortals(Ljava/util/List;)V

    .line 58
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->addAsteroids(Ljava/util/List;)V

    .line 59
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->addEnnemies(Ljava/util/List;)V

    .line 65
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->addStation(Ljava/util/List;)V

    .line 67
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v1, Lfr/testudo/spacecorsair/game/levels/Level;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->SOLAR_FIELD:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/SolarFieldLevelBuilder;->solarAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-direct {v1, v2, v0, v3}, Lfr/testudo/spacecorsair/game/levels/Level;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/List;Lfr/testudo/spacecorsair/game/levels/LevelAnimator;)V

    .line 71
    const/4 v0, 0x1

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;

    const/4 v2, 0x0

    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newSunDrawable()Lfr/testudo/spacecorsair/business/world/SunDrawableObject;

    move-result-object v3

    new-instance v4, Lfr/testudo/spacecorsair/engine/Vector2;

    const v5, -0x3a254000    # -7000.0f

    const/high16 v6, -0x3a860000    # -4000.0f

    invoke-direct {v4, v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    const/high16 v5, 0x41880000    # 17.0f

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/business/world/SunDrawableObject;->init(Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;

    move-result-object v3

    aput-object v3, v0, v2

    iput-object v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->backgroundDrawableObjects:[Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;

    .line 75
    const v0, 0x7f06002b

    iput v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->musicResourceId:I

    .line 76
    sget-object v0, Lfr/testudo/spacecorsair/display/Background$BackImage;->Brown:Lfr/testudo/spacecorsair/display/Background$BackImage;

    iput-object v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->backGroundImage:Lfr/testudo/spacecorsair/display/Background$BackImage;

    .line 78
    return-object v1
.end method
