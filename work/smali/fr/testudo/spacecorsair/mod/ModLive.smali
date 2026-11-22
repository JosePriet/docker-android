.class public final Lfr/testudo/spacecorsair/mod/ModLive;
.super Ljava/lang/Object;
.source "ModLive.java"


# static fields
.field private static final ALIEN:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENRAGE:[Ljava/lang/String;

.field private static final FXN:I = 0x40

.field private static final NAMES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final RADAR_EDGE_H:F = 12.0f

.field static final RADAR_EDGE_MAX:F = 4.0f

.field private static final SIG:[Ljava/lang/String;

.field private static final SIGIL:[Ljava/lang/String;

.field static final SKULL_ASPECT:F = 0.8333333f

.field static final SKULL_B:F = 0.18f

.field static final SKULL_G:F = 0.22f

.field public static final SKULL_GAP:I = 0x5

.field static final SKULL_R:F = 1.0f

.field static final SKULL_RADAR_H:F = 13.0f

.field static final SKULL_TAG_H:F = 22.0f

.field private static final edgeAt:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static frameDone:Z

.field private static final fxAdd:[Z

.field private static final fxB:[F

.field private static final fxCell:[I

.field private static final fxCols:[I

.field private static final fxDur:[J

.field private static final fxFrames:[I

.field private static final fxG:[F

.field private static fxNext:I

.field private static final fxR:[F

.field private static final fxRot:[F

.field private static final fxRows:[I

.field private static final fxSize:[F

.field private static final fxSpin:[F

.field private static final fxStart:[J

.field private static final fxTex:[Ljava/lang/String;

.field private static final fxVX:[F

.field private static final fxVY:[F

.field private static final fxX:[F

.field private static final fxY:[F

.field static nowMs:J

.field private static plateHalf:[F

.field private static plateLevel:[I

.field private static plateText:[Ljava/lang/String;

.field private static final state:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            "[F>;"
        }
    .end annotation
.end field

.field private static final tmp:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static final tmp2:Lfr/testudo/spacecorsair/engine/Vector2;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x3

    const/16 v7, 0x40

    .line 265
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->edgeAt:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 298
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->state:Ljava/util/Map;

    .line 300
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->ALIEN:Ljava/util/HashMap;

    .line 302
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "harbinger"

    aput-object v0, v2, v1

    const/4 v0, 0x1

    const-string v3, "secret_kretari"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "cap_kretari"

    aput-object v3, v2, v0

    const-string v0, "orig_alien_blatte"

    aput-object v0, v2, v8

    const/4 v0, 0x4

    const-string v3, "orig_alien_rat0"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const-string v3, "pol_harbinger"

    aput-object v3, v2, v0

    const/4 v0, 0x6

    const-string v3, "pol_secret_kretari"

    aput-object v3, v2, v0

    const/4 v0, 0x7

    const-string v3, "pol_cap_kretari"

    aput-object v3, v2, v0

    array-length v3, v2

    move v0, v1

    :goto_49
    if-ge v0, v3, :cond_57

    aget-object v4, v2, v0

    .line 303
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLive;->ALIEN:Ljava/util/HashMap;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 355
    :cond_57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->NAMES:Ljava/util/HashMap;

    .line 356
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->SIG:[Ljava/lang/String;

    .line 357
    new-array v0, v8, [Ljava/lang/String;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->SIGIL:[Ljava/lang/String;

    new-array v0, v8, [Ljava/lang/String;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->ENRAGE:[Ljava/lang/String;

    move v0, v1

    .line 359
    :goto_6e
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLive;->SIG:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_93

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLive;->SIG:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "titan_signature_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v4, v4, v0

    iget-object v4, v4, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6e

    .line 360
    :cond_93
    :goto_93
    if-ge v1, v8, :cond_ce

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->SIGIL:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "boss_sigil_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModBoss;->ID:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->ENRAGE:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "boss_enrage_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModBoss;->ID:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_93

    .line 444
    :cond_ce
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->tmp:Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->tmp2:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 453
    new-array v0, v8, [Ljava/lang/String;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->plateText:[Ljava/lang/String;

    .line 454
    new-array v0, v8, [I

    fill-array-data v0, :array_134

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->plateLevel:[I

    .line 455
    new-array v0, v8, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->plateHalf:[F

    .line 501
    new-array v0, v7, [Ljava/lang/String;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxTex:[Ljava/lang/String;

    .line 502
    new-array v0, v7, [I

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxCols:[I

    new-array v0, v7, [I

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxFrames:[I

    .line 503
    new-array v0, v7, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxX:[F

    new-array v0, v7, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxY:[F

    new-array v0, v7, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxSize:[F

    new-array v0, v7, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxRot:[F

    .line 504
    new-array v0, v7, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxR:[F

    new-array v0, v7, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxG:[F

    new-array v0, v7, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxB:[F

    .line 505
    new-array v0, v7, [J

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxStart:[J

    new-array v0, v7, [J

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxDur:[J

    .line 506
    new-array v0, v7, [Z

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxAdd:[Z

    .line 507
    new-array v0, v7, [I

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxCell:[I

    new-array v0, v7, [I

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxRows:[I

    .line 508
    new-array v0, v7, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxVX:[F

    new-array v0, v7, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxVY:[F

    new-array v0, v7, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxSpin:[F

    return-void

    .line 454
    :array_134
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static alienArt(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 307
    if-eqz p0, :cond_c

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->ALIEN:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static before(F)Z
    .registers 5

    .prologue
    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    rem-long/2addr v0, v2

    long-to-float v0, v0

    .line 327
    cmpl-float v1, p0, v0

    if-lez v1, :cond_18

    sub-float v0, p0, v0

    const v1, 0x459c4000    # 5000.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private static bossPlate(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;Lfr/testudo/spacecorsair/display/Drawable;I)V
    .registers 23

    .prologue
    .line 458
    invoke-static/range {p1 .. p1}, Lfr/testudo/spacecorsair/mod/ModLive;->sizeOf(Lfr/testudo/spacecorsair/display/Drawable;)F

    move-result v12

    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v13, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v12

    add-float/2addr v2, v3

    const/high16 v3, 0x42380000    # 46.0f

    add-float v14, v2, v3

    .line 460
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLive;->plateText:[Ljava/lang/String;

    aget-object v2, v2, p2

    if-eqz v2, :cond_28

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLive;->plateLevel:[I

    aget v2, v2, p2

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->level:I

    if-eq v2, v3, :cond_6c

    .line 461
    :cond_28
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLive;->plateText:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p2 .. p2}, Lfr/testudo/spacecorsair/mod/ModBoss;->displayName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->spanish()Z

    move-result v2

    if-eqz v2, :cond_16d

    const-string v2, "  Niv "

    :goto_3f
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->level:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, p2

    .line 462
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLive;->plateLevel:[I

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->level:I

    aput v3, v2, p2

    .line 463
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLive;->plateHalf:[F

    sget-object v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextMedium:Lfr/testudo/spacecorsair/textengine/GLText;

    if-nez v2, :cond_171

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLive;->plateText:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x7

    int-to-float v2, v2

    :goto_6a
    aput v2, v3, p2

    .line 465
    :cond_6c
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLive;->plateHalf:[F

    aget v15, v2, p2

    .line 466
    const/high16 v2, 0x438c0000    # 280.0f

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v15

    const/high16 v4, 0x43160000    # 150.0f

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 467
    const-string v2, "ui_boss_plate"

    const/high16 v3, 0x41a00000    # 20.0f

    add-float/2addr v3, v13

    const/high16 v4, 0x41200000    # 10.0f

    add-float/2addr v4, v14

    const/high16 v6, 0x41000000    # 8.0f

    div-float v6, v5, v6

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3f733333    # 0.95f

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lfr/testudo/spacecorsair/mod/ModLive;->upright(Ljava/lang/String;FFFFFFFFZ)V

    .line 468
    const/high16 v5, 0x42800000    # 64.0f

    .line 469
    const-string v2, "icon_boss"

    sub-float v3, v13, v15

    const/high16 v4, 0x41d00000    # 26.0f

    sub-float/2addr v3, v4

    const/high16 v4, 0x41200000    # 10.0f

    add-float/2addr v4, v14

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    move v6, v5

    invoke-static/range {v2 .. v11}, Lfr/testudo/spacecorsair/mod/ModLive;->upright(Ljava/lang/String;FFFFFFFFZ)V

    .line 470
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModLive;->outlevels(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v2

    if-eqz v2, :cond_fa

    .line 471
    const v6, 0x41f66666    # 30.8f

    .line 472
    const-string v2, "icon_skull"

    sub-float v3, v13, v15

    const/high16 v4, 0x41d00000    # 26.0f

    sub-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v4, v6

    sub-float/2addr v3, v4

    const/high16 v4, 0x41200000    # 10.0f

    add-float/2addr v4, v14

    const v5, 0x3f555555

    mul-float/2addr v5, v6

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3e6147ae    # 0.22f

    const v9, 0x3e3851ec    # 0.18f

    const v10, 0x3f4ccccd    # 0.8f

    const v11, 0x3e4ccccd    # 0.2f

    sget-wide v16, Lfr/testudo/spacecorsair/mod/ModLive;->nowMs:J

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x406b800000000000L    # 220.0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    mul-float v11, v11, v16

    add-float/2addr v10, v11

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lfr/testudo/spacecorsair/mod/ModLive;->upright(Ljava/lang/String;FFFFFFFFZ)V

    .line 474
    :cond_fa
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLive;->tmp2:Lfr/testudo/spacecorsair/engine/Vector2;

    sub-float v3, v13, v15

    const/high16 v4, 0x41600000    # 14.0f

    add-float/2addr v3, v4

    invoke-virtual {v2, v3, v14}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 475
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLive;->tmp2:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v4, 0x0

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLive;->plateText:[Ljava/lang/String;

    aget-object v5, v5, p2

    const v6, 0x3f47ae14    # 0.78f

    const v7, 0x3ee66666    # 0.45f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    sget-object v10, Lfr/testudo/spacecorsair/textengine/TextSize;->MEDIUM:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v2 .. v10}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 476
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->enragedOf(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v2

    if-eqz v2, :cond_16c

    .line 477
    const v2, 0x3f0ccccd    # 0.55f

    const v3, 0x3ee66666    # 0.45f

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLive;->nowMs:J

    long-to-double v4, v4

    const-wide v6, 0x4061800000000000L    # 140.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    add-float v11, v2, v3

    .line 478
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLive;->ENRAGE:[Ljava/lang/String;

    aget-object v2, v2, p2

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v5, 0x3fd9999a    # 1.7f

    mul-float/2addr v5, v12

    const v6, 0x3fd9999a    # 1.7f

    mul-float/2addr v6, v12

    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLive;->nowMs:J

    long-to-float v7, v8

    const/high16 v8, 0x41f00000    # 30.0f

    div-float/2addr v7, v8

    const/high16 v8, 0x43b40000    # 360.0f

    rem-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3eb33333    # 0.35f

    const v10, 0x3f59999a    # 0.85f

    const v12, 0x3f266666    # 0.65f

    mul-float/2addr v11, v12

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    .line 480
    :cond_16c
    return-void

    .line 461
    :cond_16d
    const-string v2, "  Lv "

    goto/16 :goto_3f

    .line 463
    :cond_171
    sget-object v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextMedium:Lfr/testudo/spacecorsair/textengine/GLText;

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLive;->plateText:[Ljava/lang/String;

    aget-object v4, v4, p2

    invoke-virtual {v2, v4}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    goto/16 :goto_6a
.end method

.method static capOutlevels(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 236
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v1

    .line 237
    if-eqz v1, :cond_11

    iget-boolean v2, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->police:Z

    if-nez v2, :cond_12

    invoke-static {p0, v1}, Lfr/testudo/spacecorsair/mod/ModLive;->titanHostile(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 238
    :cond_11
    :goto_11
    return v0

    :cond_12
    iget v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->lvl:I

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV34;->playerLevel()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x5

    if-lt v1, v2, :cond_11

    const/4 v0, 0x1

    goto :goto_11
.end method

.method private static capSkull(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/display/Drawable;)V
    .registers 12

    .prologue
    .line 243
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModLive;->sizeOf(Lfr/testudo/spacecorsair/display/Drawable;)F

    move-result v2

    .line 244
    const v4, 0x420ccccd    # 35.2f

    const v0, 0x3f555555

    mul-float v3, v4, v0

    .line 245
    const v0, 0x3f4ccccd    # 0.8f

    const v1, 0x3e4ccccd    # 0.2f

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLive;->nowMs:J

    long-to-double v6, v6

    const-wide v8, 0x406b800000000000L    # 220.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float/2addr v1, v5

    add-float v8, v0, v1

    .line 246
    const-string v0, "icon_skull"

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v2, v6

    add-float/2addr v2, v5

    const/high16 v5, 0x41f00000    # 30.0f

    add-float/2addr v2, v5

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3e6147ae    # 0.22f

    const v7, 0x3e3851ec    # 0.18f

    iget v9, p0, Lfr/testudo/spacecorsair/business/Element;->a:F

    mul-float/2addr v8, v9

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lfr/testudo/spacecorsair/mod/ModLive;->upright(Ljava/lang/String;FFFFFFFFZ)V

    .line 247
    return-void
.end method

.method static chunk(Ljava/lang/String;IIIFFFJFF)V
    .registers 24

    .prologue
    .line 513
    mul-int v2, p1, p2

    const v8, 0x3f4ccccd    # 0.8f

    const v9, 0x3f47ae14    # 0.78f

    const/high16 v10, 0x3f400000    # 0.75f

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-wide/from16 v6, p7

    invoke-static/range {v0 .. v11}, Lfr/testudo/spacecorsair/mod/ModLive;->fx(Ljava/lang/String;IIFFFJFFFZ)V

    .line 514
    sget v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxNext:I

    add-int/lit8 v0, v0, 0x40

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x40

    .line 515
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxCell:[I

    aput p3, v1, v0

    .line 516
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxRows:[I

    aput p2, v1, v0

    .line 517
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxVX:[F

    aput p9, v1, v0

    .line 518
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxVY:[F

    aput p10, v1, v0

    .line 519
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxSpin:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v2, v4

    double-to-float v2, v2

    const/high16 v3, 0x43700000    # 240.0f

    mul-float/2addr v2, v3

    aput v2, v1, v0

    .line 520
    return-void
.end method

.method private static damage(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FF)V
    .registers 26

    .prologue
    .line 414
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v15, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    move/from16 v17, v0

    .line 415
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModLive;->st(Lfr/testudo/spacecorsair/business/Element;)[F

    move-result-object v18

    .line 416
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/business/Element;->maxLife:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_146

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/business/Element;->life:F

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/business/Element;->maxLife:F

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move v14, v2

    .line 417
    :goto_36
    invoke-static/range {p1 .. p1}, Lfr/testudo/spacecorsair/mod/ModLive;->alienArt(Ljava/lang/String;)Z

    move-result v19

    .line 419
    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v2, v14, v2

    if-gez v2, :cond_8d

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const/high16 v2, 0x3e800000    # 0.25f

    cmpg-float v2, v14, v2

    if-gez v2, :cond_14b

    const-wide v2, 0x3fd3333333333333L    # 0.3

    :goto_4f
    cmpg-double v2, v4, v2

    if-gez v2, :cond_8d

    .line 420
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v2, v4

    double-to-float v2, v2

    mul-float v2, v2, p2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v20, v2, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v2, v4

    double-to-float v2, v2

    mul-float v2, v2, p2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v21, v2, v3

    .line 421
    if-eqz v19, :cond_152

    .line 422
    const-string v2, "fx_ichor_sheet"

    const/4 v3, 0x4

    const/16 v4, 0x10

    add-float v5, v15, v20

    add-float v6, v16, v21

    const v7, 0x3e6147ae    # 0.22f

    mul-float v7, v7, p2

    const-wide/16 v8, 0x2bc

    const v10, 0x3f0ccccd    # 0.55f

    const/high16 v11, 0x3e800000    # 0.25f

    const v12, 0x3f733333    # 0.95f

    const/4 v13, 0x1

    invoke-static/range {v2 .. v13}, Lfr/testudo/spacecorsair/mod/ModLive;->fx(Ljava/lang/String;IIFFFJFFFZ)V

    .line 430
    :cond_8d
    :goto_8d
    if-eqz v19, :cond_e1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, p3, v2

    if-lez v2, :cond_e1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x3fcc28f5c28f5c29L    # 0.22

    cmpg-double v2, v2, v4

    if-gez v2, :cond_e1

    .line 431
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v4, v6

    double-to-float v3, v4

    mul-float v3, v3, p2

    const v4, 0x3e99999a    # 0.3f

    mul-float/2addr v3, v4

    const v4, 0x3ee66666    # 0.45f

    mul-float v4, v4, p2

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLive;->tmp:Lfr/testudo/spacecorsair/engine/Vector2;

    move/from16 v0, v17

    invoke-static {v2, v0, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 432
    const-string v2, "fx_spore_sheet"

    const/4 v3, 0x4

    const/16 v4, 0x10

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLive;->tmp:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLive;->tmp:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v7, 0x3e23d70a    # 0.16f

    mul-float v7, v7, p2

    const-wide/16 v8, 0x44c

    const v10, 0x3f19999a    # 0.6f

    const v11, 0x3f733333    # 0.95f

    const v12, 0x3f0ccccd    # 0.55f

    const/4 v13, 0x1

    invoke-static/range {v2 .. v13}, Lfr/testudo/spacecorsair/mod/ModLive;->fx(Ljava/lang/String;IIFFFJFFFZ)V

    .line 435
    :cond_e1
    const/4 v2, 0x3

    aget v2, v18, v2

    sub-float v2, v17, v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLive;->normDelta(F)F

    move-result v2

    .line 436
    const/4 v3, 0x3

    aput v17, v18, v3

    .line 437
    if-nez v19, :cond_145

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3f99999a    # 1.2f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_145

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x3fd6666666666666L    # 0.35

    cmpg-double v3, v4, v6

    if-gez v3, :cond_145

    .line 438
    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1bd

    const/high16 v2, 0x3f800000    # 1.0f

    .line 439
    :goto_10e
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    mul-float v2, v2, p2

    const v4, 0x3e6147ae    # 0.22f

    mul-float/2addr v2, v4

    move/from16 v0, p2

    neg-float v4, v0

    const v5, 0x3e99999a    # 0.3f

    mul-float/2addr v4, v5

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLive;->tmp:Lfr/testudo/spacecorsair/engine/Vector2;

    move/from16 v0, v17

    invoke-static {v3, v0, v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 440
    const-string v2, "fx_vent_sheet"

    const/4 v3, 0x4

    const/16 v4, 0x10

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLive;->tmp:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLive;->tmp:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v7, 0x3df5c28f    # 0.12f

    mul-float v7, v7, p2

    const-wide/16 v8, 0x17c

    const/high16 v10, 0x3f400000    # 0.75f

    const v11, 0x3f59999a    # 0.85f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x1

    invoke-static/range {v2 .. v13}, Lfr/testudo/spacecorsair/mod/ModLive;->fx(Ljava/lang/String;IIFFFJFFFZ)V

    .line 442
    :cond_145
    return-void

    .line 416
    :cond_146
    const/high16 v2, 0x3f800000    # 1.0f

    move v14, v2

    goto/16 :goto_36

    .line 419
    :cond_14b
    const-wide v2, 0x3fc1eb851eb851ecL    # 0.14

    goto/16 :goto_4f

    .line 424
    :cond_152
    const-string v2, "fx_smoke_sheet"

    const/4 v3, 0x4

    const/16 v4, 0x10

    add-float v5, v15, v20

    add-float v6, v16, v21

    const v7, 0x3e99999a    # 0.3f

    mul-float v7, v7, p2

    const-wide/16 v8, 0x578

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v13, 0x1

    invoke-static/range {v2 .. v13}, Lfr/testudo/spacecorsair/mod/ModLive;->fx(Ljava/lang/String;IIFFFJFFFZ)V

    .line 425
    const/high16 v2, 0x3e800000    # 0.25f

    cmpg-float v2, v14, v2

    if-gez v2, :cond_196

    const-string v2, "fx_fire_sheet"

    const/4 v3, 0x4

    const/16 v4, 0x10

    const v5, 0x3f19999a    # 0.6f

    mul-float v5, v5, v20

    add-float/2addr v5, v15

    const v6, 0x3f19999a    # 0.6f

    mul-float v6, v6, v21

    add-float v6, v6, v16

    const v7, 0x3e4ccccd    # 0.2f

    mul-float v7, v7, p2

    const-wide/16 v8, 0x2bc

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f19999a    # 0.6f

    const/high16 v12, 0x3e800000    # 0.25f

    const/4 v13, 0x1

    invoke-static/range {v2 .. v13}, Lfr/testudo/spacecorsair/mod/ModLive;->fx(Ljava/lang/String;IIFFFJFFFZ)V

    .line 426
    :cond_196
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    cmpg-double v2, v2, v4

    if-gez v2, :cond_8d

    const-string v2, "fx_sparks_sheet"

    const/4 v3, 0x4

    const/16 v4, 0x10

    add-float v5, v15, v20

    add-float v6, v16, v21

    const v7, 0x3e3851ec    # 0.18f

    mul-float v7, v7, p2

    const-wide/16 v8, 0x190

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f59999a    # 0.85f

    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v13, 0x1

    invoke-static/range {v2 .. v13}, Lfr/testudo/spacecorsair/mod/ModLive;->fx(Ljava/lang/String;IIFFFJFFFZ)V

    goto/16 :goto_8d

    .line 438
    :cond_1bd
    const/high16 v2, -0x40800000    # -1.0f

    goto/16 :goto_10e
.end method

.method public static draw(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 3

    .prologue
    .line 62
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v0, :cond_36

    .line 63
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->drawProxy(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 79
    :cond_a
    :goto_a
    return-void

    .line 64
    :cond_b
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->guestActive()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 65
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->guestDraw(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 66
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->shipStart()V

    .line 67
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLive;->drawPlain(Lfr/testudo/spacecorsair/business/Element;)V

    .line 68
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->shipEnd()V

    goto :goto_a

    .line 71
    :cond_21
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->hostHides(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 72
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->queueSize()I

    move-result v0

    .line 73
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLive;->drawPlain(Lfr/testudo/spacecorsair/business/Element;)V

    .line 74
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->queueSize()I

    move-result v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->skipRange(II)V

    goto :goto_a

    .line 78
    :cond_36
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLive;->drawPlain(Lfr/testudo/spacecorsair/business/Element;)V

    goto :goto_a
.end method

.method private static drawFx()V
    .registers 16

    .prologue
    .line 539
    sget-wide v14, Lfr/testudo/spacecorsair/mod/ModLive;->nowMs:J

    .line 540
    const/4 v0, 0x0

    move v13, v0

    :goto_4
    const/16 v0, 0x40

    if-ge v13, v0, :cond_b5

    .line 541
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxTex:[Ljava/lang/String;

    aget-object v0, v0, v13

    if-nez v0, :cond_12

    .line 540
    :goto_e
    add-int/lit8 v0, v13, 0x1

    move v13, v0

    goto :goto_4

    .line 542
    :cond_12
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxStart:[J

    aget-wide v0, v0, v13

    sub-long v0, v14, v0

    .line 543
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_26

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLive;->fxDur:[J

    aget-wide v2, v2, v13

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2c

    .line 544
    :cond_26
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxTex:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, v13

    goto :goto_e

    .line 547
    :cond_2c
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLive;->fxCell:[I

    aget v2, v2, v13

    if-ltz v2, :cond_a5

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLive;->fxCell:[I

    aget v3, v2, v13

    .line 548
    :goto_36
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLive;->fxRows:[I

    aget v2, v2, v13

    .line 549
    long-to-float v4, v0

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLive;->fxDur:[J

    aget-wide v6, v5, v13

    long-to-float v5, v6

    const v6, 0x3f333333    # 0.7f

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_b2

    const/high16 v4, 0x3f800000    # 1.0f

    long-to-float v5, v0

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLive;->fxDur:[J

    aget-wide v6, v6, v13

    long-to-float v6, v6

    const v7, 0x3f333333    # 0.7f

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLive;->fxDur:[J

    aget-wide v6, v6, v13

    long-to-float v6, v6

    const v7, 0x3e99999a    # 0.3f

    mul-float/2addr v6, v7

    div-float/2addr v5, v6

    sub-float v11, v4, v5

    .line 550
    :goto_61
    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v7, v0, v1

    .line 551
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxTex:[Ljava/lang/String;

    aget-object v0, v0, v13

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxCols:[I

    aget v1, v1, v13

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLive;->fxX:[F

    aget v4, v4, v13

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLive;->fxVX:[F

    aget v5, v5, v13

    mul-float/2addr v5, v7

    add-float/2addr v4, v5

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLive;->fxY:[F

    aget v5, v5, v13

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLive;->fxVY:[F

    aget v6, v6, v13

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLive;->fxSize:[F

    aget v6, v6, v13

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModLive;->fxRot:[F

    aget v8, v8, v13

    sget-object v9, Lfr/testudo/spacecorsair/mod/ModLive;->fxSpin:[F

    aget v9, v9, v13

    mul-float/2addr v7, v9

    add-float/2addr v7, v8

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModLive;->fxR:[F

    aget v8, v8, v13

    sget-object v9, Lfr/testudo/spacecorsair/mod/ModLive;->fxG:[F

    aget v9, v9, v13

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModLive;->fxB:[F

    aget v10, v10, v13

    sget-object v12, Lfr/testudo/spacecorsair/mod/ModLive;->fxAdd:[Z

    aget-boolean v12, v12, v13

    invoke-static/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->flipR(Ljava/lang/String;IIIFFFFFFFFZ)V

    goto/16 :goto_e

    .line 547
    :cond_a5
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLive;->fxFrames:[I

    aget v2, v2, v13

    int-to-long v2, v2

    mul-long/2addr v2, v0

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLive;->fxDur:[J

    aget-wide v4, v4, v13

    div-long/2addr v2, v4

    long-to-int v3, v2

    goto :goto_36

    .line 549
    :cond_b2
    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_61

    .line 554
    :cond_b5
    return-void
.end method

.method private static drawPlain(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 4

    .prologue
    .line 82
    instance-of v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/Element;->isParticule:Z

    if-eqz v1, :cond_16

    .line 83
    :cond_8
    instance-of v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    if-eqz v1, :cond_12

    move-object v1, p0

    check-cast v1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModAnchor;->projectile(Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 84
    :cond_12
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/Element;->registerYourselfToDrawQueue()V

    .line 114
    :cond_15
    :goto_15
    return-void

    .line 87
    :cond_16
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v1, :cond_74

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v1, :cond_74

    const/4 v1, 0x1

    move v2, v1

    .line 88
    :goto_24
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v1, :cond_43

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    if-ne p0, v1, :cond_43

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v1, :cond_43

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->radarEdge()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 89
    :try_start_3c
    move-object v0, p0

    check-cast v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-object v1, v0

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLive;->radarEdge(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_43} :catch_7b

    .line 91
    :cond_43
    :goto_43
    if-eqz v2, :cond_54

    .line 93
    :try_start_45
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLive;->frame()V

    .line 94
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLive;->under(Lfr/testudo/spacecorsair/business/Element;)V

    .line 95
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->under(Lfr/testudo/spacecorsair/business/Element;)V

    .line 96
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModWings;->underEnemy(Lfr/testudo/spacecorsair/business/Element;)V

    .line 97
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModHornet;->underEnemy(Lfr/testudo/spacecorsair/business/Element;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_54} :catch_79

    .line 102
    :cond_54
    :goto_54
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModWarpOut;->active(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModWarpOut;->mark()I

    move-result v1

    .line 103
    :goto_5e
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/Element;->registerYourselfToDrawQueue()V

    .line 104
    if-ltz v1, :cond_66

    invoke-static {p0, v1}, Lfr/testudo/spacecorsair/mod/ModWarpOut;->fade(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 105
    :cond_66
    if-eqz v2, :cond_15

    .line 107
    :try_start_68
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLive;->over(Lfr/testudo/spacecorsair/business/Element;)V

    .line 108
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->lights(Lfr/testudo/spacecorsair/business/Element;)V

    .line 109
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModStationGuns;->draw(Lfr/testudo/spacecorsair/business/Element;)V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_71} :catch_72

    goto :goto_15

    .line 110
    :catch_72
    move-exception v1

    goto :goto_15

    .line 87
    :cond_74
    const/4 v1, 0x0

    move v2, v1

    goto :goto_24

    .line 102
    :cond_77
    const/4 v1, -0x1

    goto :goto_5e

    .line 98
    :catch_79
    move-exception v1

    goto :goto_54

    .line 89
    :catch_7b
    move-exception v1

    goto :goto_43
.end method

.method static frame()V
    .registers 2

    .prologue
    .line 47
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLive;->frameDone:Z

    if-eqz v0, :cond_5

    .line 57
    :goto_4
    return-void

    .line 48
    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLive;->frameDone:Z

    .line 49
    const/16 v0, 0x3e8

    sput v0, Lfr/testudo/spacecorsair/mod/ModFx;->budget:I

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLive;->nowMs:J

    .line 51
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLive;->nowMs:J

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModV34;->incomeTick(J)V

    .line 53
    :try_start_17
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLive;->drawFx()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_4

    .line 54
    :catch_1b
    move-exception v0

    goto :goto_4
.end method

.method public static frameStart()V
    .registers 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLive;->frameDone:Z

    .line 40
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->frame()V

    .line 41
    return-void
.end method

.method static fx(Ljava/lang/String;IIFFFJFFFZ)V
    .registers 18

    .prologue
    .line 524
    sget v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxNext:I

    .line 525
    sget v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxNext:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x40

    sput v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxNext:I

    .line 526
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxTex:[Ljava/lang/String;

    aput-object p0, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxCols:[I

    aput p1, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxFrames:[I

    aput p2, v1, v0

    .line 527
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxX:[F

    aput p3, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxY:[F

    aput p4, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxSize:[F

    aput p5, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxRot:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x4076800000000000L    # 360.0

    mul-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, v1, v0

    .line 528
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxR:[F

    aput p8, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxG:[F

    aput p9, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxB:[F

    aput p10, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxAdd:[Z

    aput-boolean p11, v1, v0

    .line 529
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxStart:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 530
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxDur:[J

    const-wide/16 v2, 0x3c

    invoke-static {v2, v3, p6, p7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 531
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxCell:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 532
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxRows:[I

    add-int v2, p2, p1

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v2, p1

    aput v2, v1, v0

    .line 533
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxVX:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 534
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxVY:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 535
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxSpin:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 536
    return-void
.end method

.method public static hit(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)F
    .registers 18

    .prologue
    const/4 v3, 0x0

    .line 562
    .line 564
    :try_start_1
    invoke-static/range {p0 .. p2}, Lfr/testudo/spacecorsair/mod/ModAnchor;->beam(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)F

    move-result v2

    .line 565
    cmpg-float v4, v2, v3

    if-gtz v4, :cond_10

    cmpl-float v4, p1, v3

    if-lez v4, :cond_10

    move/from16 p1, v3

    .line 595
    :goto_f
    return p1

    .line 566
    :cond_10
    move-object/from16 v0, p2

    invoke-static {p0, v2, v0}, Lfr/testudo/spacecorsair/mod/ModV34;->damage(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)F

    move-result v2

    .line 567
    move-object/from16 v0, p2

    invoke-static {p0, v2, v0}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->damageIn(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)F

    move-result v2

    .line 568
    move-object/from16 v0, p2

    invoke-static {p0, v2, v0}, Lfr/testudo/spacecorsair/mod/ModV35;->damage(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)F

    move-result v2

    .line 569
    move-object/from16 v0, p2

    invoke-static {p0, v2, v0}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->damageIn(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)F

    move-result v2

    .line 570
    invoke-static {p0, v2}, Lfr/testudo/spacecorsair/mod/ModPolice;->armor(Lfr/testudo/spacecorsair/business/Element;F)F

    move-result v2

    .line 571
    move-object/from16 v0, p2

    invoke-static {p0, v2, v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->damageIn(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)F

    move-result v2

    .line 572
    invoke-static {p0, v2}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->overAbsorb(Lfr/testudo/spacecorsair/business/Element;F)F

    move-result v2

    .line 573
    move-object/from16 v0, p2

    invoke-static {p0, v2, v0}, Lfr/testudo/spacecorsair/mod/ModV34;->shieldAbsorb(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)F

    move-result v2

    .line 574
    move-object/from16 v0, p2

    invoke-static {p0, v2, v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->hit(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)F

    move-result v2

    .line 575
    move-object/from16 v0, p2

    invoke-static {p0, v2, v0}, Lfr/testudo/spacecorsair/mod/ModHornet;->damageIn(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)F

    move-result v14

    .line 576
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLive;->onHit(Lfr/testudo/spacecorsair/business/Element;)V

    .line 577
    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v2, :cond_8d

    if-eqz p2, :cond_8d

    .line 578
    move-object v0, p0

    check-cast v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-object v2, v0

    .line 579
    invoke-static {v2, v14}, Lfr/testudo/spacecorsair/mod/ModLevFx;->hit(Lfr/testudo/spacecorsair/business/player/PlayerShip;F)V

    .line 580
    iget-object v4, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    if-eqz v4, :cond_87

    iget-object v4, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v4, v4, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    cmpl-float v3, v4, v3

    if-lez v3, :cond_87

    .line 581
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p2

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v3, v4

    const/high16 v4, 0x43b40000    # 360.0f

    rem-float/2addr v3, v4

    const/high16 v4, 0x42b40000    # 90.0f

    add-float/2addr v3, v4

    invoke-static {v3}, Lfr/testudo/spacecorsair/business/Element;->normalizeSpin(F)F

    move-result v3

    .line 582
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModShield;->impact(F)V

    .line 583
    move-object/from16 v0, p2

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v14}, Lfr/testudo/spacecorsair/mod/ModMonolith;->hit(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/engine/Vector2;F)V
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_87} :catch_e0

    :cond_87
    :goto_87
    move/from16 p1, v14

    .line 594
    :goto_89
    invoke-static/range {p0 .. p2}, Lfr/testudo/spacecorsair/mod/ModQol;->onHit(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    goto :goto_f

    .line 585
    :cond_8d
    if-eqz p2, :cond_87

    cmpl-float v2, p1, v3

    if-lez v2, :cond_87

    .line 586
    :try_start_93
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/Element;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v7

    .line 587
    if-eqz v7, :cond_87

    iget-object v2, v7, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->artOf(Lfr/testudo/spacecorsair/display/Texture;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLive;->alienArt(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_87

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x3fe3333333333333L    # 0.6

    cmpg-double v2, v2, v4

    if-gez v2, :cond_87

    .line 588
    const-string v2, "fx_ichor_sheet"

    const/4 v3, 0x4

    const/16 v4, 0x10

    move-object/from16 v0, p2

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p2

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v8, 0x42700000    # 60.0f

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModLive;->sizeOf(Lfr/testudo/spacecorsair/display/Drawable;)F

    move-result v7

    const v9, 0x3e3851ec    # 0.18f

    mul-float/2addr v7, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const-wide/16 v8, 0x208

    const v10, 0x3f19999a    # 0.6f

    const v11, 0x3e99999a    # 0.3f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x1

    invoke-static/range {v2 .. v13}, Lfr/testudo/spacecorsair/mod/ModLive;->fx(Ljava/lang/String;IIFFFJFFFZ)V
    :try_end_df
    .catch Ljava/lang/Throwable; {:try_start_93 .. :try_end_df} :catch_e0

    goto :goto_87

    .line 591
    :catch_e0
    move-exception v2

    goto :goto_89
.end method

.method private static hostileEnemy(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 2

    .prologue
    .line 124
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_c

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static layers(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FZFZ)V
    .registers 25

    .prologue
    .line 378
    invoke-static/range {p1 .. p1}, Lfr/testudo/spacecorsair/mod/ModLive;->names(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 379
    if-eqz p5, :cond_18f

    sget-object v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenCenter:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    :goto_a
    if-eqz p5, :cond_197

    sget-object v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenCenter:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    :goto_10
    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    .line 380
    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLive;->nowMs:J

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-eqz v2, :cond_19f

    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLive;->nowMs:J

    move-wide v14, v8

    .line 381
    :goto_1f
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModLive;->st(Lfr/testudo/spacecorsair/business/Element;)[F

    move-result-object v16

    .line 382
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/business/Element;->maxLife:F

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1a6

    const/4 v2, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/business/Element;->life:F

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/business/Element;->maxLife:F

    div-float/2addr v6, v8

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 383
    :goto_40
    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/business/Element;->life:F

    const/4 v6, 0x0

    aget v6, v16, v6

    const v8, 0x3c23d70a    # 0.01f

    add-float/2addr v6, v8

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1aa

    const/4 v5, 0x0

    aget v5, v16, v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1aa

    const/4 v5, 0x1

    .line 384
    :goto_58
    if-eqz v5, :cond_69

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x384

    add-long/2addr v8, v10

    const-wide/32 v10, 0xf4240

    rem-long/2addr v8, v10

    long-to-float v6, v8

    aput v6, v16, v5

    .line 385
    :cond_69
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/business/Element;->life:F

    aput v6, v16, v5

    .line 386
    invoke-static/range {p1 .. p1}, Lfr/testudo/spacecorsair/mod/ModLive;->alienArt(Ljava/lang/String;)Z

    move-result v17

    .line 387
    const/4 v5, 0x4

    aget v18, v16, v5

    .line 389
    if-eqz v17, :cond_1ad

    const v5, 0x3ee66666    # 0.45f

    const v6, 0x3eb33333    # 0.35f

    long-to-double v8, v14

    const-wide v10, 0x408c200000000000L    # 900.0

    div-double/2addr v8, v10

    move/from16 v0, v18

    float-to-double v10, v0

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    .line 390
    :goto_91
    const v6, 0x3eb33333    # 0.35f

    cmpg-float v2, v2, v6

    if-gez v2, :cond_1e1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide v10, 0x3fc70a3d70a3d70aL    # 0.18

    cmpg-double v2, v8, v10

    if-gez v2, :cond_1e1

    const v2, 0x3e19999a    # 0.15f

    mul-float/2addr v2, v5

    .line 391
    :goto_a9
    const/4 v5, 0x2

    aget v5, v16, v5

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLive;->before(F)Z

    move-result v5

    if-eqz v5, :cond_1de

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3eb33333    # 0.35f

    add-float/2addr v2, v6

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 392
    :goto_bc
    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    .line 393
    if-eqz p3, :cond_cb

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f4ccccd    # 0.8f

    const/high16 v10, 0x3f400000    # 0.75f

    .line 394
    :cond_cb
    if-nez p3, :cond_d8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v2, :cond_d8

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->lightMul()F

    move-result v2

    mul-float/2addr v11, v2

    .line 395
    :cond_d8
    const/4 v2, 0x0

    aget-object v2, v13, v2

    const/4 v12, 0x1

    move/from16 v5, p2

    move/from16 v6, p2

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    .line 397
    const v2, 0x3e3851ec    # 0.18f

    const v5, 0x3f51eb85    # 0.82f

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move/from16 v0, p4

    invoke-static {v8, v0}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    mul-float/2addr v5, v6

    add-float v11, v2, v5

    .line 398
    if-nez p3, :cond_106

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v2, :cond_106

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->engineMul()F

    move-result v2

    mul-float/2addr v11, v2

    .line 399
    :cond_106
    if-eqz p3, :cond_1c6

    const/4 v2, 0x1

    aget-object v2, v13, v2

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3ed70a3d    # 0.42f

    const v10, 0x3e99999a    # 0.3f

    const/4 v12, 0x1

    move/from16 v5, p2

    move/from16 v6, p2

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    .line 401
    :goto_11b
    if-eqz v17, :cond_18e

    .line 403
    const-wide/16 v8, 0x78

    div-long v8, v14, v8

    const/high16 v2, 0x41200000    # 10.0f

    mul-float v2, v2, v18

    float-to-long v10, v2

    add-long/2addr v8, v10

    const-wide/16 v10, 0x8

    rem-long/2addr v8, v10

    long-to-int v5, v8

    .line 404
    const/4 v2, 0x2

    aget v2, v16, v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLive;->before(F)Z

    move-result v2

    if-eqz v2, :cond_1d9

    const v2, 0x3f59999a    # 0.85f

    move v6, v2

    .line 405
    :goto_138
    add-int/lit8 v2, v5, 0x2

    aget-object v2, v13, v2

    mul-float v5, p2, v6

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v6

    mul-float v8, v8, p2

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    add-float/2addr v5, v8

    mul-float v8, p2, v6

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v6, v9, v6

    mul-float v6, v6, p2

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v6, v9

    add-float/2addr v6, v8

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    .line 406
    const/4 v2, 0x1

    aget v2, v16, v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLive;->before(F)Z

    move-result v2

    if-eqz v2, :cond_18e

    .line 407
    const v2, 0x3eb33333    # 0.35f

    const v5, 0x3eb33333    # 0.35f

    long-to-double v8, v14

    const-wide/high16 v10, 0x4064000000000000L    # 160.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v6, v8

    mul-float/2addr v5, v6

    add-float v11, v2, v5

    .line 408
    const/16 v2, 0xa

    aget-object v2, v13, v2

    const v8, 0x3f0ccccd    # 0.55f

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3f19999a    # 0.6f

    const/4 v12, 0x1

    move/from16 v5, p2

    move/from16 v6, p2

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    .line 411
    :cond_18e
    return-void

    .line 379
    :cond_18f
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    goto/16 :goto_a

    :cond_197
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    goto/16 :goto_10

    .line 380
    :cond_19f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-wide v14, v8

    goto/16 :goto_1f

    .line 382
    :cond_1a6
    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_40

    .line 383
    :cond_1aa
    const/4 v5, 0x0

    goto/16 :goto_58

    .line 389
    :cond_1ad
    const v5, 0x3f19999a    # 0.6f

    const/high16 v6, 0x3e800000    # 0.25f

    long-to-double v8, v14

    const-wide v10, 0x4084500000000000L    # 650.0

    div-double/2addr v8, v10

    move/from16 v0, v18

    float-to-double v10, v0

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    goto/16 :goto_91

    .line 400
    :cond_1c6
    const/4 v2, 0x1

    aget-object v2, v13, v2

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    move/from16 v5, p2

    move/from16 v6, p2

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    goto/16 :goto_11b

    .line 404
    :cond_1d9
    const/high16 v2, 0x3f800000    # 1.0f

    move v6, v2

    goto/16 :goto_138

    :cond_1de
    move v11, v2

    goto/16 :goto_bc

    :cond_1e1
    move v2, v5

    goto/16 :goto_a9
.end method

.method static living(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/display/Drawable;ZFZ)V
    .registers 12

    .prologue
    const/4 v6, 0x0

    .line 335
    iget-object v0, p1, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->artOf(Lfr/testudo/spacecorsair/display/Texture;)Ljava/lang/String;

    move-result-object v1

    .line 336
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModLive;->sizeOf(Lfr/testudo/spacecorsair/display/Drawable;)F

    move-result v2

    .line 337
    const/4 v0, 0x0

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_11

    .line 352
    :cond_10
    :goto_10
    return-void

    .line 339
    :cond_11
    if-nez v1, :cond_1c

    .line 340
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v0, :cond_10

    const/4 v0, 0x0

    invoke-static {p0, v0, v2, p3}, Lfr/testudo/spacecorsair/mod/ModLive;->damage(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FF)V

    goto :goto_10

    .line 344
    :cond_1c
    const-string v0, "orig_alien_rat0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 346
    :try_start_24
    sput-boolean p4, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    .line 347
    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModLive;->layers(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FZFZ)V
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_33

    .line 349
    sput-boolean v6, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    .line 351
    invoke-static {p0, v1, v2, p3}, Lfr/testudo/spacecorsair/mod/ModLive;->damage(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FF)V

    goto :goto_10

    .line 349
    :catchall_33
    move-exception v0

    sput-boolean v6, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    .line 350
    throw v0
.end method

.method private static lootBeam(Lfr/testudo/spacecorsair/business/loot/LootElement;)V
    .registers 16

    .prologue
    const v9, 0x3f4ccccd    # 0.8f

    const/high16 v1, 0x3f400000    # 0.75f

    const/high16 v0, 0x3e800000    # 0.25f

    const/4 v5, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    .line 484
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    if-nez v2, :cond_f

    .line 497
    :cond_e
    :goto_e
    return-void

    .line 485
    :cond_f
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v2

    .line 486
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getRaretySort()I

    move-result v3

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getRaretySort()I

    move-result v4

    if-lt v3, v4, :cond_e

    .line 488
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLive$1;->$SwitchMap$fr$testudo$spacecorsair$business$loot$LootRarety:[I

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_72

    move v8, v0

    move v7, v1

    move v6, v12

    .line 493
    :goto_31
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLive;->nowMs:J

    long-to-double v2, v2

    const-wide v10, 0x4072c00000000000L    # 300.0

    div-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v0, v2

    add-float v10, v1, v0

    .line 494
    const/high16 v4, 0x44020000    # 520.0f

    .line 495
    const-string v0, "loot_beam"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    .line 496
    if-eqz v0, :cond_e

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v3, 0x3ed70a3d    # 0.42f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x43020000    # 130.0f

    mul-float/2addr v9, v10

    const/4 v10, 0x1

    move v11, v5

    move v13, v12

    move v14, v5

    invoke-static/range {v0 .. v14}, Lfr/testudo/spacecorsair/mod/ModFx;->sprTex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    goto :goto_e

    .line 489
    :pswitch_64
    const v6, 0x3eb33333    # 0.35f

    const v7, 0x3f19999a    # 0.6f

    move v8, v12

    goto :goto_31

    .line 490
    :pswitch_6c
    const v7, 0x3ecccccd    # 0.4f

    move v8, v12

    move v6, v9

    goto :goto_31

    .line 488
    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_64
        :pswitch_6c
    .end packed-switch
.end method

.method private static names(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 365
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->NAMES:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 366
    if-nez v0, :cond_7a

    .line 367
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_glow_l"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 369
    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_glow_e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 370
    :goto_3a
    const/16 v2, 0x8

    if-ge v1, v2, :cond_5e

    add-int/lit8 v2, v1, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_anim_0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 371
    :cond_5e
    const/16 v1, 0xa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_veins"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 372
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->NAMES:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    :cond_7a
    return-object v0
.end method

.method static normDelta(F)F
    .registers 4

    .prologue
    const/high16 v2, 0x43b40000    # 360.0f

    .line 447
    move v0, p0

    :goto_3
    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_b

    sub-float/2addr v0, v2

    goto :goto_3

    .line 448
    :cond_b
    :goto_b
    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_13

    add-float/2addr v0, v2

    goto :goto_b

    .line 449
    :cond_13
    return v0
.end method

.method static onHit(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 7

    .prologue
    .line 321
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->state:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 322
    if-eqz v0, :cond_19

    const/4 v1, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x104

    add-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    rem-long/2addr v2, v4

    long-to-float v2, v2

    aput v2, v0, v1

    .line 323
    :cond_19
    return-void
.end method

.method static outlevels(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 229
    instance-of v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v1, :cond_c

    check-cast p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLive;->capOutlevels(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;)Z

    move-result v0

    .line 231
    :cond_b
    :goto_b
    return v0

    .line 230
    :cond_c
    instance-of v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v1, :cond_b

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 231
    check-cast p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->level:I

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV34;->playerLevel()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x5

    if-lt v1, v2, :cond_b

    const/4 v0, 0x1

    goto :goto_b
.end method

.method private static over(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 203
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;

    if-nez v0, :cond_9

    instance-of v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;

    if-eqz v0, :cond_a

    .line 217
    :cond_9
    :goto_9
    return-void

    .line 204
    :cond_a
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/Element;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v2

    .line 205
    if-eqz v2, :cond_9

    .line 206
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v0, :cond_20

    move-object v0, p0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLive;->capOutlevels(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {p0, v2}, Lfr/testudo/spacecorsair/mod/ModLive;->capSkull(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/display/Drawable;)V

    .line 207
    :cond_20
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLive;->hostileEnemy(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v3

    .line 208
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_49

    move-object v0, p0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->isPousee:Z

    .line 210
    :goto_2d
    if-eqz v0, :cond_58

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_31
    invoke-static {p0, v2, v3, v0, v1}, Lfr/testudo/spacecorsair/mod/ModLive;->living(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/display/Drawable;ZFZ)V

    .line 211
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLive;->sizeOf(Lfr/testudo/spacecorsair/display/Drawable;)F

    move-result v0

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModV34;->shieldDraw(Lfr/testudo/spacecorsair/business/Element;F)V

    .line 212
    if-eqz v3, :cond_9

    .line 213
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->kindOf(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v0

    .line 214
    if-ltz v0, :cond_5c

    check-cast p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-static {p0, v2, v0}, Lfr/testudo/spacecorsair/mod/ModLive;->bossPlate(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;Lfr/testudo/spacecorsair/display/Drawable;I)V

    goto :goto_9

    .line 209
    :cond_49
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_56

    move-object v0, p0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->isPousee:Z

    if-eqz v0, :cond_56

    const/4 v0, 0x1

    goto :goto_2d

    :cond_56
    move v0, v1

    goto :goto_2d

    .line 210
    :cond_58
    const v0, 0x3e19999a    # 0.15f

    goto :goto_31

    .line 215
    :cond_5c
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLive;->outlevels(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_9

    check-cast p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-static {p0, v2}, Lfr/testudo/spacecorsair/mod/ModLive;->skullTag(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;Lfr/testudo/spacecorsair/display/Drawable;)V

    goto :goto_9
.end method

.method private static radarEdge(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 16

    .prologue
    .line 268
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->radarPortee:I

    int-to-float v10, v0

    .line 269
    const/4 v0, 0x0

    cmpg-float v0, v10, v0

    if-lez v0, :cond_c

    sget-object v0, Lfr/testudo/spacecorsair/display/hud/Radar;->drawPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    if-nez v0, :cond_d

    .line 295
    :cond_c
    return-void

    .line 270
    :cond_d
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v11, v0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 271
    sget v0, Lfr/testudo/spacecorsair/display/hud/Radar;->DEMI_DIM:I

    add-int/lit8 v0, v0, -0xe

    int-to-float v12, v0

    .line 272
    const/4 v0, 0x0

    move v9, v0

    :goto_1c
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_c

    .line 273
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 274
    if-eqz v0, :cond_35

    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v1, :cond_35

    iget v1, v0, Lfr/testudo/spacecorsair/business/Element;->life:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_39

    .line 272
    :cond_35
    :goto_35
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1c

    .line 275
    :cond_39
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 276
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v1, :cond_e2

    .line 277
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v2

    .line 278
    if-eqz v2, :cond_df

    iget-boolean v1, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->police:Z

    if-nez v1, :cond_52

    move-object v1, v0

    check-cast v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModLive;->titanHostile(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;)Z

    move-result v1

    if-eqz v1, :cond_df

    :cond_52
    const/4 v1, 0x1

    :goto_53
    move v2, v1

    move v5, v3

    .line 280
    :goto_55
    if-nez v5, :cond_59

    if-eqz v2, :cond_35

    .line 281
    :cond_59
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v1, v2

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, v3

    .line 282
    mul-float v3, v1, v1

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    .line 283
    mul-float v4, v10, v10

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_35

    mul-float v4, v10, v10

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v4, v6

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v4, v6

    cmpl-float v4, v3, v4

    if-gtz v4, :cond_35

    .line 284
    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 285
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLive;->edgeAt:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v4, Lfr/testudo/spacecorsair/display/hud/Radar;->drawPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v3

    div-float/2addr v1, v6

    mul-float/2addr v1, v12

    div-float/2addr v2, v6

    mul-float/2addr v2, v12

    invoke-virtual {v3, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 286
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLive;->outlevels(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v1

    .line 287
    if-eqz v1, :cond_f8

    const-string v0, "icon_skull"

    :goto_9f
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    .line 288
    if-eqz v0, :cond_35

    .line 289
    if-eqz v1, :cond_fb

    const/high16 v4, 0x41500000    # 13.0f

    :goto_a9
    if-eqz v1, :cond_fe

    const v2, 0x3f555555

    mul-float v3, v4, v2

    .line 290
    :goto_b0
    const v2, 0x3f0ccccd    # 0.55f

    const v7, 0x3ee66666    # 0.45f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v6, v10

    const/high16 v14, 0x40400000    # 3.0f

    mul-float/2addr v14, v10

    div-float/2addr v6, v14

    invoke-static {v13, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    sub-float v6, v8, v6

    mul-float/2addr v6, v7

    add-float v8, v2, v6

    .line 291
    if-eqz v1, :cond_100

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->edgeAt:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLive;->edgeAt:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3e6147ae    # 0.22f

    const v7, 0x3e3851ec    # 0.18f

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModFx;->hudTex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFF)V

    goto/16 :goto_35

    .line 278
    :cond_df
    const/4 v1, 0x0

    goto/16 :goto_53

    .line 279
    :cond_e2
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v1, :cond_12b

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v1

    if-nez v1, :cond_12b

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModBoss;->kindOf(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v1

    if-ltz v1, :cond_f6

    const/4 v1, 0x1

    :goto_f3
    move v5, v1

    goto/16 :goto_55

    :cond_f6
    const/4 v1, 0x0

    goto :goto_f3

    .line 287
    :cond_f8
    const-string v0, "icon_boss"

    goto :goto_9f

    .line 289
    :cond_fb
    const/high16 v4, 0x41400000    # 12.0f

    goto :goto_a9

    :cond_fe
    move v3, v4

    goto :goto_b0

    .line 292
    :cond_100
    if-eqz v5, :cond_117

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->edgeAt:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLive;->edgeAt:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v5, 0x3f47ae14    # 0.78f

    const v6, 0x3ee66666    # 0.45f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModFx;->hudTex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFF)V

    goto/16 :goto_35

    .line 293
    :cond_117
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->edgeAt:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLive;->edgeAt:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3eb33333    # 0.35f

    const/high16 v7, 0x3e800000    # 0.25f

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModFx;->hudTex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFF)V

    goto/16 :goto_35

    :cond_12b
    move v5, v3

    goto/16 :goto_55
.end method

.method static rim(Lfr/testudo/spacecorsair/display/Drawable;Lfr/testudo/spacecorsair/business/Element;FFFFF)V
    .registers 25

    .prologue
    .line 189
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 190
    if-eqz v1, :cond_a

    iget v2, v1, Lfr/testudo/spacecorsair/display/Texture;->name:I

    if-gtz v2, :cond_b

    .line 199
    :cond_a
    :goto_a
    return-void

    .line 192
    :cond_b
    move-object/from16 v0, p0

    instance-of v2, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    if-eqz v2, :cond_82

    move-object/from16 v2, p0

    check-cast v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    check-cast p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->h:F

    move/from16 v16, v2

    move/from16 v17, v3

    .line 194
    :goto_21
    const/4 v2, 0x1

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModFx;->flatNext:Z

    .line 195
    move-object/from16 v0, p1

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p1

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float v4, v17, p2

    mul-float v5, v16, p2

    move-object/from16 v0, p1

    iget v6, v0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    const v7, 0x3f19999a    # 0.6f

    mul-float v10, p6, v7

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-static/range {v1 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->sprTex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    .line 196
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, p2, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    add-float v5, v2, v3

    .line 197
    const/4 v2, 0x1

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModFx;->flatNext:Z

    .line 198
    move-object/from16 v0, p1

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p1

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float v4, v17, v5

    mul-float v5, v5, v16

    move-object/from16 v0, p1

    iget v6, v0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v1 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->sprTex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    goto :goto_a

    .line 193
    :cond_82
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move/from16 v16, v2

    move/from16 v17, v3

    goto :goto_21
.end method

.method static sizeOf(Lfr/testudo/spacecorsair/display/Drawable;)F
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 118
    if-nez p0, :cond_4

    .line 120
    :cond_3
    :goto_3
    return v0

    .line 119
    :cond_4
    instance-of v1, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    if-eqz v1, :cond_16

    move-object v0, p0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    check-cast p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->h:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_3

    .line 120
    :cond_16
    iget-object v1, p0, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v1, p0, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_3
.end method

.method private static skullTag(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;Lfr/testudo/spacecorsair/display/Drawable;)V
    .registers 12

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 252
    instance-of v0, p1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    if-eqz v0, :cond_60

    move-object v0, p1

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    check-cast p1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iget v0, p1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->h:F

    .line 255
    :goto_f
    const/high16 v4, 0x41b00000    # 22.0f

    const v2, 0x3f555555

    mul-float v3, v4, v2

    .line 256
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    div-float/2addr v1, v6

    sub-float/2addr v2, v1

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->level:I

    const/16 v5, 0xa

    if-ge v1, v5, :cond_6d

    const/high16 v1, 0x41200000    # 10.0f

    :goto_24
    sub-float v1, v2, v1

    const/high16 v2, 0x40800000    # 4.0f

    sub-float/2addr v1, v2

    div-float v2, v3, v6

    sub-float/2addr v1, v2

    .line 257
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float/2addr v0, v6

    add-float/2addr v0, v2

    const/high16 v2, 0x41000000    # 8.0f

    add-float/2addr v0, v2

    const v2, 0x3eb33333    # 0.35f

    mul-float/2addr v2, v4

    add-float/2addr v2, v0

    .line 258
    const v0, 0x3f4ccccd    # 0.8f

    const v5, 0x3e4ccccd    # 0.2f

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLive;->nowMs:J

    long-to-double v6, v6

    const-wide v8, 0x406b800000000000L    # 220.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v5, v6

    add-float v8, v0, v5

    .line 259
    const-string v0, "icon_skull"

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3e6147ae    # 0.22f

    const v7, 0x3e3851ec    # 0.18f

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lfr/testudo/spacecorsair/mod/ModLive;->upright(Ljava/lang/String;FFFFFFFFZ)V

    .line 260
    :cond_5f
    return-void

    .line 253
    :cond_60
    iget-object v0, p1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v0, :cond_5f

    iget-object v0, p1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v0, p1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    goto :goto_f

    .line 256
    :cond_6d
    const/high16 v1, 0x41900000    # 18.0f

    goto :goto_24
.end method

.method private static st(Lfr/testudo/spacecorsair/business/Element;)[F
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 311
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->state:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 312
    if-nez v0, :cond_31

    .line 313
    const/4 v0, 0x5

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lfr/testudo/spacecorsair/business/Element;->life:F

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v3, v0, v1

    const/4 v1, 0x2

    aput v3, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    aput v2, v0, v1

    const/4 v1, 0x4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x40191eb851eb851fL    # 6.28

    mul-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, v0, v1

    .line 314
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->state:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :cond_31
    return-object v0
.end method

.method static titanHostile(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 129
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    if-nez v1, :cond_f

    iget-object v1, p1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModRep;->rank(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v0, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static under(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 21

    .prologue
    .line 140
    move-object/from16 v0, p0

    instance-of v4, v0, Lfr/testudo/spacecorsair/business/loot/LootElement;

    if-eqz v4, :cond_c

    .line 141
    check-cast p0, Lfr/testudo/spacecorsair/business/loot/LootElement;

    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModLive;->lootBeam(Lfr/testudo/spacecorsair/business/loot/LootElement;)V

    .line 185
    :cond_b
    :goto_b
    return-void

    .line 144
    :cond_c
    move-object/from16 v0, p0

    instance-of v4, v0, Lfr/testudo/spacecorsair/mod/ModWreck;

    if-nez v4, :cond_b

    .line 145
    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/business/Element;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v15

    .line 146
    if-eqz v15, :cond_b

    .line 147
    invoke-static {v15}, Lfr/testudo/spacecorsair/mod/ModLive;->sizeOf(Lfr/testudo/spacecorsair/display/Drawable;)F

    move-result v16

    .line 148
    const/4 v4, 0x0

    cmpg-float v4, v16, v4

    if-lez v4, :cond_b

    .line 149
    sget-wide v18, Lfr/testudo/spacecorsair/mod/ModLive;->nowMs:J

    .line 150
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModV34;->shieldTick(Lfr/testudo/spacecorsair/business/Element;J)V

    .line 151
    move-object/from16 v0, p0

    instance-of v4, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v4, :cond_10d

    .line 152
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v17

    .line 153
    if-eqz v17, :cond_10d

    .line 155
    const v7, 0x44f3bfff    # 1949.9999f

    move-object/from16 v0, p0

    iget v0, v0, Lfr/testudo/spacecorsair/business/Element;->a:F

    move/from16 v16, v0

    .line 156
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLive;->SIG:[Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->factionIndex(Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;)I

    move-result v5

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-wide/from16 v0, v18

    long-to-float v8, v0

    const/high16 v9, 0x42b40000    # 90.0f

    div-float/2addr v8, v9

    const/high16 v9, 0x43b40000    # 360.0f

    rem-float v9, v8, v9

    move-object/from16 v0, v17

    iget-object v8, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v10, v8, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->r:F

    move-object/from16 v0, v17

    iget-object v8, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v11, v8, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->g:F

    move-object/from16 v0, v17

    iget-object v8, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v12, v8, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->b:F

    const v8, 0x3f0ccccd    # 0.55f

    mul-float v13, v8, v16

    const/4 v14, 0x1

    move v8, v7

    invoke-static/range {v4 .. v14}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    move-object/from16 v4, p0

    .line 157
    check-cast v4, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lfr/testudo/spacecorsair/mod/ModLive;->titanHostile(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;)Z

    move-result v4

    if-eqz v4, :cond_d1

    .line 158
    const-string v4, "marker_hostile"

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v8, 0x3f733333    # 0.95f

    mul-float v17, v7, v8

    const v8, 0x3f733333    # 0.95f

    mul-float/2addr v8, v7

    move-wide/from16 v0, v18

    long-to-float v7, v0

    const/high16 v9, 0x42700000    # 60.0f

    div-float/2addr v7, v9

    const/high16 v9, 0x43b40000    # 360.0f

    rem-float v9, v7, v9

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3e6147ae    # 0.22f

    const v12, 0x3e19999a    # 0.15f

    const v7, 0x3ee66666    # 0.45f

    mul-float v13, v7, v16

    const/4 v14, 0x1

    move/from16 v7, v17

    invoke-static/range {v4 .. v14}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    .line 159
    const v6, 0x3f847ae1    # 1.035f

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3e99999a    # 0.3f

    const v9, 0x3e3851ec    # 0.18f

    const v4, 0x3f19999a    # 0.6f

    mul-float v10, v4, v16

    move-object v4, v15

    move-object/from16 v5, p0

    invoke-static/range {v4 .. v10}, Lfr/testudo/spacecorsair/mod/ModLive;->rim(Lfr/testudo/spacecorsair/display/Drawable;Lfr/testudo/spacecorsair/business/Element;FFFFF)V

    goto/16 :goto_b

    .line 160
    :cond_d1
    move-object/from16 v0, v17

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v4, v4, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModRep;->rank(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_f5

    .line 161
    const v6, 0x3f847ae1    # 1.035f

    const v7, 0x3e99999a    # 0.3f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f000000    # 0.5f

    const v4, 0x3ee66666    # 0.45f

    mul-float v10, v4, v16

    move-object v4, v15

    move-object/from16 v5, p0

    invoke-static/range {v4 .. v10}, Lfr/testudo/spacecorsair/mod/ModLive;->rim(Lfr/testudo/spacecorsair/display/Drawable;Lfr/testudo/spacecorsair/business/Element;FFFFF)V

    goto/16 :goto_b

    .line 163
    :cond_f5
    const v6, 0x3f847ae1    # 1.035f

    const v7, 0x3f59999a    # 0.85f

    const v8, 0x3f666666    # 0.9f

    const/high16 v9, 0x3f800000    # 1.0f

    const v4, 0x3e99999a    # 0.3f

    mul-float v10, v4, v16

    move-object v4, v15

    move-object/from16 v5, p0

    invoke-static/range {v4 .. v10}, Lfr/testudo/spacecorsair/mod/ModLive;->rim(Lfr/testudo/spacecorsair/display/Drawable;Lfr/testudo/spacecorsair/business/Element;FFFFF)V

    goto/16 :goto_b

    .line 168
    :cond_10d
    move-object/from16 v0, p0

    instance-of v4, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v4, :cond_14a

    move-object/from16 v4, p0

    .line 170
    check-cast v4, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-object v4, v4, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    .line 171
    if-eqz v4, :cond_134

    iget-boolean v4, v4, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v4, :cond_134

    const v6, 0x3f87ae14    # 1.06f

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3e99999a    # 0.3f

    const v9, 0x3e3851ec    # 0.18f

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v4, v15

    move-object/from16 v5, p0

    invoke-static/range {v4 .. v10}, Lfr/testudo/spacecorsair/mod/ModLive;->rim(Lfr/testudo/spacecorsair/display/Drawable;Lfr/testudo/spacecorsair/business/Element;FFFFF)V

    goto/16 :goto_b

    .line 172
    :cond_134
    const v6, 0x3f851eb8    # 1.04f

    const v7, 0x3f59999a    # 0.85f

    const v8, 0x3f666666    # 0.9f

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3e6147ae    # 0.22f

    move-object v4, v15

    move-object/from16 v5, p0

    invoke-static/range {v4 .. v10}, Lfr/testudo/spacecorsair/mod/ModLive;->rim(Lfr/testudo/spacecorsair/display/Drawable;Lfr/testudo/spacecorsair/business/Element;FFFFF)V

    goto/16 :goto_b

    .line 175
    :cond_14a
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModLive;->hostileEnemy(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 176
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->kindOf(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v17

    .line 177
    if-ltz v17, :cond_1b9

    .line 178
    const v4, 0x3ff33333    # 1.9f

    mul-float v7, v16, v4

    .line 179
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLive;->SIGIL:[Ljava/lang/String;

    aget-object v4, v4, v17

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-wide/from16 v0, v18

    long-to-float v8, v0

    const/high16 v9, 0x42340000    # 45.0f

    div-float/2addr v8, v9

    const/high16 v9, 0x43b40000    # 360.0f

    rem-float v9, v8, v9

    const v10, 0x3f47ae14    # 0.78f

    const v11, 0x3ec28f5c    # 0.38f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f400000    # 0.75f

    const/4 v14, 0x1

    move v8, v7

    invoke-static/range {v4 .. v14}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    .line 180
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLive;->SIGIL:[Ljava/lang/String;

    aget-object v4, v4, v17

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v8, 0x3f51eb85    # 0.82f

    mul-float v17, v7, v8

    const v8, 0x3f51eb85    # 0.82f

    mul-float/2addr v8, v7

    move-wide/from16 v0, v18

    long-to-float v7, v0

    const/high16 v9, 0x428c0000    # 70.0f

    div-float/2addr v7, v9

    neg-float v7, v7

    const/high16 v9, 0x43b40000    # 360.0f

    rem-float v9, v7, v9

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f47ae14    # 0.78f

    const v12, 0x3e99999a    # 0.3f

    const v13, 0x3eb33333    # 0.35f

    const/4 v14, 0x1

    move/from16 v7, v17

    invoke-static/range {v4 .. v14}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    .line 182
    :cond_1b9
    const v4, 0x3fcccccd    # 1.6f

    mul-float v7, v16, v4

    .line 183
    const-string v4, "marker_hostile"

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-wide/from16 v0, v18

    long-to-float v8, v0

    const/high16 v9, 0x42a00000    # 80.0f

    div-float/2addr v8, v9

    const/high16 v9, 0x43b40000    # 360.0f

    rem-float v9, v8, v9

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3e800000    # 0.25f

    const v12, 0x3e3851ec    # 0.18f

    const v13, 0x3ed70a3d    # 0.42f

    const/4 v14, 0x1

    move v8, v7

    invoke-static/range {v4 .. v14}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    .line 184
    const v6, 0x3f8a3d71    # 1.08f

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3ed70a3d    # 0.42f

    const v9, 0x3e6147ae    # 0.22f

    const v10, 0x3f19999a    # 0.6f

    move-object v4, v15

    move-object/from16 v5, p0

    invoke-static/range {v4 .. v10}, Lfr/testudo/spacecorsair/mod/ModLive;->rim(Lfr/testudo/spacecorsair/display/Drawable;Lfr/testudo/spacecorsair/business/Element;FFFFF)V

    goto/16 :goto_b
.end method

.method static upright(Ljava/lang/String;FFFFFFFFZ)V
    .registers 25

    .prologue
    .line 134
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_22

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v0 .. v14}, Lfr/testudo/spacecorsair/mod/ModFx;->sprTex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    .line 136
    :cond_22
    return-void
.end method
