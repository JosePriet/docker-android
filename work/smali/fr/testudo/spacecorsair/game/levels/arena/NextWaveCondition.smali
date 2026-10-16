.class public Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;
    }
.end annotation


# static fields
.field public static CLEAN_LEVEL:Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;


# instance fields
.field public final conditionType:Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;

.field public final ennmisCount:I

.field public final timingInSeconds:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;->newEnemisCount(I)Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;->CLEAN_LEVEL:Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;

    return-void
.end method

.method public constructor <init>(Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;II)V
    .registers 4

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p2, p0, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;->timingInSeconds:I

    .line 28
    iput p3, p0, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;->ennmisCount:I

    .line 29
    iput-object p1, p0, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;->conditionType:Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;

    .line 30
    return-void
.end method

.method public static newEnemisCount(I)Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;
    .registers 4

    .prologue
    .line 37
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;->ENEMIS_COUNT:Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;-><init>(Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;II)V

    return-object v0
.end method

.method public static newTiming(I)Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;
    .registers 4

    .prologue
    .line 33
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;->TIMING:Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;-><init>(Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;II)V

    return-object v0
.end method

.method public static newTimingAndCount(II)Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;
    .registers 4

    .prologue
    .line 45
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;->TIMING_AND_COUNT:Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;

    invoke-direct {v0, v1, p0, p1}, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;-><init>(Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;II)V

    return-object v0
.end method

.method public static newTimingOrEnnemis(II)Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;
    .registers 4

    .prologue
    .line 41
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;->TIMING_OR_ENNEMIS:Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;

    invoke-direct {v0, v1, p0, p1}, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;-><init>(Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition$Conditiontype;II)V

    return-object v0
.end method
