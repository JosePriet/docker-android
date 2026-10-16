.class public Lfr/testudo/spacecorsair/game/levels/builders/EternityLevelBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GATE_TO_AERIA_PASSING_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final LEVEL_MAX:I = 0xd

.field public static final LEVEL_MIN:I = 0xa

.field public static final PRISON_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static final eternityLevelAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

.field private static prison:Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 37
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/EternityLevelBuilder;->GATE_TO_AERIA_PASSING_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 40
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x460ca000    # 9000.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/EternityLevelBuilder;->PRISON_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 93
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/builders/EternityLevelBuilder$1;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/game/levels/builders/EternityLevelBuilder$1;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/EternityLevelBuilder;->eternityLevelAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
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

    .line 65
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> aeria passing <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 66
    const-string v1, "aeria passing"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 67
    const-string v1, "> eternity <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 69
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/EternityLevelBuilder;->GATE_TO_AERIA_PASSING_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 70
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3f200000    # -7.0f

    invoke-virtual {v1, v3, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 71
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 72
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public static addPrison(Ljava/util/List;)V
    .registers 4
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
    .line 80
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newThreeDockStation()Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/EternityLevelBuilder;->PRISON_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    const-string v2, "galactic jail"

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/EternityLevelBuilder;->prison:Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;

    .line 81
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/EternityLevelBuilder;->prison:Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->buyList:Ljava/util/List;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_SELLABLE_BY_PLAYER:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/EternityLevelBuilder;->prison:Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->buyList:Ljava/util/List;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->prisonner:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/EternityLevelBuilder;->prison:Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;

    const v1, 0x3e28a8a9

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->r:F

    .line 84
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/EternityLevelBuilder;->prison:Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;

    const v1, 0x3dc8c8c9

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->g:F

    .line 85
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/EternityLevelBuilder;->prison:Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;

    const v1, 0x3e868687

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->b:F

    .line 86
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/EternityLevelBuilder;->prison:Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->antimissileShieldLevel13:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 88
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/EternityLevelBuilder;->prison:Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public static getEternityLevel()Lfr/testudo/spacecorsair/game/levels/Level;
    .registers 4

    .prologue
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/EternityLevelBuilder;->addPortals(Ljava/util/List;)V

    .line 47
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/EternityLevelBuilder;->addPrison(Ljava/util/List;)V

    .line 53
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v1, Lfr/testudo/spacecorsair/game/levels/Level;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->ETERNITY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/EternityLevelBuilder;->eternityLevelAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-direct {v1, v2, v0, v3}, Lfr/testudo/spacecorsair/game/levels/Level;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/List;Lfr/testudo/spacecorsair/game/levels/LevelAnimator;)V

    .line 56
    const v0, 0x7f06002b

    iput v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->musicResourceId:I

    .line 57
    sget-object v0, Lfr/testudo/spacecorsair/display/Background$BackImage;->Brown:Lfr/testudo/spacecorsair/display/Background$BackImage;

    iput-object v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->backGroundImage:Lfr/testudo/spacecorsair/display/Background$BackImage;

    .line 59
    return-object v1
.end method
