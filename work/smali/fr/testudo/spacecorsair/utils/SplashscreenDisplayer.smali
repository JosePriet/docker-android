.class public Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static context:Landroid/app/Activity;

.field private static hideSplashscreenAnim:Landroid/view/animation/Animation;

.field private static isSplashscreenDisplaying:Z

.field private static parentView:Landroid/view/ViewGroup;

.field private static showSplashscreenAnim:Landroid/view/animation/Animation;

.field private static splashscreenView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->isSplashscreenDisplaying:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/view/View;
    .registers 1

    .prologue
    .line 13
    sget-object v0, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->splashscreenView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$002(Landroid/view/View;)Landroid/view/View;
    .registers 1

    .prologue
    .line 13
    sput-object p0, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->splashscreenView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100()Landroid/view/ViewGroup;
    .registers 1

    .prologue
    .line 13
    sget-object v0, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->parentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public static hideSplashscreen()V
    .registers 2

    .prologue
    .line 93
    sget-object v0, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->splashscreenView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 101
    :goto_4
    return-void

    .line 97
    :cond_5
    sget-object v0, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->splashscreenView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    sget-object v0, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->splashscreenView:Landroid/view/View;

    sget-object v1, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->hideSplashscreenAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 100
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->isSplashscreenDisplaying:Z

    goto :goto_4
.end method

.method public static init(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 8

    .prologue
    const-wide/16 v4, 0x320

    const/4 v3, -0x1

    .line 26
    sput-object p1, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->parentView:Landroid/view/ViewGroup;

    .line 27
    sput-object p0, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->context:Landroid/app/Activity;

    .line 29
    sget-object v0, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->context:Landroid/app/Activity;

    const v1, 0x7f03001b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->splashscreenView:Landroid/view/View;

    .line 30
    sget-object v0, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->parentView:Landroid/view/ViewGroup;

    sget-object v1, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->splashscreenView:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    sget-object v0, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->context:Landroid/app/Activity;

    const v1, 0x7f040002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->showSplashscreenAnim:Landroid/view/animation/Animation;

    .line 33
    sget-object v0, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->showSplashscreenAnim:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 34
    sget-object v0, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->showSplashscreenAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 36
    sget-object v0, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->context:Landroid/app/Activity;

    const v1, 0x7f040003

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->hideSplashscreenAnim:Landroid/view/animation/Animation;

    .line 37
    sget-object v0, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->hideSplashscreenAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 38
    sget-object v0, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->hideSplashscreenAnim:Landroid/view/animation/Animation;

    new-instance v1, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer$1;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 54
    return-void
.end method

.method public static isDisplaying()Z
    .registers 1

    .prologue
    .line 104
    sget-boolean v0, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->isSplashscreenDisplaying:Z

    return v0
.end method

.method public static reset()V
    .registers 2

    .prologue
    .line 57
    sget-object v0, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->splashscreenView:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer$2;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    :cond_11
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->isSplashscreenDisplaying:Z

    .line 66
    return-void
.end method

.method public static showSplashscreen(Landroid/app/Activity;)V
    .registers 7

    .prologue
    .line 72
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->splashscreenView:Landroid/view/View;

    if-nez v0, :cond_9

    .line 73
    sget-object v0, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->parentView:Landroid/view/ViewGroup;

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->init(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 77
    :cond_9
    sget-object v0, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->splashscreenView:Landroid/view/View;

    const v1, 0x7f0a0124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 78
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, v2, v4

    if-lez v1, :cond_35

    .line 79
    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    :goto_24
    sget-object v0, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->splashscreenView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    sget-object v0, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->splashscreenView:Landroid/view/View;

    sget-object v1, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->showSplashscreenAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 86
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->isSplashscreenDisplaying:Z

    .line 90
    :goto_34
    return-void

    .line 81
    :cond_35
    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3c

    goto :goto_24

    .line 87
    :catch_3c
    move-exception v0

    .line 88
    const-string v1, "error while showing slash screen"

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/utils/Logs;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_34
.end method
