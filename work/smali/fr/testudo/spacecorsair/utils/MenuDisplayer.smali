.class public Lfr/testudo/spacecorsair/utils/MenuDisplayer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MOGA_X_AXIS_HANDLER:Ljava/lang/String; = "MOGA_X_AXIS_HANDLER"

.field private static controller:Lcom/bda/controller/Controller;

.field static curSelectedLayout:I

.field private static hideMenuAnim:Landroid/view/animation/TranslateAnimation;

.field public static isMenuDisplaying:Z

.field static layouts:[Ljava/lang/Integer;

.field private static menuView:Landroid/view/View;

.field public static mogaLeft:Z

.field public static mogaMessageHandler:Landroid/os/Handler;

.field public static mogaRight:Z

.field static scrollTimer:Ljava/util/Timer;

.field private static showMenuAnim:Landroid/view/animation/TranslateAnimation;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 26
    sput-boolean v3, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->isMenuDisplaying:Z

    .line 31
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x7f0a008d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const v2, 0x7f0a008e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f0a008f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x7f0a0090

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const v2, 0x7f0a0091

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x7f0a0092

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->layouts:[Ljava/lang/Integer;

    .line 32
    sput v3, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->curSelectedLayout:I

    .line 44
    sput-boolean v3, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->mogaRight:Z

    .line 45
    sput-boolean v3, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->mogaLeft:Z

    .line 78
    new-instance v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer$1;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/utils/MenuDisplayer$1;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->mogaMessageHandler:Landroid/os/Handler;

    .line 89
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->scrollTimer:Ljava/util/Timer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/Class;)V
    .registers 2

    .prologue
    .line 24
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->launch(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$100()Landroid/view/View;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->menuView:Landroid/view/View;

    return-object v0
.end method

.method public static hideMenu()V
    .registers 2

    .prologue
    .line 282
    sget-object v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->menuView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 288
    :goto_4
    return-void

    .line 286
    :cond_5
    sget-object v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->menuView:Landroid/view/View;

    sget-object v1, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->hideMenuAnim:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 287
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->isMenuDisplaying:Z

    goto :goto_4
.end method

.method private static init(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 8

    .prologue
    .line 144
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->curSelectedLayout:I

    .line 147
    const v0, 0x7f03000e

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->menuView:Landroid/view/View;

    .line 148
    sget-object v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->menuView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 149
    sget-object v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->menuView:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    sget-object v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->menuView:Landroid/view/View;

    const v1, 0x7f0a008d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 153
    new-instance v1, Lfr/testudo/spacecorsair/utils/MenuDisplayer$3;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/utils/MenuDisplayer$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    sget-object v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->menuView:Landroid/view/View;

    const v1, 0x7f0a008e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 166
    new-instance v1, Lfr/testudo/spacecorsair/utils/MenuDisplayer$4;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/utils/MenuDisplayer$4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    sget-object v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->menuView:Landroid/view/View;

    const v1, 0x7f0a008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 175
    new-instance v1, Lfr/testudo/spacecorsair/utils/MenuDisplayer$5;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/utils/MenuDisplayer$5;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    sget-object v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->menuView:Landroid/view/View;

    const v1, 0x7f0a0090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 184
    new-instance v1, Lfr/testudo/spacecorsair/utils/MenuDisplayer$6;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/utils/MenuDisplayer$6;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    sget-object v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->menuView:Landroid/view/View;

    const v1, 0x7f0a0091

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 193
    new-instance v1, Lfr/testudo/spacecorsair/utils/MenuDisplayer$7;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/utils/MenuDisplayer$7;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    sget-object v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->menuView:Landroid/view/View;

    const v1, 0x7f0a0092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 204
    new-instance v1, Lfr/testudo/spacecorsair/utils/MenuDisplayer$8;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/utils/MenuDisplayer$8;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    invoke-static {}, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->updateSelectedLayout()V

    .line 213
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mogaConnected:Z

    if-eqz v0, :cond_a0

    .line 214
    invoke-static {}, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->mogaTimer()V

    .line 219
    :cond_a0
    const v0, 0x7f040004

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/TranslateAnimation;

    sput-object v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->showMenuAnim:Landroid/view/animation/TranslateAnimation;

    .line 220
    const v0, 0x7f040005

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/TranslateAnimation;

    sput-object v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->hideMenuAnim:Landroid/view/animation/TranslateAnimation;

    .line 221
    sget-object v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->hideMenuAnim:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lfr/testudo/spacecorsair/utils/MenuDisplayer$9;

    invoke-direct {v1, p1, p3}, Lfr/testudo/spacecorsair/utils/MenuDisplayer$9;-><init>(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 241
    return-void
.end method

.method public static isDisplaying()Z
    .registers 1

    .prologue
    .line 291
    sget-boolean v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->isMenuDisplaying:Z

    return v0
.end method

.method private static launch(Landroid/content/Context;Ljava/lang/Class;)V
    .registers 3

    .prologue
    .line 244
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 246
    invoke-static {}, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->hideMenu()V

    .line 247
    return-void
.end method

.method public static mogaEnterMenu()V
    .registers 3

    .prologue
    .line 49
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->menuView:Landroid/view/View;

    sget-object v1, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->layouts:[Ljava/lang/Integer;

    sget v2, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->curSelectedLayout:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 50
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->callOnClick()Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 55
    :goto_15
    return-void

    .line 52
    :catch_16
    move-exception v0

    goto :goto_15
.end method

.method public static mogaTimer()V
    .registers 6

    .prologue
    const-wide/16 v2, 0x12c

    .line 93
    sget-object v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->scrollTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 95
    new-instance v1, Lfr/testudo/spacecorsair/utils/MenuDisplayer$2;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/utils/MenuDisplayer$2;-><init>()V

    .line 117
    sget-object v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->scrollTimer:Ljava/util/Timer;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 118
    return-void
.end method

.method public static reset()V
    .registers 1

    .prologue
    .line 263
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->menuView:Landroid/view/View;

    .line 264
    return-void
.end method

.method public static reset(Landroid/view/ViewGroup;)V
    .registers 3

    .prologue
    .line 250
    sget-object v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->menuView:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 251
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lfr/testudo/spacecorsair/utils/MenuDisplayer$10;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/utils/MenuDisplayer$10;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 257
    :cond_11
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->menuView:Landroid/view/View;

    .line 258
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->isMenuDisplaying:Z

    .line 259
    return-void
.end method

.method public static selectLeft()V
    .registers 1

    .prologue
    .line 67
    sget v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->curSelectedLayout:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->curSelectedLayout:I

    .line 68
    sget v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->curSelectedLayout:I

    if-gez v0, :cond_11

    .line 69
    sget-object v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->layouts:[Ljava/lang/Integer;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->curSelectedLayout:I

    .line 71
    :cond_11
    invoke-static {}, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->updateSelectedLayout()V

    .line 73
    return-void
.end method

.method public static selectRight()V
    .registers 2

    .prologue
    .line 59
    sget v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->curSelectedLayout:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->curSelectedLayout:I

    .line 60
    sget v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->curSelectedLayout:I

    sget-object v1, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->layouts:[Ljava/lang/Integer;

    array-length v1, v1

    if-le v0, v1, :cond_10

    .line 61
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->curSelectedLayout:I

    .line 63
    :cond_10
    invoke-static {}, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->updateSelectedLayout()V

    .line 64
    return-void
.end method

.method public static showMenu(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 6

    .prologue
    .line 268
    sget-object v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->menuView:Landroid/view/View;

    if-nez v0, :cond_7

    .line 269
    invoke-static {p0, p1, p2, p3}, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->init(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 272
    :cond_7
    sget-object v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->menuView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 273
    sget-object v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->menuView:Landroid/view/View;

    sget-object v1, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->showMenuAnim:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 274
    if-eqz p2, :cond_19

    .line 275
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 278
    :cond_19
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->isMenuDisplaying:Z

    .line 279
    return-void
.end method

.method private static updateSelectedLayout()V
    .registers 3

    .prologue
    .line 122
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mogaConnected:Z

    if-nez v0, :cond_9

    .line 139
    :cond_8
    return-void

    .line 128
    :cond_9
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    sget-object v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->layouts:[Ljava/lang/Integer;

    array-length v0, v0

    if-ge v1, v0, :cond_8

    .line 130
    sget-object v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->menuView:Landroid/view/View;

    sget-object v2, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->layouts:[Ljava/lang/Integer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 131
    sget v2, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->curSelectedLayout:I

    if-ne v1, v2, :cond_2d

    .line 132
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 128
    :goto_29
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 134
    :cond_2d
    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_29
.end method
