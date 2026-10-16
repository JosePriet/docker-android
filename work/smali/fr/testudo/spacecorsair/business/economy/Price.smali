.class public Lfr/testudo/spacecorsair/business/economy/Price;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEPRECATION_FACTOR:F = 0.15f


# instance fields
.field public current:F

.field public final fixed:Z

.field public inapp:Z

.field public final max:I

.field public final min:I

.field public final variationByHour:I


# direct methods
.method private constructor <init>(IIZIZ)V
    .registers 7

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/economy/Price;->current:F

    .line 22
    iput p2, p0, Lfr/testudo/spacecorsair/business/economy/Price;->max:I

    .line 23
    iput p1, p0, Lfr/testudo/spacecorsair/business/economy/Price;->min:I

    .line 24
    iput-boolean p3, p0, Lfr/testudo/spacecorsair/business/economy/Price;->fixed:Z

    .line 25
    iput p4, p0, Lfr/testudo/spacecorsair/business/economy/Price;->variationByHour:I

    .line 26
    iput-boolean p5, p0, Lfr/testudo/spacecorsair/business/economy/Price;->inapp:Z

    .line 27
    return-void
.end method

.method public static newDynamic(III)Lfr/testudo/spacecorsair/business/economy/Price;
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 38
    new-instance v0, Lfr/testudo/spacecorsair/business/economy/Price;

    move v1, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/business/economy/Price;-><init>(IIZIZ)V

    return-object v0
.end method

.method public static newInApp(I)Lfr/testudo/spacecorsair/business/economy/Price;
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 30
    new-instance v0, Lfr/testudo/spacecorsair/business/economy/Price;

    const/4 v4, 0x0

    move v1, p0

    move v2, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/business/economy/Price;-><init>(IIZIZ)V

    return-object v0
.end method

.method public static newStatic(I)Lfr/testudo/spacecorsair/business/economy/Price;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 34
    new-instance v0, Lfr/testudo/spacecorsair/business/economy/Price;

    const/4 v3, 0x1

    move v1, p0

    move v2, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/business/economy/Price;-><init>(IIZIZ)V

    return-object v0
.end method


# virtual methods
.method public addValueSafe(F)V
    .registers 4

    .prologue
    .line 82
    iget v0, p0, Lfr/testudo/spacecorsair/business/economy/Price;->current:F

    add-float/2addr v0, p1

    iput v0, p0, Lfr/testudo/spacecorsair/business/economy/Price;->current:F

    .line 84
    iget v0, p0, Lfr/testudo/spacecorsair/business/economy/Price;->current:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/economy/Price;->min:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_13

    .line 85
    iget v0, p0, Lfr/testudo/spacecorsair/business/economy/Price;->min:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/economy/Price;->current:F

    .line 88
    :cond_13
    iget v0, p0, Lfr/testudo/spacecorsair/business/economy/Price;->current:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/economy/Price;->max:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_21

    .line 89
    iget v0, p0, Lfr/testudo/spacecorsair/business/economy/Price;->max:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/economy/Price;->current:F

    .line 91
    :cond_21
    return-void
.end method

.method public getAveragePrice()I
    .registers 3

    .prologue
    .line 69
    iget v0, p0, Lfr/testudo/spacecorsair/business/economy/Price;->min:I

    iget v1, p0, Lfr/testudo/spacecorsair/business/economy/Price;->max:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final getBuyPrice()I
    .registers 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/economy/Price;->isSet()Z

    move-result v0

    if-nez v0, :cond_9

    .line 62
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/economy/Price;->initFirstTimeValue()V

    .line 64
    :cond_9
    iget v0, p0, Lfr/testudo/spacecorsair/business/economy/Price;->current:F

    float-to-int v0, v0

    return v0
.end method

.method public getRange()I
    .registers 3

    .prologue
    .line 73
    iget v0, p0, Lfr/testudo/spacecorsair/business/economy/Price;->max:I

    iget v1, p0, Lfr/testudo/spacecorsair/business/economy/Price;->min:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getSellPrice()I
    .registers 3

    .prologue
    .line 51
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/economy/Price;->fixed:Z

    if-eqz v0, :cond_d

    .line 52
    iget v0, p0, Lfr/testudo/spacecorsair/business/economy/Price;->max:I

    int-to-float v0, v0

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->sellFactor()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 55
    :goto_c
    return v0

    :cond_d
    iget v0, p0, Lfr/testudo/spacecorsair/business/economy/Price;->current:F

    float-to-int v0, v0

    goto :goto_c
.end method

.method public initFirstTimeValue()V
    .registers 7

    .prologue
    .line 113
    iget v0, p0, Lfr/testudo/spacecorsair/business/economy/Price;->min:I

    int-to-float v0, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/economy/Price;->getRange()I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-float v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/economy/Price;->current:F

    .line 114
    return-void
.end method

.method public final isSet()Z
    .registers 3

    .prologue
    .line 42
    iget v0, p0, Lfr/testudo/spacecorsair/business/economy/Price;->current:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public updatePrice(J)V
    .registers 12

    .prologue
    .line 95
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/economy/Price;->fixed:Z

    if-eqz v0, :cond_5

    .line 108
    :goto_4
    return-void

    .line 99
    :cond_5
    iget v0, p0, Lfr/testudo/spacecorsair/business/economy/Price;->variationByHour:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/16 v2, 0xe10

    div-long/2addr v0, v2

    long-to-float v0, v0

    .line 100
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/economy/Price;->getRange()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1b

    .line 101
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/economy/Price;->getRange()I

    move-result v0

    int-to-float v0, v0

    .line 104
    :cond_1b
    neg-float v1, v0

    float-to-double v2, v1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v4, v6

    float-to-double v0, v0

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 106
    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/economy/Price;->addValueSafe(F)V

    goto :goto_4
.end method
