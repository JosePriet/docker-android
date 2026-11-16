.class final Lfr/testudo/spacecorsair/mod/ModLanUi;
.super Ljava/lang/Object;
.source "ModLanUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/mod/ModLanUi$Pick;,
        Lfr/testudo/spacecorsair/mod/ModLanUi$CodeCb;
    }
.end annotation


# static fields
.field private static final BLOCK:[Ljava/lang/String;

.field static final CODE_ALPHABET:Ljava/lang/String; = "ABCDEFGHJKLMNPQRSTUVWXYZ23456789"

.field static final DISABLED:Ljava/lang/Runnable;

.field private static final PREFS:Ljava/lang/String; = "corsair_lan"

.field private static atlas:Landroid/graphics/Bitmap;

.field private static chatAct:Landroid/app/Activity;

.field private static chatPanel:Landroid/widget/LinearLayout;

.field private static chatText:Landroid/widget/TextView;

.field private static ctryCache:Ljava/lang/String;

.field private static icon:Landroid/widget/Button;

.field private static final lines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static volatile muted:Z

.field private static nickCache:Ljava/lang/String;

.field private static started:I

.field private static volatile unread:I

.field private static watching:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 80
    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "fuck"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "shit"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bitch"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "cunt"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "nigg"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "fagg"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "whore"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "slut"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "rape"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "nazi"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "hitler"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "retard"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "dick"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "pussy"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "asshole"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "puta"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "puto"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "mierda"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "pendej"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "cabron"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "verga"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "maric"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "culero"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "co\u00f1o"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "cono"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "zorra"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "polla"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "chinga"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "joder"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "hijueputa"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "malparid"

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLanUi;->BLOCK:[Ljava/lang/String;

    .line 318
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLanUi$8;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModLanUi$8;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLanUi;->DISABLED:Ljava/lang/Runnable;

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLanUi;->lines:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLanUi;->countryName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/String;F)Landroid/graphics/drawable/BitmapDrawable;
    .registers 4

    .prologue
    .line 44
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModLanUi;->flagDrawable(Landroid/content/Context;Ljava/lang/String;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1002(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .registers 1

    .prologue
    .line 44
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLanUi;->chatPanel:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1102(Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 44
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLanUi;->chatText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Landroid/app/Activity;Lfr/testudo/spacecorsair/mod/ModLanUi$Pick;)V
    .registers 2

    .prologue
    .line 44
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModLanUi;->pickCountry(Landroid/app/Activity;Lfr/testudo/spacecorsair/mod/ModLanUi$Pick;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 44
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModLanUi;->save(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400()I
    .registers 1

    .prologue
    .line 44
    sget v0, Lfr/testudo/spacecorsair/mod/ModLanUi;->started:I

    return v0
.end method

.method static synthetic access$408()I
    .registers 2

    .prologue
    .line 44
    sget v0, Lfr/testudo/spacecorsair/mod/ModLanUi;->started:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lfr/testudo/spacecorsair/mod/ModLanUi;->started:I

    return v0
.end method

.method static synthetic access$410()I
    .registers 2

    .prologue
    .line 44
    sget v0, Lfr/testudo/spacecorsair/mod/ModLanUi;->started:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lfr/testudo/spacecorsair/mod/ModLanUi;->started:I

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 44
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLanUi;->add(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600()Ljava/lang/String;
    .registers 1

    .prologue
    .line 44
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->allLines()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()I
    .registers 1

    .prologue
    .line 44
    sget v0, Lfr/testudo/spacecorsair/mod/ModLanUi;->unread:I

    return v0
.end method

.method static synthetic access$702(I)I
    .registers 1

    .prologue
    .line 44
    sput p0, Lfr/testudo/spacecorsair/mod/ModLanUi;->unread:I

    return p0
.end method

.method static synthetic access$800()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLanUi;->chatAct:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$802(Landroid/app/Activity;)Landroid/app/Activity;
    .registers 1

    .prologue
    .line 44
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLanUi;->chatAct:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$902(Landroid/widget/Button;)Landroid/widget/Button;
    .registers 1

    .prologue
    .line 44
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLanUi;->icon:Landroid/widget/Button;

    return-object p0
.end method

.method private static add(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 394
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLanUi;->lines:Ljava/util/ArrayList;

    monitor-enter v1

    .line 395
    :try_start_3
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLanUi;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    :goto_8
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLanUi;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x14

    if-le v0, v2, :cond_1c

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLanUi;->lines:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_8

    .line 397
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0

    :cond_1c
    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    .line 398
    return-void
.end method

.method private static allLines()Ljava/lang/String;
    .registers 5

    .prologue
    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 405
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLanUi;->lines:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_8
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLanUi;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_25

    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :catchall_29
    move-exception v0

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_29

    throw v0

    :cond_2c
    :try_start_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_29

    .line 406
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static attach(Landroid/app/Activity;)V
    .registers 12

    .prologue
    const/high16 v7, 0x40c00000    # 6.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 442
    const/4 v0, 0x0

    :try_start_5
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->underMenu:Z

    .line 443
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLanUi;->watchApp(Landroid/app/Activity;)V

    .line 444
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLanUi;->chatAct:Landroid/app/Activity;

    if-ne v0, p0, :cond_13

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLanUi;->icon:Landroid/widget/Button;

    if-eqz v0, :cond_13

    .line 560
    :goto_12
    return-void

    .line 445
    :cond_13
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLanUi;->chatAct:Landroid/app/Activity;

    .line 446
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 447
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 448
    const-string v0, "\u2709"

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 449
    const/4 v0, 0x2

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v2, v0, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 450
    const/4 v0, -0x1

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 451
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 452
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setMinWidth(I)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setMinimumWidth(I)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setMinHeight(I)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setMinimumHeight(I)V

    .line 453
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 454
    mul-float v3, v7, v1

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 455
    const v3, -0x5fdfcfc0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 456
    mul-float v3, v6, v1

    float-to-int v3, v3

    const v4, -0x221b12

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 457
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 458
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 459
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v3, 0x42200000    # 40.0f

    mul-float/2addr v3, v1

    float-to-int v3, v3

    const/high16 v4, 0x42100000    # 36.0f

    mul-float/2addr v4, v1

    float-to-int v4, v4

    const/16 v5, 0x15

    invoke-direct {v0, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 460
    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 461
    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 463
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 464
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 465
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 466
    mul-float v4, v7, v1

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 467
    const v4, -0x2fefe7e0    # -9.670001E9f

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 468
    mul-float v4, v6, v1

    float-to-int v4, v4

    const v5, -0x705f50

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 469
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 470
    mul-float v0, v7, v1

    float-to-int v0, v0

    .line 471
    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 472
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 473
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 474
    const/4 v0, 0x2

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v4, v0, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 475
    const v0, -0x17110c

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 476
    const/16 v0, 0x50

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 477
    new-instance v5, Landroid/widget/ScrollView;

    invoke-direct {v5, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 478
    invoke-virtual {v5, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 479
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v0, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 480
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 481
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 482
    new-instance v6, Landroid/widget/EditText;

    invoke-direct {v6, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 483
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 484
    const/4 v7, 0x2

    const/high16 v8, 0x41400000    # 12.0f

    invoke-virtual {v6, v7, v8}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 485
    const/4 v7, 0x1

    new-array v7, v7, [Landroid/text/InputFilter;

    const/4 v8, 0x0

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    const/16 v10, 0x78

    invoke-direct {v9, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 486
    const-string v7, "Message"

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 487
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 488
    new-instance v7, Landroid/widget/Button;

    invoke-direct {v7, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 489
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 490
    const/4 v8, 0x2

    const/high16 v9, 0x41400000    # 12.0f

    invoke-virtual {v7, v8, v9}, Landroid/widget/Button;->setTextSize(IF)V

    .line 491
    const-string v8, "Send"

    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 492
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 493
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 494
    new-instance v8, Landroid/widget/Button;

    invoke-direct {v8, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 495
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 496
    const/4 v0, 0x2

    const/high16 v9, 0x41300000    # 11.0f

    invoke-virtual {v8, v0, v9}, Landroid/widget/Button;->setTextSize(IF)V

    .line 497
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLanUi;->muted:Z

    if-eqz v0, :cond_1ca

    const-string v0, "Unmute"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_151
    invoke-virtual {v8, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 498
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLanUi$12;

    invoke-direct {v0, v8}, Lfr/testudo/spacecorsair/mod/ModLanUi$12;-><init>(Landroid/widget/Button;)V

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 502
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const v8, 0x3eb851ec    # 0.36f

    mul-float/2addr v0, v8

    const/high16 v8, 0x43960000    # 300.0f

    mul-float/2addr v8, v1

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    .line 503
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    const v9, 0x3f19999a    # 0.6f

    mul-float/2addr v8, v9

    const/high16 v9, 0x43820000    # 260.0f

    mul-float/2addr v9, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    float-to-int v8, v8

    .line 504
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v10, 0x15

    invoke-direct {v9, v0, v8, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 505
    const/high16 v0, 0x42400000    # 48.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 506
    invoke-virtual {p0, v3, v9}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 507
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLanUi$13;

    invoke-direct {v0, v6, v4}, Lfr/testudo/spacecorsair/mod/ModLanUi$13;-><init>(Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLanUi$14;

    invoke-direct {v0, v3, v4}, Lfr/testudo/spacecorsair/mod/ModLanUi$14;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLanUi;->icon:Landroid/widget/Button;

    .line 526
    sput-object v3, Lfr/testudo/spacecorsair/mod/ModLanUi;->chatPanel:Landroid/widget/LinearLayout;

    .line 527
    sput-object v4, Lfr/testudo/spacecorsair/mod/ModLanUi;->chatText:Landroid/widget/TextView;

    .line 528
    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 529
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLanUi$15;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lfr/testudo/spacecorsair/mod/ModLanUi$15;-><init>(Landroid/app/Activity;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ScrollView;Landroid/os/Handler;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_12

    .line 557
    :catch_1c7
    move-exception v0

    goto/16 :goto_12

    .line 497
    :cond_1ca
    const-string v0, "Mute"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1cf
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_1cf} :catch_1c7

    move-result-object v0

    goto :goto_151
.end method

.method static blocked(Ljava/lang/String;)Z
    .registers 9

    .prologue
    const/16 v7, 0x6f

    const/16 v5, 0x69

    const/16 v4, 0x65

    const/4 v1, 0x0

    const/16 v6, 0x61

    .line 86
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x30

    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x31

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x33

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x34

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x35

    const/16 v3, 0x73

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x40

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x24

    const/16 v3, 0x73

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xe1

    .line 87
    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xe9

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xed

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xf3

    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xfa

    const/16 v3, 0x75

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 89
    :goto_63
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_7d

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_73

    const/16 v5, 0x7a

    if-le v4, v5, :cond_77

    :cond_73
    const/16 v5, 0xf1

    if-ne v4, v5, :cond_7a

    :cond_77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7a
    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    .line 90
    :cond_7d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLanUi;->BLOCK:[Ljava/lang/String;

    array-length v4, v3

    move v0, v1

    :goto_85
    if-ge v0, v4, :cond_90

    aget-object v5, v3, v0

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_91

    const/4 v1, 0x1

    .line 92
    :cond_90
    return v1

    .line 91
    :cond_91
    add-int/lit8 v0, v0, 0x1

    goto :goto_85
.end method

.method static chatText()Ljava/lang/String;
    .registers 1

    .prologue
    .line 401
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->allLines()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static clearChat()V
    .registers 2

    .prologue
    .line 410
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLanUi;->lines:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLanUi;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 411
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModLanUi;->unread:I

    .line 412
    return-void

    .line 410
    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method static codeBoxes(Landroid/app/Activity;Lfr/testudo/spacecorsair/mod/ModLanUi$CodeCb;)V
    .registers 15

    .prologue
    .line 658
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    .line 659
    const/4 v0, 0x4

    new-array v3, v0, [Landroid/widget/EditText;

    .line 660
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 661
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 662
    const/16 v0, 0x11

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 663
    const/4 v0, 0x0

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v1, v6

    float-to-int v1, v1

    const/4 v2, 0x0

    const/high16 v4, 0x41000000    # 8.0f

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v7, v0, v1, v2, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 664
    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v0, 0x0

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 665
    const/4 v0, 0x1

    new-array v8, v0, [Landroid/app/AlertDialog;

    .line 666
    new-instance v5, Lfr/testudo/spacecorsair/mod/ModLanUi$21;

    invoke-direct {v5, v3, v8}, Lfr/testudo/spacecorsair/mod/ModLanUi$21;-><init>([Landroid/widget/EditText;[Landroid/app/AlertDialog;)V

    .line 674
    const/4 v2, 0x0

    :goto_38
    const/4 v0, 0x4

    if-ge v2, v0, :cond_88

    .line 676
    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 677
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 678
    const/16 v0, 0x11

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setGravity(I)V

    .line 679
    const/4 v0, 0x2

    const/high16 v9, 0x41e00000    # 28.0f

    invoke-virtual {v4, v0, v9}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 680
    const v0, 0x81001

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 681
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 682
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x42600000    # 56.0f

    mul-float/2addr v9, v6

    float-to-int v9, v9

    const/4 v10, -0x2

    invoke-direct {v0, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 683
    const/high16 v9, 0x40c00000    # 6.0f

    mul-float/2addr v9, v6

    float-to-int v9, v9

    const/4 v10, 0x0

    const/high16 v11, 0x40c00000    # 6.0f

    mul-float/2addr v11, v6

    float-to-int v11, v11

    const/4 v12, 0x0

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 684
    invoke-virtual {v7, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 685
    aput-object v4, v3, v2

    .line 686
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLanUi$22;

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModLanUi$22;-><init>([ZI[Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/Runnable;)V

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 706
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLanUi$23;

    invoke-direct {v0, v4, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLanUi$23;-><init>(Landroid/widget/EditText;I[Landroid/widget/EditText;)V

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 674
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 717
    :cond_88
    const/4 v0, 0x0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Join by code"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Type the 4-character code your friend sees on the host screen."

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 718
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Join"

    .line 719
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lfr/testudo/spacecorsair/mod/ModLanUi$24;

    invoke-direct {v4, v3, p1}, Lfr/testudo/spacecorsair/mod/ModLanUi$24;-><init>([Landroid/widget/EditText;Lfr/testudo/spacecorsair/mod/ModLanUi$CodeCb;)V

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Close"

    .line 726
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    aput-object v1, v8, v0

    .line 727
    const/4 v0, 0x0

    aget-object v0, v8, v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 728
    const/4 v0, 0x0

    aget-object v0, v8, v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 729
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 730
    const/4 v0, 0x0

    aget-object v0, v3, v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z
    :try_end_e0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e0} :catch_e1

    .line 734
    :goto_e0
    return-void

    .line 731
    :catch_e1
    move-exception v0

    goto :goto_e0
.end method

.method static codeChars(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .registers 6

    .prologue
    .line 647
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 648
    const/4 v0, 0x0

    :goto_6
    if-eqz p0, :cond_2a

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2a

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v2, p1, :cond_2a

    .line 649
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    .line 650
    const-string v3, "ABCDEFGHJKLMNPQRSTUVWXYZ23456789"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 648
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 652
    :cond_2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static country()Ljava/lang/String;
    .registers 3

    .prologue
    .line 63
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLanUi;->ctryCache:Ljava/lang/String;

    if-nez v0, :cond_16

    .line 64
    :try_start_4
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "country"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLanUi;->ctryCache:Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_16} :catch_19

    .line 66
    :cond_16
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLanUi;->ctryCache:Ljava/lang/String;

    :goto_18
    return-object v0

    .line 64
    :catch_19
    move-exception v0

    const-string v0, ""

    goto :goto_18
.end method

.method private static countryName(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 172
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->spanish()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFlagData;->ES:[Ljava/lang/String;

    :goto_8
    aget-object v0, v0, p0

    return-object v0

    :cond_b
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFlagData;->EN:[Ljava/lang/String;

    goto :goto_8
.end method

.method static drawLabel(FFLjava/lang/String;Ljava/lang/String;)V
    .registers 22

    .prologue
    .line 130
    if-eqz p2, :cond_8

    :try_start_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_9

    .line 144
    :cond_8
    :goto_8
    return-void

    .line 131
    :cond_9
    invoke-static/range {p2 .. p3}, Lfr/testudo/spacecorsair/mod/ModLanUi;->label(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 132
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40e00000    # 7.0f

    mul-float/2addr v1, v2

    .line 133
    invoke-static/range {p3 .. p3}, Lfr/testudo/spacecorsair/mod/ModLanUi;->flagIndex(Ljava/lang/String;)I

    move-result v11

    .line 134
    sub-float v2, p0, v1

    if-ltz v11, :cond_79

    const/16 v1, 0x14

    :goto_1f
    int-to-float v1, v1

    add-float/2addr v2, v1

    .line 135
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    const/4 v4, 0x0

    const v6, 0x3f0ccccd    # 0.55f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f400000    # 0.75f

    const/high16 v9, 0x3f800000    # 1.0f

    sget-object v10, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    move/from16 v3, p1

    invoke-virtual/range {v1 .. v10}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(FFZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 136
    if-ltz v11, :cond_8

    .line 137
    const/high16 v14, 0x3d800000    # 0.0625f

    const/high16 v15, 0x3d400000    # 0.046875f

    .line 138
    rem-int/lit8 v16, v11, 0x10

    div-int/lit8 v17, v11, 0x10

    .line 139
    const-string v1, "flags"

    const/high16 v3, 0x41c00000    # 24.0f

    sub-float/2addr v2, v3

    const/high16 v3, 0x41100000    # 9.0f

    add-float v3, v3, p1

    const/high16 v4, 0x42000000    # 32.0f

    const/high16 v5, 0x41c00000    # 24.0f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    move/from16 v0, v16

    int-to-float v12, v0

    mul-float/2addr v12, v14

    move/from16 v0, v17

    int-to-float v13, v0

    mul-float/2addr v13, v15

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v14, v14, v16

    add-int/lit8 v16, v17, 0x1

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    const/16 v16, 0x0

    invoke-static/range {v1 .. v16}, Lfr/testudo/spacecorsair/mod/ModFx;->sprUV(Ljava/lang/String;FFFFFFFFFZFFFFZ)V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_76} :catch_77

    goto :goto_8

    .line 141
    :catch_77
    move-exception v1

    goto :goto_8

    .line 134
    :cond_79
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method static flag(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 151
    :try_start_1
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModLanUi;->flagIndex(Ljava/lang/String;)I

    move-result v1

    .line 152
    if-gez v1, :cond_8

    .line 159
    :goto_7
    return-object v0

    .line 153
    :cond_8
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLanUi;->atlas:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1b

    .line 154
    const-string v2, "flags"

    invoke-static {p0, v2}, Lfr/testudo/spacecorsair/mod/ModArt;->open(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_11} :catch_33

    move-result-object v2

    .line 155
    :try_start_12
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    sput-object v3, Lfr/testudo/spacecorsair/mod/ModLanUi;->atlas:Landroid/graphics/Bitmap;
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_2e

    :try_start_18
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 157
    :cond_1b
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLanUi;->atlas:Landroid/graphics/Bitmap;

    rem-int/lit8 v3, v1, 0x10

    mul-int/lit8 v3, v3, 0x20

    div-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x18

    const/16 v4, 0x20

    const/16 v5, 0x18

    invoke-static {v2, v3, v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_7

    .line 155
    :catchall_2e
    move-exception v1

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v1
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_33} :catch_33

    .line 158
    :catch_33
    move-exception v1

    goto :goto_7
.end method

.method private static flagDrawable(Landroid/content/Context;Ljava/lang/String;F)Landroid/graphics/drawable/BitmapDrawable;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 164
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModLanUi;->flag(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 165
    if-nez v1, :cond_9

    const/4 v0, 0x0

    .line 168
    :goto_8
    return-object v0

    .line 166
    :cond_9
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 167
    const/high16 v1, 0x42000000    # 32.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    const/high16 v2, 0x41c00000    # 24.0f

    mul-float/2addr v2, p2

    float-to-int v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    goto :goto_8
.end method

.method static flagIndex(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 118
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    :cond_9
    const/4 v0, -0x1

    :goto_a
    return v0

    :cond_b
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFlagData;->CODES:[Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_a
.end method

.method static hasProfile()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 70
    :try_start_1
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "nick"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_10} :catch_16

    move-result v1

    if-lez v1, :cond_14

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13

    :catch_16
    move-exception v1

    goto :goto_13
.end method

.method static label(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_19

    :cond_17
    const-string p1, "?"

    :cond_19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static menu(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/AlertDialog;
    .registers 15

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 280
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    .line 281
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 282
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 283
    const/high16 v0, 0x41600000    # 14.0f

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 284
    div-int/lit8 v2, v0, 0x2

    div-int/lit8 v6, v0, 0x2

    invoke-virtual {v5, v0, v2, v0, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 285
    if-eqz p2, :cond_24

    invoke-virtual {v5, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 286
    :cond_24
    if-eqz p3, :cond_3c

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3c

    .line 287
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 288
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v2, v1, v1, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 290
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 292
    :cond_3c
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 293
    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 294
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    move v0, v1

    .line 295
    :goto_56
    array-length v2, p4

    if-ge v0, v2, :cond_9d

    .line 296
    aget-object v2, p4, v0

    if-nez v2, :cond_60

    .line 295
    :goto_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    .line 297
    :cond_60
    aget-object v7, p5, v0

    .line 298
    aget-object v2, p4, v0

    const-string v8, "#"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 299
    aget-object v2, p4, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Lfr/testudo/spacecorsair/mod/ModLanUi;->section(Landroid/app/Activity;Ljava/lang/String;F)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_5d

    .line 302
    :cond_7a
    new-instance v8, Landroid/widget/Button;

    invoke-direct {v8, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 303
    invoke-virtual {v8, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 304
    aget-object v2, p4, v0

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 305
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLanUi;->DISABLED:Ljava/lang/Runnable;

    if-eq v7, v2, :cond_9b

    move v2, v3

    :goto_8c
    invoke-virtual {v8, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 306
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLanUi$7;

    invoke-direct {v2, v6, v7}, Lfr/testudo/spacecorsair/mod/ModLanUi$7;-><init>(Landroid/app/AlertDialog;Ljava/lang/Runnable;)V

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_5d

    :cond_9b
    move v2, v1

    .line 305
    goto :goto_8c

    .line 314
    :cond_9d
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 315
    return-object v6
.end method

.method static nick()Ljava/lang/String;
    .registers 3

    .prologue
    .line 56
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLanUi;->nickCache:Ljava/lang/String;

    if-nez v0, :cond_16

    .line 57
    :try_start_4
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "nick"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeNick(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLanUi;->nickCache:Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_16} :catch_19

    .line 59
    :cond_16
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLanUi;->nickCache:Ljava/lang/String;

    :goto_18
    return-object v0

    .line 57
    :catch_19
    move-exception v0

    const-string v0, ""

    goto :goto_18
.end method

.method static onChat(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 385
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLanUi;->muted:Z

    if-eqz v0, :cond_5

    .line 391
    :cond_4
    :goto_4
    return-void

    .line 386
    :cond_5
    const/16 v0, 0x78

    invoke-static {p1, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    .line 388
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanUi;->blocked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v0, "***"

    .line 389
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanUi;->add(Ljava/lang/String;)V

    .line 390
    sget v0, Lfr/testudo/spacecorsair/mod/ModLanUi;->unread:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLanUi;->unread:I

    goto :goto_4
.end method

.method private static pickCountry(Landroid/app/Activity;Lfr/testudo/spacecorsair/mod/ModLanUi$Pick;)V
    .registers 12

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v9, 0x41200000    # 10.0f

    .line 234
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    .line 235
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "No country"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v6

    .line 237
    :goto_30
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFlagData;->CODES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_5a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFlagData;->CODES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanUi;->countryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 238
    :cond_5a
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLanUi$4;

    const v2, 0x1090003

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModLanUi$4;-><init>(Landroid/content/Context;ILjava/util/List;Landroid/app/Activity;F)V

    .line 247
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 248
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 249
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 250
    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 251
    const-string v3, "Search"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 252
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 253
    new-instance v3, Landroid/widget/ListView;

    invoke-direct {v3, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 254
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 255
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v7, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 257
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 258
    mul-float v7, v9, v5

    float-to-int v7, v7

    const/high16 v8, 0x40800000    # 4.0f

    mul-float/2addr v8, v5

    float-to-int v8, v8

    mul-float/2addr v5, v9

    float-to-int v5, v5

    invoke-virtual {v4, v7, v8, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 259
    const-string v5, "Flag images: flag-icons, (c) 2013 Panayiotis Lipiridis, MIT License."

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 261
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "Country (optional)"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v4, "Close"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 262
    new-instance v4, Lfr/testudo/spacecorsair/mod/ModLanUi$5;

    invoke-direct {v4, v0}, Lfr/testudo/spacecorsair/mod/ModLanUi$5;-><init>(Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 267
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLanUi$6;

    invoke-direct {v2, v0, p1, v1}, Lfr/testudo/spacecorsair/mod/ModLanUi$6;-><init>(Landroid/widget/ArrayAdapter;Lfr/testudo/spacecorsair/mod/ModLanUi$Pick;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 274
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 275
    return-void
.end method

.method private static prefs()Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 52
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    const-string v1, "corsair_lan"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static profileRow(Landroid/app/Activity;Ljava/lang/Runnable;)Landroid/view/View;
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 349
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 350
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 351
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 352
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 353
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->country()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lfr/testudo/spacecorsair/mod/ModLanUi;->flag(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 354
    if-eqz v2, :cond_40

    .line 355
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 356
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 357
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42000000    # 32.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    const/high16 v5, 0x41c00000    # 24.0f

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 358
    const/high16 v4, 0x41000000    # 8.0f

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 359
    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    :cond_40
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 362
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->nick()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->country()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModLanUi;->label(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    const/4 v2, 0x2

    const/high16 v3, 0x41880000    # 17.0f

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 364
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 365
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v6, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 367
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 368
    const-string v2, "Edit"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 369
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLanUi$10;

    invoke-direct {v2, p0, p1}, Lfr/testudo/spacecorsair/mod/ModLanUi$10;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 371
    return-object v1
.end method

.method static publicList(Landroid/app/Activity;Lfr/testudo/spacecorsair/mod/ModLanUi$CodeCb;)V
    .registers 15

    .prologue
    const/high16 v2, 0x41a00000    # 20.0f

    .line 568
    :try_start_2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    .line 569
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 570
    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 571
    mul-float v0, v2, v5

    float-to-int v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v1, v5

    float-to-int v1, v1

    mul-float/2addr v2, v5

    float-to-int v2, v2

    const/high16 v4, 0x40c00000    # 6.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v11, v0, v1, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 572
    const-string v0, "Loading the list..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLanUi$16;

    const v2, 0x1090003

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModLanUi$16;-><init>(Landroid/content/Context;ILjava/util/List;Landroid/app/Activity;F)V

    .line 587
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 588
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 589
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 590
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 591
    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 592
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 593
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "Public games (internet)"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v4, "Refresh"

    .line 594
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v4, "Close"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 595
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v5, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 596
    const/4 v2, 0x1

    new-array v8, v2, [Z

    const/4 v2, 0x0

    const/4 v4, 0x0

    aput-boolean v4, v8, v2

    .line 597
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Runnable;

    .line 598
    const/4 v12, 0x0

    new-instance v4, Lfr/testudo/spacecorsair/mod/ModLanUi$17;

    move-object v7, p0

    move-object v9, v3

    move-object v10, v0

    invoke-direct/range {v4 .. v11}, Lfr/testudo/spacecorsair/mod/ModLanUi$17;-><init>(Landroid/os/Handler;Landroid/app/AlertDialog;Landroid/app/Activity;[ZLjava/util/ArrayList;Landroid/widget/ArrayAdapter;Landroid/widget/TextView;)V

    aput-object v4, v2, v12

    .line 626
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLanUi$18;

    invoke-direct {v0, v3, v6, p1}, Lfr/testudo/spacecorsair/mod/ModLanUi$18;-><init>(Ljava/util/ArrayList;Landroid/app/AlertDialog;Lfr/testudo/spacecorsair/mod/ModLanUi$CodeCb;)V

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 634
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLanUi$19;

    invoke-direct {v0, v5, v2}, Lfr/testudo/spacecorsair/mod/ModLanUi$19;-><init>(Landroid/os/Handler;[Ljava/lang/Runnable;)V

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 635
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 636
    const/4 v0, -0x1

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLanUi$20;

    invoke-direct {v1, v2}, Lfr/testudo/spacecorsair/mod/ModLanUi$20;-><init>([Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 637
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_c1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_c1} :catch_c2

    .line 641
    :goto_c1
    return-void

    .line 638
    :catch_c2
    move-exception v0

    goto :goto_c1
.end method

.method static safeCountry(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    if-eqz p0, :cond_9

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLanUi;->flagIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_9

    :goto_8
    return-object p0

    :cond_9
    const-string p0, ""

    goto :goto_8
.end method

.method static safeNick(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    if-eqz p0, :cond_37

    move v0, v1

    .line 99
    :goto_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_37

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/16 v4, 0xc

    if-ge v3, v4, :cond_37

    .line 100
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 101
    const/16 v4, 0x250

    if-ge v3, v4, :cond_25

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_31

    :cond_25
    const/16 v4, 0x20

    if-eq v3, v4, :cond_31

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_31

    const/16 v4, 0x5f

    if-ne v3, v4, :cond_34

    :cond_31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 104
    :cond_37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_4c

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanUi;->blocked(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 106
    :cond_4c
    if-nez p0, :cond_6a

    .line 107
    :goto_4e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Player"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    rem-int/lit16 v1, v1, 0x2328

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    :cond_69
    return-object v0

    .line 106
    :cond_6a
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4e
.end method

.method private static save(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 74
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeNick(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLanUi;->nickCache:Ljava/lang/String;

    .line 75
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLanUi;->ctryCache:Ljava/lang/String;

    .line 76
    :try_start_c
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "nick"

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLanUi;->nickCache:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "country"

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLanUi;->ctryCache:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_27} :catch_28

    .line 77
    :goto_27
    return-void

    .line 76
    :catch_28
    move-exception v0

    goto :goto_27
.end method

.method private static section(Landroid/app/Activity;Ljava/lang/String;F)Landroid/view/View;
    .registers 11

    .prologue
    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 321
    const/16 v0, 0x7c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 322
    if-gez v2, :cond_6c

    move-object v1, p1

    :goto_b
    if-gez v2, :cond_72

    const-string v0, ""

    .line 323
    :goto_f
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 324
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 325
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 326
    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v3, p2

    float-to-int v3, v3

    invoke-virtual {v2, v6, v3, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 327
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 328
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    const/4 v4, 0x2

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 330
    const v4, -0x701750

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 331
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v6, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6b

    .line 333
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 334
    const-string v4, "?"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 335
    invoke-virtual {v3, v6}, Landroid/widget/Button;->setMinWidth(I)V

    .line 336
    invoke-virtual {v3, v6}, Landroid/widget/Button;->setMinimumWidth(I)V

    .line 337
    new-instance v4, Lfr/testudo/spacecorsair/mod/ModLanUi$9;

    invoke-direct {v4, p0, v1, v0}, Lfr/testudo/spacecorsair/mod/ModLanUi$9;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-direct {v0, v1, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    :cond_6b
    return-object v2

    .line 322
    :cond_6c
    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_b

    :cond_72
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method private static watchApp(Landroid/app/Activity;)V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 419
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLanUi;->watching:Z

    if-eqz v0, :cond_6

    .line 437
    :goto_5
    return-void

    .line 420
    :cond_6
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLanUi;->watching:Z

    .line 421
    sput v1, Lfr/testudo/spacecorsair/mod/ModLanUi;->started:I

    .line 422
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLanUi$11;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/mod/ModLanUi$11;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_5
.end method

.method static whoAreYou(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .registers 11

    .prologue
    .line 179
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 180
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 181
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 182
    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v0, v1

    float-to-int v3, v0

    .line 183
    div-int/lit8 v0, v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 184
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 185
    const-string v4, "Nickname (2-12 letters or digits)"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 187
    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 188
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 189
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0xc

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v0, v5

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 190
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->hasProfile()Z

    move-result v0

    if-eqz v0, :cond_eb

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->nick()Ljava/lang/String;

    move-result-object v0

    :goto_51
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 191
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 192
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 193
    const-string v5, "Country (optional)"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    const/4 v5, 0x0

    div-int/lit8 v6, v3, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 195
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 196
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->country()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 197
    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 198
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 199
    const/16 v6, 0x13

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setGravity(I)V

    .line 200
    new-instance v6, Lfr/testudo/spacecorsair/mod/ModLanUi$1;

    invoke-direct {v6, v0, v5, p0, v1}, Lfr/testudo/spacecorsair/mod/ModLanUi$1;-><init>([Ljava/lang/String;Landroid/widget/Button;Landroid/app/Activity;F)V

    .line 207
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 208
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLanUi$2;

    invoke-direct {v1, p0, v0, v6}, Lfr/testudo/spacecorsair/mod/ModLanUi$2;-><init>(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 212
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 213
    const-string v5, "Other players see only this name and country."

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    const/4 v5, 0x2

    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {v1, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 215
    const/4 v5, 0x0

    div-int/lit8 v3, v3, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v3, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 216
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 217
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Who are you?"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Save"

    .line 218
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfr/testudo/spacecorsair/mod/ModLanUi$3;

    invoke-direct {v3, v4, v0, p1}, Lfr/testudo/spacecorsair/mod/ModLanUi$3;-><init>(Landroid/widget/EditText;[Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Close"

    .line 224
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 228
    :cond_ea
    :goto_ea
    return-void

    .line 190
    :cond_eb
    const-string v0, ""
    :try_end_ed
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_ed} :catch_ef

    goto/16 :goto_51

    .line 225
    :catch_ef
    move-exception v0

    .line 226
    if-eqz p1, :cond_ea

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_ea
.end method
