.class public Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;
.super Lfr/testudo/spacecorsair/engine/PoolObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;
    }
.end annotation


# static fields
.field public static final ATTACK_MODE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

.field public static final DEFAULT_IDLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;


# instance fields
.field public gazPousee:Z

.field public isAsteroidDamagable:Z

.field public isDetectionPlayerEnabled:Z

.field public kind:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

.field public posX:F

.field public posY:F

.field public range:I

.field public timeInMilli:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 144
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initIdleForever()Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->DEFAULT_IDLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    .line 146
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initAttackMode()Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->ATTACK_MODE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 60
    invoke-direct {p0}, Lfr/testudo/spacecorsair/engine/PoolObject;-><init>()V

    .line 56
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->isAsteroidDamagable:Z

    .line 57
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->isDetectionPlayerEnabled:Z

    .line 58
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->gazPousee:Z

    .line 61
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->reset()V

    .line 62
    return-void
.end method


# virtual methods
.method public finalizePoolObject()V
    .registers 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->reset()V

    .line 25
    return-void
.end method

.method public initAttackMode()Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;
    .registers 2

    .prologue
    .line 131
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->ATTACK_TARGET:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->kind:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->isDetectionPlayerEnabled:Z

    .line 133
    return-object p0
.end method

.method public initGotoPoint(FF)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;
    .registers 4

    .prologue
    .line 75
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->GOTO_POINT:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->kind:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    .line 76
    iput p1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->posX:F

    .line 77
    iput p2, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->posY:F

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->isAsteroidDamagable:Z

    .line 79
    return-object p0
.end method

.method public initGotoPoint(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;
    .registers 4

    .prologue
    .line 66
    iget v0, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoPoint(FF)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v0

    return-object v0
.end method

.method public initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;
    .registers 5

    .prologue
    .line 96
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->GOTO_ALEAT_POINT:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->kind:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    .line 97
    iput p1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->posX:F

    .line 98
    iput p2, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->posY:F

    .line 99
    iput p3, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->range:I

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->isAsteroidDamagable:Z

    .line 101
    return-object p0
.end method

.method public initGotoRandom(Lfr/testudo/spacecorsair/engine/Vector2;I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;
    .registers 5

    .prologue
    .line 91
    iget v0, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {p0, v0, v1, p2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v0

    return-object v0
.end method

.method public initIdleDuring(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 122
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->IDLE_DURING:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->kind:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    .line 123
    iput p1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->timeInMilli:I

    .line 124
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->isAsteroidDamagable:Z

    .line 125
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->gazPousee:Z

    .line 126
    return-object p0
.end method

.method public initIdleForever()Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 115
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->IDLE_FOREVER:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->kind:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    .line 116
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->isAsteroidDamagable:Z

    .line 117
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->gazPousee:Z

    .line 118
    return-object p0
.end method

.method public initJumpHyperspace()Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;
    .registers 2

    .prologue
    .line 137
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->HYPERSPACE_JUMP:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->kind:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->isDetectionPlayerEnabled:Z

    .line 139
    return-object p0
.end method

.method public initJumpTo(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;
    .registers 3

    .prologue
    .line 83
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->$JUMP:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->kind:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    .line 84
    iput p1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->range:I

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->isDetectionPlayerEnabled:Z

    .line 86
    return-object p0
.end method

.method public initRandomCivilAttack(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;
    .registers 3

    .prologue
    .line 106
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->RANDOM_CIVIL_ATTACK:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->kind:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    .line 107
    iput p1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->range:I

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->isDetectionPlayerEnabled:Z

    .line 109
    return-object p0
.end method

.method public initializePoolObject()V
    .registers 1

    .prologue
    .line 19
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->posX:F

    .line 29
    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->posY:F

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->timeInMilli:I

    .line 31
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->IDLE_FOREVER:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->kind:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    .line 32
    return-void
.end method

.method public withoutDetection()Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;
    .registers 2

    .prologue
    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->isDetectionPlayerEnabled:Z

    .line 71
    return-object p0
.end method
