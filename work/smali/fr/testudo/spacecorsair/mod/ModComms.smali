.class public final Lfr/testudo/spacecorsair/mod/ModComms;
.super Ljava/lang/Object;
.source "ModComms.java"


# static fields
.field static final HAIL_RANGE:F = 6000.0f

.field private static act:Landroid/app/Activity;

.field private static face:Landroid/widget/ImageView;

.field private static hail:Landroid/widget/Button;

.field private static volatile hailFaction:I

.field private static volatile hailHas:Z

.field private static volatile hailOpen:Z

.field private static hasCheck:J

.field private static hideAt:J

.field private static volatile lastTick:J

.field private static msg:Landroid/widget/TextView;

.field private static open:Landroid/widget/Button;

.field private static panel:Landroid/widget/LinearLayout;

.field private static final portraits:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static ui:Landroid/os/Handler;

.field private static who:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModComms;->portraits:Ljava/util/Map;

    .line 47
    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModComms;->hailFaction:I

    .line 51
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModComms;->hailHas:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/widget/LinearLayout;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModComms;->panel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$002(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .registers 1

    .prologue
    .line 33
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModComms;->panel:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$100()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModComms;->act:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1000()Z
    .registers 1

    .prologue
    .line 33
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModComms;->hailHas:Z

    return v0
.end method

.method static synthetic access$102(Landroid/app/Activity;)Landroid/app/Activity;
    .registers 1

    .prologue
    .line 33
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModComms;->act:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1100(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 4

    .prologue
    .line 33
    invoke-static {p0, p1, p2, p3}, Lfr/testudo/spacecorsair/mod/ModComms;->show(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$1202(Landroid/widget/Button;)Landroid/widget/Button;
    .registers 1

    .prologue
    .line 33
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModComms;->hail:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1300()J
    .registers 2

    .prologue
    .line 33
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModComms;->lastTick:J

    return-wide v0
.end method

.method static synthetic access$1400(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 33
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModComms;->hailHelp(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1500()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModComms;->ui:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 33
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModComms;->portrait(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Landroid/widget/ImageView;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModComms;->face:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$302(Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .registers 1

    .prologue
    .line 33
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModComms;->face:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400()Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModComms;->who:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$402(Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 33
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModComms;->who:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500()Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModComms;->msg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 33
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModComms;->msg:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600()Landroid/widget/Button;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModComms;->open:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700()J
    .registers 2

    .prologue
    .line 33
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModComms;->hideAt:J

    return-wide v0
.end method

.method static synthetic access$702(J)J
    .registers 2

    .prologue
    .line 33
    sput-wide p0, Lfr/testudo/spacecorsair/mod/ModComms;->hideAt:J

    return-wide p0
.end method

.method static synthetic access$714(J)J
    .registers 4

    .prologue
    .line 33
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModComms;->hideAt:J

    add-long/2addr v0, p0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModComms;->hideAt:J

    return-wide v0
.end method

.method static synthetic access$802(Z)Z
    .registers 1

    .prologue
    .line 33
    sput-boolean p0, Lfr/testudo/spacecorsair/mod/ModComms;->hailOpen:Z

    return p0
.end method

.method static synthetic access$900()I
    .registers 1

    .prologue
    .line 33
    sget v0, Lfr/testudo/spacecorsair/mod/ModComms;->hailFaction:I

    return v0
.end method

.method static activity()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModComms;->act:Landroid/app/Activity;

    return-object v0
.end method

.method static asset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lfr/testudo/spacecorsair/mod/ModComms;->asset(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized asset(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 74
    const-class v4, Lfr/testudo/spacecorsair/mod/ModComms;

    monitor-enter v4

    :try_start_4
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModComms;->portraits:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 75
    if-nez v0, :cond_2d

    if-eqz p0, :cond_2d

    .line 76
    if-lez p2, :cond_2f

    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModArt;->decode(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_49

    move-result-object v0

    .line 77
    :goto_16
    if-nez v0, :cond_26

    .line 80
    :try_start_18
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModArt;->open(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1b} :catch_34
    .catchall {:try_start_18 .. :try_end_1b} :catchall_40

    move-result-object v0

    .line 81
    :try_start_1c
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1f} :catch_52
    .catchall {:try_start_1c .. :try_end_1f} :catchall_4e

    move-result-object v1

    .line 85
    if-eqz v0, :cond_25

    :try_start_22
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_31
    .catchall {:try_start_22 .. :try_end_25} :catchall_49

    :cond_25
    move-object v0, v1

    .line 88
    :cond_26
    :goto_26
    if-eqz v0, :cond_2d

    :try_start_28
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModComms;->portraits:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_49

    .line 90
    :cond_2d
    monitor-exit v4

    return-object v0

    :cond_2f
    move-object v0, v1

    .line 76
    goto :goto_16

    .line 85
    :catch_31
    move-exception v0

    move-object v0, v1

    .line 86
    goto :goto_26

    .line 82
    :catch_34
    move-exception v0

    move-object v0, v1

    .line 85
    :goto_36
    if-eqz v0, :cond_3b

    :try_start_38
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_3d
    .catchall {:try_start_38 .. :try_end_3b} :catchall_49

    :cond_3b
    move-object v0, v1

    goto :goto_26

    :catch_3d
    move-exception v0

    move-object v0, v1

    .line 86
    goto :goto_26

    .line 85
    :catchall_40
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    :goto_43
    if-eqz v3, :cond_48

    :try_start_45
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_4c
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    .line 86
    :cond_48
    :goto_48
    :try_start_48
    throw v2
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_49

    .line 74
    :catchall_49
    move-exception v0

    monitor-exit v4

    throw v0

    .line 85
    :catch_4c
    move-exception v0

    goto :goto_48

    :catchall_4e
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    goto :goto_43

    .line 82
    :catch_52
    move-exception v2

    goto :goto_36
.end method

.method public static attachUi(Landroid/app/Activity;)V
    .registers 14

    .prologue
    const/high16 v12, 0x40800000    # 4.0f

    const/high16 v11, 0x41400000    # 12.0f

    .line 186
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".Main"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 357
    :cond_14
    :goto_14
    return-void

    .line 187
    :cond_15
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLanUi;->attach(Landroid/app/Activity;)V

    .line 188
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModComms;->hailOpen:Z

    .line 189
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModComms;->panel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_23

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModComms;->act:Landroid/app/Activity;

    if-eq v0, p0, :cond_14

    .line 190
    :cond_23
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModComms;->act:Landroid/app/Activity;

    .line 191
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModComms;->ui:Landroid/os/Handler;

    .line 192
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 194
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 195
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 196
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 197
    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    const/high16 v3, 0x41000000    # 8.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    mul-float v4, v11, v0

    float-to-int v4, v4

    const/high16 v5, 0x41000000    # 8.0f

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 198
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 199
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 200
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 201
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42900000    # 72.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    const/high16 v5, 0x42900000    # 72.0f

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 203
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 204
    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 205
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 206
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 207
    const/4 v5, 0x2

    const/high16 v6, 0x41500000    # 13.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 208
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 209
    const/4 v6, 0x2

    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 210
    const v6, -0x221b12

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 211
    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 212
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 213
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 214
    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 215
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 216
    const/4 v7, 0x2

    const/high16 v8, 0x41400000    # 12.0f

    invoke-virtual {v6, v7, v8}, Landroid/widget/Button;->setTextSize(IF)V

    .line 217
    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 218
    const-string v7, "OPEN MISSIONS"

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 219
    mul-float v7, v11, v0

    float-to-int v7, v7

    mul-float v8, v12, v0

    float-to-int v8, v8

    mul-float v9, v11, v0

    float-to-int v9, v9

    mul-float v10, v12, v0

    float-to-int v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/Button;->setPadding(IIII)V

    .line 220
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setMinHeight(I)V

    .line 221
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setMinimumHeight(I)V

    .line 222
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 223
    const/high16 v8, 0x40c00000    # 6.0f

    mul-float/2addr v8, v0

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 224
    const v8, -0x3fdfcfc0

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 225
    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v8, v0

    float-to-int v8, v8

    const v9, -0x221b12

    invoke-virtual {v7, v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 226
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 228
    new-instance v7, Lfr/testudo/spacecorsair/mod/ModComms$2;

    invoke-direct {v7}, Lfr/testudo/spacecorsair/mod/ModComms$2;-><init>()V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 241
    const/high16 v8, 0x40c00000    # 6.0f

    mul-float/2addr v8, v0

    float-to-int v8, v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 242
    invoke-virtual {v3, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    new-instance v3, Lfr/testudo/spacecorsair/mod/ModComms$3;

    invoke-direct {v3}, Lfr/testudo/spacecorsair/mod/ModComms$3;-><init>()V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    const v7, 0x3f1eb852    # 0.62f

    mul-float/2addr v3, v7

    const/high16 v7, 0x440c0000    # 560.0f

    mul-float/2addr v7, v0

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v3, v3

    .line 248
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    const/16 v9, 0x31

    invoke-direct {v7, v3, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 249
    const/high16 v3, 0x42680000    # 58.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 250
    invoke-virtual {p0, v1, v7}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModComms;->panel:Landroid/widget/LinearLayout;

    .line 252
    sput-object v6, Lfr/testudo/spacecorsair/mod/ModComms;->open:Landroid/widget/Button;

    .line 253
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModComms;->face:Landroid/widget/ImageView;

    .line 254
    sput-object v4, Lfr/testudo/spacecorsair/mod/ModComms;->who:Landroid/widget/TextView;

    .line 255
    sput-object v5, Lfr/testudo/spacecorsair/mod/ModComms;->msg:Landroid/widget/TextView;

    .line 257
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 258
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 259
    const/4 v2, 0x2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 260
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 261
    mul-float v2, v11, v0

    float-to-int v2, v2

    mul-float v3, v12, v0

    float-to-int v3, v3

    mul-float v4, v11, v0

    float-to-int v4, v4

    mul-float v5, v12, v0

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 262
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setMinWidth(I)V

    .line 263
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setMinimumWidth(I)V

    .line 264
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setMinHeight(I)V

    .line 265
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setMinimumHeight(I)V

    .line 266
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 267
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModComms$4;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/mod/ModComms$4;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x51

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 285
    const/high16 v3, 0x42e00000    # 112.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 286
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModComms;->hail:Landroid/widget/Button;

    .line 289
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModComms;->ui:Landroid/os/Handler;

    new-instance v3, Lfr/testudo/spacecorsair/mod/ModComms$5;

    invoke-direct {v3, p0, v1, v0}, Lfr/testudo/spacecorsair/mod/ModComms$5;-><init>(Landroid/app/Activity;Landroid/widget/Button;F)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1c8
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_1c8} :catch_1ca

    goto/16 :goto_14

    .line 354
    :catch_1ca
    move-exception v0

    goto/16 :goto_14
.end method

.method static brief(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 100
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lfr/testudo/spacecorsair/mod/ModComms;->show(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 101
    return-void
.end method

.method private static hailHelp(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 362
    :try_start_0
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 363
    if-eqz v0, :cond_16

    const-string v1, "v37_hail_help"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x0

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModDev;->noDialog(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 371
    :cond_16
    :goto_16
    return-void

    .line 364
    :cond_17
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "v37_hail_help"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 365
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Faction flagship"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "You are near a faction flagship. Tap TALK TO COMMANDER to speak with its commander for story missions, contracts and turn-ins. The line below the button shows if anything is available for you."

    .line 366
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    .line 367
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4c} :catch_4d

    goto :goto_16

    .line 368
    :catch_4d
    move-exception v0

    goto :goto_16
.end method

.method public static hailing()Z
    .registers 1

    .prologue
    .line 58
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModComms;->hailOpen:Z

    return v0
.end method

.method private static hasMissions(I)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 175
    :try_start_1
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v1, v1, p0

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->hq:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 176
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    invoke-virtual {v2, v1}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->getAvaillableMission(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/util/List;

    move-result-object v1

    .line 177
    if-eqz v1, :cond_18

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_14} :catch_1a

    move-result v1

    if-nez v1, :cond_18

    .line 179
    :goto_17
    return v0

    .line 177
    :cond_18
    const/4 v0, 0x0

    goto :goto_17

    .line 178
    :catch_1a
    move-exception v1

    goto :goto_17
.end method

.method private static portrait(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    .line 63
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModComms;->act:Landroid/app/Activity;

    .line 64
    if-nez v1, :cond_22

    const/high16 v0, 0x40400000    # 3.0f

    .line 65
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "portrait_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x43100000    # 144.0f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {v1, v2, v0}, Lfr/testudo/spacecorsair/mod/ModComms;->asset(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 64
    :cond_22
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    goto :goto_6
.end method

.method public static show(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lfr/testudo/spacecorsair/mod/ModComms;->show(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 96
    return-void
.end method

.method private static show(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 6

    .prologue
    .line 105
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModComms;->ui:Landroid/os/Handler;

    .line 106
    if-nez v0, :cond_5

    .line 135
    :goto_4
    return-void

    .line 107
    :cond_5
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModComms$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lfr/testudo/spacecorsair/mod/ModComms$1;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method public static showStandings(Landroid/app/Activity;)V
    .registers 16

    .prologue
    .line 376
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 377
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 378
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 379
    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/high16 v4, 0x41400000    # 12.0f

    mul-float/2addr v4, v2

    float-to-int v4, v4

    const/high16 v5, 0x41000000    # 8.0f

    mul-float/2addr v5, v2

    float-to-int v5, v5

    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 380
    const/4 v0, 0x0

    move v1, v0

    :goto_28
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModRepData;->KEYS:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_2a4

    .line 381
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModRepData;->KEYS:[Ljava/lang/String;

    aget-object v4, v0, v1

    .line 382
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v5

    aget-object v5, v0, v5

    .line 383
    iget v0, v5, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->r:F

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v0, v6

    float-to-int v0, v0

    iget v6, v5, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->g:F

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, v5, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->b:F

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-static {v0, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 384
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModRep;->standing(Ljava/lang/String;)F

    move-result v6

    .line 385
    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModRep;->rankOf(F)I

    move-result v7

    .line 386
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 387
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 388
    const/4 v9, 0x0

    const/high16 v10, 0x40c00000    # 6.0f

    mul-float/2addr v10, v2

    float-to-int v10, v10

    const/4 v11, 0x0

    const/high16 v12, 0x40c00000    # 6.0f

    mul-float/2addr v12, v2

    float-to-int v12, v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 389
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 390
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "emblem_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lfr/testudo/spacecorsair/mod/ModComms;->asset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 391
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x42300000    # 44.0f

    mul-float/2addr v11, v2

    float-to-int v11, v11

    const/high16 v12, 0x42300000    # 44.0f

    mul-float/2addr v12, v2

    float-to-int v12, v12

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 393
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 394
    const/high16 v10, 0x41200000    # 10.0f

    mul-float/2addr v10, v2

    float-to-int v10, v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 395
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 396
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 397
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 398
    const/4 v11, 0x2

    const/high16 v12, 0x41600000    # 14.0f

    invoke-virtual {v10, v11, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 399
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v5, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "  \u00b7  "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v11, Lfr/testudo/spacecorsair/mod/ModRepData;->RANKS:[[Ljava/lang/String;

    aget-object v11, v11, v1

    aget-object v11, v11, v7

    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "  ("

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v11, Lfr/testudo/spacecorsair/mod/ModRep;->RANK_NAMES:[Ljava/lang/String;

    aget-object v11, v11, v7

    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->re(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, ", "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, ")"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 402
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 403
    new-instance v10, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 404
    const v11, -0xe5ddd0

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 405
    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v11, v2

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 406
    invoke-virtual {v5, v10}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 407
    new-instance v10, Landroid/view/View;

    invoke-direct {v10, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 408
    const/4 v11, 0x0

    cmpl-float v11, v6, v11

    if-ltz v11, :cond_23b

    :goto_138
    invoke-virtual {v10, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 409
    const/high16 v0, 0x435c0000    # 220.0f

    mul-float/2addr v0, v2

    float-to-int v11, v0

    .line 410
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v0, v12

    int-to-float v12, v11

    mul-float/2addr v0, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v0, v12

    float-to-int v0, v0

    .line 411
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v13, 0x1

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    const/high16 v14, 0x41000000    # 8.0f

    mul-float/2addr v14, v2

    float-to-int v14, v14

    invoke-direct {v12, v13, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 412
    const/4 v13, 0x0

    cmpl-float v6, v6, v13

    if-ltz v6, :cond_240

    div-int/lit8 v0, v11, 0x2

    :goto_161
    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 413
    invoke-virtual {v5, v10, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 415
    const/4 v6, -0x1

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 416
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v10, v2

    float-to-int v10, v10

    const/high16 v12, 0x41000000    # 8.0f

    mul-float/2addr v12, v2

    float-to-int v12, v12

    invoke-direct {v6, v10, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 417
    div-int/lit8 v10, v11, 0x2

    iput v10, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 418
    invoke-virtual {v5, v0, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x41000000    # 8.0f

    mul-float/2addr v6, v2

    float-to-int v6, v6

    invoke-direct {v0, v11, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 421
    const v0, -0x372d22

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 422
    const/4 v0, 0x2

    const/high16 v6, 0x41300000    # 11.0f

    invoke-virtual {v5, v0, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 423
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    if-nez v7, :cond_246

    const-string v0, "Flagship and patrols attack on sight. The commander will not answer."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    :cond_1b0
    :goto_1b0
    const-string v0, "\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "Trusted:"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModRepData;->SECRET_WEAPON:[[Ljava/lang/Object;

    aget-object v4, v4, v1

    const/4 v10, 0x0

    aget-object v4, v4, v10

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v0, 0x4

    if-lt v7, v0, :cond_291

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "(unlocked)"

    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1ed
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    const-string v0, "   "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "Honored:"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModRepData;->SECRET_SHIP:[[Ljava/lang/String;

    aget-object v4, v4, v1

    const/4 v10, 0x0

    aget-object v4, v4, v10

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v0, 0x5

    if-lt v7, v0, :cond_295

    const-string v0, " (for sale)"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_21a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 434
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 380
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_28

    .line 408
    :cond_23b
    const v0, -0x3fc6d5

    goto/16 :goto_138

    .line 412
    :cond_240
    div-int/lit8 v6, v11, 0x2

    sub-int v0, v6, v0

    goto/16 :goto_161

    .line 425
    :cond_246
    const/4 v0, 0x1

    if-ne v7, v0, :cond_256

    const-string v0, "Only amends contracts are offered."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1b0

    .line 446
    :catch_254
    move-exception v0

    .line 449
    :goto_255
    return-void

    .line 427
    :cond_256
    const-string v0, "Payout +{0}%  \u00b7  flagship forgives {1}% friendly fire"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-object v12, Lfr/testudo/spacecorsair/mod/ModRep;->PAYOUT:[F

    aget v12, v12, v7

    const/high16 v13, 0x42c80000    # 100.0f

    mul-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModRep;->tolerance(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v11

    invoke-static {v0, v10}, Lfr/testudo/spacecorsair/mod/ModLang;->fmt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    const/4 v0, 0x4

    if-lt v7, v0, :cond_1b0

    const-string v0, "  \u00b7  flagship fire support"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1b0

    .line 430
    :cond_291
    const-string v0, ""

    goto/16 :goto_1ed

    .line 431
    :cond_295
    const/4 v0, 0x4

    if-lt v7, v0, :cond_2a0

    const-string v0, " (listed, locked)"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_21a

    :cond_2a0
    const-string v0, ""

    goto/16 :goto_21a

    .line 437
    :cond_2a4
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 438
    const v1, -0x75695a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 439
    const/4 v1, 0x2

    const/high16 v2, 0x41300000    # 11.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 440
    const-string v1, "Gain standing with story missions (+15, finale +20), contracts (+8) and by defending a faction\'s home sector. Allies share half of every change, enemies the opposite. Talk to a faction\'s commander aboard its flagship in its home sector for missions."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 443
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 444
    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 445
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Faction standings"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_2ea
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2ea} :catch_254

    goto/16 :goto_255
.end method

.method static tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 11

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModComms;->lastTick:J

    .line 140
    :try_start_8
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModNotify;->tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_b} :catch_ba

    .line 143
    :goto_b
    :try_start_b
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    move v5, v4

    .line 144
    :goto_14
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v1, v1

    if-ge v5, v1, :cond_c1

    .line 145
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v1, v1, v5

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->hq:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-ne v1, v0, :cond_9a

    .line 147
    :goto_21
    if-ltz v5, :cond_bd

    .line 150
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->caps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v4

    :cond_2e
    :goto_2e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 151
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v7, v7, v5

    if-ne v1, v7, :cond_2e

    .line 152
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 153
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v1, :cond_9e

    move v2, v4

    .line 156
    :cond_53
    if-nez v2, :cond_bd

    move v0, v3

    .line 158
    :goto_56
    if-ltz v0, :cond_65

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v1, v1, v0

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModRep;->rank(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_65

    move v0, v3

    .line 159
    :cond_65
    if-gez v0, :cond_6c

    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModFaction;->testHail:Z

    if-eqz v1, :cond_6c

    move v0, v4

    .line 160
    :cond_6c
    if-eqz p0, :cond_7e

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-nez v1, :cond_7e

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v1, :cond_7e

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-eqz v1, :cond_7f

    :cond_7e
    move v0, v3

    .line 161
    :cond_7f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 162
    if-ltz v0, :cond_97

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModComms;->hasCheck:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x3e8

    cmp-long v1, v6, v8

    if-lez v1, :cond_97

    .line 163
    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModComms;->hasCheck:J

    .line 164
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModComms;->hasMissions(I)Z

    move-result v1

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModComms;->hailHas:Z
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_97} :catch_b7

    .line 169
    :cond_97
    :goto_97
    sput v0, Lfr/testudo/spacecorsair/mod/ModComms;->hailFaction:I

    .line 170
    return-void

    .line 144
    :cond_9a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_14

    .line 154
    :cond_9e
    :try_start_9e
    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->removed:Z

    if-nez v1, :cond_bf

    if-eqz p0, :cond_bf

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F
    :try_end_ab
    .catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_ab} :catch_b7

    move-result v0

    const v1, 0x45bb8000    # 6000.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_bf

    const/4 v0, 0x1

    :goto_b4
    move v2, v0

    .line 155
    goto/16 :goto_2e

    .line 166
    :catch_b7
    move-exception v0

    move v0, v3

    .line 167
    goto :goto_97

    .line 140
    :catch_ba
    move-exception v0

    goto/16 :goto_b

    :cond_bd
    move v0, v5

    goto :goto_56

    :cond_bf
    move v0, v2

    goto :goto_b4

    :cond_c1
    move v5, v3

    goto/16 :goto_21
.end method
