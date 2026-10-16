.class public final Lfr/testudo/spacecorsair/mod/ModComms;
.super Ljava/lang/Object;
.source "ModComms.java"


# static fields
.field private static act:Landroid/app/Activity;

.field private static face:Landroid/widget/ImageView;

.field private static hail:Landroid/widget/Button;

.field private static volatile hailFaction:I

.field private static volatile hailOpen:Z

.field private static hideAt:J

.field private static volatile lastTick:J

.field private static msg:Landroid/widget/TextView;

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

.method static synthetic access$1000()J
    .registers 2

    .prologue
    .line 33
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModComms;->lastTick:J

    return-wide v0
.end method

.method static synthetic access$102(Landroid/app/Activity;)Landroid/app/Activity;
    .registers 1

    .prologue
    .line 33
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModComms;->act:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1100()Landroid/os/Handler;
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

.method static synthetic access$600()J
    .registers 2

    .prologue
    .line 33
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModComms;->hideAt:J

    return-wide v0
.end method

.method static synthetic access$602(J)J
    .registers 2

    .prologue
    .line 33
    sput-wide p0, Lfr/testudo/spacecorsair/mod/ModComms;->hideAt:J

    return-wide p0
.end method

.method static synthetic access$700()I
    .registers 1

    .prologue
    .line 33
    sget v0, Lfr/testudo/spacecorsair/mod/ModComms;->hailFaction:I

    return v0
.end method

.method static synthetic access$802(Z)Z
    .registers 1

    .prologue
    .line 33
    sput-boolean p0, Lfr/testudo/spacecorsair/mod/ModComms;->hailOpen:Z

    return p0
.end method

.method static synthetic access$902(Landroid/widget/Button;)Landroid/widget/Button;
    .registers 1

    .prologue
    .line 33
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModComms;->hail:Landroid/widget/Button;

    return-object p0
.end method

.method static asset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lfr/testudo/spacecorsair/mod/ModComms;->asset(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized asset(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 66
    const-class v4, Lfr/testudo/spacecorsair/mod/ModComms;

    monitor-enter v4

    :try_start_4
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModComms;->portraits:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 67
    if-nez v0, :cond_2d

    if-eqz p0, :cond_2d

    .line 68
    if-lez p2, :cond_2f

    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModArt;->decode(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_49

    move-result-object v0

    .line 69
    :goto_16
    if-nez v0, :cond_26

    .line 72
    :try_start_18
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModArt;->open(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1b} :catch_34
    .catchall {:try_start_18 .. :try_end_1b} :catchall_40

    move-result-object v0

    .line 73
    :try_start_1c
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1f} :catch_52
    .catchall {:try_start_1c .. :try_end_1f} :catchall_4e

    move-result-object v1

    .line 77
    if-eqz v0, :cond_25

    :try_start_22
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_31
    .catchall {:try_start_22 .. :try_end_25} :catchall_49

    :cond_25
    move-object v0, v1

    .line 80
    :cond_26
    :goto_26
    if-eqz v0, :cond_2d

    :try_start_28
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModComms;->portraits:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_49

    .line 82
    :cond_2d
    monitor-exit v4

    return-object v0

    :cond_2f
    move-object v0, v1

    .line 68
    goto :goto_16

    .line 77
    :catch_31
    move-exception v0

    move-object v0, v1

    .line 78
    goto :goto_26

    .line 74
    :catch_34
    move-exception v0

    move-object v0, v1

    .line 77
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

    .line 78
    goto :goto_26

    .line 77
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

    .line 78
    :cond_48
    :goto_48
    :try_start_48
    throw v2
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_49

    .line 66
    :catchall_49
    move-exception v0

    monitor-exit v4

    throw v0

    .line 77
    :catch_4c
    move-exception v0

    goto :goto_48

    :catchall_4e
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    goto :goto_43

    .line 74
    :catch_52
    move-exception v2

    goto :goto_36
.end method

.method public static attachUi(Landroid/app/Activity;)V
    .registers 12

    .prologue
    const/high16 v5, 0x41000000    # 8.0f

    const/high16 v10, 0x41400000    # 12.0f

    .line 144
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".Main"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 270
    :cond_14
    :goto_14
    return-void

    .line 145
    :cond_15
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModComms;->hailOpen:Z

    .line 146
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModComms;->panel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_20

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModComms;->act:Landroid/app/Activity;

    if-eq v0, p0, :cond_14

    .line 147
    :cond_20
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModComms;->act:Landroid/app/Activity;

    .line 148
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModComms;->ui:Landroid/os/Handler;

    .line 149
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 151
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 152
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 153
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 154
    mul-float v2, v5, v0

    float-to-int v2, v2

    mul-float v3, v5, v0

    float-to-int v3, v3

    mul-float v4, v10, v0

    float-to-int v4, v4

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 155
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 156
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 157
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 158
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42900000    # 72.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    const/high16 v5, 0x42900000    # 72.0f

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 160
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 161
    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 162
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 163
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 164
    const/4 v5, 0x2

    const/high16 v6, 0x41500000    # 13.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 165
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 166
    const/4 v6, 0x2

    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 167
    const v6, -0x221b12

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 169
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 170
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 171
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    const/4 v8, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    new-instance v3, Lfr/testudo/spacecorsair/mod/ModComms$2;

    invoke-direct {v3}, Lfr/testudo/spacecorsair/mod/ModComms$2;-><init>()V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    const v6, 0x3f1eb852    # 0.62f

    mul-float/2addr v3, v6

    const/high16 v6, 0x440c0000    # 560.0f

    mul-float/2addr v6, v0

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v3, v3

    .line 176
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    const/16 v8, 0x31

    invoke-direct {v6, v3, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 177
    const/high16 v3, 0x42680000    # 58.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 178
    invoke-virtual {p0, v1, v6}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModComms;->panel:Landroid/widget/LinearLayout;

    .line 180
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModComms;->face:Landroid/widget/ImageView;

    .line 181
    sput-object v4, Lfr/testudo/spacecorsair/mod/ModComms;->who:Landroid/widget/TextView;

    .line 182
    sput-object v5, Lfr/testudo/spacecorsair/mod/ModComms;->msg:Landroid/widget/TextView;

    .line 184
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 185
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 186
    const/4 v2, 0x2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 187
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 188
    mul-float v2, v10, v0

    float-to-int v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    mul-float v4, v10, v0

    float-to-int v4, v4

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 189
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setMinWidth(I)V

    .line 190
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setMinimumWidth(I)V

    .line 191
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setMinHeight(I)V

    .line 192
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setMinimumHeight(I)V

    .line 193
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 194
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModComms$3;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/mod/ModComms$3;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x51

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 213
    const/high16 v3, 0x42e00000    # 112.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 214
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModComms;->hail:Landroid/widget/Button;

    .line 217
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModComms;->ui:Landroid/os/Handler;

    new-instance v3, Lfr/testudo/spacecorsair/mod/ModComms$4;

    invoke-direct {v3, p0, v1, v0}, Lfr/testudo/spacecorsair/mod/ModComms$4;-><init>(Landroid/app/Activity;Landroid/widget/Button;F)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_153
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_153} :catch_155

    goto/16 :goto_14

    .line 267
    :catch_155
    move-exception v0

    goto/16 :goto_14
.end method

.method public static hailing()Z
    .registers 1

    .prologue
    .line 50
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModComms;->hailOpen:Z

    return v0
.end method

.method private static portrait(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    .line 55
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModComms;->act:Landroid/app/Activity;

    .line 56
    if-nez v1, :cond_22

    const/high16 v0, 0x40400000    # 3.0f

    .line 57
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

    .line 56
    :cond_22
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    goto :goto_6
.end method

.method public static show(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 87
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModComms;->ui:Landroid/os/Handler;

    .line 88
    if-nez v0, :cond_5

    .line 116
    :goto_4
    return-void

    .line 89
    :cond_5
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModComms$1;

    invoke-direct {v1, p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModComms$1;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method public static showStandings(Landroid/app/Activity;)V
    .registers 16

    .prologue
    .line 275
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 276
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 277
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 278
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

    .line 279
    const/4 v0, 0x0

    move v1, v0

    :goto_28
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModRepData;->KEYS:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_273

    .line 280
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModRepData;->KEYS:[Ljava/lang/String;

    aget-object v4, v0, v1

    .line 281
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v5

    aget-object v5, v0, v5

    .line 282
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

    .line 283
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModRep;->standing(Ljava/lang/String;)F

    move-result v6

    .line 284
    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModRep;->rankOf(F)I

    move-result v7

    .line 285
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 286
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 287
    const/4 v9, 0x0

    const/high16 v10, 0x40c00000    # 6.0f

    mul-float/2addr v10, v2

    float-to-int v10, v10

    const/4 v11, 0x0

    const/high16 v12, 0x40c00000    # 6.0f

    mul-float/2addr v12, v2

    float-to-int v12, v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 288
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 289
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

    .line 290
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x42300000    # 44.0f

    mul-float/2addr v11, v2

    float-to-int v11, v11

    const/high16 v12, 0x42300000    # 44.0f

    mul-float/2addr v12, v2

    float-to-int v12, v12

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 292
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 293
    const/high16 v10, 0x41200000    # 10.0f

    mul-float/2addr v10, v2

    float-to-int v10, v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 294
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 295
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 296
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 297
    const/4 v11, 0x2

    const/high16 v12, 0x41600000    # 14.0f

    invoke-virtual {v10, v11, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 298
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

    .line 299
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 301
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 302
    new-instance v10, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 303
    const v11, -0xe5ddd0

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 304
    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v11, v2

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 305
    invoke-virtual {v5, v10}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 306
    new-instance v10, Landroid/view/View;

    invoke-direct {v10, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 307
    const/4 v11, 0x0

    cmpl-float v11, v6, v11

    if-ltz v11, :cond_200

    :goto_134
    invoke-virtual {v10, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 308
    const/high16 v0, 0x435c0000    # 220.0f

    mul-float/2addr v0, v2

    float-to-int v11, v0

    .line 309
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v0, v12

    int-to-float v12, v11

    mul-float/2addr v0, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v0, v12

    float-to-int v0, v0

    .line 310
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v13, 0x1

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    const/high16 v14, 0x41000000    # 8.0f

    mul-float/2addr v14, v2

    float-to-int v14, v14

    invoke-direct {v12, v13, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 311
    const/4 v13, 0x0

    cmpl-float v6, v6, v13

    if-ltz v6, :cond_205

    div-int/lit8 v0, v11, 0x2

    :goto_15d
    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 312
    invoke-virtual {v5, v10, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 314
    const/4 v6, -0x1

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 315
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v10, v2

    float-to-int v10, v10

    const/high16 v12, 0x41000000    # 8.0f

    mul-float/2addr v12, v2

    float-to-int v12, v12

    invoke-direct {v6, v10, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 316
    div-int/lit8 v10, v11, 0x2

    iput v10, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 317
    invoke-virtual {v5, v0, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x41000000    # 8.0f

    mul-float/2addr v6, v2

    float-to-int v6, v6

    invoke-direct {v0, v11, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 320
    const v0, -0x372d22

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 321
    const/4 v0, 0x2

    const/high16 v6, 0x41300000    # 11.0f

    invoke-virtual {v5, v0, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 322
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    if-nez v7, :cond_20b

    const-string v0, "Flagship and patrols attack on sight. The commander will not answer."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
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

    .line 330
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

    .line 331
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 333
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 279
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_28

    .line 307
    :cond_200
    const v0, -0x3fc6d5

    goto/16 :goto_134

    .line 311
    :cond_205
    div-int/lit8 v6, v11, 0x2

    sub-int v0, v6, v0

    goto/16 :goto_15d

    .line 324
    :cond_20b
    const/4 v0, 0x1

    if-ne v7, v0, :cond_21a

    const-string v0, "Only amends contracts are offered."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1ac

    .line 345
    :catch_218
    move-exception v0

    .line 348
    :goto_219
    return-void

    .line 326
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

    .line 327
    const/4 v0, 0x4

    if-lt v7, v0, :cond_1ac

    const-string v0, "  \u00b7  flagship fire support"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1ac

    .line 329
    :cond_260
    const-string v0, ""

    goto/16 :goto_1c2

    .line 330
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

    .line 336
    :cond_273
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 337
    const v1, -0x75695a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 338
    const/4 v1, 0x2

    const/high16 v2, 0x41300000    # 11.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 339
    const-string v1, "Gain standing with story missions (+15, finale +20), contracts (+6) and by defending a faction\'s home sector. Allies share half of every change, enemies the opposite. HAIL a faction\'s flagship in its home sector for missions."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 342
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 343
    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 344
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
    .registers 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModComms;->lastTick:J

    .line 123
    :try_start_8
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    move v4, v3

    .line 124
    :goto_11
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v1, v1

    if-ge v4, v1, :cond_8b

    .line 125
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v1, v1, v4

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->hq:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-ne v1, v0, :cond_83

    .line 127
    :goto_1e
    if-ltz v4, :cond_89

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->caps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_89

    .line 128
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->caps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_32
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 129
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v6, v6, v4

    if-ne v1, v6, :cond_32

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_32

    move v0, v2

    .line 132
    :goto_57
    if-ltz v0, :cond_66

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v1, v1, v0

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModRep;->rank(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_66

    move v0, v2

    .line 133
    :cond_66
    if-gez v0, :cond_6d

    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModFaction;->testHail:Z

    if-eqz v1, :cond_6d

    move v0, v3

    .line 134
    :cond_6d
    if-eqz p0, :cond_7f

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-nez v1, :cond_7f

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v1, :cond_7f

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_7d} :catch_86

    if-eqz v1, :cond_80

    :cond_7f
    move v0, v2

    .line 138
    :cond_80
    :goto_80
    sput v0, Lfr/testudo/spacecorsair/mod/ModComms;->hailFaction:I

    .line 139
    return-void

    .line 124
    :cond_83
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 135
    :catch_86
    move-exception v0

    move v0, v2

    .line 136
    goto :goto_80

    :cond_89
    move v0, v4

    goto :goto_57

    :cond_8b
    move v4, v2

    goto :goto_1e
.end method
