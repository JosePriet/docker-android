.class public Lfr/testudo/spacecorsair/game/levels/builders/AeriaPassLevelBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ETERNITY_ESCAPE:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final ETERNITY_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

.field public static final ETERNITY_TO_OMICRON_ACTIVITY:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

.field public static final GATE_TO_ETERNITY_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final GATE_TO_OMICRON_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final LEVEL_MAX:I = 0xf

.field public static final LEVEL_MIN:I = 0xa

.field public static final OMICRON_ESCAPE:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final OMICRON_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

.field public static final OMICRON_TO_ETERNITY:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

.field private static final aeriaPassLevelAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x0

    const v7, 0x453b8000    # 3000.0f

    const v6, 0x3f19999a    # 0.6f

    const/4 v5, 0x0

    const/16 v4, 0x3e8

    .line 40
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x45dac000    # 7000.0f

    invoke-direct {v0, v5, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/AeriaPassLevelBuilder;->GATE_TO_OMICRON_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 41
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, -0x3b060000    # -2000.0f

    const v2, -0x3934e000    # -26000.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/AeriaPassLevelBuilder;->GATE_TO_ETERNITY_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 44
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/AeriaPassLevelBuilder;->GATE_TO_OMICRON_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;)V

    const/high16 v1, 0x44160000    # 600.0f

    const/high16 v2, -0x3d380000    # -100.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/AeriaPassLevelBuilder;->OMICRON_ESCAPE:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 45
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/AeriaPassLevelBuilder;->GATE_TO_ETERNITY_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;)V

    const/high16 v1, -0x3bd10000    # -700.0f

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/AeriaPassLevelBuilder;->ETERNITY_ESCAPE:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 47
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/AeriaPassLevelBuilder;->GATE_TO_OMICRON_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0}, Lfr/testudo/spacecorsair/engine/PopPoint;->newTop(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/PopPoint;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/AeriaPassLevelBuilder;->OMICRON_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

    .line 48
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/AeriaPassLevelBuilder;->GATE_TO_ETERNITY_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0}, Lfr/testudo/spacecorsair/engine/PopPoint;->newBottom(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/PopPoint;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/AeriaPassLevelBuilder;->ETERNITY_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

    .line 102
    const/4 v0, 0x6

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/AeriaPassLevelBuilder;->ETERNITY_ESCAPE:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x1

    const v2, -0x3ac48000    # -3000.0f

    const v3, -0x3a254000    # -7000.0f

    invoke-static {v2, v3, v4}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/high16 v2, -0x3b860000    # -1000.0f

    invoke-static {v2, v7, v4}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/AeriaPassLevelBuilder;->GATE_TO_OMICRON_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {v6}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newDiseapear()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/AeriaPassLevelBuilder;->ETERNITY_TO_OMICRON_ACTIVITY:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    .line 111
    const/4 v0, 0x6

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/AeriaPassLevelBuilder;->OMICRON_ESCAPE:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x1

    const/high16 v2, 0x447a0000    # 1000.0f

    invoke-static {v2, v7, v4}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, -0x39c48000    # -12000.0f

    invoke-static {v5, v2, v4}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/AeriaPassLevelBuilder;->GATE_TO_ETERNITY_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {v6}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newDiseapear()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/AeriaPassLevelBuilder;->OMICRON_TO_ETERNITY:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    .line 121
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/builders/AeriaPassLevelBuilder$1;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/game/levels/builders/AeriaPassLevelBuilder$1;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/AeriaPassLevelBuilder;->aeriaPassLevelAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 80
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> omicron prime <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 81
    const-string v1, "omicron prime"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 82
    const-string v1, "> aeria passing <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 84
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/AeriaPassLevelBuilder;->GATE_TO_OMICRON_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 85
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3f200000    # -7.0f

    invoke-virtual {v1, v3, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 86
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 87
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> eternity <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 91
    const-string v1, "eternity"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 92
    const-string v1, "> aeria passing <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 94
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/AeriaPassLevelBuilder;->GATE_TO_ETERNITY_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 95
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-virtual {v1, v3, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 96
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 97
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public static getAeriaPassingLevel()Lfr/testudo/spacecorsair/game/levels/Level;
    .registers 4

    .prologue
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/AeriaPassLevelBuilder;->addPortals(Ljava/util/List;)V

    .line 61
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v1, Lfr/testudo/spacecorsair/game/levels/Level;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->AERIA_PASSING:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/AeriaPassLevelBuilder;->aeriaPassLevelAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-direct {v1, v2, v0, v3}, Lfr/testudo/spacecorsair/game/levels/Level;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/List;Lfr/testudo/spacecorsair/game/levels/LevelAnimator;)V

    .line 64
    const v0, 0x7f060018

    iput v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->musicResourceId:I

    .line 65
    sget-object v0, Lfr/testudo/spacecorsair/display/Background$BackImage;->Nebuleuse:Lfr/testudo/spacecorsair/display/Background$BackImage;

    iput-object v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->backGroundImage:Lfr/testudo/spacecorsair/display/Background$BackImage;

    .line 74
    return-object v1
.end method
