.class public Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$2;
    }
.end annotation


# static fields
.field public static final ARENA_PORTAL_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final MAX_ARENA_LEVEL:I = 0xd

.field public static final MIN_ARENA_LEVEL:I = 0x5

.field public static POP1:Lfr/testudo/spacecorsair/engine/PopPoint;

.field public static final POP1_PORTAL_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static POP2:Lfr/testudo/spacecorsair/engine/PopPoint;

.field public static final POP2_PORTAL_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static POP3:Lfr/testudo/spacecorsair/engine/PopPoint;

.field public static final POP3_PORTAL_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static arenaAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

.field static arenaPortal:Lfr/testudo/spacecorsair/business/world/Portal;

.field static pop1Portal:Lfr/testudo/spacecorsair/business/world/Portal;

.field static pop2Portal:Lfr/testudo/spacecorsair/business/world/Portal;

.field static pop3Portal:Lfr/testudo/spacecorsair/business/world/Portal;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const v3, 0x44b0c000    # 1414.0f

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->ARENA_PORTAL_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 46
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v3, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->POP1_PORTAL_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 47
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, -0x3b4f4000    # -1414.0f

    invoke-direct {v0, v1, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->POP2_PORTAL_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 48
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, -0x3b060000    # -2000.0f

    invoke-direct {v0, v2, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->POP3_PORTAL_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 51
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->POP1_PORTAL_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0}, Lfr/testudo/spacecorsair/engine/PopPoint;->newTop(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/PopPoint;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->POP1:Lfr/testudo/spacecorsair/engine/PopPoint;

    .line 52
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->POP2_PORTAL_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0}, Lfr/testudo/spacecorsair/engine/PopPoint;->newTop(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/PopPoint;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->POP2:Lfr/testudo/spacecorsair/engine/PopPoint;

    .line 53
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->POP3_PORTAL_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0}, Lfr/testudo/spacecorsair/engine/PopPoint;->newTop(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/PopPoint;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->POP3:Lfr/testudo/spacecorsair/engine/PopPoint;

    .line 132
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder$1;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->arenaAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    return-void
.end method

.method public static addAsteroids(Ljava/util/List;)V
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
    const/16 v4, 0x1388

    const/4 v2, 0x0

    .line 77
    const/16 v1, 0x32

    const v6, 0x3e6147ae    # 0.22f

    const/4 v7, 0x1

    move-object v0, p0

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v7}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->addRandomAsteroids(Ljava/util/List;IFFIIFZ)V

    .line 78
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
    const/4 v4, 0x0

    const/high16 v3, 0x40400000    # 3.0f

    const/4 v2, 0x0

    .line 86
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelNames;->ARENA_NEXT_GATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->arenaPortal:Lfr/testudo/spacecorsair/business/world/Portal;

    .line 87
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->arenaPortal:Lfr/testudo/spacecorsair/business/world/Portal;

    const-string v1, "galactic arena"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 88
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->arenaPortal:Lfr/testudo/spacecorsair/business/world/Portal;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelNames;->ARENA_NEXT_GATE:Ljava/lang/String;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 90
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->arenaPortal:Lfr/testudo/spacecorsair/business/world/Portal;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->ARENA_PORTAL_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 91
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->arenaPortal:Lfr/testudo/spacecorsair/business/world/Portal;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-virtual {v0, v2, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 92
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->arenaPortal:Lfr/testudo/spacecorsair/business/world/Portal;

    iput v2, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 93
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->arenaPortal:Lfr/testudo/spacecorsair/business/world/Portal;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/world/Portal;->hideAndDisable()V

    .line 94
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->arenaPortal:Lfr/testudo/spacecorsair/business/world/Portal;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->pop1Portal:Lfr/testudo/spacecorsair/business/world/Portal;

    .line 98
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->pop1Portal:Lfr/testudo/spacecorsair/business/world/Portal;

    const-string v1, "galactic arena"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 99
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->pop1Portal:Lfr/testudo/spacecorsair/business/world/Portal;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelNames;->ARENA_NEXT_GATE:Ljava/lang/String;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 101
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->pop1Portal:Lfr/testudo/spacecorsair/business/world/Portal;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->POP1_PORTAL_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 102
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->pop1Portal:Lfr/testudo/spacecorsair/business/world/Portal;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 103
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->pop1Portal:Lfr/testudo/spacecorsair/business/world/Portal;

    iput v2, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 104
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->pop1Portal:Lfr/testudo/spacecorsair/business/world/Portal;

    iput-boolean v4, v0, Lfr/testudo/spacecorsair/business/world/Portal;->canBeUsed:Z

    .line 105
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->pop1Portal:Lfr/testudo/spacecorsair/business/world/Portal;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->pop2Portal:Lfr/testudo/spacecorsair/business/world/Portal;

    .line 108
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->pop2Portal:Lfr/testudo/spacecorsair/business/world/Portal;

    const-string v1, "galactic arena"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 109
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->pop2Portal:Lfr/testudo/spacecorsair/business/world/Portal;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelNames;->ARENA_NEXT_GATE:Ljava/lang/String;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 111
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->pop2Portal:Lfr/testudo/spacecorsair/business/world/Portal;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->POP2_PORTAL_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 112
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->pop2Portal:Lfr/testudo/spacecorsair/business/world/Portal;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 113
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->pop2Portal:Lfr/testudo/spacecorsair/business/world/Portal;

    iput v2, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 114
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->pop2Portal:Lfr/testudo/spacecorsair/business/world/Portal;

    iput-boolean v4, v0, Lfr/testudo/spacecorsair/business/world/Portal;->canBeUsed:Z

    .line 115
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->pop2Portal:Lfr/testudo/spacecorsair/business/world/Portal;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->pop3Portal:Lfr/testudo/spacecorsair/business/world/Portal;

    .line 119
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->pop3Portal:Lfr/testudo/spacecorsair/business/world/Portal;

    const-string v1, "galactic arena"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 120
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->pop3Portal:Lfr/testudo/spacecorsair/business/world/Portal;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelNames;->ARENA_NEXT_GATE:Ljava/lang/String;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 122
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->pop3Portal:Lfr/testudo/spacecorsair/business/world/Portal;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->POP3_PORTAL_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 123
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->pop3Portal:Lfr/testudo/spacecorsair/business/world/Portal;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 124
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->pop3Portal:Lfr/testudo/spacecorsair/business/world/Portal;

    iput v2, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 125
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->pop3Portal:Lfr/testudo/spacecorsair/business/world/Portal;

    iput-boolean v4, v0, Lfr/testudo/spacecorsair/business/world/Portal;->canBeUsed:Z

    .line 126
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->pop3Portal:Lfr/testudo/spacecorsair/business/world/Portal;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method public static getArenaLevel()Lfr/testudo/spacecorsair/game/levels/Level;
    .registers 4

    .prologue
    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->addPortals(Ljava/util/List;)V

    .line 62
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->addAsteroids(Ljava/util/List;)V

    .line 64
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v1, Lfr/testudo/spacecorsair/game/levels/Level;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->GALACTIC_ARENA:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/ArenaLevelBuilder;->arenaAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-direct {v1, v2, v0, v3}, Lfr/testudo/spacecorsair/game/levels/Level;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/List;Lfr/testudo/spacecorsair/game/levels/LevelAnimator;)V

    .line 68
    const v0, 0x7f06002d

    iput v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->musicResourceId:I

    .line 70
    invoke-static {}, Lfr/testudo/spacecorsair/display/Background$BackImage;->random()Lfr/testudo/spacecorsair/display/Background$BackImage;

    move-result-object v0

    iput-object v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->backGroundImage:Lfr/testudo/spacecorsair/display/Background$BackImage;

    .line 72
    return-object v1
.end method
