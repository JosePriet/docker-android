.class public final Lfr/testudo/spacecorsair/mod/ModScroll;
.super Ljava/lang/Object;
.source "ModScroll.java"


# static fields
.field private static final decors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static registered:Z

.field private static final thumbs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/TextView;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModScroll;->decors:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModScroll;->thumbs:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 26
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModScroll;->hook(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$100(Landroid/view/View;)V
    .registers 1

    .prologue
    .line 26
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModScroll;->scan(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200()V
    .registers 0

    .prologue
    .line 26
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModScroll;->place()V

    return-void
.end method

.method public static attach(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 36
    :try_start_0
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModScroll;->registered:Z

    if-nez v0, :cond_13

    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModScroll;->registered:Z

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModScroll$1;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/mod/ModScroll$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 48
    :cond_13
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModScroll;->hook(Landroid/app/Activity;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_16} :catch_17

    .line 52
    :goto_16
    return-void

    .line 49
    :catch_17
    move-exception v0

    goto :goto_16
.end method

.method private static hook(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 55
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTitan;->attachUi(Landroid/app/Activity;)V

    .line 56
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModComms;->attachUi(Landroid/app/Activity;)V

    .line 57
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModFitting;->attach(Landroid/app/Activity;)V

    .line 58
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->watch(Landroid/app/Activity;)V

    .line 60
    :try_start_c
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 61
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModScroll;->decors:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 62
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModScroll;->scan(Landroid/view/View;)V

    .line 82
    :goto_1f
    return-void

    .line 65
    :cond_20
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModScroll;->decors:Ljava/util/Map;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 67
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModScroll$2;

    invoke-direct {v2, v0}, Lfr/testudo/spacecorsair/mod/ModScroll$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 72
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModScroll$3;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/mod/ModScroll$3;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 78
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModScroll;->scan(Landroid/view/View;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_3e} :catch_3f

    goto :goto_1f

    .line 79
    :catch_3f
    move-exception v0

    goto :goto_1f
.end method

.method private static place()V
    .registers 13

    .prologue
    const/4 v4, 0x0

    .line 115
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModScroll;->thumbs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 144
    :cond_9
    return-void

    .line 117
    :cond_a
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModScroll;->thumbs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_14
    :goto_14
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 118
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 119
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 120
    if-eqz v1, :cond_14

    if-eqz v0, :cond_14

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    if-eqz v2, :cond_14

    .line 121
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 122
    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    .line 123
    if-nez v2, :cond_b5

    move v5, v4

    .line 125
    :goto_41
    add-int/lit8 v2, v6, 0x2

    if-le v5, v2, :cond_c6

    .line 126
    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v8, v2, Landroid/util/DisplayMetrics;->density:F

    .line 127
    const/high16 v2, 0x40c00000    # 6.0f

    mul-float/2addr v2, v8

    float-to-int v9, v2

    .line 128
    mul-int/lit8 v2, v9, 0x2

    sub-int v3, v6, v2

    .line 129
    const/high16 v2, 0x41c00000    # 24.0f

    mul-float/2addr v2, v8

    float-to-int v2, v2

    mul-int v10, v3, v6

    div-int/2addr v10, v5

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 130
    if-le v2, v3, :cond_65

    move v2, v3

    .line 131
    :cond_65
    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v1}, Landroid/widget/TextView;->getScrollY()I

    move-result v12

    int-to-float v12, v12

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float v5, v12, v5

    invoke-static {v11, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v10, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 133
    invoke-virtual {v1}, Landroid/widget/TextView;->getScrollY()I

    move-result v6

    add-int/2addr v6, v9

    sub-int/2addr v3, v2

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    add-int v5, v6, v3

    .line 134
    add-int/2addr v2, v5

    .line 135
    invoke-virtual {v1}, Landroid/widget/TextView;->getScrollX()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v6

    add-int/2addr v3, v6

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v6, v8

    float-to-int v6, v6

    sub-int/2addr v3, v6

    .line 136
    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v6, v8

    float-to-int v6, v6

    sub-int v6, v3, v6

    .line 138
    :goto_99
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 139
    iget v9, v8, Landroid/graphics/Rect;->left:I

    if-ne v9, v6, :cond_ad

    iget v9, v8, Landroid/graphics/Rect;->top:I

    if-ne v9, v5, :cond_ad

    iget v9, v8, Landroid/graphics/Rect;->right:I

    if-ne v9, v3, :cond_ad

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    if-eq v8, v2, :cond_14

    .line 140
    :cond_ad
    invoke-virtual {v0, v6, v5, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 141
    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    goto/16 :goto_14

    .line 123
    :cond_b5
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    move v5, v2

    goto/16 :goto_41

    :cond_c6
    move v2, v4

    move v3, v4

    move v5, v4

    move v6, v4

    goto :goto_99
.end method

.method private static scan(Landroid/view/View;)V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 85
    instance-of v0, p0, Landroid/widget/ScrollView;

    if-nez v0, :cond_9

    instance-of v0, p0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_2f

    .line 87
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/view/View;->isScrollbarFadingEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0, v1}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    .line 91
    :cond_18
    :goto_18
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_45

    .line 92
    check-cast p0, Landroid/view/ViewGroup;

    move v0, v1

    .line 93
    :goto_1f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_45

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModScroll;->scan(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 88
    :cond_2f
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_18

    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/ScrollingMovementMethod;

    if-eqz v0, :cond_18

    move-object v0, p0

    .line 89
    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModScroll;->track(Landroid/widget/TextView;)V

    goto :goto_18

    .line 95
    :cond_45
    return-void
.end method

.method public static track(Landroid/widget/TextView;)V
    .registers 8

    .prologue
    .line 100
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModScroll;->thumbs:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 112
    :goto_8
    return-void

    .line 101
    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 102
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_68

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 103
    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 104
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 105
    const-class v0, Landroid/view/View;

    const-string v2, "getOverlay"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "add"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/graphics/drawable/Drawable;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 107
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModScroll;->thumbs:Ljava/util/Map;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5f} :catch_60

    goto :goto_8

    .line 109
    :catch_60
    move-exception v0

    .line 110
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModScroll;->thumbs:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 102
    :array_68
    .array-data 4
        -0x8f3410
        -0xca724b
    .end array-data
.end method
