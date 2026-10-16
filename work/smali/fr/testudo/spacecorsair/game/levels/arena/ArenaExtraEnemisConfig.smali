.class public Lfr/testudo/spacecorsair/game/levels/arena/ArenaExtraEnemisConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static DEFAULT:Lfr/testudo/spacecorsair/game/levels/arena/ArenaExtraEnemisConfig;


# instance fields
.field public disableMisile:Z

.field public increaseMissileReloadBy:F

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 12
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaExtraEnemisConfig;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaExtraEnemisConfig;-><init>(ZFLjava/lang/String;)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaExtraEnemisConfig;->DEFAULT:Lfr/testudo/spacecorsair/game/levels/arena/ArenaExtraEnemisConfig;

    return-void
.end method

.method public constructor <init>(ZFLjava/lang/String;)V
    .registers 5

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaExtraEnemisConfig;->disableMisile:Z

    .line 15
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaExtraEnemisConfig;->increaseMissileReloadBy:F

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaExtraEnemisConfig;->name:Ljava/lang/String;

    .line 20
    iput-boolean p1, p0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaExtraEnemisConfig;->disableMisile:Z

    .line 21
    iput p2, p0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaExtraEnemisConfig;->increaseMissileReloadBy:F

    .line 22
    iput-object p3, p0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaExtraEnemisConfig;->name:Ljava/lang/String;

    .line 23
    return-void
.end method
