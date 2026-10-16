.class public Landroid/support/v4/widget/SlidingPaneLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SlidingPaneLayout$1;,
        Landroid/support/v4/widget/SlidingPaneLayout$a;,
        Landroid/support/v4/widget/SlidingPaneLayout$f;,
        Landroid/support/v4/widget/SlidingPaneLayout$e;,
        Landroid/support/v4/widget/SlidingPaneLayout$d;,
        Landroid/support/v4/widget/SlidingPaneLayout$c;,
        Landroid/support/v4/widget/SlidingPaneLayout$SavedState;,
        Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;,
        Landroid/support/v4/widget/SlidingPaneLayout$b;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/widget/SlidingPaneLayout$c;


# instance fields
.field private b:I

.field private c:I

.field private d:Landroid/graphics/drawable/Drawable;

.field private final e:I

.field private f:Z

.field private g:Landroid/view/View;

.field private h:F

.field private i:F

.field private j:I

.field private k:Z

.field private l:I

.field private m:F

.field private n:F

.field private o:Landroid/support/v4/widget/SlidingPaneLayout$b;

.field private final p:Landroid/support/v4/widget/g;

.field private q:Z

.field private r:Z

.field private final s:Landroid/graphics/Rect;

.field private final t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/widget/SlidingPaneLayout$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 193
    const/16 v1, 0x11

    if-lt v0, v1, :cond_e

    .line 194
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$f;

    invoke-direct {v0}, Landroid/support/v4/widget/SlidingPaneLayout$f;-><init>()V

    sput-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->a:Landroid/support/v4/widget/SlidingPaneLayout$c;

    .line 200
    :goto_d
    return-void

    .line 195
    :cond_e
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1a

    .line 196
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$e;

    invoke-direct {v0}, Landroid/support/v4/widget/SlidingPaneLayout$e;-><init>()V

    sput-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->a:Landroid/support/v4/widget/SlidingPaneLayout$c;

    goto :goto_d

    .line 198
    :cond_1a
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$d;

    invoke-direct {v0}, Landroid/support/v4/widget/SlidingPaneLayout$d;-><init>()V

    sput-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->a:Landroid/support/v4/widget/SlidingPaneLayout$c;

    goto :goto_d
.end method

.method static synthetic a(Landroid/support/v4/widget/SlidingPaneLayout;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->t:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(F)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 1071
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 1072
    iget-boolean v2, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->c:Z

    if-eqz v2, :cond_25

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    if-gtz v0, :cond_25

    const/4 v0, 0x1

    .line 1073
    :goto_14
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v2

    .line 1074
    :goto_18
    if-ge v1, v2, :cond_49

    .line 1075
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1076
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    if-ne v3, v4, :cond_27

    .line 1074
    :cond_22
    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_25
    move v0, v1

    .line 1072
    goto :goto_14

    .line 1078
    :cond_27
    iget v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->i:F

    sub-float v4, v7, v4

    iget v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->l:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 1079
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->i:F

    .line 1080
    sub-float v5, v7, p1

    iget v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->l:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 1081
    sub-int/2addr v4, v5

    .line 1083
    invoke-virtual {v3, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1085
    if-eqz v0, :cond_22

    .line 1086
    iget v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->i:F

    sub-float v4, v7, v4

    iget v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->c:I

    invoke-direct {p0, v3, v4, v5}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/view/View;FI)V

    goto :goto_22

    .line 1089
    :cond_49
    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 88
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->d(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/view/View;FI)V
    .registers 10

    .prologue
    const/4 v5, 0x2

    .line 925
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 927
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_43

    if-eqz p3, :cond_43

    .line 928
    const/high16 v1, -0x1000000

    and-int/2addr v1, p3

    ushr-int/lit8 v1, v1, 0x18

    .line 929
    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    .line 930
    shl-int/lit8 v1, v1, 0x18

    const v2, 0xffffff

    and-int/2addr v2, p3

    or-int/2addr v1, v2

    .line 931
    iget-object v2, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->d:Landroid/graphics/Paint;

    if-nez v2, :cond_28

    .line 932
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->d:Landroid/graphics/Paint;

    .line 934
    :cond_28
    iget-object v2, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->d:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 935
    invoke-static {p1}, Landroid/support/v4/view/r;->d(Landroid/view/View;)I

    move-result v1

    if-eq v1, v5, :cond_3f

    .line 936
    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->d:Landroid/graphics/Paint;

    invoke-static {p1, v5, v0}, Landroid/support/v4/view/r;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 938
    :cond_3f
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->d(Landroid/view/View;)V

    .line 947
    :cond_42
    :goto_42
    return-void

    .line 939
    :cond_43
    invoke-static {p1}, Landroid/support/v4/view/r;->d(Landroid/view/View;)I

    move-result v1

    if-eqz v1, :cond_42

    .line 940
    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->d:Landroid/graphics/Paint;

    if-eqz v1, :cond_53

    .line 941
    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->d:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 943
    :cond_53
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$a;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$a;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    .line 944
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->t:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 945
    invoke-static {p0, v0}, Landroid/support/v4/view/r;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_42
.end method

.method private a(Landroid/view/View;I)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 828
    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->r:Z

    if-nez v1, :cond_c

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Landroid/support/v4/widget/SlidingPaneLayout;->a(FI)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 829
    :cond_c
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->q:Z

    .line 830
    const/4 v0, 0x1

    .line 832
    :cond_f
    return v0
.end method

.method private b(Landroid/view/View;I)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 836
    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->r:Z

    if-nez v1, :cond_d

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, p2}, Landroid/support/v4/widget/SlidingPaneLayout;->a(FI)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 837
    :cond_d
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->q:Z

    .line 840
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static c(Landroid/view/View;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 398
    invoke-static {p0}, Landroid/support/v4/view/r;->f(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 409
    :cond_8
    :goto_8
    return v0

    .line 403
    :cond_9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_11

    move v0, v1

    goto :goto_8

    .line 405
    :cond_11
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 406
    if-eqz v2, :cond_20

    .line 407
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8

    move v0, v1

    goto :goto_8

    :cond_20
    move v0, v1

    .line 409
    goto :goto_8
.end method

.method private d(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 991
    sget-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->a:Landroid/support/v4/widget/SlidingPaneLayout$c;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$c;->a(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    .line 992
    return-void
.end method


# virtual methods
.method a()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 389
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v2

    move v0, v1

    :goto_6
    if-ge v0, v2, :cond_19

    .line 390
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 391
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_16

    .line 392
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 389
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 395
    :cond_19
    return-void
.end method

.method a(Landroid/view/View;)V
    .registers 18

    .prologue
    .line 348
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v7

    .line 349
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v2

    sub-int v8, v1, v2

    .line 350
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v9

    .line 351
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v2

    sub-int v10, v1, v2

    .line 356
    if-eqz p1, :cond_47

    invoke-static/range {p1 .. p1}, Landroid/support/v4/widget/SlidingPaneLayout;->c(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 357
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 358
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v3

    .line 359
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 360
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 365
    :goto_34
    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v11

    move v6, v5

    :goto_3a
    if-ge v6, v11, :cond_46

    .line 366
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 368
    move-object/from16 v0, p1

    if-ne v12, v0, :cond_4c

    .line 386
    :cond_46
    return-void

    .line 362
    :cond_47
    const/4 v1, 0x0

    move v2, v1

    move v3, v1

    move v4, v1

    goto :goto_34

    .line 373
    :cond_4c
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 374
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 375
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v14

    invoke-static {v8, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 376
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v15

    invoke-static {v10, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 378
    if-lt v5, v4, :cond_7c

    if-lt v13, v2, :cond_7c

    if-gt v14, v3, :cond_7c

    if-gt v15, v1, :cond_7c

    .line 380
    const/4 v5, 0x4

    .line 384
    :goto_75
    invoke-virtual {v12, v5}, Landroid/view/View;->setVisibility(I)V

    .line 365
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_3a

    .line 382
    :cond_7c
    const/4 v5, 0x0

    goto :goto_75
.end method

.method a(FI)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 1001
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z

    if-nez v0, :cond_7

    move v0, v1

    .line 1016
    :goto_6
    return v0

    .line 1006
    :cond_7
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 1008
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v2

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    .line 1009
    int-to-float v0, v0

    iget v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->j:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 1011
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Landroid/support/v4/widget/g;

    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v2, v3, v0, v4}, Landroid/support/v4/widget/g;->a(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1012
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->a()V

    .line 1013
    invoke-static {p0}, Landroid/support/v4/view/r;->b(Landroid/view/View;)V

    .line 1014
    const/4 v0, 0x1

    goto :goto_6

    :cond_35
    move v0, v1

    .line 1016
    goto :goto_6
.end method

.method public b()Z
    .registers 3

    .prologue
    .line 858
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->b(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method b(Landroid/view/View;)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1126
    if-nez p1, :cond_4

    .line 1130
    :goto_3
    return v1

    .line 1129
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 1130
    iget-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z

    if-eqz v2, :cond_1c

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->c:Z

    if-eqz v0, :cond_1c

    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->h:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1a
    move v1, v0

    goto :goto_3

    :cond_1c
    move v0, v1

    goto :goto_1a
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 876
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    .prologue
    .line 1147
    instance-of v0, p1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public computeScroll()V
    .registers 3

    .prologue
    .line 1021
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Landroid/support/v4/widget/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/g;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1022
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z

    if-nez v0, :cond_13

    .line 1023
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Landroid/support/v4/widget/g;

    invoke-virtual {v0}, Landroid/support/v4/widget/g;->f()V

    .line 1029
    :cond_12
    :goto_12
    return-void

    .line 1027
    :cond_13
    invoke-static {p0}, Landroid/support/v4/view/r;->b(Landroid/view/View;)V

    goto :goto_12
.end method

.method public d()Z
    .registers 3

    .prologue
    .line 886
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->h:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 1053
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1055
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v0

    if-le v0, v1, :cond_15

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1056
    :goto_e
    if-eqz v0, :cond_14

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->d:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_17

    .line 1068
    :cond_14
    :goto_14
    return-void

    .line 1055
    :cond_15
    const/4 v0, 0x0

    goto :goto_e

    .line 1061
    :cond_17
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1062
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1063
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1064
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1065
    sub-int v1, v2, v1

    .line 1066
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1067
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_14
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 951
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 953
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->save(I)I

    move-result v2

    .line 955
    iget-boolean v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z

    if-eqz v3, :cond_34

    iget-boolean v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->b:Z

    if-nez v3, :cond_34

    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    if-eqz v3, :cond_34

    .line 957
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->s:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 958
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->s:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->s:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 959
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->s:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 962
    :cond_34
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_42

    .line 963
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 985
    :goto_3e
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 987
    return v0

    .line 965
    :cond_42
    iget-boolean v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->c:Z

    if-eqz v3, :cond_91

    iget v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->h:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_91

    .line 966
    invoke-virtual {p2}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v3

    if-nez v3, :cond_57

    .line 967
    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 969
    :cond_57
    invoke-virtual {p2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 970
    if-eqz v3, :cond_6e

    .line 971
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move v0, v1

    .line 972
    goto :goto_3e

    .line 974
    :cond_6e
    const-string v0, "SlidingPaneLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawChild: child view "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " returned null drawing cache"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_3e

    .line 978
    :cond_91
    invoke-virtual {p2}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 979
    invoke-virtual {p2, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 981
    :cond_9a
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_3e
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 905
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 1135
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {v0}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .prologue
    .line 1152
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 1140
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_c

    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b
.end method

.method public getCoveredFadeColor()I
    .registers 2

    .prologue
    .line 320
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->c:I

    return v0
.end method

.method public getParallaxDistance()I
    .registers 2

    .prologue
    .line 287
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->l:I

    return v0
.end method

.method public getSliderFadeColor()I
    .registers 2

    .prologue
    .line 303
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->b:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 414
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 415
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->r:Z

    .line 416
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .prologue
    .line 420
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->r:Z

    .line 423
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->t:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_e
    if-ge v1, v2, :cond_1f

    .line 424
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$a;

    .line 425
    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout$a;->run()V

    .line 423
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    .line 427
    :cond_1f
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 428
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 728
    invoke-static {p1}, Landroid/support/v4/view/m;->a(Landroid/view/MotionEvent;)I

    move-result v3

    .line 731
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z

    if-nez v0, :cond_2d

    if-nez v3, :cond_2d

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v0

    if-le v0, v1, :cond_2d

    .line 733
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 734
    if-eqz v0, :cond_2d

    .line 735
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Landroid/support/v4/widget/g;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v0, v5, v6}, Landroid/support/v4/widget/g;->b(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_41

    move v0, v1

    :goto_2b
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->q:Z

    .line 740
    :cond_2d
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->k:Z

    if-eqz v0, :cond_43

    if-eqz v3, :cond_43

    .line 741
    :cond_37
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Landroid/support/v4/widget/g;

    invoke-virtual {v0}, Landroid/support/v4/widget/g;->e()V

    .line 742
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 783
    :cond_40
    :goto_40
    return v2

    :cond_41
    move v0, v2

    .line 735
    goto :goto_2b

    .line 745
    :cond_43
    const/4 v0, 0x3

    if-eq v3, v0, :cond_48

    if-ne v3, v1, :cond_4e

    .line 746
    :cond_48
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Landroid/support/v4/widget/g;

    invoke-virtual {v0}, Landroid/support/v4/widget/g;->e()V

    goto :goto_40

    .line 752
    :cond_4e
    packed-switch v3, :pswitch_data_b0

    :cond_51
    :pswitch_51
    move v0, v2

    .line 781
    :goto_52
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Landroid/support/v4/widget/g;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/g;->a(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 783
    if-nez v3, :cond_5c

    if-eqz v0, :cond_40

    :cond_5c
    move v2, v1

    goto :goto_40

    .line 754
    :pswitch_5e
    iput-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->k:Z

    .line 755
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 756
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 757
    iput v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->m:F

    .line 758
    iput v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->n:F

    .line 760
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Landroid/support/v4/widget/g;

    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    float-to-int v0, v0

    float-to-int v3, v3

    invoke-virtual {v4, v5, v0, v3}, Landroid/support/v4/widget/g;->b(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_51

    move v0, v1

    .line 762
    goto :goto_52

    .line 768
    :pswitch_82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 769
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 770
    iget v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->m:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 771
    iget v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->n:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 772
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Landroid/support/v4/widget/g;

    invoke-virtual {v4}, Landroid/support/v4/widget/g;->d()I

    move-result v4

    .line 773
    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_51

    cmpl-float v0, v3, v0

    if-lez v0, :cond_51

    .line 774
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Landroid/support/v4/widget/g;

    invoke-virtual {v0}, Landroid/support/v4/widget/g;->e()V

    .line 775
    iput-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->k:Z

    goto :goto_40

    .line 752
    nop

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_51
        :pswitch_82
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 20

    .prologue
    .line 640
    sub-int v6, p4, p2

    .line 641
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v3

    .line 642
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v7

    .line 643
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v8

    .line 645
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v9

    .line 649
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->r:Z

    if-eqz v0, :cond_22

    .line 650
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z

    if-eqz v0, :cond_39

    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->q:Z

    if-eqz v0, :cond_39

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_20
    iput v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->h:F

    .line 653
    :cond_22
    const/4 v0, 0x0

    move v5, v0

    move v4, v3

    :goto_25
    if-ge v5, v9, :cond_a0

    .line 654
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 656
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3b

    move v1, v4

    .line 653
    :goto_34
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v4, v1

    goto :goto_25

    .line 650
    :cond_39
    const/4 v0, 0x0

    goto :goto_20

    .line 660
    :cond_3b
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 662
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 663
    const/4 v2, 0x0

    .line 665
    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->b:Z

    if-eqz v1, :cond_89

    .line 666
    iget v1, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    iget v12, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v12

    .line 667
    sub-int v12, v6, v7

    iget v13, p0, Landroid/support/v4/widget/SlidingPaneLayout;->e:I

    sub-int/2addr v12, v13

    invoke-static {v3, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    sub-int/2addr v12, v4

    sub-int/2addr v12, v1

    .line 669
    iput v12, p0, Landroid/support/v4/widget/SlidingPaneLayout;->j:I

    .line 670
    iget v1, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v4

    add-int/2addr v1, v12

    div-int/lit8 v13, v11, 0x2

    add-int/2addr v1, v13

    sub-int v13, v6, v7

    if-le v1, v13, :cond_87

    const/4 v1, 0x1

    :goto_68
    iput-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->c:Z

    .line 672
    int-to-float v1, v12

    iget v12, p0, Landroid/support/v4/widget/SlidingPaneLayout;->h:F

    mul-float/2addr v1, v12

    float-to-int v1, v1

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    move v1, v0

    move v0, v2

    .line 680
    :goto_75
    sub-int v0, v1, v0

    .line 681
    add-int v2, v0, v11

    .line 683
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v8

    .line 684
    invoke-virtual {v10, v0, v8, v2, v4}, Landroid/view/View;->layout(IIII)V

    .line 686
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v3, v0

    goto :goto_34

    .line 670
    :cond_87
    const/4 v1, 0x0

    goto :goto_68

    .line 673
    :cond_89
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z

    if-eqz v0, :cond_9d

    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->l:I

    if-eqz v0, :cond_9d

    .line 674
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->h:F

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->l:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    move v1, v3

    .line 675
    goto :goto_75

    :cond_9d
    move v0, v2

    move v1, v3

    .line 677
    goto :goto_75

    .line 689
    :cond_a0
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->r:Z

    if-eqz v0, :cond_cb

    .line 690
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z

    if-eqz v0, :cond_cf

    .line 691
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->l:I

    if-eqz v0, :cond_b1

    .line 692
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->h:F

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->a(F)V

    .line 694
    :cond_b1
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->c:Z

    if-eqz v0, :cond_c6

    .line 695
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->h:F

    iget v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->b:I

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/view/View;FI)V

    .line 703
    :cond_c6
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/view/View;)V

    .line 706
    :cond_cb
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->r:Z

    .line 707
    return-void

    .line 699
    :cond_cf
    const/4 v0, 0x0

    :goto_d0
    if-ge v0, v9, :cond_c6

    .line 700
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->b:I

    invoke-direct {p0, v1, v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/view/View;FI)V

    .line 699
    add-int/lit8 v0, v0, 0x1

    goto :goto_d0
.end method

.method protected onMeasure(II)V
    .registers 18

    .prologue
    .line 432
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 433
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 434
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 435
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 437
    const/high16 v4, 0x40000000    # 2.0f

    if-eq v3, v4, :cond_7f

    .line 438
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_77

    .line 443
    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_6f

    move v9, v1

    move v10, v2

    move v2, v0

    .line 466
    :goto_21
    const/4 v1, 0x0

    .line 467
    const/4 v0, -0x1

    .line 468
    sparse-switch v9, :sswitch_data_24c

    move v14, v0

    move v0, v1

    move v1, v14

    .line 477
    :goto_29
    const/4 v3, 0x0

    .line 478
    const/4 v6, 0x0

    .line 479
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v2

    sub-int v2, v10, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v4

    sub-int v5, v2, v4

    .line 480
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v11

    .line 482
    const/4 v2, 0x2

    if-le v11, v2, :cond_45

    .line 483
    const-string v2, "SlidingPaneLayout"

    const-string v4, "onMeasure: More than two child views are not supported."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_45
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    .line 491
    const/4 v2, 0x0

    move v8, v2

    move v7, v0

    move v2, v3

    :goto_4c
    if-ge v8, v11, :cond_13e

    .line 492
    invoke-virtual {p0, v8}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 493
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 495
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_b6

    .line 496
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->c:Z

    move v0, v5

    move v3, v2

    move v4, v7

    move v2, v6

    .line 491
    :goto_67
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    move v6, v2

    move v7, v4

    move v2, v3

    move v5, v0

    goto :goto_4c

    .line 445
    :cond_6f
    if-nez v3, :cond_247

    .line 447
    const/16 v2, 0x12c

    move v9, v1

    move v10, v2

    move v2, v0

    goto :goto_21

    .line 450
    :cond_77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Width must have an exact value or MATCH_PARENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_7f
    if-nez v1, :cond_247

    .line 453
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_91

    .line 457
    if-nez v1, :cond_247

    .line 458
    const/high16 v1, -0x80000000

    .line 459
    const/16 v0, 0x12c

    move v9, v1

    move v10, v2

    move v2, v0

    goto :goto_21

    .line 462
    :cond_91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Height must not be UNSPECIFIED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :sswitch_99
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v0

    sub-int v0, v2, v0

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    move v1, v0

    .line 471
    goto :goto_29

    .line 473
    :sswitch_a6
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v0

    sub-int v0, v2, v0

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    move v14, v0

    move v0, v1

    move v1, v14

    goto/16 :goto_29

    .line 500
    :cond_b6
    iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->a:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_c9

    .line 501
    iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->a:F

    add-float/2addr v2, v3

    .line 505
    iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    if-nez v3, :cond_c9

    move v0, v5

    move v3, v2

    move v4, v7

    move v2, v6

    goto :goto_67

    .line 509
    :cond_c9
    iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    iget v4, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    .line 510
    iget v4, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    const/4 v13, -0x2

    if-ne v4, v13, :cond_110

    .line 511
    sub-int v3, v10, v3

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 521
    :goto_db
    iget v4, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/4 v13, -0x2

    if-ne v4, v13, :cond_127

    .line 522
    const/high16 v4, -0x80000000

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 529
    :goto_e6
    invoke-virtual {v12, v3, v4}, Landroid/view/View;->measure(II)V

    .line 530
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 531
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 533
    const/high16 v13, -0x80000000

    if-ne v9, v13, :cond_fb

    if-le v4, v7, :cond_fb

    .line 534
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 537
    :cond_fb
    sub-int v4, v5, v3

    .line 538
    if-gez v4, :cond_13c

    const/4 v3, 0x1

    :goto_100
    iput-boolean v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->b:Z

    or-int/2addr v3, v6

    .line 539
    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->b:Z

    if-eqz v0, :cond_109

    .line 540
    iput-object v12, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    :cond_109
    move v0, v4

    move v4, v7

    move v14, v2

    move v2, v3

    move v3, v14

    goto/16 :goto_67

    .line 513
    :cond_110
    iget v4, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    const/4 v13, -0x1

    if-ne v4, v13, :cond_11e

    .line 514
    sub-int v3, v10, v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_db

    .line 517
    :cond_11e
    iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_db

    .line 523
    :cond_127
    iget v4, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/4 v13, -0x1

    if-ne v4, v13, :cond_133

    .line 524
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_e6

    .line 526
    :cond_133
    iget v4, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_e6

    .line 538
    :cond_13c
    const/4 v3, 0x0

    goto :goto_100

    .line 545
    :cond_13e
    if-nez v6, :cond_145

    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_232

    .line 546
    :cond_145
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->e:I

    sub-int v12, v10, v0

    .line 548
    const/4 v0, 0x0

    move v9, v0

    :goto_14b
    if-ge v9, v11, :cond_232

    .line 549
    invoke-virtual {p0, v9}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 551
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_15d

    .line 548
    :cond_159
    :goto_159
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_14b

    .line 555
    :cond_15d
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 557
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_159

    .line 561
    iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    if-nez v3, :cond_1a6

    iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->a:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1a6

    const/4 v3, 0x1

    move v8, v3

    .line 562
    :goto_178
    if-eqz v8, :cond_1a9

    const/4 v3, 0x0

    move v4, v3

    .line 563
    :goto_17c
    if-eqz v6, :cond_1cf

    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    if-eq v13, v3, :cond_1cf

    .line 564
    iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    if-gez v3, :cond_159

    if-gt v4, v12, :cond_18f

    iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->a:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_159

    .line 568
    :cond_18f
    if-eqz v8, :cond_1c4

    .line 571
    iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_1af

    .line 572
    const/high16 v0, -0x80000000

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 585
    :goto_19c
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v12, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 587
    invoke-virtual {v13, v3, v0}, Landroid/view/View;->measure(II)V

    goto :goto_159

    .line 561
    :cond_1a6
    const/4 v3, 0x0

    move v8, v3

    goto :goto_178

    .line 562
    :cond_1a9
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    move v4, v3

    goto :goto_17c

    .line 574
    :cond_1af
    iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1bb

    .line 575
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_19c

    .line 578
    :cond_1bb
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_19c

    .line 582
    :cond_1c4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_19c

    .line 589
    :cond_1cf
    iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->a:F

    const/4 v8, 0x0

    cmpl-float v3, v3, v8

    if-lez v3, :cond_159

    .line 591
    iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    if-nez v3, :cond_210

    .line 593
    iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/4 v8, -0x2

    if-ne v3, v8, :cond_1fb

    .line 594
    const/high16 v3, -0x80000000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 608
    :goto_1e5
    if-eqz v6, :cond_21b

    .line 610
    iget v8, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v8

    .line 611
    sub-int v0, v10, v0

    .line 612
    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 614
    if-eq v4, v0, :cond_159

    .line 615
    invoke-virtual {v13, v8, v3}, Landroid/view/View;->measure(II)V

    goto/16 :goto_159

    .line 596
    :cond_1fb
    iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/4 v8, -0x1

    if-ne v3, v8, :cond_207

    .line 597
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_1e5

    .line 600
    :cond_207
    iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_1e5

    .line 604
    :cond_210
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_1e5

    .line 619
    :cond_21b
    const/4 v8, 0x0

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 620
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->a:F

    int-to-float v8, v8

    mul-float/2addr v0, v8

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 621
    add-int/2addr v0, v4

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 623
    invoke-virtual {v13, v0, v3}, Landroid/view/View;->measure(II)V

    goto/16 :goto_159

    .line 629
    :cond_232
    invoke-virtual {p0, v10, v7}, Landroid/support/v4/widget/SlidingPaneLayout;->setMeasuredDimension(II)V

    .line 630
    iput-boolean v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z

    .line 631
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Landroid/support/v4/widget/g;

    invoke-virtual {v0}, Landroid/support/v4/widget/g;->a()I

    move-result v0

    if-eqz v0, :cond_246

    if-nez v6, :cond_246

    .line 633
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Landroid/support/v4/widget/g;

    invoke-virtual {v0}, Landroid/support/v4/widget/g;->f()V

    .line 635
    :cond_246
    return-void

    :cond_247
    move v9, v1

    move v10, v2

    move v2, v0

    goto/16 :goto_21

    .line 468
    :sswitch_data_24c
    .sparse-switch
        -0x80000000 -> :sswitch_a6
        0x40000000 -> :sswitch_99
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .prologue
    .line 1167
    check-cast p1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    .line 1168
    invoke-virtual {p1}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1170
    iget-boolean v0, p1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->a:Z

    if-eqz v0, :cond_15

    .line 1171
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->b()Z

    .line 1175
    :goto_10
    iget-boolean v0, p1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->a:Z

    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->q:Z

    .line 1176
    return-void

    .line 1173
    :cond_15
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->c()Z

    goto :goto_10
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 1157
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1159
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1160
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->e()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->d()Z

    move-result v0

    :goto_13
    iput-boolean v0, v1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->a:Z

    .line 1162
    return-object v1

    .line 1160
    :cond_16
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->q:Z

    goto :goto_13
.end method

.method protected onSizeChanged(IIII)V
    .registers 6

    .prologue
    .line 711
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 713
    if-eq p1, p3, :cond_8

    .line 714
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->r:Z

    .line 716
    :cond_8
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .prologue
    .line 788
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z

    if-nez v0, :cond_9

    .line 789
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 824
    :cond_8
    :goto_8
    return v0

    .line 792
    :cond_9
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Landroid/support/v4/widget/g;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/g;->b(Landroid/view/MotionEvent;)V

    .line 794
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 795
    const/4 v0, 0x1

    .line 797
    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_62

    goto :goto_8

    .line 799
    :pswitch_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 800
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 801
    iput v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->m:F

    .line 802
    iput v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->n:F

    goto :goto_8

    .line 807
    :pswitch_26
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 808
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 809
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 810
    iget v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->m:F

    sub-float v3, v1, v3

    .line 811
    iget v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->n:F

    sub-float v4, v2, v4

    .line 812
    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Landroid/support/v4/widget/g;

    invoke-virtual {v5}, Landroid/support/v4/widget/g;->d()I

    move-result v5

    .line 813
    mul-float/2addr v3, v3

    mul-float/2addr v4, v4

    add-float/2addr v3, v4

    mul-int v4, v5, v5

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_8

    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Landroid/support/v4/widget/g;

    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    float-to-int v1, v1

    float-to-int v2, v2

    invoke-virtual {v3, v4, v1, v2}, Landroid/support/v4/widget/g;->b(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 816
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/view/View;I)Z

    goto :goto_8

    .line 797
    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_19
        :pswitch_26
    .end packed-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 720
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 721
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_14

    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z

    if-nez v0, :cond_14

    .line 722
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    if-ne p1, v0, :cond_15

    const/4 v0, 0x1

    :goto_12
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->q:Z

    .line 724
    :cond_14
    return-void

    .line 722
    :cond_15
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public setCoveredFadeColor(I)V
    .registers 2

    .prologue
    .line 313
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->c:I

    .line 314
    return-void
.end method

.method public setPanelSlideListener(Landroid/support/v4/widget/SlidingPaneLayout$b;)V
    .registers 2

    .prologue
    .line 324
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->o:Landroid/support/v4/widget/SlidingPaneLayout$b;

    .line 325
    return-void
.end method

.method public setParallaxDistance(I)V
    .registers 2

    .prologue
    .line 277
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->l:I

    .line 278
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->requestLayout()V

    .line 279
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .prologue
    .line 1038
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->d:Landroid/graphics/drawable/Drawable;

    .line 1039
    return-void
.end method

.method public setShadowResource(I)V
    .registers 3

    .prologue
    .line 1048
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1049
    return-void
.end method

.method public setSliderFadeColor(I)V
    .registers 2

    .prologue
    .line 296
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->b:I

    .line 297
    return-void
.end method
