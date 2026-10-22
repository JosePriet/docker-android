.class final Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;
.super Landroid/widget/FrameLayout;
.source "ModFitting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModFitting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Overlay"
.end annotation


# instance fields
.field final act:Landroid/app/Activity;

.field ammoBar:Lfr/testudo/spacecorsair/mod/ModFitting$Bar;

.field broken:Z

.field cargoBar:Lfr/testudo/spacecorsair/mod/ModFitting$Bar;

.field credits:Landroid/widget/TextView;

.field creditsInApp:Landroid/widget/TextView;

.field final d:F

.field emblem:Landroid/widget/ImageView;

.field faction:Landroid/widget/TextView;

.field final handler:Landroid/os/Handler;

.field hullBar:Lfr/testudo/spacecorsair/mod/ModFitting$Bar;

.field level:Landroid/widget/TextView;

.field lists:Landroid/view/View;

.field name:Landroid/widget/TextView;

.field final poll:Ljava/lang/Runnable;

.field ring:Lfr/testudo/spacecorsair/mod/ModFitting$RingView;

.field shieldBar:Lfr/testudo/spacecorsair/mod/ModFitting$Bar;

.field sig:J

.field stats:Landroid/widget/LinearLayout;

.field sub:Landroid/widget/TextView;

.field testDone:Z

.field final testFit:Ljava/lang/String;

.field final tiles:[Lfr/testudo/spacecorsair/mod/ModFitting$Tile;

.field toggle:Landroid/widget/Button;

.field xpBar:Lfr/testudo/spacecorsair/mod/ModFitting$Bar;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 13

    .prologue
    const/4 v9, 0x6

    const/4 v8, -0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v6, -0x1

    .line 480
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 456
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->sig:J

    .line 458
    const-string v0, "corsair_fit"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->testFit:Ljava/lang/String;

    .line 460
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->handler:Landroid/os/Handler;

    .line 461
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$1;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$1;-><init>(Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->poll:Ljava/lang/Runnable;

    .line 477
    new-array v0, v9, [Lfr/testudo/spacecorsair/mod/ModFitting$Tile;

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->tiles:[Lfr/testudo/spacecorsair/mod/ModFitting$Tile;

    .line 481
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->act:Landroid/app/Activity;

    .line 482
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModFitting;->dp(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->d:F

    .line 483
    const-string v0, "modFitting"

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->setTag(Ljava/lang/Object;)V

    .line 484
    invoke-virtual {p0, v7}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->setClickable(Z)V

    .line 485
    # invokes: Lfr/testudo/spacecorsair/mod/ModFitting;->loadUiArt(Landroid/content/Context;)V
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModFitting;->access$100(Landroid/content/Context;)V

    .line 486
    # getter for: Lfr/testudo/spacecorsair/mod/ModFitting;->artBg:Landroid/graphics/Bitmap;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFitting;->access$200()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_105

    .line 487
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 488
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 489
    # getter for: Lfr/testudo/spacecorsair/mod/ModFitting;->artBg:Landroid/graphics/Bitmap;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFitting;->access$200()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 490
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 492
    const v2, -0x66faf4ea

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 493
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 498
    :goto_6f
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 499
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 500
    const/high16 v2, 0x41000000    # 8.0f

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->d:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 501
    const/high16 v3, 0x40800000    # 4.0f

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->d:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 502
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 503
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->header(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42380000    # 46.0f

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->d:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v3, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 505
    const v3, -0x7f952f01

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 506
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->d:F

    float-to-int v4, v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-direct {v3, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 508
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 509
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 510
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 511
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->left(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x41d80000    # 27.0f

    invoke-direct {v3, v1, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 512
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;

    invoke-direct {v0, p1}, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->ring:Lfr/testudo/spacecorsair/mod/ModFitting$RingView;

    move v0, v1

    .line 513
    :goto_e2
    if-ge v0, v9, :cond_117

    .line 515
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->tiles:[Lfr/testudo/spacecorsair/mod/ModFitting$Tile;

    new-instance v4, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;

    invoke-direct {v4, p1, v0}, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;-><init>(Landroid/content/Context;I)V

    aput-object v4, v3, v0

    .line 516
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->tiles:[Lfr/testudo/spacecorsair/mod/ModFitting$Tile;

    aget-object v3, v3, v0

    new-instance v4, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$2;

    invoke-direct {v4, p0, v0}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$2;-><init>(Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;I)V

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->ring:Lfr/testudo/spacecorsair/mod/ModFitting$RingView;

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->tiles:[Lfr/testudo/spacecorsair/mod/ModFitting$Tile;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->addView(Landroid/view/View;)V

    .line 513
    add-int/lit8 v0, v0, 0x1

    goto :goto_e2

    .line 495
    :cond_105
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_176

    invoke-direct {v0, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 496
    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6f

    .line 521
    :cond_117
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->ring:Lfr/testudo/spacecorsair/mod/ModFitting$RingView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42280000    # 42.0f

    invoke-direct {v3, v1, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 522
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->right(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x41f80000    # 31.0f

    invoke-direct {v3, v1, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 524
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 527
    const-string v0, "FITTING"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, -0x952f01

    invoke-static {p1, v0, v1}, Lfr/testudo/spacecorsair/mod/ModFitting;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->toggle:Landroid/widget/Button;

    .line 528
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->toggle:Landroid/widget/Button;

    const-string v1, "modFittingBtn"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 529
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->toggle:Landroid/widget/Button;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$3;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$3;-><init>(Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 535
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x31

    invoke-direct {v0, v8, v8, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 536
    const/high16 v1, 0x40c00000    # 6.0f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->d:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 537
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->toggle:Landroid/widget/Button;

    invoke-virtual {p2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 538
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->toggle:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 539
    return-void

    .line 495
    nop

    :array_176
    .array-data 4
        -0xfaf4ea
        -0xf5e9da
        -0xfaf4ea
    .end array-data
.end method

.method private action(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .registers 12

    .prologue
    const/4 v6, -0x1

    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v5, 0x40e00000    # 7.0f

    .line 638
    invoke-static {p1, p2, v6}, Lfr/testudo/spacecorsair/mod/ModFitting;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v0

    .line 639
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$8;

    invoke-direct {v1, p0, p3, p4}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$8;-><init>(Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 642
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->d:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->d:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->d:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->d:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 643
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 644
    const/high16 v2, 0x40a00000    # 5.0f

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->d:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 645
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 646
    return-object v0
.end method

.method private buildStats(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/business/player/PlayerInfo;Lfr/testudo/spacecorsair/business/player/Inventory;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/mod/ModShips$Hull;Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)V
    .registers 13

    .prologue
    .line 833
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->stats:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 834
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->act:Landroid/app/Activity;

    .line 835
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->stats:Landroid/widget/LinearLayout;

    const-string v2, "DEFENSE"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->section(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 836
    if-eqz p1, :cond_bd

    .line 837
    const-string v0, "Hull HP"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->row(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    if-eqz v0, :cond_bd

    .line 839
    const-string v0, "Shield HP"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v3, v3, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v3, v3, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->row(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    const-string v0, "Shield regen"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v3, v3, Lfr/testudo/spacecorsair/business/player/Shield;->reloadUnitBySec:F

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModFitting;->f1(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " /s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->row(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    const-string v0, "Regen delay"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v3, v3, Lfr/testudo/spacecorsair/business/player/Shield;->reloadTime:F

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModFitting;->f1(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->row(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    :cond_bd
    if-eqz p6, :cond_dd

    const-string v0, "Armour rating"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->armorInformational:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / 100"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->row(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    :cond_dd
    if-eqz p5, :cond_10b

    iget v0, p5, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->hullRegen:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_10b

    const-string v0, "Hull repair"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p5, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->hullRegen:F

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModFitting;->f1(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "% /s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->row(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    :cond_10b
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->stats:Landroid/widget/LinearLayout;

    const-string v2, "OFFENSE"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->section(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 848
    if-eqz p1, :cond_1c4

    iget-object v0, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    if-eqz v0, :cond_1c4

    .line 849
    const-string v0, ""

    .line 850
    :try_start_122
    iget-object v0, p6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserType:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->getLocalizedLabel()Ljava/lang/String;
    :try_end_127
    .catch Ljava/lang/Throwable; {:try_start_122 .. :try_end_127} :catch_692

    move-result-object v0

    .line 851
    :goto_128
    iget-object v2, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModSpecs;->isBeam(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)Z

    move-result v2

    if-eqz v2, :cond_136

    const-string v0, "Beam"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 852
    :cond_136
    const-string v2, "Guns"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModFitting;->guns(Lfr/testudo/spacecorsair/business/player/PlayerShip;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_697

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " \u00b7 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_162
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->row(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    const-string v0, "Damage / shot"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v2, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->bulletDamage:F

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->row(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    const-string v0, "Cycle time"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->milleSecBetweenShots:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->row(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    const-string v0, "Laser DPS (item)"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->getDps()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->row(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    const-string v0, "Fitted DPS (est.)"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModFitting;->fittedDps(Lfr/testudo/spacecorsair/business/player/PlayerShip;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->row(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    :cond_1c4
    iget-object v0, p2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 859
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFitting;->empty(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v0

    if-nez v0, :cond_69b

    if-eqz p1, :cond_69b

    iget-object v0, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    if-eqz v0, :cond_69b

    .line 860
    const-string v0, "Missile damage"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iget v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->damage:F

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iget v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->radiusDamage:F

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->row(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    const-string v0, "Missile reload"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->milleSecBetweenMissileShots:J

    long-to-float v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModFitting;->f1(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->row(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    if-eqz p6, :cond_235

    const-string v0, "Launchers"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v2, p6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->missileCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->row(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    :cond_235
    const-string v0, "Missiles"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lfr/testudo/spacecorsair/business/player/Inventory;->getMissileCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iget v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->maxCountInventory:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->row(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    :goto_25d
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->stats:Landroid/widget/LinearLayout;

    const-string v2, "NAVIGATION"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->section(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 869
    if-eqz p6, :cond_2b9

    .line 870
    const-string v0, "Top speed"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxSpeedInformational:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / 100"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->row(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    const-string v0, "Agility"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->agilityInformational:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / 100"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->row(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    const-string v0, "Mass"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v2, p6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->mass:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->row(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    :cond_2b9
    iget-object v0, p2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->booster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 875
    if-eqz v2, :cond_6ac

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    instance-of v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    if-eqz v0, :cond_6ac

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    .line 876
    :goto_2cd
    const-string v3, "Booster"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFitting;->empty(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v2

    if-nez v2, :cond_2db

    if-nez v0, :cond_6af

    :cond_2db
    const-string v0, "none"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2e1
    invoke-direct {p0, v3, v0}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->row(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    iget-object v0, p2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->hyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 878
    if-eqz v2, :cond_6e0

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    instance-of v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;

    if-eqz v0, :cond_6e0

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;

    .line 879
    :goto_2f8
    const-string v3, "Hyperdrive"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFitting;->empty(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v2

    if-nez v2, :cond_306

    if-nez v0, :cond_6e3

    :cond_306
    const-string v0, "none"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_30c
    invoke-direct {p0, v3, v0}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->row(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    iget v0, p2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    const/16 v2, 0xa

    if-lt v0, v2, :cond_38e

    .line 883
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV34;->playerStat()I

    move-result v0

    .line 884
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->stats:Landroid/widget/LinearLayout;

    const-string v3, "PILOT STATS"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->section(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 885
    const-string v2, "Attack"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->row(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    const-string v2, "Defense"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->row(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    const-string v2, "Reaction"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " / "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->row(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    :cond_38e
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->summary()[Ljava/lang/String;

    move-result-object v2

    .line 890
    if-eqz v2, :cond_4f5

    .line 892
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->stats:Landroid/widget/LinearLayout;

    const-string v3, "REFIT"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->section(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 893
    const-string v0, "Refit level"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  \u00b7  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Stage"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->row(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    const-string v0, "Rare parts"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    aget-object v3, v2, v3

    invoke-direct {p0, v0, v3}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->row(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    const/4 v0, 0x6

    aget-object v0, v2, v0

    const/4 v3, 0x7

    aget-object v3, v2, v3

    invoke-direct {p0, v0, v3}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->row(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_499

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " cr"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 898
    const-string v3, "0"

    const/4 v4, 0x3

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_469

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " + "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x3

    aget-object v3, v2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "parts"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 899
    :cond_469
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0xa

    if-ne v3, v4, :cond_490

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " + 1 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x6

    aget-object v3, v2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 900
    :cond_490
    const-string v3, "Next level"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->row(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    :cond_499
    const/high16 v0, 0x41200000    # 10.0f

    const v3, -0x4f3b26

    const/4 v4, 0x0

    invoke-static {v1, v0, v3, v4}, Lfr/testudo/spacecorsair/mod/ModFitting;->text(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 903
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Each level: "

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 904
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->stats:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 905
    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4f5

    .line 906
    const-string v0, "REFIT"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Lfr/testudo/spacecorsair/mod/ModFitting;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v0

    .line 907
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$10;

    invoke-direct {v2, p0}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$10;-><init>(Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 913
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 914
    const/high16 v3, 0x40800000    # 4.0f

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->d:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 915
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->stats:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 918
    :cond_4f5
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->stats:Landroid/widget/LinearLayout;

    const-string v2, "CARGO"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->section(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 919
    const-string v0, "Hold"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lfr/testudo/spacecorsair/business/player/Inventory;->getTotalWeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lfr/testudo/spacecorsair/business/player/Inventory;->getCapacityInTon()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->row(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    if-eqz p5, :cond_54b

    iget v0, p5, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cargo:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_54b

    const-string v0, "Hull cargo bonus"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v2, p5, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cargo:F

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFitting;->pct(F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->row(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    :cond_54b
    if-eqz p5, :cond_691

    .line 923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 924
    iget v2, p5, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dmg:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_573

    const-string v2, "Laser damage "

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p5, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dmg:F

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModFitting;->pct(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 925
    :cond_573
    iget v2, p5, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->reload:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_594

    const-string v2, "Laser reload time "

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p5, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->reload:F

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModFitting;->pct(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 926
    :cond_594
    iget v2, p5, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldCap:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5b5

    const-string v2, "Shield capacity "

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p5, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldCap:F

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModFitting;->pct(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 927
    :cond_5b5
    iget v2, p5, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldRegen:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5d6

    const-string v2, "Shield regeneration "

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p5, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldRegen:F

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModFitting;->pct(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 928
    :cond_5d6
    iget v2, p5, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldDelay:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5f7

    const-string v2, "Shield recovery delay "

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p5, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldDelay:F

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModFitting;->pct(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 929
    :cond_5f7
    iget v2, p5, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->missileReload:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_618

    const-string v2, "Missile reload time "

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p5, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->missileReload:F

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModFitting;->pct(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 930
    :cond_618
    iget-object v2, p5, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->skill:Ljava/lang/String;

    if-eqz v2, :cond_624

    iget-object v2, p5, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->skill:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_62a

    :cond_624
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_691

    .line 931
    :cond_62a
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->stats:Landroid/widget/LinearLayout;

    const-string v3, "HULL BONUSES"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->section(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 932
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_661

    .line 933
    const/high16 v2, 0x41300000    # 11.0f

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/ModFitting;->text(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 934
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 935
    const/high16 v0, 0x40000000    # 2.0f

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->d:F

    mul-float/2addr v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 936
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->stats:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 938
    :cond_661
    iget-object v0, p5, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->skill:Ljava/lang/String;

    if-eqz v0, :cond_691

    iget-object v0, p5, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->skill:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_691

    .line 939
    const/high16 v0, 0x41200000    # 10.0f

    const v2, -0x4f3b26

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModFitting;->text(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 940
    iget-object v1, p5, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->skill:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 941
    const/4 v1, 0x0

    const/high16 v2, 0x40800000    # 4.0f

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->d:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 942
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->stats:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 946
    :cond_691
    return-void

    .line 850
    :catch_692
    move-exception v0

    const-string v0, ""

    goto/16 :goto_128

    .line 852
    :cond_697
    const-string v0, ""

    goto/16 :goto_162

    .line 865
    :cond_69b
    const-string v0, "Missiles"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "no launcher"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->row(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_25d

    .line 875
    :cond_6ac
    const/4 v0, 0x0

    goto/16 :goto_2cd

    .line 876
    :cond_6af
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;->boostPower:F

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModFitting;->f1(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " \u00b7 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;->shieldConsumeBySecInPourc:F

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFitting;->f1(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "% sh/s"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2e1

    .line 878
    :cond_6e0
    const/4 v0, 0x0

    goto/16 :goto_2f8

    .line 879
    :cond_6e3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;->energyCellsPerUnit:F

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFitting;->f1(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " cells/unit"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_30c
.end method

.method private header(Landroid/app/Activity;)Landroid/view/View;
    .registers 12

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    const/high16 v7, 0x41400000    # 12.0f

    const/4 v6, 0x1

    const/4 v5, -0x2

    .line 542
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 543
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 544
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 545
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->emblem:Landroid/widget/ImageView;

    .line 546
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->emblem:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 547
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42100000    # 36.0f

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->d:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/high16 v3, 0x42100000    # 36.0f

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->d:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 548
    const/high16 v2, 0x41000000    # 8.0f

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->d:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 549
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->emblem:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 550
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 551
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 552
    const/high16 v2, 0x41880000    # 17.0f

    invoke-static {p1, v2, v9, v6}, Lfr/testudo/spacecorsair/mod/ModFitting;->text(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->name:Landroid/widget/TextView;

    .line 553
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->name:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 554
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->name:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 555
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->name:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 556
    const/high16 v2, 0x41300000    # 11.0f

    const v3, -0x4f3b26

    invoke-static {p1, v2, v3, v8}, Lfr/testudo/spacecorsair/mod/ModFitting;->text(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->sub:Landroid/widget/TextView;

    .line 557
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->sub:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 558
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->sub:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 559
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->sub:Landroid/widget/TextView;

    const/high16 v3, 0x40400000    # 3.0f

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->d:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v8, v3, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 560
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->sub:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 561
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 562
    const v1, -0x952f01

    invoke-static {p1, v7, v1, v6}, Lfr/testudo/spacecorsair/mod/ModFitting;->text(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->faction:Landroid/widget/TextView;

    .line 563
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->faction:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 564
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->faction:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 565
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v8, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 566
    const/high16 v2, 0x41600000    # 14.0f

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->d:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 567
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->faction:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 568
    invoke-static {p1, v7, v9, v6}, Lfr/testudo/spacecorsair/mod/ModFitting;->text(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->credits:Landroid/widget/TextView;

    .line 569
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->credits:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 570
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->credits:Landroid/widget/TextView;

    const/high16 v2, 0x40800000    # 4.0f

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->d:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 571
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->credits:Landroid/widget/TextView;

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$4;

    invoke-direct {v2, p0}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$4;-><init>(Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 574
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->credits:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 575
    invoke-static {p1, v7, v9, v6}, Lfr/testudo/spacecorsair/mod/ModFitting;->text(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->creditsInApp:Landroid/widget/TextView;

    .line 576
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->creditsInApp:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 577
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->creditsInApp:Landroid/widget/TextView;

    const/high16 v2, 0x40800000    # 4.0f

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->d:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 578
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->creditsInApp:Landroid/widget/TextView;

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$5;

    invoke-direct {v2, p0}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$5;-><init>(Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 581
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 582
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->d:F

    mul-float/2addr v2, v7

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 583
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->creditsInApp:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 584
    const v1, -0x952f01

    invoke-static {p1, v7, v1, v6}, Lfr/testudo/spacecorsair/mod/ModFitting;->text(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->level:Landroid/widget/TextView;

    .line 585
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 586
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->d:F

    mul-float/2addr v2, v7

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 587
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->level:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 588
    const-string v1, "CLASSIC"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, -0x4f3b26

    invoke-static {p1, v1, v2}, Lfr/testudo/spacecorsair/mod/ModFitting;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v1

    .line 589
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$6;

    invoke-direct {v2, p0}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$6;-><init>(Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 595
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 596
    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->d:F

    mul-float/2addr v3, v7

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 597
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 598
    return-object v0
.end method

.method private left(Landroid/app/Activity;)Landroid/view/View;
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 609
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 610
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 611
    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->d:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/high16 v2, 0x41000000    # 8.0f

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->d:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v5, v1, v2, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 612
    const-string v1, "SHIP STATUS"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->section(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 613
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;

    const-string v2, "HULL"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, -0xb52196

    invoke-direct {v1, p1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->hullBar:Lfr/testudo/spacecorsair/mod/ModFitting$Bar;

    .line 614
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;

    const-string v2, "SHIELD"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, -0x952f01

    invoke-direct {v1, p1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->shieldBar:Lfr/testudo/spacecorsair/mod/ModFitting$Bar;

    .line 615
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;

    const-string v2, "XP"

    const/16 v3, -0x26c1

    invoke-direct {v1, p1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->xpBar:Lfr/testudo/spacecorsair/mod/ModFitting$Bar;

    .line 616
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x41880000    # 17.0f

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->d:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 617
    const/high16 v2, 0x40800000    # 4.0f

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->d:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 618
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->hullBar:Lfr/testudo/spacecorsair/mod/ModFitting$Bar;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 619
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->shieldBar:Lfr/testudo/spacecorsair/mod/ModFitting$Bar;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 620
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->xpBar:Lfr/testudo/spacecorsair/mod/ModFitting$Bar;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 621
    const-string v2, "CARGO HOLD"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->section(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 622
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;

    const-string v3, "CARGO"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v4, -0x1f5fb0

    invoke-direct {v2, p1, v3, v4}, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->cargoBar:Lfr/testudo/spacecorsair/mod/ModFitting$Bar;

    .line 623
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->cargoBar:Lfr/testudo/spacecorsair/mod/ModFitting$Bar;

    new-instance v3, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$7;

    invoke-direct {v3, p0}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$7;-><init>(Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;)V

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 626
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->cargoBar:Lfr/testudo/spacecorsair/mod/ModFitting$Bar;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 627
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;

    const-string v3, "MISSILES"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, -0x75a4

    invoke-direct {v2, p1, v3, v4}, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->ammoBar:Lfr/testudo/spacecorsair/mod/ModFitting$Bar;

    .line 628
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->ammoBar:Lfr/testudo/spacecorsair/mod/ModFitting$Bar;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 629
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 630
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v6, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 631
    const-string v1, "INVENTORY"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "txtShowInventory"

    const-string v3, "showPopupInventory"

    invoke-direct {p0, p1, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->action(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 632
    const-string v1, "CASH SHOP"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "txtShowStore"

    const-string v3, "showPopupStore"

    invoke-direct {p0, p1, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->action(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 633
    const-string v1, "SHIPS"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "txtShowShips"

    const-string v3, "openShipsActivity"

    invoke-direct {p0, p1, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->action(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 634
    return-object v0
.end method

.method private right(Landroid/app/Activity;)Landroid/view/View;
    .registers 11

    .prologue
    const/4 v8, -0x1

    const/high16 v7, 0x41000000    # 8.0f

    const/high16 v6, 0x40c00000    # 6.0f

    const/4 v5, 0x0

    .line 650
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 651
    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 652
    const v1, -0x66f4e5d2

    const v2, 0x406ad0ff

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->d:F

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->d:F

    mul-float/2addr v4, v6

    invoke-static {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/ModFitting;->box(IIFF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 653
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->stats:Landroid/widget/LinearLayout;

    .line 654
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->stats:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 655
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->d:F

    mul-float/2addr v1, v7

    float-to-int v1, v1

    .line 656
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->stats:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v5, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 657
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->stats:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 658
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 659
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->d:F

    mul-float/2addr v2, v7

    float-to-int v2, v2

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->d:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3, v5, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 660
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 661
    return-object v1
.end method

.method private row(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    const/high16 v6, 0x41300000    # 11.0f

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 949
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->act:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 950
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 951
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->d:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->d:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v5, v1, v5, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 952
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->act:Landroid/app/Activity;

    const v2, -0x4f3b26

    invoke-static {v1, v6, v2, v5}, Lfr/testudo/spacecorsair/mod/ModFitting;->text(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 953
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 954
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 955
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->act:Landroid/app/Activity;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {v1, v6, v2, v3}, Lfr/testudo/spacecorsair/mod/ModFitting;->text(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 956
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 957
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 958
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 959
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->stats:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 960
    return-void
.end method

.method private section(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 602
    const/high16 v0, 0x41300000    # 11.0f

    const v1, -0x952f01

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModFitting;->text(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 603
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    const/high16 v1, 0x41000000    # 8.0f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->d:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->d:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v4, v1, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 605
    return-object v0
.end method

.method private setIcon(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 817
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    if-eqz v0, :cond_a

    .line 830
    :cond_9
    :goto_9
    return-void

    .line 819
    :cond_a
    :try_start_a
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->act:Landroid/app/Activity;

    invoke-static {v0, p2}, Lfr/testudo/spacecorsair/mod/ModFitting;->orig(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 820
    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_9

    .line 821
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 822
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 823
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->act:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 824
    const/high16 v1, 0x41800000    # 16.0f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->d:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 825
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 826
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_45} :catch_46

    goto :goto_9

    .line 827
    :catch_46
    move-exception v0

    goto :goto_9
.end method

.method private signature()J
    .registers 13

    .prologue
    const-wide/16 v10, 0x1f

    .line 704
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    .line 705
    iget-object v1, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    .line 706
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    .line 707
    iget-object v3, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    .line 708
    iget-object v4, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 709
    const-wide/16 v6, 0x11

    .line 710
    mul-long/2addr v6, v10

    iget-object v0, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v8, v0

    add-long/2addr v6, v8

    .line 711
    mul-long/2addr v6, v10

    iget-object v0, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v8, v0

    add-long/2addr v6, v8

    .line 712
    mul-long/2addr v6, v10

    iget-object v0, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v8, v0

    add-long/2addr v6, v8

    .line 713
    mul-long/2addr v6, v10

    iget-object v0, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v8, v0

    add-long/2addr v6, v8

    .line 714
    mul-long/2addr v6, v10

    iget-object v0, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->booster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v8, v0

    add-long/2addr v6, v8

    .line 715
    mul-long/2addr v6, v10

    iget-object v0, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->hyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v8, v0

    add-long/2addr v6, v8

    .line 716
    mul-long/2addr v6, v10

    iget v0, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    int-to-long v8, v0

    add-long/2addr v6, v8

    .line 717
    mul-long/2addr v6, v10

    iget-wide v0, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curXp:J

    add-long/2addr v0, v6

    .line 718
    mul-long/2addr v0, v10

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->getCredit()J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 719
    mul-long/2addr v0, v10

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->getCreditInApp()J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 720
    mul-long/2addr v0, v10

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->getTotalWeight()I

    move-result v2

    int-to-long v6, v2

    add-long/2addr v0, v6

    .line 721
    mul-long/2addr v0, v10

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->getCapacityInTon()I

    move-result v2

    int-to-long v6, v2

    add-long/2addr v0, v6

    .line 722
    mul-long/2addr v0, v10

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->getMissileCount()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 723
    if-eqz v4, :cond_94

    .line 724
    mul-long/2addr v0, v10

    iget v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    float-to-int v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 725
    mul-long/2addr v0, v10

    iget v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    float-to-int v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 726
    iget-object v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    if-eqz v2, :cond_94

    .line 727
    mul-long/2addr v0, v10

    iget-object v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    float-to-int v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 728
    mul-long/2addr v0, v10

    iget-object v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    float-to-int v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 731
    :cond_94
    return-wide v0
.end method

.method private testPick()V
    .registers 7

    .prologue
    .line 735
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->testDone:Z

    if-eqz v0, :cond_5

    .line 746
    :cond_4
    return-void

    .line 736
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->testDone:Z

    .line 737
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->testFit:Ljava/lang/String;

    .line 738
    if-eqz v0, :cond_4

    const-string v1, "fit_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 739
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 740
    const/4 v0, 0x0

    :goto_20
    const/4 v2, 0x6

    if-ge v0, v2, :cond_4

    .line 741
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFitting;->SLOT_NAME:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 743
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->handler:Landroid/os/Handler;

    new-instance v3, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$9;

    invoke-direct {v3, p0, v0}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$9;-><init>(Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;I)V

    const-wide/16 v4, 0x320

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 740
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_20
.end method


# virtual methods
.method bind()V
    .registers 15

    .prologue
    .line 751
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    .line 752
    iget-object v1, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    .line 753
    iget-object v1, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v1, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    .line 754
    iget-object v1, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 755
    iget-object v0, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 756
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModShips;->hull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v5

    .line 757
    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    instance-of v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-eqz v0, :cond_269

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-object v6, v0

    .line 760
    :goto_23
    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->name:Landroid/widget/TextView;

    if-eqz v5, :cond_26c

    iget-object v0, v5, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->name:Ljava/lang/String;

    :goto_29
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 761
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->name:Landroid/widget/TextView;

    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->act:Landroid/app/Activity;

    invoke-static {v7, v4}, Lfr/testudo/spacecorsair/mod/ModFitting;->rarityColor(Landroid/content/Context;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 763
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModShips;->className(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModShips;->techName(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v7

    .line 765
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_56

    const-string v8, " \u00b7 "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    :cond_56
    if-eqz v5, :cond_6f

    iget-object v7, v5, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->role:Ljava/lang/String;

    if-eqz v7, :cond_6f

    iget-object v7, v5, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->role:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6f

    const-string v7, " \u00b7 "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->role:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    :cond_6f
    if-eqz v6, :cond_84

    iget-object v7, v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->sizeInformational:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    if-eqz v7, :cond_84

    .line 768
    :try_start_75
    const-string v7, " \u00b7 "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->sizeInformational:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    invoke-virtual {v8}, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_84} :catch_2ed

    .line 770
    :cond_84
    :goto_84
    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->sub:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 771
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModFitting;->factionIndex(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)I

    move-result v7

    .line 772
    if-nez v5, :cond_2f0

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModShipTree;->group(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    const/4 v8, 0x7

    if-ge v0, v8, :cond_2f0

    .line 773
    :goto_9a
    if-ltz v0, :cond_276

    .line 774
    sget-object v7, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v0, v7, v0

    .line 775
    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->faction:Landroid/widget/TextView;

    iget-object v8, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 776
    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->faction:Landroid/widget/TextView;

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->r:F

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->g:F

    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iget v10, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->b:F

    const/high16 v11, 0x437f0000    # 255.0f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 777
    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->act:Landroid/app/Activity;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "emblem_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lfr/testudo/spacecorsair/mod/ModComms;->asset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 778
    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->emblem:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 779
    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->emblem:Landroid/widget/ImageView;

    if-eqz v0, :cond_272

    const/4 v0, 0x0

    :goto_ed
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 787
    :goto_f0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 788
    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->credits:Landroid/widget/TextView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->getCredit()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 789
    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->creditsInApp:Landroid/widget/TextView;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->getCreditInApp()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 790
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->credits:Landroid/widget/TextView;

    const-string v7, "imgCredits"

    invoke-direct {p0, v0, v7}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->setIcon(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 791
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->creditsInApp:Landroid/widget/TextView;

    const-string v7, "imgCreditsInApp"

    invoke-direct {p0, v0, v7}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->setIcon(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 792
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->level:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LV "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 795
    if-eqz v1, :cond_1a6

    .line 796
    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->hullBar:Lfr/testudo/spacecorsair/mod/ModFitting$Bar;

    iget v0, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    const/4 v8, 0x0

    cmpl-float v0, v0, v8

    if-lez v0, :cond_2ab

    iget v0, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    iget v8, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    div-float/2addr v0, v8

    :goto_14a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->set(FLjava/lang/String;)V

    .line 797
    iget-object v0, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    if-eqz v0, :cond_1a6

    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->shieldBar:Lfr/testudo/spacecorsair/mod/ModFitting$Bar;

    iget-object v0, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    const/4 v8, 0x0

    cmpl-float v0, v0, v8

    if-lez v0, :cond_2ae

    iget-object v0, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    iget-object v8, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v8, v8, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    div-float/2addr v0, v8

    :goto_182
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v9, v9, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v9, v9, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->set(FLjava/lang/String;)V

    .line 799
    :cond_1a6
    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->xpBar:Lfr/testudo/spacecorsair/mod/ModFitting$Bar;

    iget-wide v8, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->nextLevelXp:J

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-lez v0, :cond_2b1

    iget-wide v8, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curXp:J

    long-to-float v0, v8

    iget-wide v8, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->nextLevelXp:J

    long-to-float v8, v8

    div-float/2addr v0, v8

    :goto_1b7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->nextLevelXp:J

    const-wide/16 v12, 0x0

    cmp-long v8, v8, v12

    if-lez v8, :cond_2b4

    iget-wide v8, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curXp:J

    const-wide/16 v12, 0x64

    mul-long/2addr v8, v12

    iget-wide v12, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->nextLevelXp:J

    div-long/2addr v8, v12

    :goto_1cc
    long-to-int v8, v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->set(FLjava/lang/String;)V

    .line 800
    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->getCapacityInTon()I

    move-result v7

    .line 801
    iget-object v8, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->cargoBar:Lfr/testudo/spacecorsair/mod/ModFitting$Bar;

    if-lez v7, :cond_2b8

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->getTotalWeight()I

    move-result v0

    int-to-float v0, v0

    int-to-float v9, v7

    div-float/2addr v0, v9

    :goto_1ed
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->getTotalWeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " t"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v0, v7}, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->set(FLjava/lang/String;)V

    .line 802
    iget-object v0, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    if-nez v0, :cond_2bb

    const/4 v0, 0x0

    .line 803
    :goto_218
    instance-of v7, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    if-eqz v7, :cond_2c5

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 804
    :goto_21e
    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->getMissileCount()I

    move-result v8

    .line 805
    if-nez v0, :cond_2c8

    const/4 v0, 0x0

    .line 806
    :goto_225
    iget-object v9, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->ammoBar:Lfr/testudo/spacecorsair/mod/ModFitting$Bar;

    if-lez v0, :cond_2cc

    int-to-float v7, v8

    int-to-float v10, v0

    div-float/2addr v7, v10

    :goto_22c
    iget-object v10, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v10, v10, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModFitting;->empty(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v10

    if-eqz v10, :cond_2cf

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " (no launcher)"

    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_24d
    invoke-virtual {v9, v7, v0}, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->set(FLjava/lang/String;)V

    .line 809
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->ring:Lfr/testudo/spacecorsair/mod/ModFitting$RingView;

    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->act:Landroid/app/Activity;

    invoke-virtual {v0, v7, v4, v5, v6}, Lfr/testudo/spacecorsair/mod/ModFitting$RingView;->setShip(Landroid/content/Context;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/mod/ModShips$Hull;Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)V

    .line 810
    const/4 v0, 0x0

    :goto_258
    const/4 v7, 0x6

    if-ge v0, v7, :cond_2e8

    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->tiles:[Lfr/testudo/spacecorsair/mod/ModFitting$Tile;

    aget-object v7, v7, v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFitting;->gear(I)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v8

    invoke-virtual {v7, v8}, Lfr/testudo/spacecorsair/mod/ModFitting$Tile;->bind(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_258

    .line 757
    :cond_269
    const/4 v6, 0x0

    goto/16 :goto_23

    .line 760
    :cond_26c
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModFitting;->label(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_29

    .line 779
    :cond_272
    const/16 v0, 0x8

    goto/16 :goto_ed

    .line 781
    :cond_276
    if-eqz v5, :cond_2a4

    iget-object v0, v5, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->faction:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2a4

    iget-object v0, v5, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->faction:Ljava/lang/String;

    .line 782
    :goto_282
    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->faction:Landroid/widget/TextView;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 783
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->faction:Landroid/widget/TextView;

    const v7, -0x4f3b26

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 784
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->emblem:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 785
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->emblem:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_f0

    .line 781
    :cond_2a4
    const-string v0, "Independent"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_282

    .line 796
    :cond_2ab
    const/4 v0, 0x0

    goto/16 :goto_14a

    .line 797
    :cond_2ae
    const/4 v0, 0x0

    goto/16 :goto_182

    .line 799
    :cond_2b1
    const/4 v0, 0x0

    goto/16 :goto_1b7

    :cond_2b4
    const-wide/16 v8, 0x0

    goto/16 :goto_1cc

    .line 801
    :cond_2b8
    const/4 v0, 0x0

    goto/16 :goto_1ed

    .line 802
    :cond_2bb
    iget-object v0, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    goto/16 :goto_218

    .line 803
    :cond_2c5
    const/4 v0, 0x0

    goto/16 :goto_21e

    .line 805
    :cond_2c8
    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->maxCountInventory:I

    goto/16 :goto_225

    .line 806
    :cond_2cc
    const/4 v7, 0x0

    goto/16 :goto_22c

    :cond_2cf
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " / "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_24d

    :cond_2e8
    move-object v0, p0

    .line 813
    invoke-direct/range {v0 .. v6}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->buildStats(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/business/player/PlayerInfo;Lfr/testudo/spacecorsair/business/player/Inventory;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/mod/ModShips$Hull;Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)V

    .line 814
    return-void

    .line 768
    :catch_2ed
    move-exception v7

    goto/16 :goto_84

    :cond_2f0
    move v0, v7

    goto/16 :goto_9a
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 672
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 673
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->stop()V

    .line 674
    return-void
.end method

.method stop()V
    .registers 3

    .prologue
    .line 667
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->poll:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 668
    return-void
.end method

.method tick(Z)V
    .registers 9

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 678
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->stop()V

    .line 679
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->broken:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->act:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 701
    :cond_13
    :goto_13
    return-void

    .line 680
    :cond_14
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->lists:Landroid/view/View;

    if-nez v0, :cond_22

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->act:Landroid/app/Activity;

    const-string v3, "layListviews"

    invoke-static {v0, v3}, Lfr/testudo/spacecorsair/mod/ModFitting;->orig(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->lists:Landroid/view/View;

    .line 681
    :cond_22
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->lists:Landroid/view/View;

    if-eqz v0, :cond_bb

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->lists:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_bb

    move v0, v1

    .line 682
    :goto_2f
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->act:Landroid/app/Activity;

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->testFit:Ljava/lang/String;

    invoke-static {v3, v5}, Lfr/testudo/spacecorsair/mod/ModFitting;->classic(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 683
    if-nez v5, :cond_be

    if-nez v0, :cond_be

    move v3, v2

    .line 684
    :goto_3c
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->getVisibility()I

    move-result v6

    if-eq v6, v3, :cond_48

    .line 685
    invoke-virtual {p0, v3}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->setVisibility(I)V

    .line 686
    if-nez v3, :cond_48

    move p1, v1

    .line 688
    :cond_48
    if-eqz v5, :cond_c1

    if-nez v0, :cond_c1

    .line 689
    :goto_4c
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->toggle:Landroid/widget/Button;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->toggle:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_5d

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->toggle:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 690
    :cond_5d
    if-nez v3, :cond_a0

    .line 691
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 692
    if-eqz v0, :cond_84

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eq v1, p0, :cond_84

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->toggle:Landroid/widget/Button;

    if-eq v0, v1, :cond_84

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->bringToFront()V

    .line 693
    :cond_84
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->signature()J

    move-result-wide v0

    .line 694
    if-nez p1, :cond_98

    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->sig:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_9d

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->act:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 695
    :cond_98
    iput-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->sig:J

    .line 696
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->bind()V

    .line 698
    :cond_9d
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->testPick()V

    .line 700
    :cond_a0
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_a8

    if-eqz p1, :cond_13

    :cond_a8
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->poll:Ljava/lang/Runnable;

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->act:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_c3

    const-wide/16 v0, 0x190

    :goto_b6
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_13

    :cond_bb
    move v0, v2

    .line 681
    goto/16 :goto_2f

    :cond_be
    move v3, v4

    .line 683
    goto/16 :goto_3c

    :cond_c1
    move v2, v4

    .line 688
    goto :goto_4c

    .line 700
    :cond_c3
    const-wide/16 v0, 0x4b0

    goto :goto_b6
.end method
