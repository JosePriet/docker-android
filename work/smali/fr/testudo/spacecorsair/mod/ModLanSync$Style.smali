.class final Lfr/testudo/spacecorsair/mod/ModLanSync$Style;
.super Ljava/lang/Object;
.source "ModLanSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModLanSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Style"
.end annotation


# instance fields
.field e0:F

.field e1:F

.field flags:I

.field h:F

.field kind:I

.field tex:I

.field u0:F

.field u1:F

.field v0:F

.field v1:F

.field w:F


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static same(FF)Z
    .registers 4

    .prologue
    .line 66
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method copy()Lfr/testudo/spacecorsair/mod/ModLanSync$Style;
    .registers 3

    .prologue
    .line 44
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;-><init>()V

    .line 45
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->kind:I

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->kind:I

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->tex:I

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->tex:I

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->flags:I

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->flags:I

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->w:F

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->w:F

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->h:F

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->h:F

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->u0:F

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->u0:F

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->v0:F

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->v0:F

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->u1:F

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->u1:F

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->v1:F

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->v1:F

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->e0:F

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->e0:F

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->e1:F

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->e1:F

    .line 46
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 60
    instance-of v1, p1, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;

    if-nez v1, :cond_6

    .line 62
    :cond_5
    :goto_5
    return v0

    .line 61
    :cond_6
    check-cast p1, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;

    .line 62
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->kind:I

    iget v2, p1, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->kind:I

    if-ne v1, v2, :cond_5

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->tex:I

    iget v2, p1, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->tex:I

    if-ne v1, v2, :cond_5

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->flags:I

    iget v2, p1, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->flags:I

    if-ne v1, v2, :cond_5

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->w:F

    iget v2, p1, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->w:F

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->same(FF)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->h:F

    iget v2, p1, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->h:F

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->same(FF)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->u0:F

    iget v2, p1, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->u0:F

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->same(FF)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->v0:F

    iget v2, p1, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->v0:F

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->same(FF)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->u1:F

    iget v2, p1, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->u1:F

    .line 63
    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->same(FF)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->v1:F

    iget v2, p1, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->v1:F

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->same(FF)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->e0:F

    iget v2, p1, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->e0:F

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->same(FF)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->e1:F

    iget v2, p1, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->e1:F

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->same(FF)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 50
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->kind:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->tex:I

    add-int/2addr v0, v1

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->flags:I

    add-int/2addr v0, v1

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->w:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->h:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 53
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->u0:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->v0:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 54
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->u1:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->v1:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 55
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->e0:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->e1:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 56
    return v0
.end method
