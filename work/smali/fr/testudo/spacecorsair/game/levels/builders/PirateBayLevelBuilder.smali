.class public Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$2;,
        Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;
    }
.end annotation


# static fields
.field private static final ALBATROS_SEQUENCE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

.field public static final CONSTELLATION_PORTAL_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final LEVEL_MAX:I = 0x8

.field public static final LEVEL_MIN:I = 0x5

.field public static final PIRATE:Ljava/lang/String; = "pirate"

.field public static RANDOM_PATROUILLE_ALPHA:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence; = null

.field public static RANDOM_PATROUILLE_BETA:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence; = null

.field public static RANDOM_PATROUILLE_TETA:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence; = null

.field private static final SMUGLER_STATION_NAME:Ljava/lang/String;

.field public static final TREASURE_KEEPER:Ljava/lang/String;

.field private static final TREASURE_ONE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field static final expand:I = 0x320

.field private static level5_loot_withSmugglerpos:Lfr/testudo/spacecorsair/business/loot/LootConfig;

.field private static final levelAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

.field private static final lootMap5_with_smugglerpos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lfr/testudo/spacecorsair/business/loot/LootRarety;",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;",
            ">;>;"
        }
    .end annotation
.end field

.field private static pirateStation1:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

.field private static final pirateStation1Pos:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static pirateStation2:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

.field private static final pirateStation2Pos:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static pirateStation3:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

.field private static final pirateStation3Pos:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static final pirateStationName:Ljava/lang/String;

.field static tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static treasureOne:Lfr/testudo/spacecorsair/business/Element;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const v8, 0x459c4000    # 5000.0f

    const/high16 v7, 0x457a0000    # 4000.0f

    const v6, -0x3995a000    # -15000.0f

    const v5, -0x397b3000    # -17000.0f

    const/4 v4, 0x0

    .line 40
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v4, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->CONSTELLATION_PORTAL_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 44
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 94
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x46cb2000    # 26000.0f

    invoke-direct {v0, v1, v7}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->pirateStation1Pos:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 97
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x46fa0000    # 32000.0f

    const/high16 v2, -0x3b860000    # -1000.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->pirateStation2Pos:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 100
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x46b3b000    # 23000.0f

    const/high16 v2, -0x3a060000    # -8000.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->pirateStation3Pos:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 103
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702bc

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->pirateStationName:Ljava/lang/String;

    .line 126
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x460ca000    # 9000.0f

    invoke-direct {v0, v6, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->TREASURE_ONE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 128
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702be

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->TREASURE_KEEPER:Ljava/lang/String;

    .line 152
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;-><init>()V

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const v2, 0x470ca000    # 36000.0f

    invoke-virtual {v1, v2, v8}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoPoint(FF)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const v2, 0x47147000    # 38000.0f

    invoke-virtual {v1, v2, v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoPoint(FF)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const v2, 0x47108800    # 37000.0f

    const/high16 v3, -0x3a860000    # -4000.0f

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoPoint(FF)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const v2, 0x46dac000    # 28000.0f

    const v3, -0x39d42000    # -11000.0f

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoPoint(FF)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const v2, 0x468ca000    # 18000.0f

    invoke-virtual {v1, v2, v6}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoPoint(FF)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/16 v2, 0x3a98

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initIdleDuring(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const v2, 0x471c4000    # 40000.0f

    invoke-virtual {v1, v2, v6}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoPoint(FF)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const v2, 0x471c4000    # 40000.0f

    const/high16 v3, 0x45fa0000    # 8000.0f

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoPoint(FF)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->ALBATROS_SEQUENCE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    .line 188
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;-><init>()V

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const v2, 0x46dac000    # 28000.0f

    const/16 v3, 0x2328

    invoke-virtual {v1, v2, v4, v3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const v2, 0x46f23000    # 31000.0f

    const/16 v3, 0xfa0

    invoke-virtual {v1, v2, v7, v3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/16 v2, 0x4e20

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initIdleDuring(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->RANDOM_PATROUILLE_TETA:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    .line 193
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;-><init>()V

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/16 v2, 0x1964

    invoke-virtual {v1, v7, v4, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/16 v2, 0x1964

    invoke-virtual {v1, v8, v4, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initIdleDuring(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->RANDOM_PATROUILLE_ALPHA:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    .line 198
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;-><init>()V

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/16 v2, 0x7d0

    invoke-virtual {v1, v4, v5, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/16 v2, 0xbb8

    invoke-virtual {v1, v4, v5, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/16 v2, 0xdac

    invoke-virtual {v1, v4, v5, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/16 v2, 0xfa0

    invoke-virtual {v1, v4, v5, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/16 v2, 0x1f40

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initIdleDuring(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->RANDOM_PATROUILLE_BETA:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    .line 276
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702b8

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->SMUGLER_STATION_NAME:Ljava/lang/String;

    .line 368
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->energyCell:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->goldLootBasic:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->pirateBaySmugglerPos:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->basicShieldLevel5:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->standardFastLaserLevel5:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->standardLaserLevel5:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->build()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->lootMap5_with_smugglerpos:Ljava/util/Map;

    .line 386
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/LootConfig;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootProbability;->BASIC:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->lootMap5_with_smugglerpos:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/business/loot/LootConfig;-><init>([Lfr/testudo/spacecorsair/business/loot/LootProbability;Ljava/util/Map;)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->level5_loot_withSmugglerpos:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 400
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$1;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$1;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->levelAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    return-void
.end method

.method static synthetic access$000()Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->pirateStation1:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    return-object v0
.end method

.method static synthetic access$100()Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->pirateStation2:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    return-object v0
.end method

.method static synthetic access$200()Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->pirateStation3:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    return-object v0
.end method

.method static synthetic access$300()Lfr/testudo/spacecorsair/business/Element;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/Element;

    return-object v0
.end method

.method static synthetic access$302(Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/Element;
    .registers 1

    .prologue
    .line 34
    sput-object p0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/Element;

    return-object p0
.end method

.method static synthetic access$400()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->pirateStation1Pos:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method static synthetic access$500()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->pirateStation2Pos:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method static synthetic access$600()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->pirateStation3Pos:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->SMUGLER_STATION_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Ljava/util/List;)V
    .registers 1

    .prologue
    .line 34
    invoke-static {p0}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->enableTresureOneIfPossible(Ljava/util/List;)V

    return-void
.end method

.method private static addAlbatrosPatrols(Ljava/util/List;)V
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
    const v3, 0x471c4000    # 40000.0f

    .line 165
    const/4 v0, 0x6

    .line 166
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    const/4 v2, 0x7

    if-le v1, v2, :cond_11

    .line 167
    const/16 v0, 0x8

    .line 169
    :cond_11
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_1e

    .line 185
    :goto_1d
    return-void

    .line 173
    :cond_1e
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newAlbatros(I)Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->initPosition(FF)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->ALBATROS_SEQUENCE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setActivitySequence(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v1

    .line 174
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->shuffleActivityIndex()V

    .line 175
    const-string v2, "pirate"

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    .line 177
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newAlbatros(I)Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    move-result-object v0

    const v2, -0x3995a000    # -15000.0f

    invoke-virtual {v0, v3, v2}, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->initPosition(FF)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->ALBATROS_SEQUENCE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setActivitySequence(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->shuffleActivityIndex()V

    .line 179
    const-string v2, "pirate"

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    .line 182
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d
.end method

.method public static addAstroidLineWithEnnemies(Ljava/util/List;)V
    .registers 13
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
    .line 331
    const/4 v1, 0x0

    .line 333
    const/16 v0, -0xfa0

    :goto_3
    const/16 v2, 0x1f40

    if-ge v0, v2, :cond_16e

    .line 334
    add-int/lit8 v1, v1, 0x1

    .line 335
    rem-int/lit8 v2, v1, 0x3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_44

    .line 336
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide v4, 0x40c5e00000000000L    # 11200.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4089000000000000L    # 800.0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    neg-int v4, v0

    add-int/lit8 v4, v4, -0x32

    int-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 337
    const/4 v2, 0x5

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newFixedTourelle(II)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    :goto_41
    add-int/lit16 v0, v0, 0x190

    goto :goto_3

    .line 341
    :cond_44
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpg-double v2, v2, v4

    if-gez v2, :cond_a0

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_a0

    .line 342
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide v4, 0x40c5e00000000000L    # 11200.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4089000000000000L    # 800.0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    neg-int v4, v0

    add-int/lit8 v4, v4, -0x32

    int-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 343
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newMalachiteAsteroid()Lfr/testudo/spacecorsair/business/world/MalachiteAsteroid;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v4, Lfr/testudo/spacecorsair/engine/Vector2;->ZERO:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide v6, -0x4036666666666666L    # -0.2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide v10, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lfr/testudo/spacecorsair/business/world/MalachiteAsteroid;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/MalachiteAsteroid;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_a0
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide v4, 0x40c5e00000000000L    # 11200.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4089000000000000L    # 800.0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    neg-int v4, v0

    add-int/lit8 v4, v4, -0x32

    int-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 347
    const/4 v2, 0x0

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomSizeAsteroid(Z)Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v4, Lfr/testudo/spacecorsair/engine/Vector2;->ZERO:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide v6, -0x4036666666666666L    # -0.2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide v10, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lfr/testudo/spacecorsair/business/world/Asteroid;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide v4, 0x40c5e00000000000L    # 11200.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4089000000000000L    # 800.0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    neg-int v4, v0

    add-int/lit8 v4, v4, -0x32

    int-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 349
    const/4 v2, 0x0

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomSizeAsteroid(Z)Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v4, Lfr/testudo/spacecorsair/engine/Vector2;->ZERO:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide v6, -0x4036666666666666L    # -0.2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide v10, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lfr/testudo/spacecorsair/business/world/Asteroid;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide v4, 0x40c5e00000000000L    # 11200.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4089000000000000L    # 800.0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    neg-int v4, v0

    add-int/lit8 v4, v4, -0x32

    int-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 351
    const/4 v2, 0x0

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomSizeAsteroid(Z)Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v4, Lfr/testudo/spacecorsair/engine/Vector2;->ZERO:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide v6, -0x4036666666666666L    # -0.2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide v10, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lfr/testudo/spacecorsair/business/world/Asteroid;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_41

    .line 358
    :cond_16e
    return-void
.end method

.method public static addEnnemies(Ljava/util/List;)V
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
    .line 82
    invoke-static {p0}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->addEnnemiesAlpha(Ljava/util/List;)V

    .line 83
    invoke-static {p0}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->addEnnemiesBeta(Ljava/util/List;)V

    .line 84
    invoke-static {p0}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->addEnnemiesTeta(Ljava/util/List;)V

    .line 85
    invoke-static {p0}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->addEnnemisStations(Ljava/util/List;)V

    .line 88
    invoke-static {p0}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->addAlbatrosPatrols(Ljava/util/List;)V

    .line 90
    return-void
.end method

.method private static addEnnemiesAlpha(Ljava/util/List;)V
    .registers 13
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
    const/4 v11, 0x6

    const/4 v10, 0x5

    .line 208
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    const/16 v0, 0x1e

    if-ge v1, v0, :cond_64

    .line 210
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide v2, 0x40a7700000000000L    # 3000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x40b3880000000000L    # 5000.0

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

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 212
    rem-int/lit8 v0, v1, 0x7

    if-nez v0, :cond_5f

    invoke-static {v10, v11}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newDefensor(II)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v0

    .line 213
    :goto_37
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 214
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->pirateBaySmugglerPos:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->isMapOrTreasureUnlockedOrInInv(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v2

    if-nez v2, :cond_4c

    .line 215
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->level5_loot_withSmugglerpos:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 217
    :cond_4c
    const-string v2, "pirate"

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    .line 218
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->RANDOM_PATROUILLE_ALPHA:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setActivitySequence(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 219
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->shuffleActivityIndex()V

    .line 220
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 212
    :cond_5f
    invoke-static {v10, v11}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newBasicEnnemisShip(II)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;

    move-result-object v0

    goto :goto_37

    .line 225
    :cond_64
    return-void
.end method

.method private static addEnnemiesBeta(Ljava/util/List;)V
    .registers 12
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
    const/4 v10, 0x5

    .line 229
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    const/16 v0, 0x1e

    if-ge v1, v0, :cond_76

    .line 231
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide v2, -0x3f4a840000000000L    # -5500.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x40b7700000000000L    # 6000.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    const-wide v4, -0x3f2c780000000000L    # -20000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x40bf400000000000L    # 8000.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 233
    rem-int/lit8 v0, v1, 0x7

    if-nez v0, :cond_71

    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newDefensor(I)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v0

    .line 234
    :goto_36
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 235
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->pirateBaySmugglerPos:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->isMapOrTreasureUnlockedOrInInv(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v2

    if-nez v2, :cond_4b

    .line 236
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->level5_loot_withSmugglerpos:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 238
    :cond_4b
    const-string v2, "pirate"

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    .line 239
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->RANDOM_PATROUILLE_BETA:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setActivitySequence(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 240
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->shuffleActivityIndex()V

    .line 241
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    rem-int/lit8 v0, v1, 0x6

    if-nez v0, :cond_6d

    .line 245
    const/16 v0, 0x8

    invoke-static {v10, v0}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newFixedTourelle(II)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_6d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 233
    :cond_71
    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newBasicEnnemisShip(I)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;

    move-result-object v0

    goto :goto_36

    .line 249
    :cond_76
    return-void
.end method

.method private static addEnnemiesTeta(Ljava/util/List;)V
    .registers 13
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
    const/4 v11, 0x6

    const/16 v10, 0x8

    .line 253
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    const/16 v0, 0x32

    if-ge v1, v0, :cond_7d

    .line 255
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide v2, -0x3f4a840000000000L    # -5500.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x40b7700000000000L    # 6000.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide v4, 0x40dd4c0000000000L    # 30000.0

    add-double/2addr v2, v4

    double-to-float v2, v2

    const-wide v4, -0x3f2c780000000000L    # -20000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x40bf400000000000L    # 8000.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 257
    rem-int/lit8 v0, v1, 0x7

    if-nez v0, :cond_78

    invoke-static {v11, v10}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newDefensor(II)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v0

    .line 258
    :goto_3e
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 259
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->pirateBaySmugglerPos:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->isMapOrTreasureUnlockedOrInInv(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v2

    if-nez v2, :cond_53

    .line 260
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->level5_loot_withSmugglerpos:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 262
    :cond_53
    const-string v2, "pirate"

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    .line 263
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->RANDOM_PATROUILLE_TETA:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setActivitySequence(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 264
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->shuffleActivityIndex()V

    .line 265
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    rem-int/lit8 v0, v1, 0x6

    if-nez v0, :cond_74

    .line 269
    const/4 v0, 0x5

    invoke-static {v0, v10}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newFixedTourelle(II)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_74
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 257
    :cond_78
    invoke-static {v11, v10}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newBasicEnnemisShip(II)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;

    move-result-object v0

    goto :goto_3e

    .line 273
    :cond_7d
    return-void
.end method

.method private static addEnnemisStations(Ljava/util/List;)V
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
    const/16 v4, 0x1b58

    const/4 v3, 0x5

    .line 106
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newDestroyablePirateStation()Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->pirateStation1Pos:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->pirateStationName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v4}, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->initDestroyStation(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;I)Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->pirateStation1:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    .line 107
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->pirateStation1:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    iput v3, v0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->level:I

    .line 108
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->pirateStation1:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->station_pirate_5a10:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 109
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->pirateStation1:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newDestroyablePirateStation()Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->pirateStation2Pos:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->pirateStationName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v4}, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->initDestroyStation(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;I)Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->pirateStation2:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    .line 112
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->pirateStation2:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->station_pirate_5a10:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 113
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->pirateStation2:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    iput v3, v0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->level:I

    .line 114
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->pirateStation2:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newDestroyablePirateStation()Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->pirateStation3Pos:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->pirateStationName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v4}, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->initDestroyStation(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;I)Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->pirateStation3:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    .line 118
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->pirateStation3:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->station_pirate_5a10:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 119
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->pirateStation3:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    iput v3, v0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->level:I

    .line 120
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->pirateStation3:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
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

    .line 314
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> constellation <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 315
    const-string v1, "constellation"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 316
    const-string v1, "> pirate bay <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 318
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->CONSTELLATION_PORTAL_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 319
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 320
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 321
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    return-void
.end method

.method public static addSations(Ljava/util/List;)V
    .registers 7
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
    const/4 v0, 0x1

    const/high16 v5, 0x3f400000    # 0.75f

    .line 280
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newBasicTradeStation()Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;

    move-result-object v1

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x0

    const v4, -0x3963c000    # -20000.0f

    invoke-direct {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->SMUGLER_STATION_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;

    move-result-object v1

    .line 281
    iput v5, v1, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->r:F

    .line 282
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->g:F

    .line 283
    iput v5, v1, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->b:F

    .line 285
    iput-boolean v0, v1, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->isSpeciale:Z

    .line 287
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->buyList:Ljava/util/List;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_SELLABLE_BY_PLAYER:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 288
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->buyList:Ljava/util/List;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->prisonner:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 293
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->jaspinBite5:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 294
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->instaRepair:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 295
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->exceptionalLaserLevel5:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 296
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->warriorShieldLevel5:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 297
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->spartanBlockerPlusLevel6:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 298
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->torpedoMissileLevel6:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 299
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->percuteurMissileModLevel6WithCrit:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 300
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->constellationTreasureOne:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 303
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->pirateBaySmugglerPos:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->isMapOrTreasureUnlocked(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v2

    if-nez v2, :cond_af

    :goto_9d
    iput-boolean v0, v1, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->mapHidden:Z

    .line 304
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->pirateBaySmugglerPos:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->isMapOrTreasureUnlocked(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v0

    iput-boolean v0, v1, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->drawOnRadar:Z

    .line 306
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    return-void

    .line 303
    :cond_af
    const/4 v0, 0x0

    goto :goto_9d
.end method

.method public static addTreasures(Ljava/util/List;)V
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
    .line 75
    invoke-static {p0}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->enableTresureOneIfPossible(Ljava/util/List;)V

    .line 76
    return-void
.end method

.method private static enableTresureOneIfPossible(Ljava/util/List;)V
    .registers 9
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
    const v7, 0x4604d000    # 8500.0f

    const/high16 v6, 0x45fa0000    # 8000.0f

    const v5, -0x39a22000    # -14200.0f

    const/16 v4, 0x8

    .line 131
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->pirateBayTreasureOne:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->isTreasureAvail(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 133
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRubyAsteroid()Lfr/testudo/spacecorsair/business/world/RubyAsteroid;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->TREASURE_ONE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/engine/Vector2;->ZERO:Lfr/testudo/spacecorsair/engine/Vector2;

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/business/world/RubyAsteroid;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/RubyAsteroid;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/Element;

    .line 134
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/Element;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/Element;->isMissionObjective:Z

    .line 135
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/Element;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->TREASURE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/Element;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 136
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/Element;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newFixedTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v0

    invoke-virtual {v0, v5, v7}, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->initPosition(FF)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->TREASURE_KEEPER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setSpecificName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newFixedTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v0

    const v1, -0x39973000    # -14900.0f

    invoke-virtual {v0, v1, v7}, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->initPosition(FF)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->TREASURE_KEEPER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setSpecificName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newFixedTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->initPosition(FF)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->TREASURE_KEEPER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setSpecificName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newDefensor(I)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v0

    const/high16 v1, -0x39860000    # -16000.0f

    invoke-virtual {v0, v1, v6}, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->initPosition(FF)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->TREASURE_KEEPER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setSpecificName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newDefensor(I)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v0

    const v1, -0x39a54000    # -14000.0f

    const v2, 0x461c4000    # 10000.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->initPosition(FF)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->TREASURE_KEEPER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setSpecificName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_97
    return-void
.end method

.method public static getPirateBay()Lfr/testudo/spacecorsair/game/levels/Level;
    .registers 4

    .prologue
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->addPortals(Ljava/util/List;)V

    .line 55
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->addSations(Ljava/util/List;)V

    .line 57
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->addAstroidLineWithEnnemies(Ljava/util/List;)V

    .line 59
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->addTreasures(Ljava/util/List;)V

    .line 61
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->addEnnemies(Ljava/util/List;)V

    .line 65
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v1, Lfr/testudo/spacecorsair/game/levels/Level;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->PIRATE_BAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->levelAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-direct {v1, v2, v0, v3}, Lfr/testudo/spacecorsair/game/levels/Level;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/List;Lfr/testudo/spacecorsair/game/levels/LevelAnimator;)V

    .line 67
    const v0, 0x7f06002d

    iput v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->musicResourceId:I

    .line 69
    return-object v1
.end method
