.class public Lfr/testudo/spacecorsair/engine/PopPoint;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final bottomPop:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final leftPop:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final rightPop:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final topPop:Lfr/testudo/spacecorsair/engine/Vector2;


# instance fields
.field public position:Lfr/testudo/spacecorsair/engine/Vector2;

.field public speed:Lfr/testudo/spacecorsair/engine/Vector2;

.field public spin:F


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v2, -0x3ee00000    # -10.0f

    const/4 v1, 0x0

    .line 16
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/engine/PopPoint;->leftPop:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 17
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v3, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/engine/PopPoint;->rightPop:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 18
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/engine/PopPoint;->topPop:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 19
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/engine/PopPoint;->bottomPop:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method public constructor <init>(FFFFF)V
    .registers 7

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/PopPoint;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 13
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/PopPoint;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/engine/PopPoint;->spin:F

    .line 29
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/PopPoint;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p1, p2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 30
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/PopPoint;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p3, p4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 31
    iput p5, p0, Lfr/testudo/spacecorsair/engine/PopPoint;->spin:F

    .line 32
    return-void
.end method

.method public constructor <init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)V
    .registers 5

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/PopPoint;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 13
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/PopPoint;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/engine/PopPoint;->spin:F

    .line 22
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/PopPoint;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 23
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/PopPoint;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 24
    iput p3, p0, Lfr/testudo/spacecorsair/engine/PopPoint;->spin:F

    .line 25
    return-void
.end method

.method public static newBottom(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/PopPoint;
    .registers 4

    .prologue
    .line 47
    new-instance v0, Lfr/testudo/spacecorsair/engine/PopPoint;

    sget-object v1, Lfr/testudo/spacecorsair/engine/PopPoint;->bottomPop:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lfr/testudo/spacecorsair/engine/PopPoint;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)V

    return-object v0
.end method

.method public static newLeft(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/PopPoint;
    .registers 4

    .prologue
    .line 35
    new-instance v0, Lfr/testudo/spacecorsair/engine/PopPoint;

    sget-object v1, Lfr/testudo/spacecorsair/engine/PopPoint;->leftPop:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-direct {v0, p0, v1, v2}, Lfr/testudo/spacecorsair/engine/PopPoint;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)V

    return-object v0
.end method

.method public static newRight(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/PopPoint;
    .registers 4

    .prologue
    .line 39
    new-instance v0, Lfr/testudo/spacecorsair/engine/PopPoint;

    sget-object v1, Lfr/testudo/spacecorsair/engine/PopPoint;->rightPop:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-direct {v0, p0, v1, v2}, Lfr/testudo/spacecorsair/engine/PopPoint;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)V

    return-object v0
.end method

.method public static newTop(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/PopPoint;
    .registers 4

    .prologue
    .line 43
    new-instance v0, Lfr/testudo/spacecorsair/engine/PopPoint;

    sget-object v1, Lfr/testudo/spacecorsair/engine/PopPoint;->topPop:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3ccc0000    # -180.0f

    invoke-direct {v0, p0, v1, v2}, Lfr/testudo/spacecorsair/engine/PopPoint;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)V

    return-object v0
.end method
