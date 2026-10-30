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
    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModComms;->portraits:Ljava/util/Map;

    .line 44
    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModComms;->hailFaction:I

    .line 48
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

.method static asset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lfr/testudo/spacecorsair/mod/ModComms;->asset(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized asset(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 71
    const-class v4, Lfr/testudo/spacecorsair/mod/ModComms;

    monitor-enter v4

    :try_start_4
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModComms;->portraits:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 72
    if-nez v0, :cond_2d

    if-eqz p0, :cond_2d

    .line 73
    if-lez p2, :cond_2f

    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModArt;->decode(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_49

    move-result-object v0

    .line 74
    :goto_16
    if-nez v0, :cond_26

    .line 77
    :try_start_18
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModArt;->open(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1b} :catch_34
    .catchall {:try_start_18 .. :try_end_1b} :catchall_40

    move-result-object v0

    .line 78
    :try_start_1c
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1f} :catch_52
    .catchall {:try_start_1c .. :try_end_1f} :catchall_4e

    move-result-object v1

    .line 82
    if-eqz v0, :cond_25

    :try_start_22
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_31
    .catchall {:try_start_22 .. :try_end_25} :catchall_49

    :cond_25
    move-object v0, v1

    .line 85
    :cond_26
    :goto_26
    if-eqz v0, :cond_2d

    :try_start_28
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModComms;->portraits:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_49

    .line 87
    :cond_2d
    monitor-exit v4

    return-object v0

    :cond_2f
    move-object v0, v1

    .line 73
    goto :goto_16

    .line 82
    :catch_31
    move-exception v0

    move-object v0, v1

    .line 83
    goto :goto_26

    .line 79
    :catch_34
    move-exception v0

    move-object v0, v1

    .line 82
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

    .line 83
    goto :goto_26

    .line 82
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

    .line 83
    :cond_48
    :goto_48
    :try_start_48
    throw v2
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_49

    .line 71
    :catchall_49
    move-exception v0

    monitor-exit v4

    throw v0

    .line 82
    :catch_4c
    move-exception v0

    goto :goto_48

    :catchall_4e
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    goto :goto_43

    .line 79
    :catch_52
    move-exception v2

    goto :goto_36
.end method

.method public static attachUi(Landroid/app/Activity;)V
    .registers 14

    .prologue
    const/high16 v12, 0x40800000    # 4.0f

    const/high16 v11, 0x41400000    # 12.0f

    .line 182
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".Main"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 352
    :cond_14
    :goto_14
    return-void

    .line 183
    :cond_15
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModComms;->hailOpen:Z

    .line 184
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModComms;->panel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_20

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModComms;->act:Landroid/app/Activity;

    if-eq v0, p0, :cond_14

    .line 185
    :cond_20
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModComms;->act:Landroid/app/Activity;

    .line 186
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModComms;->ui:Landroid/os/Handler;

    .line 187
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 189
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 190
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 191
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 192
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

    .line 193
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 194
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 195
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 196
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42900000    # 72.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    const/high16 v5, 0x42900000    # 72.0f

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 198
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 199
    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 200
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 201
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 202
    const/4 v5, 0x2

    const/high16 v6, 0x41500000    # 13.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 203
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 204
    const/4 v6, 0x2

    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 205
    const v6, -0x221b12

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 207
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 208
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 209
    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 210
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 211
    const/4 v7, 0x2

    const/high16 v8, 0x41400000    # 12.0f

    invoke-virtual {v6, v7, v8}, Landroid/widget/Button;->setTextSize(IF)V

    .line 212
    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 213
    const-string v7, "OPEN MISSIONS"

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 214
    mul-float v7, v11, v0

    float-to-int v7, v7

    mul-float v8, v12, v0

    float-to-int v8, v8

    mul-float v9, v11, v0

    float-to-int v9, v9

    mul-float v10, v12, v0

    float-to-int v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/Button;->setPadding(IIII)V

    .line 215
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setMinHeight(I)V

    .line 216
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setMinimumHeight(I)V

    .line 217
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 218
    const/high16 v8, 0x40c00000    # 6.0f

    mul-float/2addr v8, v0

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 219
    const v8, -0x3fdfcfc0

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 220
    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v8, v0

    float-to-int v8, v8

    const v9, -0x221b12

    invoke-virtual {v7, v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 221
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 223
    new-instance v7, Lfr/testudo/spacecorsair/mod/ModComms$2;

    invoke-direct {v7}, Lfr/testudo/spacecorsair/mod/ModComms$2;-><init>()V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 236
    const/high16 v8, 0x40c00000    # 6.0f

    mul-float/2addr v8, v0

    float-to-int v8, v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 237
    invoke-virtual {v3, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    new-instance v3, Lfr/testudo/spacecorsair/mod/ModComms$3;

    invoke-direct {v3}, Lfr/testudo/spacecorsair/mod/ModComms$3;-><init>()V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
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

    .line 243
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    const/16 v9, 0x31

    invoke-direct {v7, v3, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 244
    const/high16 v3, 0x42680000    # 58.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 245
    invoke-virtual {p0, v1, v7}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModComms;->panel:Landroid/widget/LinearLayout;

    .line 247
    sput-object v6, Lfr/testudo/spacecorsair/mod/ModComms;->open:Landroid/widget/Button;

    .line 248
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModComms;->face:Landroid/widget/ImageView;

    .line 249
    sput-object v4, Lfr/testudo/spacecorsair/mod/ModComms;->who:Landroid/widget/TextView;

    .line 250
    sput-object v5, Lfr/testudo/spacecorsair/mod/ModComms;->msg:Landroid/widget/TextView;

    .line 252
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 253
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 254
    const/4 v2, 0x2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 255
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 256
    mul-float v2, v11, v0

    float-to-int v2, v2

    mul-float v3, v12, v0

    float-to-int v3, v3

    mul-float v4, v11, v0

    float-to-int v4, v4

    mul-float v5, v12, v0

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 257
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setMinWidth(I)V

    .line 258
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setMinimumWidth(I)V

    .line 259
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setMinHeight(I)V

    .line 260
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setMinimumHeight(I)V

    .line 261
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 262
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModComms$4;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/mod/ModComms$4;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x51

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 280
    const/high16 v3, 0x42e00000    # 112.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 281
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModComms;->hail:Landroid/widget/Button;

    .line 284
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModComms;->ui:Landroid/os/Handler;

    new-instance v3, Lfr/testudo/spacecorsair/mod/ModComms$5;

    invoke-direct {v3, p0, v1, v0}, Lfr/testudo/spacecorsair/mod/ModComms$5;-><init>(Landroid/app/Activity;Landroid/widget/Button;F)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1c5
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_1c5} :catch_1c7

    goto/16 :goto_14

    .line 349
    :catch_1c7
    move-exception v0

    goto/16 :goto_14
.end method

.method static brief(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 97
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lfr/testudo/spacecorsair/mod/ModComms;->show(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 98
    return-void
.end method

.method private static hailHelp(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 357
    :try_start_0
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 358
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

    .line 366
    :cond_16
    :goto_16
    return-void

    .line 359
    :cond_17
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "v37_hail_help"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 360
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Faction flagship"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "You are near a faction flagship. Tap HAIL to talk to its commander: story missions, contracts and hand-ins are offered there. The line under the button says whether there is anything for you."

    .line 361
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    const/4 v2, 0x0

    .line 362
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_48} :catch_49

    goto :goto_16

    .line 363
    :catch_49
    move-exception v0

    goto :goto_16
.end method

.method public static hailing()Z
    .registers 1

    .prologue
    .line 55
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModComms;->hailOpen:Z

    return v0
.end method

.method private static hasMissions(I)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 171
    :try_start_1
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v1, v1, p0

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->hq:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 172
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    invoke-virtual {v2, v1}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->getAvaillableMission(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/util/List;

    move-result-object v1

    .line 173
    if-eqz v1, :cond_18

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_14} :catch_1a

    move-result v1

    if-nez v1, :cond_18

    .line 175
    :goto_17
    return v0

    .line 173
    :cond_18
    const/4 v0, 0x0

    goto :goto_17

    .line 174
    :catch_1a
    move-exception v1

    goto :goto_17
.end method

.method private static portrait(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    .line 60
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModComms;->act:Landroid/app/Activity;

    .line 61
    if-nez v1, :cond_22

    const/high16 v0, 0x40400000    # 3.0f

    .line 62
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

    .line 61
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
    .line 92
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lfr/testudo/spacecorsair/mod/ModComms;->show(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 93
    return-void
.end method

.method private static show(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 6

    .prologue
    .line 102
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModComms;->ui:Landroid/os/Handler;

    .line 103
    if-nez v0, :cond_5

    .line 132
    :goto_4
    return-void

    .line 104
    :cond_5
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModComms$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lfr/testudo/spacecorsair/mod/ModComms$1;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method public static showStandings(Landroid/app/Activity;)V
    .registers 16

    .prologue
    .line 371
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 372
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 373
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 374
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

    .line 375
    const/4 v0, 0x0

    move v1, v0

    :goto_28
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModRepData;->KEYS:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_273

    .line 376
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModRepData;->KEYS:[Ljava/lang/String;

    aget-object v4, v0, v1

    .line 377
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v5

    aget-object v5, v0, v5

    .line 378
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

    .line 379
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModRep;->standing(Ljava/lang/String;)F

    move-result v6

    .line 380
    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModRep;->rankOf(F)I

    move-result v7

    .line 381
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 382
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 383
    const/4 v9, 0x0

    const/high16 v10, 0x40c00000    # 6.0f

    mul-float/2addr v10, v2

    float-to-int v10, v10

    const/4 v11, 0x0

    const/high16 v12, 0x40c00000    # 6.0f

    mul-float/2addr v12, v2

    float-to-int v12, v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 384
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 385
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

    .line 386
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x42300000    # 44.0f

    mul-float/2addr v11, v2

    float-to-int v11, v11

    const/high16 v12, 0x42300000    # 44.0f

    mul-float/2addr v12, v2

    float-to-int v12, v12

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 388
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 389
    const/high16 v10, 0x41200000    # 10.0f

    mul-float/2addr v10, v2

    float-to-int v10, v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 390
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 391
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 392
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 393
    const/4 v11, 0x2

    const/high16 v12, 0x41600000    # 14.0f

    invoke-virtual {v10, v11, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 394
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

    .line 395
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 397
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 398
    new-instance v10, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 399
    const v11, -0xe5ddd0

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 400
    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v11, v2

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 401
    invoke-virtual {v5, v10}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 402
    new-instance v10, Landroid/view/View;

    invoke-direct {v10, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 403
    const/4 v11, 0x0

    cmpl-float v11, v6, v11

    if-ltz v11, :cond_200

    :goto_134
    invoke-virtual {v10, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 404
    const/high16 v0, 0x435c0000    # 220.0f

    mul-float/2addr v0, v2

    float-to-int v11, v0

    .line 405
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v0, v12

    int-to-float v12, v11

    mul-float/2addr v0, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v0, v12

    float-to-int v0, v0

    .line 406
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v13, 0x1

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    const/high16 v14, 0x41000000    # 8.0f

    mul-float/2addr v14, v2

    float-to-int v14, v14

    invoke-direct {v12, v13, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 407
    const/4 v13, 0x0

    cmpl-float v6, v6, v13

    if-ltz v6, :cond_205

    div-int/lit8 v0, v11, 0x2

    :goto_15d
    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 408
    invoke-virtual {v5, v10, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 410
    const/4 v6, -0x1

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 411
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v10, v2

    float-to-int v10, v10

    const/high16 v12, 0x41000000    # 8.0f

    mul-float/2addr v12, v2

    float-to-int v12, v12

    invoke-direct {v6, v10, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 412
    div-int/lit8 v10, v11, 0x2

    iput v10, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 413
    invoke-virtual {v5, v0, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x41000000    # 8.0f

    mul-float/2addr v6, v2

    float-to-int v6, v6

    invoke-direct {v0, v11, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 416
    const v0, -0x372d22

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 417
    const/4 v0, 0x2

    const/high16 v6, 0x41300000    # 11.0f

    invoke-virtual {v5, v0, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 418
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    if-nez v7, :cond_20b

    const-string v0, "Flagship and patrols attack on sight. The commander will not answer."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    :cond_1ac
    :goto_1ac
    const-string v0, "\nTrusted: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModRepData;->SECRET_WEAPON:[[Ljava/lang/Object;

    aget-object v4, v4, v1

    const/4 v10, 0x0

    aget-object v4, v4, v10

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v0, 0x4

    if-lt v7, v0, :cond_260

    const-string v0, " (unlocked)"

    :goto_1c2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    const-string v0, "   Honored: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModRepData;->SECRET_SHIP:[[Ljava/lang/String;

    aget-object v4, v4, v1

    const/4 v10, 0x0

    aget-object v4, v4, v10

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v0, 0x5

    if-lt v7, v0, :cond_264

    const-string v0, " (for sale)"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1df
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 429
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 375
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_28

    .line 403
    :cond_200
    const v0, -0x3fc6d5

    goto/16 :goto_134

    .line 407
    :cond_205
    div-int/lit8 v6, v11, 0x2

    sub-int v0, v6, v0

    goto/16 :goto_15d

    .line 420
    :cond_20b
    const/4 v0, 0x1

    if-ne v7, v0, :cond_21a

    const-string v0, "Only amends contracts are offered."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1ac

    .line 441
    :catch_218
    move-exception v0

    .line 444
    :goto_219
    return-void

    .line 422
    :cond_21a
    const-string v0, "Payout +"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModRep;->PAYOUT:[F

    aget v10, v10, v7

    const/high16 v11, 0x42c80000    # 100.0f

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "%  \u00b7  flagship forgives "

    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModRep;->tolerance(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "% friendly fire"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    const/4 v0, 0x4

    if-lt v7, v0, :cond_1ac

    const-string v0, "  \u00b7  flagship fire support"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1ac

    .line 425
    :cond_260
    const-string v0, ""

    goto/16 :goto_1c2

    .line 426
    :cond_264
    const/4 v0, 0x4

    if-lt v7, v0, :cond_26f

    const-string v0, " (listed, locked)"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1df

    :cond_26f
    const-string v0, ""

    goto/16 :goto_1df

    .line 432
    :cond_273
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 433
    const v1, -0x75695a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 434
    const/4 v1, 0x2

    const/high16 v2, 0x41300000    # 11.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 435
    const-string v1, "Gain standing with story missions (+15, finale +20), contracts (+6) and by defending a faction\'s home sector. Allies share half of every change, enemies the opposite. HAIL a faction\'s flagship in its home sector for missions."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 438
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 439
    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 440
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

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_2b5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2b5} :catch_218

    goto/16 :goto_219
.end method

.method static tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 11

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModComms;->lastTick:J

    .line 139
    :try_start_8
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    move v5, v4

    .line 140
    :goto_11
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v1, v1

    if-ge v5, v1, :cond_bb

    .line 141
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v1, v1, v5

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->hq:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-ne v1, v0, :cond_97

    .line 143
    :goto_1e
    if-ltz v5, :cond_b7

    .line 146
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->caps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v4

    :cond_2b
    :goto_2b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 147
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v7, v7, v5

    if-ne v1, v7, :cond_2b

    .line 148
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 149
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v1, :cond_9b

    move v2, v4

    .line 152
    :cond_50
    if-nez v2, :cond_b7

    move v0, v3

    .line 154
    :goto_53
    if-ltz v0, :cond_62

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v1, v1, v0

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModRep;->rank(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_62

    move v0, v3

    .line 155
    :cond_62
    if-gez v0, :cond_69

    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModFaction;->testHail:Z

    if-eqz v1, :cond_69

    move v0, v4

    .line 156
    :cond_69
    if-eqz p0, :cond_7b

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-nez v1, :cond_7b

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v1, :cond_7b

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-eqz v1, :cond_7c

    :cond_7b
    move v0, v3

    .line 157
    :cond_7c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 158
    if-ltz v0, :cond_94

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModComms;->hasCheck:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x3e8

    cmp-long v1, v6, v8

    if-lez v1, :cond_94

    .line 159
    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModComms;->hasCheck:J

    .line 160
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModComms;->hasMissions(I)Z

    move-result v1

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModComms;->hailHas:Z
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_94} :catch_b4

    .line 165
    :cond_94
    :goto_94
    sput v0, Lfr/testudo/spacecorsair/mod/ModComms;->hailFaction:I

    .line 166
    return-void

    .line 140
    :cond_97
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_11

    .line 150
    :cond_9b
    :try_start_9b
    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->removed:Z

    if-nez v1, :cond_b9

    if-eqz p0, :cond_b9

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F
    :try_end_a8
    .catch Ljava/lang/Throwable; {:try_start_9b .. :try_end_a8} :catch_b4

    move-result v0

    const v1, 0x45bb8000    # 6000.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b9

    const/4 v0, 0x1

    :goto_b1
    move v2, v0

    .line 151
    goto/16 :goto_2b

    .line 162
    :catch_b4
    move-exception v0

    move v0, v3

    .line 163
    goto :goto_94

    :cond_b7
    move v0, v5

    goto :goto_53

    :cond_b9
    move v0, v2

    goto :goto_b1

    :cond_bb
    move v5, v3

    goto/16 :goto_1e
.end method
