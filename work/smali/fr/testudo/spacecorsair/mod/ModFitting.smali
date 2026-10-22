.class public final Lfr/testudo/spacecorsair/mod/ModFitting;
.super Ljava/lang/Object;
.source "ModFitting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;,
        Lfr/testudo/spacecorsair/mod/ModFitting$Picker;,
        Lfr/testudo/spacecorsair/mod/ModFitting$RingView;,
        Lfr/testudo/spacecorsair/mod/ModFitting$Tile;,
        Lfr/testudo/spacecorsair/mod/ModFitting$Bar;
    }
.end annotation


# static fields
.field static final BAD:I = -0xa5b6

.field static final BG:I = -0xfaf4ea

.field static final BOOSTER:I = 0x3

.field static final CYAN:I = -0x952f01

.field static final DIM:I = -0xb5a798

.field static final GOOD:I = -0xbe00ea

.field static final GREY:I = -0x4f3b26

.field static final HIGH_C:I = -0x75a4

.field static final HULL:I = 0x5

.field static final HYPER:I = 0x4

.field static final LASER:I = 0x0

.field static final LOW_C:I = -0x641ea3

.field static final MID_C:I = -0x952f01

.field static final MISSILE:I = 0x1

.field static final N:I = 0x6

.field static final ORIG_ID:[Ljava/lang/String;

.field static final PANEL:I = -0x33f4e5d2

.field private static final PREF:Ljava/lang/String; = "fitClassic"

.field static final SHIELD:I = 0x2

.field static final SLOT_ANGLE:[F

.field static final SLOT_COLOR:[I

.field static final SLOT_GROUP:[Ljava/lang/String;

.field static final SLOT_NAME:[Ljava/lang/String;

.field static final TAG:Ljava/lang/String; = "modFitting"

.field static final TAG_BTN:Ljava/lang/String; = "modFittingBtn"

.field private static artBg:Landroid/graphics/Bitmap;

.field private static artRing:Landroid/graphics/Bitmap;

.field private static artSlot:Landroid/graphics/Bitmap;

.field private static artSlotEmpty:Landroid/graphics/Bitmap;

.field private static busy:Z

.field private static shipArt:Landroid/graphics/Bitmap;

.field private static shipKey:Ljava/lang/String;

.field private static uiArtTried:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x6

    .line 81
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "WEAPON"

    aput-object v1, v0, v4

    const-string v1, "LAUNCHER"

    aput-object v1, v0, v5

    const-string v1, "SHIELD"

    aput-object v1, v0, v6

    const-string v1, "BOOSTER"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "HYPERDRIVE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "HULL"

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFitting;->SLOT_NAME:[Ljava/lang/String;

    .line 82
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "HIGH SLOT"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "HIGH SLOT"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "MID SLOT"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "MID SLOT"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "LOW SLOT"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "HULL"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFitting;->SLOT_GROUP:[Ljava/lang/String;

    .line 83
    new-array v0, v3, [I

    fill-array-data v0, :array_86

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFitting;->SLOT_COLOR:[I

    .line 85
    new-array v0, v3, [F

    fill-array-data v0, :array_96

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFitting;->SLOT_ANGLE:[F

    .line 87
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "imgLaser"

    aput-object v1, v0, v4

    const-string v1, "imgMissile"

    aput-object v1, v0, v5

    const-string v1, "imgShield"

    aput-object v1, v0, v6

    const-string v1, "imgBooster"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "imgHyperdrive"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "txtShowShips"

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFitting;->ORIG_ID:[Ljava/lang/String;

    return-void

    .line 83
    :array_86
    .array-data 4
        -0x75a4
        -0x75a4
        -0x952f01
        -0x952f01
        -0x641ea3
        -0x4f3b26
    .end array-data

    .line 85
    :array_96
    .array-data 4
        -0x3df00000    # -36.0f
        0x42100000    # 36.0f
        -0x3d4c0000    # -90.0f
        0x42b40000    # 90.0f
        0x430e0000    # 142.0f
        -0x3cf20000    # -142.0f
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;)V
    .registers 1

    .prologue
    .line 69
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModFitting;->fail(Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .registers 1

    .prologue
    .line 69
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModFitting;->loadUiArt(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200()Landroid/graphics/Bitmap;
    .registers 1

    .prologue
    .line 69
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFitting;->artBg:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$300()Landroid/graphics/Bitmap;
    .registers 1

    .prologue
    .line 69
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFitting;->artSlotEmpty:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$400()Landroid/graphics/Bitmap;
    .registers 1

    .prologue
    .line 69
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFitting;->artSlot:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$500()Landroid/graphics/Bitmap;
    .registers 1

    .prologue
    .line 69
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFitting;->shipArt:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$502(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 1

    .prologue
    .line 69
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModFitting;->shipArt:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .registers 1

    .prologue
    .line 69
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFitting;->shipKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 69
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModFitting;->shipKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700()Landroid/graphics/Bitmap;
    .registers 1

    .prologue
    .line 69
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFitting;->artRing:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static attach(Landroid/app/Activity;)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 111
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModFitting;->busy:Z

    if-eqz v0, :cond_8

    .line 138
    :goto_7
    return-void

    .line 113
    :cond_8
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModFitting;->busy:Z

    .line 115
    if-eqz p0, :cond_1c

    :try_start_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MyShipActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_19} :catch_7f
    .catchall {:try_start_c .. :try_end_19} :catchall_79

    move-result v0

    if-nez v0, :cond_1f

    .line 136
    :cond_1c
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModFitting;->busy:Z

    goto :goto_7

    .line 116
    :cond_1f
    const v0, 0x1020002

    :try_start_22
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_28} :catch_7f
    .catchall {:try_start_22 .. :try_end_28} :catchall_79

    .line 117
    if-nez v0, :cond_2d

    .line 136
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModFitting;->busy:Z

    goto :goto_7

    .line 118
    :cond_2d
    :try_start_2d
    const-string v1, "modFitting"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 120
    instance-of v3, v1, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;

    if-eqz v3, :cond_40

    .line 121
    check-cast v1, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;

    .line 127
    :goto_39
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->tick(Z)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_3d} :catch_60
    .catchall {:try_start_2d .. :try_end_3d} :catchall_79

    .line 136
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModFitting;->busy:Z

    goto :goto_7

    .line 123
    :cond_40
    :try_start_40
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFitting;->ready()Z
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_43} :catch_60
    .catchall {:try_start_40 .. :try_end_43} :catchall_79

    move-result v1

    if-nez v1, :cond_49

    .line 136
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModFitting;->busy:Z

    goto :goto_7

    .line 124
    :cond_49
    :try_start_49
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenWidthDp:I
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_53} :catch_60
    .catchall {:try_start_49 .. :try_end_53} :catchall_79

    const/16 v3, 0x1e0

    if-ge v1, v3, :cond_5a

    .line 136
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModFitting;->busy:Z

    goto :goto_7

    .line 125
    :cond_5a
    :try_start_5a
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;

    invoke-direct {v1, p0, v0}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5f} :catch_60
    .catchall {:try_start_5a .. :try_end_5f} :catchall_79

    goto :goto_39

    .line 128
    :catch_60
    move-exception v1

    .line 130
    :goto_61
    if-nez v0, :cond_70

    move-object v0, v2

    .line 131
    :goto_64
    :try_start_64
    instance-of v1, v0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;

    if-eqz v1, :cond_77

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;

    :goto_6a
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFitting;->fail(Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_6d} :catch_7d
    .catchall {:try_start_64 .. :try_end_6d} :catchall_79

    .line 136
    :goto_6d
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModFitting;->busy:Z

    goto :goto_7

    .line 130
    :cond_70
    :try_start_70
    const-string v1, "modFitting"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_75} :catch_7d
    .catchall {:try_start_70 .. :try_end_75} :catchall_79

    move-result-object v0

    goto :goto_64

    :cond_77
    move-object v0, v2

    .line 131
    goto :goto_6a

    .line 136
    :catchall_79
    move-exception v0

    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModFitting;->busy:Z

    .line 137
    throw v0

    .line 132
    :catch_7d
    move-exception v0

    goto :goto_6d

    .line 128
    :catch_7f
    move-exception v0

    move-object v0, v2

    goto :goto_61
.end method

.method static box(IIFF)Landroid/graphics/drawable/GradientDrawable;
    .registers 7

    .prologue
    .line 238
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 239
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 240
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_16

    const/4 v1, 0x1

    float-to-int v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 241
    :cond_16
    invoke-virtual {v0, p3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 242
    return-object v0
.end method

.method static button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Button;
    .registers 11

    .prologue
    const/high16 v7, 0x41200000    # 10.0f

    const/high16 v6, 0x40800000    # 4.0f

    const/4 v5, 0x0

    .line 246
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModFitting;->dp(Landroid/content/Context;)F

    move-result v0

    .line 247
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 248
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 249
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 250
    const/4 v2, 0x2

    const/high16 v3, 0x41300000    # 11.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 251
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 252
    invoke-virtual {v1, p2}, Landroid/widget/Button;->setTextColor(I)V

    .line 253
    const v2, -0x33f4ddc8    # -3.6473056E7f

    const v3, 0x3f99999a    # 1.2f

    mul-float/2addr v3, v0

    mul-float v4, v6, v0

    invoke-static {v2, p2, v3, v4}, Lfr/testudo/spacecorsair/mod/ModFitting;->box(IIFF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 254
    mul-float v2, v7, v0

    float-to-int v2, v2

    mul-float v3, v6, v0

    float-to-int v3, v3

    mul-float v4, v7, v0

    float-to-int v4, v4

    mul-float/2addr v0, v6

    float-to-int v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/Button;->setPadding(IIII)V

    .line 255
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setMinWidth(I)V

    .line 256
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setMinimumWidth(I)V

    .line 257
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setMinHeight(I)V

    .line 258
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setMinimumHeight(I)V

    .line 259
    return-object v1
.end method

.method static classic(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 185
    const-string v2, "classic"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 188
    :cond_a
    :goto_a
    return v0

    .line 186
    :cond_b
    if-eqz p1, :cond_17

    const-string v2, "fit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    move v0, v1

    goto :goto_a

    .line 187
    :cond_17
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModFitting;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 188
    if-eqz v2, :cond_25

    const-string v3, "fitClassic"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_25
    move v0, v1

    goto :goto_a
.end method

.method static click(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 206
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModFitting;->orig(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 207
    if-nez v1, :cond_8

    .line 211
    :goto_7
    return v0

    .line 209
    :cond_8
    :try_start_8
    invoke-virtual {v1}, Landroid/view/View;->performClick()Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_b} :catch_d

    move-result v0

    goto :goto_7

    .line 210
    :catch_d
    move-exception v1

    goto :goto_7
.end method

.method static details(Landroid/app/Activity;I)V
    .registers 3

    .prologue
    .line 412
    const/4 v0, 0x5

    if-ne p1, v0, :cond_9

    .line 413
    const-string v0, "txtShowShips"

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFitting;->click(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 418
    :cond_8
    :goto_8
    return-void

    .line 416
    :cond_9
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFitting;->ORIG_ID:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFitting;->click(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 417
    const-string v0, "btnEquipedDetails"

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFitting;->click(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "showEquipedDetails"

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFitting;->invoke(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_8
.end method

.method static dp(Landroid/content/Context;)F
    .registers 2

    .prologue
    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method static empty(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 304
    if-nez p0, :cond_5

    .line 309
    :cond_4
    :goto_4
    return v1

    .line 305
    :cond_5
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->noMissileMod:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    if-eq p0, v0, :cond_4

    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->nopBooster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    if-eq p0, v0, :cond_4

    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->nopHyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    if-eq p0, v0, :cond_4

    .line 306
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    .line 307
    instance-of v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    if-eqz v3, :cond_24

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;->boosterEnabled:Z

    if-nez v0, :cond_22

    move v0, v1

    :goto_20
    move v1, v0

    goto :goto_4

    :cond_22
    move v0, v2

    goto :goto_20

    .line 308
    :cond_24
    instance-of v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;

    if-eqz v3, :cond_30

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;->enabled:Z

    if-eqz v0, :cond_4

    move v1, v2

    goto :goto_4

    :cond_30
    move v1, v2

    .line 309
    goto :goto_4
.end method

.method static equip(Landroid/app/Activity;Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 4

    .prologue
    .line 423
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "spaceObjectListener"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFitting;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 424
    if-nez v0, :cond_17

    const/4 v0, 0x0

    .line 425
    :goto_d
    instance-of v1, v0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceObjectListener;

    if-eqz v1, :cond_1d

    .line 426
    check-cast v0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceObjectListener;

    invoke-interface {v0, p1}, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceObjectListener;->onEquip(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 438
    :goto_16
    return-void

    .line 424
    :cond_17
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1a} :catch_1c

    move-result-object v0

    goto :goto_d

    .line 429
    :catch_1c
    move-exception v0

    .line 433
    :cond_1d
    :try_start_1d
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->equipObject(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_2a} :catch_30

    .line 437
    :goto_2a
    const-string v0, "updateUI"

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFitting;->invoke(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_16

    .line 434
    :catch_30
    move-exception v0

    goto :goto_2a
.end method

.method static f1(F)Ljava/lang/String;
    .registers 3

    .prologue
    const/high16 v1, 0x41200000    # 10.0f

    .line 313
    mul-float v0, p0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 314
    float-to-int v1, v0

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_16

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method static factionIndex(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)I
    .registers 6

    .prologue
    const/4 v1, -0x1

    .line 935
    if-nez p0, :cond_5

    move v0, v1

    .line 940
    :cond_4
    :goto_4
    return v0

    .line 936
    :cond_5
    const/4 v0, 0x0

    :goto_6
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v2, v2

    if-ge v0, v2, :cond_2a

    .line 937
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v2, v2, v0

    .line 938
    iget-object v3, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->faction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->secret:Ljava/lang/String;

    if-eqz v3, :cond_27

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->secret:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 936
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_2a
    move v0, v1

    .line 940
    goto :goto_4
.end method

.method private static fail(Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;)V
    .registers 3

    .prologue
    .line 160
    if-nez p0, :cond_3

    .line 168
    :cond_2
    :goto_2
    return-void

    .line 161
    :cond_3
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->broken:Z

    .line 162
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->stop()V

    .line 163
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->toggle:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->toggle:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_19} :catch_1a

    goto :goto_2

    .line 165
    :catch_1a
    move-exception v0

    goto :goto_2
.end method

.method static field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 216
    :goto_0
    if-eqz p0, :cond_15

    const-class v0, Ljava/lang/Object;

    if-eq p0, v0, :cond_15

    .line 218
    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 219
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_e} :catch_f

    .line 225
    :goto_e
    return-object v0

    .line 221
    :catch_f
    move-exception v0

    .line 216
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 225
    :cond_15
    const/4 v0, 0x0

    goto :goto_e
.end method

.method static fittedDps(Lfr/testudo/spacecorsair/business/player/PlayerShip;)F
    .registers 10

    .prologue
    const/high16 v8, 0x447a0000    # 1000.0f

    const/4 v1, 0x0

    .line 370
    :try_start_3
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    if-nez v0, :cond_9

    move v0, v1

    .line 385
    :goto_8
    return v0

    .line 371
    :cond_9
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationReloadValue:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_53

    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationReloadValue:F

    move v3, v0

    .line 372
    :goto_12
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModSpecs;->isBeam(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)Z

    move-result v0

    if-nez v0, :cond_59

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-eqz v0, :cond_59

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserType:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->useJoystick:Z

    if-eqz v0, :cond_59

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    if-eqz v0, :cond_59

    .line 374
    const/4 v2, 0x0

    move v0, v1

    :goto_2c
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    array-length v4, v4

    if-ge v2, v4, :cond_57

    .line 375
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v4, v4, v2

    if-eqz v4, :cond_50

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v4, v4, v2

    iget v4, v4, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->timeBewteenShootInMilli:I

    if-lez v4, :cond_50

    .line 376
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v4, v4, v2

    iget v4, v4, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->shootDamage:I

    int-to-float v4, v4

    mul-float/2addr v4, v8

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v5, v5, v2

    iget v5, v5, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->timeBewteenShootInMilli:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    add-float/2addr v0, v4

    .line 374
    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 371
    :cond_53
    const/high16 v0, 0x3f800000    # 1.0f

    move v3, v0

    goto :goto_12

    .line 379
    :cond_57
    div-float/2addr v0, v3

    goto :goto_8

    .line 381
    :cond_59
    iget-wide v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->milleSecBetweenShots:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_63

    move v0, v1

    goto :goto_8

    .line 382
    :cond_63
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModSpecs;->isBeam(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)Z

    move-result v0

    if-eqz v0, :cond_77

    const/4 v0, 0x1

    .line 383
    :goto_6c
    int-to-float v0, v0

    iget v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->bulletDamage:F

    mul-float/2addr v0, v2

    mul-float/2addr v0, v8

    iget-wide v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->milleSecBetweenShots:J
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_73} :catch_79

    long-to-float v1, v4

    div-float/2addr v0, v1

    div-float/2addr v0, v3

    goto :goto_8

    .line 382
    :cond_77
    const/4 v0, 0x2

    goto :goto_6c

    .line 384
    :catch_79
    move-exception v0

    move v0, v1

    .line 385
    goto :goto_8
.end method

.method static gear(I)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;
    .registers 2

    .prologue
    .line 280
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    .line 281
    packed-switch p0, :pswitch_data_1e

    .line 287
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    :goto_d
    return-object v0

    .line 282
    :pswitch_e
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    goto :goto_d

    .line 283
    :pswitch_11
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    goto :goto_d

    .line 284
    :pswitch_14
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    goto :goto_d

    .line 285
    :pswitch_17
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->booster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    goto :goto_d

    .line 286
    :pswitch_1a
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->hyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    goto :goto_d

    .line 281
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
    .end packed-switch
.end method

.method static guns(Lfr/testudo/spacecorsair/business/player/PlayerShip;)I
    .registers 2

    .prologue
    .line 391
    :try_start_0
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModSpecs;->isBeam(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    .line 395
    :goto_9
    return v0

    .line 392
    :cond_a
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserType:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->useJoystick:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    array-length v0, v0
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_19} :catch_1c

    goto :goto_9

    .line 393
    :cond_1a
    const/4 v0, 0x2

    goto :goto_9

    .line 394
    :catch_1c
    move-exception v0

    .line 395
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static headline(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)F
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 359
    if-nez p0, :cond_f

    const/4 v0, 0x0

    .line 360
    :goto_4
    instance-of v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    if-eqz v2, :cond_14

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->getDps()F

    move-result v0

    .line 364
    :goto_e
    return v0

    .line 359
    :cond_f
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    goto :goto_4

    .line 361
    :cond_14
    instance-of v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    if-eqz v2, :cond_1e

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    int-to-float v0, v0

    goto :goto_e

    .line 362
    :cond_1e
    instance-of v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    if-eqz v2, :cond_35

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModFitting;->empty(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v2

    if-eqz v2, :cond_2a

    move v0, v1

    goto :goto_e

    :cond_2a
    move-object v1, v0

    check-cast v1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->damage:F

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->radiusDamage:F

    add-float/2addr v0, v1

    goto :goto_e

    .line 363
    :cond_35
    instance-of v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    if-eqz v2, :cond_46

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModFitting;->empty(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v2

    if-eqz v2, :cond_41

    :goto_3f
    move v0, v1

    goto :goto_e

    :cond_41
    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    iget v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;->boostPower:F

    goto :goto_3f

    .line 364
    :cond_46
    const/high16 v0, 0x7fc00000    # Float.NaN

    goto :goto_e
.end method

.method static invoke(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 442
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 443
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_12

    .line 447
    :goto_11
    return-void

    .line 444
    :catch_12
    move-exception v0

    goto :goto_11
.end method

.method static label(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 272
    :try_start_0
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v0

    .line 273
    if-nez v0, :cond_a

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    .line 275
    :cond_a
    :goto_a
    return-object v0

    .line 274
    :catch_b
    move-exception v0

    .line 275
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private static loadUiArt(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/16 v2, 0x400

    const/16 v1, 0x80

    .line 96
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModFitting;->uiArtTried:Z

    if-eqz v0, :cond_9

    .line 102
    :goto_8
    return-void

    .line 97
    :cond_9
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModFitting;->uiArtTried:Z

    .line 98
    const-string v0, "ui_fit_bg"

    invoke-static {p0, v0, v2}, Lfr/testudo/spacecorsair/mod/ModArt;->decode(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFitting;->artBg:Landroid/graphics/Bitmap;

    .line 99
    const-string v0, "ui_fit_ring"

    invoke-static {p0, v0, v2}, Lfr/testudo/spacecorsair/mod/ModArt;->decode(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFitting;->artRing:Landroid/graphics/Bitmap;

    .line 100
    const-string v0, "ui_fit_slot"

    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModArt;->decode(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFitting;->artSlot:Landroid/graphics/Bitmap;

    .line 101
    const-string v0, "ui_fit_slot_empty"

    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModArt;->decode(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFitting;->artSlotEmpty:Landroid/graphics/Bitmap;

    goto :goto_8
.end method

.method static openSlot(Landroid/app/Activity;I)V
    .registers 3

    .prologue
    .line 402
    const/4 v0, 0x5

    if-ne p1, v0, :cond_11

    .line 403
    const-string v0, "txtShowShips"

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFitting;->click(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "openShipsActivity"

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFitting;->invoke(Landroid/app/Activity;Ljava/lang/String;)V

    .line 408
    :cond_10
    :goto_10
    return-void

    .line 406
    :cond_11
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFitting;->ORIG_ID:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFitting;->click(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 407
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModFitting$Picker;->show(Landroid/app/Activity;I)V

    goto :goto_10
.end method

.method static orig(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 198
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 199
    if-nez v1, :cond_12

    .line 201
    :goto_11
    return-object v0

    .line 199
    :cond_12
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_15} :catch_17

    move-result-object v0

    goto :goto_11

    .line 200
    :catch_17
    move-exception v1

    goto :goto_11
.end method

.method static pct(F)Ljava/lang/String;
    .registers 4

    .prologue
    .line 318
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, p0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v1, :cond_27

    const-string v0, "+"

    :goto_14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_27
    const-string v0, ""

    goto :goto_14
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 178
    :try_start_0
    const-string v0, "modqol"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_8

    move-result-object v0

    .line 180
    :goto_7
    return-object v0

    .line 179
    :catch_8
    move-exception v0

    .line 180
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static rarityColor(Landroid/content/Context;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I
    .registers 4

    .prologue
    .line 264
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_11

    move-result v0

    .line 266
    :goto_10
    return v0

    .line 265
    :catch_11
    move-exception v0

    .line 266
    const/4 v0, -0x1

    goto :goto_10
.end method

.method private static ready()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 149
    :try_start_1
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    .line 150
    iget-object v2, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    if-eqz v2, :cond_20

    iget-object v2, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    if-eqz v2, :cond_20

    iget-object v2, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    if-eqz v2, :cond_20

    iget-object v2, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    if-eqz v2, :cond_20

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1d} :catch_21

    if-eqz v1, :cond_20

    const/4 v0, 0x1

    .line 153
    :cond_20
    :goto_20
    return v0

    .line 152
    :catch_21
    move-exception v1

    goto :goto_20
.end method

.method public static refresh(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 144
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModFitting;->attach(Landroid/app/Activity;)V

    .line 145
    return-void
.end method

.method static setClassic(Landroid/content/Context;Z)V
    .registers 4

    .prologue
    .line 192
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModFitting;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_13

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fitClassic"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 194
    :cond_13
    return-void
.end method

.method static statLine(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;
    .registers 6

    .prologue
    const/high16 v4, 0x447a0000    # 1000.0f

    .line 324
    if-nez p0, :cond_a

    const/4 v0, 0x0

    .line 325
    :goto_5
    if-nez v0, :cond_f

    const-string v0, ""

    .line 354
    :goto_9
    return-object v0

    .line 324
    :cond_a
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    goto :goto_5

    .line 326
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lv "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 327
    instance-of v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    if-eqz v2, :cond_69

    .line 328
    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 329
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b7 DPS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->getDps()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dmg / "

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 331
    :cond_69
    instance-of v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    if-eqz v2, :cond_cb

    .line 332
    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 333
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModFitting;->empty(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v2

    if-eqz v2, :cond_7c

    const-string v0, "No launcher fitted"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 334
    :cond_7c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->damage:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->radiusDamage:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dmg \u00b7 reload "

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->reloadSpeedInMilli:J

    long-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFitting;->f1(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s \u00b7 max "

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->maxCountInventory:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 336
    :cond_cb
    instance-of v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    if-eqz v2, :cond_114

    .line 337
    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " HP \u00b7 +"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/s \u00b7 delay "

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFitting;->f1(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 340
    :cond_114
    instance-of v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    if-eqz v2, :cond_163

    .line 341
    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    .line 342
    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;->boosterEnabled:Z

    if-nez v2, :cond_126

    const-string v0, "No booster fitted"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 343
    :cond_126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b7 thrust x"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;->boostPower:F

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFitting;->f1(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;->shieldConsumeBySecInPourc:F

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFitting;->f1(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "% shield/s"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 345
    :cond_163
    instance-of v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;

    if-eqz v2, :cond_19e

    .line 346
    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;

    .line 347
    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;->enabled:Z

    if-nez v2, :cond_175

    const-string v0, "No hyperdrive fitted"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 348
    :cond_175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;->energyCellsPerUnit:F

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFitting;->f1(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " energy cells / unit"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 350
    :cond_19e
    instance-of v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-eqz v2, :cond_1ef

    .line 351
    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->className(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->techName(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b7 speed "

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxSpeedInformational:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b7 armour "

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->armorInformational:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_1ef
    move-object v0, v1

    .line 354
    goto/16 :goto_9
.end method

.method static text(Landroid/content/Context;FIZ)Landroid/widget/TextView;
    .registers 6

    .prologue
    .line 229
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 230
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 231
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 232
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 233
    if-eqz p3, :cond_17

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 234
    :cond_17
    return-object v0
.end method

.method static type(I)Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;
    .registers 2

    .prologue
    .line 292
    packed-switch p0, :pswitch_data_16

    .line 298
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->SHIP:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    :goto_5
    return-object v0

    .line 293
    :pswitch_6
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->LASER:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    goto :goto_5

    .line 294
    :pswitch_9
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->MISSILE:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    goto :goto_5

    .line 295
    :pswitch_c
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->SHIELD:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    goto :goto_5

    .line 296
    :pswitch_f
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->BOOSTER:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    goto :goto_5

    .line 297
    :pswitch_12
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->HYPERDRIVE_ENGINE:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    goto :goto_5

    .line 292
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method
