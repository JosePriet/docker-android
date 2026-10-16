.class public Landroid/support/v4/widget/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/g$a;
    }
.end annotation


# static fields
.field private static final v:Landroid/view/animation/Interpolator;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:[F

.field private e:[F

.field private f:[F

.field private g:[F

.field private h:[I

.field private i:[I

.field private j:[I

.field private k:I

.field private l:Landroid/view/VelocityTracker;

.field private m:F

.field private n:F

.field private o:I

.field private p:I

.field private q:Landroid/support/v4/widget/d;

.field private final r:Landroid/support/v4/widget/g$a;

.field private s:Landroid/view/View;

.field private t:Z

.field private final u:Landroid/view/ViewGroup;

.field private final w:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 326
    new-instance v0, Landroid/support/v4/widget/h;

    invoke-direct {v0}, Landroid/support/v4/widget/h;-><init>()V

    sput-object v0, Landroid/support/v4/widget/g;->v:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private a(F)F
    .registers 6

    .prologue
    .line 674
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p1, v0

    .line 675
    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 676
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private a(FFF)F
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 667
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 668
    cmpg-float v2, v1, p2

    if-gez v2, :cond_b

    move p3, v0

    .line 670
    :cond_a
    :goto_a
    return p3

    .line 669
    :cond_b
    cmpl-float v1, v1, p3

    if-lez v1, :cond_15

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_a

    neg-float p3, p3

    goto :goto_a

    :cond_15
    move p3, p1

    .line 670
    goto :goto_a
.end method

.method private a(III)I
    .registers 8

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 618
    if-nez p1, :cond_6

    .line 619
    const/4 v0, 0x0

    .line 636
    :goto_5
    return v0

    .line 622
    :cond_6
    iget-object v0, p0, Landroid/support/v4/widget/g;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 623
    div-int/lit8 v1, v0, 0x2

    .line 624
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float v0, v2, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 625
    int-to-float v2, v1

    int-to-float v1, v1

    invoke-direct {p0, v0}, Landroid/support/v4/widget/g;->a(F)F

    move-result v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    .line 629
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 630
    if-lez v1, :cond_3e

    .line 631
    const/high16 v2, 0x447a0000    # 1000.0f

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 636
    :goto_37
    const/16 v1, 0x258

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_5

    .line 633
    :cond_3e
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p3

    div-float/2addr v0, v1

    .line 634
    add-float/2addr v0, v3

    const/high16 v1, 0x43800000    # 256.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_37
.end method

.method private a(Landroid/view/View;IIII)I
    .registers 14

    .prologue
    .line 597
    iget v0, p0, Landroid/support/v4/widget/g;->n:F

    float-to-int v0, v0

    iget v1, p0, Landroid/support/v4/widget/g;->m:F

    float-to-int v1, v1

    invoke-direct {p0, p4, v0, v1}, Landroid/support/v4/widget/g;->b(III)I

    move-result v2

    .line 598
    iget v0, p0, Landroid/support/v4/widget/g;->n:F

    float-to-int v0, v0

    iget v1, p0, Landroid/support/v4/widget/g;->m:F

    float-to-int v1, v1

    invoke-direct {p0, p5, v0, v1}, Landroid/support/v4/widget/g;->b(III)I

    move-result v3

    .line 599
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 600
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 601
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 602
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 603
    add-int v6, v1, v5

    .line 604
    add-int v7, v0, v4

    .line 606
    if-eqz v2, :cond_4e

    int-to-float v0, v1

    int-to-float v1, v6

    div-float/2addr v0, v1

    move v1, v0

    .line 608
    :goto_2e
    if-eqz v3, :cond_53

    int-to-float v0, v5

    int-to-float v4, v6

    div-float/2addr v0, v4

    .line 611
    :goto_33
    iget-object v4, p0, Landroid/support/v4/widget/g;->r:Landroid/support/v4/widget/g$a;

    invoke-virtual {v4, p1}, Landroid/support/v4/widget/g$a;->a(Landroid/view/View;)I

    move-result v4

    invoke-direct {p0, p2, v2, v4}, Landroid/support/v4/widget/g;->a(III)I

    move-result v2

    .line 612
    iget-object v4, p0, Landroid/support/v4/widget/g;->r:Landroid/support/v4/widget/g$a;

    invoke-virtual {v4, p1}, Landroid/support/v4/widget/g$a;->b(Landroid/view/View;)I

    move-result v4

    invoke-direct {p0, p3, v3, v4}, Landroid/support/v4/widget/g;->a(III)I

    move-result v3

    .line 614
    int-to-float v2, v2

    mul-float/2addr v1, v2

    int-to-float v2, v3

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 606
    :cond_4e
    int-to-float v0, v0

    int-to-float v1, v7

    div-float/2addr v0, v1

    move v1, v0

    goto :goto_2e

    .line 608
    :cond_53
    int-to-float v0, v4

    int-to-float v4, v7

    div-float/2addr v0, v4

    goto :goto_33
.end method

.method private a(FF)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 759
    iput-boolean v3, p0, Landroid/support/v4/widget/g;->t:Z

    .line 760
    iget-object v0, p0, Landroid/support/v4/widget/g;->r:Landroid/support/v4/widget/g$a;

    iget-object v1, p0, Landroid/support/v4/widget/g;->s:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/widget/g$a;->a(Landroid/view/View;FF)V

    .line 761
    iput-boolean v2, p0, Landroid/support/v4/widget/g;->t:Z

    .line 763
    iget v0, p0, Landroid/support/v4/widget/g;->a:I

    if-ne v0, v3, :cond_14

    .line 765
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/g;->b(I)V

    .line 767
    :cond_14
    return-void
.end method

.method private a(FFI)V
    .registers 7

    .prologue
    .line 828
    invoke-direct {p0, p3}, Landroid/support/v4/widget/g;->e(I)V

    .line 829
    iget-object v0, p0, Landroid/support/v4/widget/g;->d:[F

    iget-object v1, p0, Landroid/support/v4/widget/g;->f:[F

    aput p1, v1, p3

    aput p1, v0, p3

    .line 830
    iget-object v0, p0, Landroid/support/v4/widget/g;->e:[F

    iget-object v1, p0, Landroid/support/v4/widget/g;->g:[F

    aput p2, v1, p3

    aput p2, v0, p3

    .line 831
    iget-object v0, p0, Landroid/support/v4/widget/g;->h:[I

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {p0, v1, v2}, Landroid/support/v4/widget/g;->e(II)I

    move-result v1

    aput v1, v0, p3

    .line 832
    iget v0, p0, Landroid/support/v4/widget/g;->k:I

    const/4 v1, 0x1

    shl-int/2addr v1, p3

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/g;->k:I

    .line 833
    return-void
.end method

.method private a(FFII)Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 1218
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1219
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1221
    iget-object v3, p0, Landroid/support/v4/widget/g;->h:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-ne v3, p4, :cond_31

    iget v3, p0, Landroid/support/v4/widget/g;->p:I

    and-int/2addr v3, p4

    if-eqz v3, :cond_31

    iget-object v3, p0, Landroid/support/v4/widget/g;->j:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_31

    iget-object v3, p0, Landroid/support/v4/widget/g;->i:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_31

    iget v3, p0, Landroid/support/v4/widget/g;->b:I

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_32

    iget v3, p0, Landroid/support/v4/widget/g;->b:I

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_32

    .line 1231
    :cond_31
    :goto_31
    return v0

    .line 1227
    :cond_32
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    cmpg-float v2, v1, v2

    if-gez v2, :cond_49

    iget-object v2, p0, Landroid/support/v4/widget/g;->r:Landroid/support/v4/widget/g$a;

    invoke-virtual {v2, p4}, Landroid/support/v4/widget/g$a;->b(I)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 1228
    iget-object v1, p0, Landroid/support/v4/widget/g;->j:[I

    aget v2, v1, p3

    or-int/2addr v2, p4

    aput v2, v1, p3

    goto :goto_31

    .line 1231
    :cond_49
    iget-object v2, p0, Landroid/support/v4/widget/g;->i:[I

    aget v2, v2, p3

    and-int/2addr v2, p4

    if-nez v2, :cond_31

    iget v2, p0, Landroid/support/v4/widget/g;->b:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_31

    const/4 v0, 0x1

    goto :goto_31
.end method

.method private a(IIII)Z
    .registers 15

    .prologue
    const/4 v0, 0x0

    .line 577
    iget-object v1, p0, Landroid/support/v4/widget/g;->s:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 578
    iget-object v1, p0, Landroid/support/v4/widget/g;->s:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    .line 579
    sub-int v2, p1, v7

    .line 580
    sub-int v3, p2, v6

    .line 582
    if-nez v2, :cond_1e

    if-nez v3, :cond_1e

    .line 584
    iget-object v1, p0, Landroid/support/v4/widget/g;->q:Landroid/support/v4/widget/d;

    invoke-virtual {v1}, Landroid/support/v4/widget/d;->g()V

    .line 585
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/g;->b(I)V

    .line 593
    :goto_1d
    return v0

    .line 589
    :cond_1e
    iget-object v1, p0, Landroid/support/v4/widget/g;->s:Landroid/view/View;

    move-object v0, p0

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/widget/g;->a(Landroid/view/View;IIII)I

    move-result v9

    .line 590
    iget-object v4, p0, Landroid/support/v4/widget/g;->q:Landroid/support/v4/widget/d;

    move v5, v7

    move v7, v2

    move v8, v3

    invoke-virtual/range {v4 .. v9}, Landroid/support/v4/widget/d;->a(IIIII)V

    .line 592
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/g;->b(I)V

    .line 593
    const/4 v0, 0x1

    goto :goto_1d
.end method

.method private a(Landroid/view/View;FF)Z
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1245
    if-nez p1, :cond_6

    move v1, v2

    .line 1258
    :cond_5
    :goto_5
    return v1

    .line 1248
    :cond_6
    iget-object v0, p0, Landroid/support/v4/widget/g;->r:Landroid/support/v4/widget/g$a;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/g$a;->a(Landroid/view/View;)I

    move-result v0

    if-lez v0, :cond_2d

    move v0, v1

    .line 1249
    :goto_f
    iget-object v3, p0, Landroid/support/v4/widget/g;->r:Landroid/support/v4/widget/g$a;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/g$a;->b(Landroid/view/View;)I

    move-result v3

    if-lez v3, :cond_2f

    move v3, v1

    .line 1251
    :goto_18
    if-eqz v0, :cond_31

    if-eqz v3, :cond_31

    .line 1252
    mul-float v0, p2, p2

    mul-float v3, p3, p3

    add-float/2addr v0, v3

    iget v3, p0, Landroid/support/v4/widget/g;->b:I

    iget v4, p0, Landroid/support/v4/widget/g;->b:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_5

    move v1, v2

    goto :goto_5

    :cond_2d
    move v0, v2

    .line 1248
    goto :goto_f

    :cond_2f
    move v3, v2

    .line 1249
    goto :goto_18

    .line 1253
    :cond_31
    if-eqz v0, :cond_40

    .line 1254
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Landroid/support/v4/widget/g;->b:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_5

    move v1, v2

    goto :goto_5

    .line 1255
    :cond_40
    if-eqz v3, :cond_4f

    .line 1256
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Landroid/support/v4/widget/g;->b:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_5

    move v1, v2

    goto :goto_5

    :cond_4f
    move v1, v2

    .line 1258
    goto :goto_5
.end method

.method private b(III)I
    .registers 5

    .prologue
    .line 650
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 651
    if-ge v0, p2, :cond_8

    const/4 p3, 0x0

    .line 653
    :cond_7
    :goto_7
    return p3

    .line 652
    :cond_8
    if-le v0, p3, :cond_e

    if-gtz p1, :cond_7

    neg-int p3, p3

    goto :goto_7

    :cond_e
    move p3, p1

    .line 653
    goto :goto_7
.end method

.method private b(FFI)V
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 1197
    const/4 v1, 0x0

    .line 1198
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/widget/g;->a(FFII)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1201
    :goto_8
    const/4 v1, 0x4

    invoke-direct {p0, p2, p1, p3, v1}, Landroid/support/v4/widget/g;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1202
    or-int/lit8 v0, v0, 0x4

    .line 1204
    :cond_11
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/support/v4/widget/g;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1205
    or-int/lit8 v0, v0, 0x2

    .line 1207
    :cond_1a
    const/16 v1, 0x8

    invoke-direct {p0, p2, p1, p3, v1}, Landroid/support/v4/widget/g;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1208
    or-int/lit8 v0, v0, 0x8

    .line 1211
    :cond_24
    if-eqz v0, :cond_32

    .line 1212
    iget-object v1, p0, Landroid/support/v4/widget/g;->i:[I

    aget v2, v1, p3

    or-int/2addr v2, v0

    aput v2, v1, p3

    .line 1213
    iget-object v1, p0, Landroid/support/v4/widget/g;->r:Landroid/support/v4/widget/g$a;

    invoke-virtual {v1, v0, p3}, Landroid/support/v4/widget/g$a;->b(II)V

    .line 1215
    :cond_32
    return-void

    :cond_33
    move v0, v1

    goto :goto_8
.end method

.method private b(IIII)V
    .registers 11

    .prologue
    .line 1366
    .line 1368
    iget-object v0, p0, Landroid/support/v4/widget/g;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 1369
    iget-object v1, p0, Landroid/support/v4/widget/g;->s:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1370
    if-eqz p3, :cond_40

    .line 1371
    iget-object v2, p0, Landroid/support/v4/widget/g;->r:Landroid/support/v4/widget/g$a;

    iget-object v3, p0, Landroid/support/v4/widget/g;->s:Landroid/view/View;

    invoke-virtual {v2, v3, p1, p3}, Landroid/support/v4/widget/g$a;->a(Landroid/view/View;II)I

    move-result v2

    .line 1372
    iget-object v3, p0, Landroid/support/v4/widget/g;->s:Landroid/view/View;

    sub-int v4, v2, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1374
    :goto_1d
    if-eqz p4, :cond_3e

    .line 1375
    iget-object v3, p0, Landroid/support/v4/widget/g;->r:Landroid/support/v4/widget/g$a;

    iget-object v4, p0, Landroid/support/v4/widget/g;->s:Landroid/view/View;

    invoke-virtual {v3, v4, p2, p4}, Landroid/support/v4/widget/g$a;->b(Landroid/view/View;II)I

    move-result v3

    .line 1376
    iget-object v4, p0, Landroid/support/v4/widget/g;->s:Landroid/view/View;

    sub-int v5, v3, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1379
    :goto_2e
    if-nez p3, :cond_32

    if-eqz p4, :cond_3d

    .line 1380
    :cond_32
    sub-int v4, v2, v0

    .line 1381
    sub-int v5, v3, v1

    .line 1382
    iget-object v0, p0, Landroid/support/v4/widget/g;->r:Landroid/support/v4/widget/g$a;

    iget-object v1, p0, Landroid/support/v4/widget/g;->s:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/g$a;->a(Landroid/view/View;IIII)V

    .line 1385
    :cond_3d
    return-void

    :cond_3e
    move v3, p2

    goto :goto_2e

    :cond_40
    move v2, p1

    goto :goto_1d
.end method

.method private c(Landroid/view/MotionEvent;)V
    .registers 8

    .prologue
    .line 836
    invoke-static {p1}, Landroid/support/v4/view/m;->c(Landroid/view/MotionEvent;)I

    move-result v1

    .line 837
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_1e

    .line 838
    invoke-static {p1, v0}, Landroid/support/v4/view/m;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 839
    invoke-static {p1, v0}, Landroid/support/v4/view/m;->c(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 840
    invoke-static {p1, v0}, Landroid/support/v4/view/m;->d(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 841
    iget-object v5, p0, Landroid/support/v4/widget/g;->f:[F

    aput v3, v5, v2

    .line 842
    iget-object v3, p0, Landroid/support/v4/widget/g;->g:[F

    aput v4, v3, v2

    .line 837
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 844
    :cond_1e
    return-void
.end method

.method private d(I)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 784
    iget-object v0, p0, Landroid/support/v4/widget/g;->d:[F

    if-nez v0, :cond_7

    .line 795
    :goto_6
    return-void

    .line 787
    :cond_7
    iget-object v0, p0, Landroid/support/v4/widget/g;->d:[F

    aput v1, v0, p1

    .line 788
    iget-object v0, p0, Landroid/support/v4/widget/g;->e:[F

    aput v1, v0, p1

    .line 789
    iget-object v0, p0, Landroid/support/v4/widget/g;->f:[F

    aput v1, v0, p1

    .line 790
    iget-object v0, p0, Landroid/support/v4/widget/g;->g:[F

    aput v1, v0, p1

    .line 791
    iget-object v0, p0, Landroid/support/v4/widget/g;->h:[I

    aput v2, v0, p1

    .line 792
    iget-object v0, p0, Landroid/support/v4/widget/g;->i:[I

    aput v2, v0, p1

    .line 793
    iget-object v0, p0, Landroid/support/v4/widget/g;->j:[I

    aput v2, v0, p1

    .line 794
    iget v0, p0, Landroid/support/v4/widget/g;->k:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/g;->k:I

    goto :goto_6
.end method

.method private e(II)I
    .registers 6

    .prologue
    .line 1440
    const/4 v0, 0x0

    .line 1442
    iget-object v1, p0, Landroid/support/v4/widget/g;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/g;->o:I

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_d

    const/4 v0, 0x1

    .line 1443
    :cond_d
    iget-object v1, p0, Landroid/support/v4/widget/g;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/g;->o:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_1a

    or-int/lit8 v0, v0, 0x4

    .line 1444
    :cond_1a
    iget-object v1, p0, Landroid/support/v4/widget/g;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/g;->o:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_27

    or-int/lit8 v0, v0, 0x2

    .line 1445
    :cond_27
    iget-object v1, p0, Landroid/support/v4/widget/g;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/g;->o:I

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_34

    or-int/lit8 v0, v0, 0x8

    .line 1447
    :cond_34
    return v0
.end method

.method private e(I)V
    .registers 12

    .prologue
    const/4 v9, 0x0

    .line 798
    iget-object v0, p0, Landroid/support/v4/widget/g;->d:[F

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v4/widget/g;->d:[F

    array-length v0, v0

    if-gt v0, p1, :cond_70

    .line 799
    :cond_a
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [F

    .line 800
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [F

    .line 801
    add-int/lit8 v2, p1, 0x1

    new-array v2, v2, [F

    .line 802
    add-int/lit8 v3, p1, 0x1

    new-array v3, v3, [F

    .line 803
    add-int/lit8 v4, p1, 0x1

    new-array v4, v4, [I

    .line 804
    add-int/lit8 v5, p1, 0x1

    new-array v5, v5, [I

    .line 805
    add-int/lit8 v6, p1, 0x1

    new-array v6, v6, [I

    .line 807
    iget-object v7, p0, Landroid/support/v4/widget/g;->d:[F

    if-eqz v7, :cond_62

    .line 808
    iget-object v7, p0, Landroid/support/v4/widget/g;->d:[F

    iget-object v8, p0, Landroid/support/v4/widget/g;->d:[F

    array-length v8, v8

    invoke-static {v7, v9, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 809
    iget-object v7, p0, Landroid/support/v4/widget/g;->e:[F

    iget-object v8, p0, Landroid/support/v4/widget/g;->e:[F

    array-length v8, v8

    invoke-static {v7, v9, v1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 810
    iget-object v7, p0, Landroid/support/v4/widget/g;->f:[F

    iget-object v8, p0, Landroid/support/v4/widget/g;->f:[F

    array-length v8, v8

    invoke-static {v7, v9, v2, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 811
    iget-object v7, p0, Landroid/support/v4/widget/g;->g:[F

    iget-object v8, p0, Landroid/support/v4/widget/g;->g:[F

    array-length v8, v8

    invoke-static {v7, v9, v3, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 812
    iget-object v7, p0, Landroid/support/v4/widget/g;->h:[I

    iget-object v8, p0, Landroid/support/v4/widget/g;->h:[I

    array-length v8, v8

    invoke-static {v7, v9, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 813
    iget-object v7, p0, Landroid/support/v4/widget/g;->i:[I

    iget-object v8, p0, Landroid/support/v4/widget/g;->i:[I

    array-length v8, v8

    invoke-static {v7, v9, v5, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 814
    iget-object v7, p0, Landroid/support/v4/widget/g;->j:[I

    iget-object v8, p0, Landroid/support/v4/widget/g;->j:[I

    array-length v8, v8

    invoke-static {v7, v9, v6, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 817
    :cond_62
    iput-object v0, p0, Landroid/support/v4/widget/g;->d:[F

    .line 818
    iput-object v1, p0, Landroid/support/v4/widget/g;->e:[F

    .line 819
    iput-object v2, p0, Landroid/support/v4/widget/g;->f:[F

    .line 820
    iput-object v3, p0, Landroid/support/v4/widget/g;->g:[F

    .line 821
    iput-object v4, p0, Landroid/support/v4/widget/g;->h:[I

    .line 822
    iput-object v5, p0, Landroid/support/v4/widget/g;->i:[I

    .line 823
    iput-object v6, p0, Landroid/support/v4/widget/g;->j:[I

    .line 825
    :cond_70
    return-void
.end method

.method private g()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 770
    iget-object v0, p0, Landroid/support/v4/widget/g;->d:[F

    if-nez v0, :cond_7

    .line 781
    :goto_6
    return-void

    .line 773
    :cond_7
    iget-object v0, p0, Landroid/support/v4/widget/g;->d:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 774
    iget-object v0, p0, Landroid/support/v4/widget/g;->e:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 775
    iget-object v0, p0, Landroid/support/v4/widget/g;->f:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 776
    iget-object v0, p0, Landroid/support/v4/widget/g;->g:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 777
    iget-object v0, p0, Landroid/support/v4/widget/g;->h:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 778
    iget-object v0, p0, Landroid/support/v4/widget/g;->i:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 779
    iget-object v0, p0, Landroid/support/v4/widget/g;->j:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 780
    iput v2, p0, Landroid/support/v4/widget/g;->k:I

    goto :goto_6
.end method

.method private h()V
    .registers 5

    .prologue
    .line 1355
    iget-object v0, p0, Landroid/support/v4/widget/g;->l:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Landroid/support/v4/widget/g;->m:F

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1356
    iget-object v0, p0, Landroid/support/v4/widget/g;->l:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/v4/widget/g;->c:I

    invoke-static {v0, v1}, Landroid/support/v4/view/p;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    iget v1, p0, Landroid/support/v4/widget/g;->n:F

    iget v2, p0, Landroid/support/v4/widget/g;->m:F

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/widget/g;->a(FFF)F

    move-result v0

    .line 1359
    iget-object v1, p0, Landroid/support/v4/widget/g;->l:Landroid/view/VelocityTracker;

    iget v2, p0, Landroid/support/v4/widget/g;->c:I

    invoke-static {v1, v2}, Landroid/support/v4/view/p;->b(Landroid/view/VelocityTracker;I)F

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/g;->n:F

    iget v3, p0, Landroid/support/v4/widget/g;->m:F

    invoke-direct {p0, v1, v2, v3}, Landroid/support/v4/widget/g;->a(FFF)F

    move-result v1

    .line 1362
    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/g;->a(FF)V

    .line 1363
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 421
    iget v0, p0, Landroid/support/v4/widget/g;->a:I

    return v0
.end method

.method public a(Landroid/view/View;I)V
    .registers 6

    .prologue
    .line 460
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/widget/g;->u:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_29

    .line 461
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/widget/g;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_29
    iput-object p1, p0, Landroid/support/v4/widget/g;->s:Landroid/view/View;

    .line 466
    iput p2, p0, Landroid/support/v4/widget/g;->c:I

    .line 467
    iget-object v0, p0, Landroid/support/v4/widget/g;->r:Landroid/support/v4/widget/g$a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/widget/g$a;->b(Landroid/view/View;I)V

    .line 468
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/g;->b(I)V

    .line 469
    return-void
.end method

.method public a(I)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 860
    iget v1, p0, Landroid/support/v4/widget/g;->k:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public a(II)Z
    .registers 6

    .prologue
    .line 557
    iget-boolean v0, p0, Landroid/support/v4/widget/g;->t:Z

    if-nez v0, :cond_c

    .line 558
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_c
    iget-object v0, p0, Landroid/support/v4/widget/g;->l:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/v4/widget/g;->c:I

    invoke-static {v0, v1}, Landroid/support/v4/view/p;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Landroid/support/v4/widget/g;->l:Landroid/view/VelocityTracker;

    iget v2, p0, Landroid/support/v4/widget/g;->c:I

    invoke-static {v1, v2}, Landroid/support/v4/view/p;->b(Landroid/view/VelocityTracker;I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/widget/g;->a(IIII)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .registers 12

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 939
    invoke-static {p1}, Landroid/support/v4/view/m;->a(Landroid/view/MotionEvent;)I

    move-result v2

    .line 940
    invoke-static {p1}, Landroid/support/v4/view/m;->b(Landroid/view/MotionEvent;)I

    move-result v3

    .line 942
    if-nez v2, :cond_10

    .line 945
    invoke-virtual {p0}, Landroid/support/v4/widget/g;->e()V

    .line 948
    :cond_10
    iget-object v4, p0, Landroid/support/v4/widget/g;->l:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1a

    .line 949
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v4/widget/g;->l:Landroid/view/VelocityTracker;

    .line 951
    :cond_1a
    iget-object v4, p0, Landroid/support/v4/widget/g;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 953
    packed-switch v2, :pswitch_data_e4

    .line 1036
    :cond_22
    :goto_22
    :pswitch_22
    iget v2, p0, Landroid/support/v4/widget/g;->a:I

    if-ne v2, v0, :cond_e0

    :goto_26
    return v0

    .line 955
    :pswitch_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 956
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 957
    invoke-static {p1, v1}, Landroid/support/v4/view/m;->b(Landroid/view/MotionEvent;I)I

    move-result v4

    .line 958
    invoke-direct {p0, v2, v3, v4}, Landroid/support/v4/widget/g;->a(FFI)V

    .line 960
    float-to-int v2, v2

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/g;->d(II)Landroid/view/View;

    move-result-object v2

    .line 963
    iget-object v3, p0, Landroid/support/v4/widget/g;->s:Landroid/view/View;

    if-ne v2, v3, :cond_47

    iget v3, p0, Landroid/support/v4/widget/g;->a:I

    if-ne v3, v6, :cond_47

    .line 964
    invoke-virtual {p0, v2, v4}, Landroid/support/v4/widget/g;->b(Landroid/view/View;I)Z

    .line 967
    :cond_47
    iget-object v2, p0, Landroid/support/v4/widget/g;->h:[I

    aget v2, v2, v4

    .line 968
    iget v3, p0, Landroid/support/v4/widget/g;->p:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_22

    .line 969
    iget-object v3, p0, Landroid/support/v4/widget/g;->r:Landroid/support/v4/widget/g$a;

    iget v5, p0, Landroid/support/v4/widget/g;->p:I

    and-int/2addr v2, v5

    invoke-virtual {v3, v2, v4}, Landroid/support/v4/widget/g$a;->a(II)V

    goto :goto_22

    .line 975
    :pswitch_59
    invoke-static {p1, v3}, Landroid/support/v4/view/m;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 976
    invoke-static {p1, v3}, Landroid/support/v4/view/m;->c(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 977
    invoke-static {p1, v3}, Landroid/support/v4/view/m;->d(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 979
    invoke-direct {p0, v4, v3, v2}, Landroid/support/v4/widget/g;->a(FFI)V

    .line 982
    iget v5, p0, Landroid/support/v4/widget/g;->a:I

    if-nez v5, :cond_7e

    .line 983
    iget-object v3, p0, Landroid/support/v4/widget/g;->h:[I

    aget v3, v3, v2

    .line 984
    iget v4, p0, Landroid/support/v4/widget/g;->p:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_22

    .line 985
    iget-object v4, p0, Landroid/support/v4/widget/g;->r:Landroid/support/v4/widget/g$a;

    iget v5, p0, Landroid/support/v4/widget/g;->p:I

    and-int/2addr v3, v5

    invoke-virtual {v4, v3, v2}, Landroid/support/v4/widget/g$a;->a(II)V

    goto :goto_22

    .line 987
    :cond_7e
    iget v5, p0, Landroid/support/v4/widget/g;->a:I

    if-ne v5, v6, :cond_22

    .line 989
    float-to-int v4, v4

    float-to-int v3, v3

    invoke-virtual {p0, v4, v3}, Landroid/support/v4/widget/g;->d(II)Landroid/view/View;

    move-result-object v3

    .line 990
    iget-object v4, p0, Landroid/support/v4/widget/g;->s:Landroid/view/View;

    if-ne v3, v4, :cond_22

    .line 991
    invoke-virtual {p0, v3, v2}, Landroid/support/v4/widget/g;->b(Landroid/view/View;I)Z

    goto :goto_22

    .line 999
    :pswitch_90
    invoke-static {p1}, Landroid/support/v4/view/m;->c(Landroid/view/MotionEvent;)I

    move-result v3

    move v2, v1

    .line 1000
    :goto_95
    if-ge v2, v3, :cond_b6

    .line 1001
    invoke-static {p1, v2}, Landroid/support/v4/view/m;->b(Landroid/view/MotionEvent;I)I

    move-result v4

    .line 1002
    invoke-static {p1, v2}, Landroid/support/v4/view/m;->c(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 1003
    invoke-static {p1, v2}, Landroid/support/v4/view/m;->d(Landroid/view/MotionEvent;I)F

    move-result v6

    .line 1004
    iget-object v7, p0, Landroid/support/v4/widget/g;->d:[F

    aget v7, v7, v4

    sub-float v7, v5, v7

    .line 1005
    iget-object v8, p0, Landroid/support/v4/widget/g;->e:[F

    aget v8, v8, v4

    sub-float v8, v6, v8

    .line 1007
    invoke-direct {p0, v7, v8, v4}, Landroid/support/v4/widget/g;->b(FFI)V

    .line 1008
    iget v9, p0, Landroid/support/v4/widget/g;->a:I

    if-ne v9, v0, :cond_bb

    .line 1019
    :cond_b6
    invoke-direct {p0, p1}, Landroid/support/v4/widget/g;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_22

    .line 1013
    :cond_bb
    float-to-int v5, v5

    float-to-int v6, v6

    invoke-virtual {p0, v5, v6}, Landroid/support/v4/widget/g;->d(II)Landroid/view/View;

    move-result-object v5

    .line 1014
    if-eqz v5, :cond_cf

    invoke-direct {p0, v5, v7, v8}, Landroid/support/v4/widget/g;->a(Landroid/view/View;FF)Z

    move-result v6

    if-eqz v6, :cond_cf

    invoke-virtual {p0, v5, v4}, Landroid/support/v4/widget/g;->b(Landroid/view/View;I)Z

    move-result v4

    if-nez v4, :cond_b6

    .line 1000
    :cond_cf
    add-int/lit8 v2, v2, 0x1

    goto :goto_95

    .line 1024
    :pswitch_d2
    invoke-static {p1, v3}, Landroid/support/v4/view/m;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 1025
    invoke-direct {p0, v2}, Landroid/support/v4/widget/g;->d(I)V

    goto/16 :goto_22

    .line 1031
    :pswitch_db
    invoke-virtual {p0}, Landroid/support/v4/widget/g;->e()V

    goto/16 :goto_22

    :cond_e0
    move v0, v1

    .line 1036
    goto/16 :goto_26

    .line 953
    nop

    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_27
        :pswitch_db
        :pswitch_90
        :pswitch_db
        :pswitch_22
        :pswitch_59
        :pswitch_d2
    .end packed-switch
.end method

.method public a(Landroid/view/View;II)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 539
    iput-object p1, p0, Landroid/support/v4/widget/g;->s:Landroid/view/View;

    .line 540
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/g;->c:I

    .line 542
    invoke-direct {p0, p2, p3, v1, v1}, Landroid/support/v4/widget/g;->a(IIII)Z

    move-result v0

    return v0
.end method

.method public a(Z)Z
    .registers 11

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x0

    .line 715
    iget v0, p0, Landroid/support/v4/widget/g;->a:I

    if-ne v0, v8, :cond_69

    .line 716
    iget-object v0, p0, Landroid/support/v4/widget/g;->q:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->f()Z

    move-result v7

    .line 717
    iget-object v0, p0, Landroid/support/v4/widget/g;->q:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->b()I

    move-result v2

    .line 718
    iget-object v0, p0, Landroid/support/v4/widget/g;->q:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->c()I

    move-result v3

    .line 719
    iget-object v0, p0, Landroid/support/v4/widget/g;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v4, v2, v0

    .line 720
    iget-object v0, p0, Landroid/support/v4/widget/g;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v5, v3, v0

    .line 722
    if-eqz v4, :cond_2f

    .line 723
    iget-object v0, p0, Landroid/support/v4/widget/g;->s:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 725
    :cond_2f
    if-eqz v5, :cond_36

    .line 726
    iget-object v0, p0, Landroid/support/v4/widget/g;->s:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 729
    :cond_36
    if-nez v4, :cond_3a

    if-eqz v5, :cond_41

    .line 730
    :cond_3a
    iget-object v0, p0, Landroid/support/v4/widget/g;->r:Landroid/support/v4/widget/g$a;

    iget-object v1, p0, Landroid/support/v4/widget/g;->s:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/g$a;->a(Landroid/view/View;IIII)V

    .line 733
    :cond_41
    if-eqz v7, :cond_75

    iget-object v0, p0, Landroid/support/v4/widget/g;->q:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->d()I

    move-result v0

    if-ne v2, v0, :cond_75

    iget-object v0, p0, Landroid/support/v4/widget/g;->q:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->e()I

    move-result v0

    if-ne v3, v0, :cond_75

    .line 736
    iget-object v0, p0, Landroid/support/v4/widget/g;->q:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->g()V

    .line 737
    iget-object v0, p0, Landroid/support/v4/widget/g;->q:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->a()Z

    move-result v0

    .line 740
    :goto_5e
    if-nez v0, :cond_69

    .line 741
    if-eqz p1, :cond_6f

    .line 742
    iget-object v0, p0, Landroid/support/v4/widget/g;->u:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v4/widget/g;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 749
    :cond_69
    :goto_69
    iget v0, p0, Landroid/support/v4/widget/g;->a:I

    if-ne v0, v8, :cond_73

    const/4 v0, 0x1

    :goto_6e
    return v0

    .line 744
    :cond_6f
    invoke-virtual {p0, v6}, Landroid/support/v4/widget/g;->b(I)V

    goto :goto_69

    :cond_73
    move v0, v6

    .line 749
    goto :goto_6e

    :cond_75
    move v0, v7

    goto :goto_5e
.end method

.method public b()I
    .registers 2

    .prologue
    .line 448
    iget v0, p0, Landroid/support/v4/widget/g;->o:I

    return v0
.end method

.method b(I)V
    .registers 3

    .prologue
    .line 864
    iget v0, p0, Landroid/support/v4/widget/g;->a:I

    if-eq v0, p1, :cond_10

    .line 865
    iput p1, p0, Landroid/support/v4/widget/g;->a:I

    .line 866
    iget-object v0, p0, Landroid/support/v4/widget/g;->r:Landroid/support/v4/widget/g$a;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/g$a;->a(I)V

    .line 867
    if-nez p1, :cond_10

    .line 868
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/widget/g;->s:Landroid/view/View;

    .line 871
    :cond_10
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)V
    .registers 11

    .prologue
    const/4 v1, -0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 1046
    invoke-static {p1}, Landroid/support/v4/view/m;->a(Landroid/view/MotionEvent;)I

    move-result v2

    .line 1047
    invoke-static {p1}, Landroid/support/v4/view/m;->b(Landroid/view/MotionEvent;)I

    move-result v3

    .line 1049
    if-nez v2, :cond_11

    .line 1052
    invoke-virtual {p0}, Landroid/support/v4/widget/g;->e()V

    .line 1055
    :cond_11
    iget-object v4, p0, Landroid/support/v4/widget/g;->l:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1b

    .line 1056
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v4/widget/g;->l:Landroid/view/VelocityTracker;

    .line 1058
    :cond_1b
    iget-object v4, p0, Landroid/support/v4/widget/g;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1060
    packed-switch v2, :pswitch_data_15e

    .line 1194
    :cond_23
    :goto_23
    :pswitch_23
    return-void

    .line 1062
    :pswitch_24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1063
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1064
    invoke-static {p1, v0}, Landroid/support/v4/view/m;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1065
    float-to-int v3, v1

    float-to-int v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/support/v4/widget/g;->d(II)Landroid/view/View;

    move-result-object v3

    .line 1067
    invoke-direct {p0, v1, v2, v0}, Landroid/support/v4/widget/g;->a(FFI)V

    .line 1072
    invoke-virtual {p0, v3, v0}, Landroid/support/v4/widget/g;->b(Landroid/view/View;I)Z

    .line 1074
    iget-object v1, p0, Landroid/support/v4/widget/g;->h:[I

    aget v1, v1, v0

    .line 1075
    iget v2, p0, Landroid/support/v4/widget/g;->p:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_23

    .line 1076
    iget-object v2, p0, Landroid/support/v4/widget/g;->r:Landroid/support/v4/widget/g$a;

    iget v3, p0, Landroid/support/v4/widget/g;->p:I

    and-int/2addr v1, v3

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/widget/g$a;->a(II)V

    goto :goto_23

    .line 1082
    :pswitch_4e
    invoke-static {p1, v3}, Landroid/support/v4/view/m;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1083
    invoke-static {p1, v3}, Landroid/support/v4/view/m;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 1084
    invoke-static {p1, v3}, Landroid/support/v4/view/m;->d(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 1086
    invoke-direct {p0, v1, v2, v0}, Landroid/support/v4/widget/g;->a(FFI)V

    .line 1089
    iget v3, p0, Landroid/support/v4/widget/g;->a:I

    if-nez v3, :cond_7c

    .line 1092
    float-to-int v1, v1

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Landroid/support/v4/widget/g;->d(II)Landroid/view/View;

    move-result-object v1

    .line 1093
    invoke-virtual {p0, v1, v0}, Landroid/support/v4/widget/g;->b(Landroid/view/View;I)Z

    .line 1095
    iget-object v1, p0, Landroid/support/v4/widget/g;->h:[I

    aget v1, v1, v0

    .line 1096
    iget v2, p0, Landroid/support/v4/widget/g;->p:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_23

    .line 1097
    iget-object v2, p0, Landroid/support/v4/widget/g;->r:Landroid/support/v4/widget/g$a;

    iget v3, p0, Landroid/support/v4/widget/g;->p:I

    and-int/2addr v1, v3

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/widget/g$a;->a(II)V

    goto :goto_23

    .line 1099
    :cond_7c
    float-to-int v1, v1

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Landroid/support/v4/widget/g;->c(II)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1104
    iget-object v1, p0, Landroid/support/v4/widget/g;->s:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/widget/g;->b(Landroid/view/View;I)Z

    goto :goto_23

    .line 1110
    :pswitch_8a
    iget v1, p0, Landroid/support/v4/widget/g;->a:I

    if-ne v1, v8, :cond_c2

    .line 1111
    iget v0, p0, Landroid/support/v4/widget/g;->c:I

    invoke-static {p1, v0}, Landroid/support/v4/view/m;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1112
    invoke-static {p1, v0}, Landroid/support/v4/view/m;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 1113
    invoke-static {p1, v0}, Landroid/support/v4/view/m;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 1114
    iget-object v2, p0, Landroid/support/v4/widget/g;->f:[F

    iget v3, p0, Landroid/support/v4/widget/g;->c:I

    aget v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 1115
    iget-object v2, p0, Landroid/support/v4/widget/g;->g:[F

    iget v3, p0, Landroid/support/v4/widget/g;->c:I

    aget v2, v2, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 1117
    iget-object v2, p0, Landroid/support/v4/widget/g;->s:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Landroid/support/v4/widget/g;->s:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0, v2, v3, v1, v0}, Landroid/support/v4/widget/g;->b(IIII)V

    .line 1119
    invoke-direct {p0, p1}, Landroid/support/v4/widget/g;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_23

    .line 1122
    :cond_c2
    invoke-static {p1}, Landroid/support/v4/view/m;->c(Landroid/view/MotionEvent;)I

    move-result v1

    .line 1123
    :goto_c6
    if-ge v0, v1, :cond_e7

    .line 1124
    invoke-static {p1, v0}, Landroid/support/v4/view/m;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 1125
    invoke-static {p1, v0}, Landroid/support/v4/view/m;->c(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 1126
    invoke-static {p1, v0}, Landroid/support/v4/view/m;->d(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 1127
    iget-object v5, p0, Landroid/support/v4/widget/g;->d:[F

    aget v5, v5, v2

    sub-float v5, v3, v5

    .line 1128
    iget-object v6, p0, Landroid/support/v4/widget/g;->e:[F

    aget v6, v6, v2

    sub-float v6, v4, v6

    .line 1130
    invoke-direct {p0, v5, v6, v2}, Landroid/support/v4/widget/g;->b(FFI)V

    .line 1131
    iget v7, p0, Landroid/support/v4/widget/g;->a:I

    if-ne v7, v8, :cond_ec

    .line 1142
    :cond_e7
    invoke-direct {p0, p1}, Landroid/support/v4/widget/g;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_23

    .line 1136
    :cond_ec
    float-to-int v3, v3

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4}, Landroid/support/v4/widget/g;->d(II)Landroid/view/View;

    move-result-object v3

    .line 1137
    invoke-direct {p0, v3, v5, v6}, Landroid/support/v4/widget/g;->a(Landroid/view/View;FF)Z

    move-result v4

    if-eqz v4, :cond_fe

    invoke-virtual {p0, v3, v2}, Landroid/support/v4/widget/g;->b(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_e7

    .line 1123
    :cond_fe
    add-int/lit8 v0, v0, 0x1

    goto :goto_c6

    .line 1148
    :pswitch_101
    invoke-static {p1, v3}, Landroid/support/v4/view/m;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 1149
    iget v3, p0, Landroid/support/v4/widget/g;->a:I

    if-ne v3, v8, :cond_13f

    iget v3, p0, Landroid/support/v4/widget/g;->c:I

    if-ne v2, v3, :cond_13f

    .line 1152
    invoke-static {p1}, Landroid/support/v4/view/m;->c(Landroid/view/MotionEvent;)I

    move-result v3

    .line 1153
    :goto_111
    if-ge v0, v3, :cond_15c

    .line 1154
    invoke-static {p1, v0}, Landroid/support/v4/view/m;->b(Landroid/view/MotionEvent;I)I

    move-result v4

    .line 1155
    iget v5, p0, Landroid/support/v4/widget/g;->c:I

    if-ne v4, v5, :cond_11e

    .line 1153
    :cond_11b
    add-int/lit8 v0, v0, 0x1

    goto :goto_111

    .line 1160
    :cond_11e
    invoke-static {p1, v0}, Landroid/support/v4/view/m;->c(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 1161
    invoke-static {p1, v0}, Landroid/support/v4/view/m;->d(Landroid/view/MotionEvent;I)F

    move-result v6

    .line 1162
    float-to-int v5, v5

    float-to-int v6, v6

    invoke-virtual {p0, v5, v6}, Landroid/support/v4/widget/g;->d(II)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v4/widget/g;->s:Landroid/view/View;

    if-ne v5, v6, :cond_11b

    iget-object v5, p0, Landroid/support/v4/widget/g;->s:Landroid/view/View;

    invoke-virtual {p0, v5, v4}, Landroid/support/v4/widget/g;->b(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_11b

    .line 1164
    iget v0, p0, Landroid/support/v4/widget/g;->c:I

    .line 1169
    :goto_13a
    if-ne v0, v1, :cond_13f

    .line 1171
    invoke-direct {p0}, Landroid/support/v4/widget/g;->h()V

    .line 1174
    :cond_13f
    invoke-direct {p0, v2}, Landroid/support/v4/widget/g;->d(I)V

    goto/16 :goto_23

    .line 1179
    :pswitch_144
    iget v0, p0, Landroid/support/v4/widget/g;->a:I

    if-ne v0, v8, :cond_14b

    .line 1180
    invoke-direct {p0}, Landroid/support/v4/widget/g;->h()V

    .line 1182
    :cond_14b
    invoke-virtual {p0}, Landroid/support/v4/widget/g;->e()V

    goto/16 :goto_23

    .line 1187
    :pswitch_150
    iget v0, p0, Landroid/support/v4/widget/g;->a:I

    if-ne v0, v8, :cond_157

    .line 1188
    invoke-direct {p0, v5, v5}, Landroid/support/v4/widget/g;->a(FF)V

    .line 1190
    :cond_157
    invoke-virtual {p0}, Landroid/support/v4/widget/g;->e()V

    goto/16 :goto_23

    :cond_15c
    move v0, v1

    goto :goto_13a

    .line 1060
    :pswitch_data_15e
    .packed-switch 0x0
        :pswitch_24
        :pswitch_144
        :pswitch_8a
        :pswitch_150
        :pswitch_23
        :pswitch_4e
        :pswitch_101
    .end packed-switch
.end method

.method public b(II)Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1301
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/g;->a(I)Z

    move-result v0

    if-nez v0, :cond_a

    move v1, v2

    .line 1318
    :cond_9
    :goto_9
    return v1

    .line 1305
    :cond_a
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v1, :cond_3c

    move v3, v1

    .line 1306
    :goto_f
    and-int/lit8 v0, p1, 0x2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3e

    move v0, v1

    .line 1308
    :goto_15
    iget-object v4, p0, Landroid/support/v4/widget/g;->f:[F

    aget v4, v4, p2

    iget-object v5, p0, Landroid/support/v4/widget/g;->d:[F

    aget v5, v5, p2

    sub-float/2addr v4, v5

    .line 1309
    iget-object v5, p0, Landroid/support/v4/widget/g;->g:[F

    aget v5, v5, p2

    iget-object v6, p0, Landroid/support/v4/widget/g;->e:[F

    aget v6, v6, p2

    sub-float/2addr v5, v6

    .line 1311
    if-eqz v3, :cond_40

    if-eqz v0, :cond_40

    .line 1312
    mul-float v0, v4, v4

    mul-float v3, v5, v5

    add-float/2addr v0, v3

    iget v3, p0, Landroid/support/v4/widget/g;->b:I

    iget v4, p0, Landroid/support/v4/widget/g;->b:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_9

    move v1, v2

    goto :goto_9

    :cond_3c
    move v3, v2

    .line 1305
    goto :goto_f

    :cond_3e
    move v0, v2

    .line 1306
    goto :goto_15

    .line 1313
    :cond_40
    if-eqz v3, :cond_4f

    .line 1314
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Landroid/support/v4/widget/g;->b:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_9

    move v1, v2

    goto :goto_9

    .line 1315
    :cond_4f
    if-eqz v0, :cond_5e

    .line 1316
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Landroid/support/v4/widget/g;->b:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_9

    move v1, v2

    goto :goto_9

    :cond_5e
    move v1, v2

    .line 1318
    goto :goto_9
.end method

.method b(Landroid/view/View;I)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 883
    iget-object v1, p0, Landroid/support/v4/widget/g;->s:Landroid/view/View;

    if-ne p1, v1, :cond_a

    iget v1, p0, Landroid/support/v4/widget/g;->c:I

    if-ne v1, p2, :cond_a

    .line 892
    :goto_9
    return v0

    .line 887
    :cond_a
    if-eqz p1, :cond_1a

    iget-object v1, p0, Landroid/support/v4/widget/g;->r:Landroid/support/v4/widget/g$a;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/widget/g$a;->a(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 888
    iput p2, p0, Landroid/support/v4/widget/g;->c:I

    .line 889
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/g;->a(Landroid/view/View;I)V

    goto :goto_9

    .line 892
    :cond_1a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public b(Landroid/view/View;II)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1410
    if-nez p1, :cond_4

    .line 1413
    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p2, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p3, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    if-ge p3, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public c()Landroid/view/View;
    .registers 2

    .prologue
    .line 475
    iget-object v0, p0, Landroid/support/v4/widget/g;->s:Landroid/view/View;

    return-object v0
.end method

.method public c(I)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1276
    iget-object v1, p0, Landroid/support/v4/widget/g;->d:[F

    array-length v2, v1

    move v1, v0

    .line 1277
    :goto_5
    if-ge v1, v2, :cond_e

    .line 1278
    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/g;->b(II)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1279
    const/4 v0, 0x1

    .line 1282
    :cond_e
    return v0

    .line 1277
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public c(II)Z
    .registers 4

    .prologue
    .line 1397
    iget-object v0, p0, Landroid/support/v4/widget/g;->s:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v4/widget/g;->b(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 490
    iget v0, p0, Landroid/support/v4/widget/g;->b:I

    return v0
.end method

.method public d(II)Landroid/view/View;
    .registers 6

    .prologue
    .line 1428
    iget-object v0, p0, Landroid/support/v4/widget/g;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1429
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_34

    .line 1430
    iget-object v0, p0, Landroid/support/v4/widget/g;->u:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/support/v4/widget/g;->r:Landroid/support/v4/widget/g$a;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/g$a;->c(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1431
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p1, v2, :cond_30

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge p1, v2, :cond_30

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p2, v2, :cond_30

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge p2, v2, :cond_30

    .line 1436
    :goto_2f
    return-object v0

    .line 1429
    :cond_30
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    .line 1436
    :cond_34
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public e()V
    .registers 2

    .prologue
    .line 498
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/g;->c:I

    .line 499
    invoke-direct {p0}, Landroid/support/v4/widget/g;->g()V

    .line 501
    iget-object v0, p0, Landroid/support/v4/widget/g;->l:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_12

    .line 502
    iget-object v0, p0, Landroid/support/v4/widget/g;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 503
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/widget/g;->l:Landroid/view/VelocityTracker;

    .line 505
    :cond_12
    return-void
.end method

.method public f()V
    .registers 7

    .prologue
    .line 512
    invoke-virtual {p0}, Landroid/support/v4/widget/g;->e()V

    .line 513
    iget v0, p0, Landroid/support/v4/widget/g;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_30

    .line 514
    iget-object v0, p0, Landroid/support/v4/widget/g;->q:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->b()I

    move-result v4

    .line 515
    iget-object v0, p0, Landroid/support/v4/widget/g;->q:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->c()I

    move-result v5

    .line 516
    iget-object v0, p0, Landroid/support/v4/widget/g;->q:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->g()V

    .line 517
    iget-object v0, p0, Landroid/support/v4/widget/g;->q:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->b()I

    move-result v2

    .line 518
    iget-object v0, p0, Landroid/support/v4/widget/g;->q:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->c()I

    move-result v3

    .line 519
    iget-object v0, p0, Landroid/support/v4/widget/g;->r:Landroid/support/v4/widget/g$a;

    iget-object v1, p0, Landroid/support/v4/widget/g;->s:Landroid/view/View;

    sub-int v4, v2, v4

    sub-int v5, v3, v5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/g$a;->a(Landroid/view/View;IIII)V

    .line 521
    :cond_30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/g;->b(I)V

    .line 522
    return-void
.end method
