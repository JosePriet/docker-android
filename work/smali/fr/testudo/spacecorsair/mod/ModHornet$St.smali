.class final Lfr/testudo/spacecorsair/mod/ModHornet$St;
.super Ljava/lang/Object;
.source "ModHornet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModHornet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "St"
.end annotation


# instance fields
.field D:F

.field aimT:F

.field aimX:F

.field aimY:F

.field final assignedAt:[J

.field final dots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final heat:[F

.field final hotSince:[J

.field lastAssign:J

.field lastHit:J

.field final lastShHit:[J

.field lastT:J

.field lastTick:J

.field final on:[Z

.field placed:Z

.field final px:[F

.field final py:[F

.field final rot:[F

.field final shArrive:[F

.field final shDir:[F

.field final shOn:[Z

.field stingFlash:F

.field stingMs:J

.field final threat:[F

.field final vx:[F

.field final vy:[F

.field final want:[F


# direct methods
.method constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-array v0, v2, [F

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->px:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->py:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->vx:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->vy:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->rot:[F

    .line 62
    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->D:F

    .line 63
    const/16 v0, 0xc

    new-array v0, v0, [F

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->threat:[F

    .line 64
    new-array v0, v1, [F

    fill-array-data v0, :array_56

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->shDir:[F

    .line 65
    new-array v0, v1, [Z

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->shOn:[Z

    .line 66
    new-array v0, v1, [F

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->shArrive:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->heat:[F

    .line 67
    new-array v0, v1, [J

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->lastShHit:[J

    new-array v0, v1, [J

    fill-array-data v0, :array_5e

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->hotSince:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->assignedAt:[J

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->dots:Ljava/util/List;

    .line 71
    new-array v0, v1, [F

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->want:[F

    .line 72
    new-array v0, v1, [Z

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->on:[Z

    return-void

    .line 64
    nop

    :array_56
    .array-data 4
        0x0
        0x43340000    # 180.0f
    .end array-data

    .line 67
    :array_5e
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method


# virtual methods
.method reset()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 75
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->placed:Z

    .line 76
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->lastT:J

    move v0, v1

    .line 77
    :goto_9
    const/16 v2, 0xc

    if-ge v0, v2, :cond_14

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->threat:[F

    aput v6, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_14
    move v0, v1

    .line 78
    :goto_15
    const/4 v2, 0x2

    if-ge v0, v2, :cond_2d

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->shOn:[Z

    aput-boolean v1, v2, v0

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->shArrive:[F

    aput v6, v2, v0

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->heat:[F

    aput v6, v2, v0

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->hotSince:[J

    const-wide/16 v4, -0x1

    aput-wide v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 79
    :cond_2d
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->dots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 80
    return-void
.end method
