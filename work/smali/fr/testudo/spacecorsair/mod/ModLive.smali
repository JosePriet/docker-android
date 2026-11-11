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

.field private static final SIG:[Ljava/lang/String;

.field private static final SIGIL:[Ljava/lang/String;

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

.field private static final state:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
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

    .line 191
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->state:Ljava/util/WeakHashMap;

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->ALIEN:Ljava/util/HashMap;

    .line 195
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

    :goto_3e
    if-ge v0, v3, :cond_4c

    aget-object v4, v2, v0

    .line 196
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLive;->ALIEN:Ljava/util/HashMap;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 248
    :cond_4c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->NAMES:Ljava/util/HashMap;

    .line 249
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->SIG:[Ljava/lang/String;

    .line 250
    new-array v0, v8, [Ljava/lang/String;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->SIGIL:[Ljava/lang/String;

    new-array v0, v8, [Ljava/lang/String;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->ENRAGE:[Ljava/lang/String;

    move v0, v1

    .line 252
    :goto_63
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLive;->SIG:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_88

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

    goto :goto_63

    .line 253
    :cond_88
    :goto_88
    if-ge v1, v8, :cond_c3

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

    goto :goto_88

    .line 337
    :cond_c3
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->tmp:Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->tmp2:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 346
    new-array v0, v8, [Ljava/lang/String;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->plateText:[Ljava/lang/String;

    .line 347
    new-array v0, v8, [I

    fill-array-data v0, :array_12a

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->plateLevel:[I

    .line 348
    new-array v0, v8, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->plateHalf:[F

    .line 390
    new-array v0, v7, [Ljava/lang/String;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxTex:[Ljava/lang/String;

    .line 391
    new-array v0, v7, [I

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxCols:[I

    new-array v0, v7, [I

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxFrames:[I

    .line 392
    new-array v0, v7, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxX:[F

    new-array v0, v7, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxY:[F

    new-array v0, v7, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxSize:[F

    new-array v0, v7, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxRot:[F

    .line 393
    new-array v0, v7, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxR:[F

    new-array v0, v7, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxG:[F

    new-array v0, v7, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxB:[F

    .line 394
    new-array v0, v7, [J

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxStart:[J

    new-array v0, v7, [J

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxDur:[J

    .line 395
    new-array v0, v7, [Z

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxAdd:[Z

    .line 396
    new-array v0, v7, [I

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxCell:[I

    new-array v0, v7, [I

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxRows:[I

    .line 397
    new-array v0, v7, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxVX:[F

    new-array v0, v7, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxVY:[F

    new-array v0, v7, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxSpin:[F

    return-void

    .line 347
    nop

    :array_12a
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
    .line 200
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
    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    rem-long/2addr v0, v2

    long-to-float v0, v0

    .line 220
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
    .registers 17

    .prologue
    .line 351
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModLive;->sizeOf(Lfr/testudo/spacecorsair/display/Drawable;)F

    move-result v10

    .line 352
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v11, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v10

    add-float/2addr v0, v1

    const/high16 v1, 0x42380000    # 46.0f

    add-float v12, v0, v1

    .line 353
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->plateText:[Ljava/lang/String;

    aget-object v0, v0, p2

    if-eqz v0, :cond_22

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->plateLevel:[I

    aget v0, v0, p2

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->level:I

    if-eq v0, v1, :cond_62

    .line 354
    :cond_22
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->plateText:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p2 .. p2}, Lfr/testudo/spacecorsair/mod/ModBoss;->displayName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->spanish()Z

    move-result v0

    if-eqz v0, :cond_113

    const-string v0, "  Niv "

    :goto_39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->level:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, p2

    .line 355
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->plateLevel:[I

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->level:I

    aput v1, v0, p2

    .line 356
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->plateHalf:[F

    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextMedium:Lfr/testudo/spacecorsair/textengine/GLText;

    if-nez v0, :cond_117

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->plateText:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    int-to-float v0, v0

    :goto_60
    aput v0, v1, p2

    .line 358
    :cond_62
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->plateHalf:[F

    aget v13, v0, p2

    .line 359
    const/high16 v0, 0x438c0000    # 280.0f

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v13

    const/high16 v2, 0x43160000    # 150.0f

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 360
    const-string v0, "ui_boss_plate"

    const/high16 v1, 0x41a00000    # 20.0f

    add-float/2addr v1, v11

    const/high16 v2, 0x41200000    # 10.0f

    add-float/2addr v2, v12

    const/high16 v4, 0x41000000    # 8.0f

    div-float v4, v3, v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3f733333    # 0.95f

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lfr/testudo/spacecorsair/mod/ModLive;->upright(Ljava/lang/String;FFFFFFFFZ)V

    .line 361
    const/high16 v3, 0x42800000    # 64.0f

    .line 362
    const-string v0, "icon_boss"

    sub-float v1, v11, v13

    const/high16 v2, 0x41d00000    # 26.0f

    sub-float/2addr v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    add-float/2addr v2, v12

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move v4, v3

    invoke-static/range {v0 .. v9}, Lfr/testudo/spacecorsair/mod/ModLive;->upright(Ljava/lang/String;FFFFFFFFZ)V

    .line 363
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->tmp2:Lfr/testudo/spacecorsair/engine/Vector2;

    sub-float v1, v11, v13

    const/high16 v2, 0x41600000    # 14.0f

    add-float/2addr v1, v2

    invoke-virtual {v0, v1, v12}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 364
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->tmp2:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLive;->plateText:[Ljava/lang/String;

    aget-object v3, v3, p2

    const v4, 0x3f47ae14    # 0.78f

    const v5, 0x3ee66666    # 0.45f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->MEDIUM:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 365
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->enragedOf(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_112

    .line 366
    const v0, 0x3f0ccccd    # 0.55f

    const v1, 0x3ee66666    # 0.45f

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLive;->nowMs:J

    long-to-double v2, v2

    const-wide v4, 0x4061800000000000L    # 140.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    add-float v9, v0, v1

    .line 367
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->ENRAGE:[Ljava/lang/String;

    aget-object v0, v0, p2

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v3, 0x3fd9999a    # 1.7f

    mul-float/2addr v3, v10

    const v4, 0x3fd9999a    # 1.7f

    mul-float/2addr v4, v10

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLive;->nowMs:J

    long-to-float v5, v6

    const/high16 v6, 0x41f00000    # 30.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x43b40000    # 360.0f

    rem-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3eb33333    # 0.35f

    const v8, 0x3f59999a    # 0.85f

    const v10, 0x3f266666    # 0.65f

    mul-float/2addr v9, v10

    const/4 v10, 0x1

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    .line 369
    :cond_112
    return-void

    .line 354
    :cond_113
    const-string v0, "  Lv "

    goto/16 :goto_39

    .line 356
    :cond_117
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextMedium:Lfr/testudo/spacecorsair/textengine/GLText;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLive;->plateText:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    goto/16 :goto_60
.end method

.method static chunk(Ljava/lang/String;IIIFFFJFF)V
    .registers 24

    .prologue
    .line 402
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

    .line 403
    sget v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxNext:I

    add-int/lit8 v0, v0, 0x40

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x40

    .line 404
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxCell:[I

    aput p3, v1, v0

    .line 405
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxRows:[I

    aput p2, v1, v0

    .line 406
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxVX:[F

    aput p9, v1, v0

    .line 407
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxVY:[F

    aput p10, v1, v0

    .line 408
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxSpin:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v2, v4

    double-to-float v2, v2

    const/high16 v3, 0x43700000    # 240.0f

    mul-float/2addr v2, v3

    aput v2, v1, v0

    .line 409
    return-void
.end method

.method private static damage(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FF)V
    .registers 26

    .prologue
    .line 307
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

    .line 308
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModLive;->st(Lfr/testudo/spacecorsair/business/Element;)[F

    move-result-object v18

    .line 309
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

    .line 310
    :goto_36
    invoke-static/range {p1 .. p1}, Lfr/testudo/spacecorsair/mod/ModLive;->alienArt(Ljava/lang/String;)Z

    move-result v19

    .line 312
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

    .line 313
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

    .line 314
    if-eqz v19, :cond_152

    .line 315
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

    .line 323
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

    .line 324
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

    .line 325
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

    .line 328
    :cond_e1
    const/4 v2, 0x3

    aget v2, v18, v2

    sub-float v2, v17, v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLive;->normDelta(F)F

    move-result v2

    .line 329
    const/4 v3, 0x3

    aput v17, v18, v3

    .line 330
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

    .line 331
    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1bd

    const/high16 v2, 0x3f800000    # 1.0f

    .line 332
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

    .line 333
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

    .line 335
    :cond_145
    return-void

    .line 309
    :cond_146
    const/high16 v2, 0x3f800000    # 1.0f

    move v14, v2

    goto/16 :goto_36

    .line 312
    :cond_14b
    const-wide v2, 0x3fc1eb851eb851ecL    # 0.14

    goto/16 :goto_4f

    .line 317
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

    .line 318
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

    .line 319
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

    .line 331
    :cond_1bd
    const/high16 v2, -0x40800000    # -1.0f

    goto/16 :goto_10e
.end method

.method public static draw(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 3

    .prologue
    .line 61
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/Element;->isParticule:Z

    if-eqz v0, :cond_16

    .line 62
    :cond_8
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    if-eqz v0, :cond_12

    move-object v0, p0

    check-cast v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModAnchor;->projectile(Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 63
    :cond_12
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/Element;->registerYourselfToDrawQueue()V

    .line 87
    :cond_15
    :goto_15
    return-void

    .line 66
    :cond_16
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v0, :cond_42

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v0, :cond_42

    const/4 v0, 0x1

    .line 67
    :goto_23
    if-eqz v0, :cond_31

    .line 69
    :try_start_25
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLive;->frame()V

    .line 70
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLive;->under(Lfr/testudo/spacecorsair/business/Element;)V

    .line 71
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->under(Lfr/testudo/spacecorsair/business/Element;)V

    .line 72
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModWings;->underEnemy(Lfr/testudo/spacecorsair/business/Element;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_31} :catch_44

    .line 77
    :cond_31
    :goto_31
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/Element;->registerYourselfToDrawQueue()V

    .line 78
    if-eqz v0, :cond_15

    .line 80
    :try_start_36
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLive;->over(Lfr/testudo/spacecorsair/business/Element;)V

    .line 81
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->lights(Lfr/testudo/spacecorsair/business/Element;)V

    .line 82
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModStationGuns;->draw(Lfr/testudo/spacecorsair/business/Element;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_3f} :catch_40

    goto :goto_15

    .line 83
    :catch_40
    move-exception v0

    goto :goto_15

    .line 66
    :cond_42
    const/4 v0, 0x0

    goto :goto_23

    .line 73
    :catch_44
    move-exception v1

    goto :goto_31
.end method

.method private static drawFx()V
    .registers 16

    .prologue
    .line 428
    sget-wide v14, Lfr/testudo/spacecorsair/mod/ModLive;->nowMs:J

    .line 429
    const/4 v0, 0x0

    move v13, v0

    :goto_4
    const/16 v0, 0x40

    if-ge v13, v0, :cond_b5

    .line 430
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxTex:[Ljava/lang/String;

    aget-object v0, v0, v13

    if-nez v0, :cond_12

    .line 429
    :goto_e
    add-int/lit8 v0, v13, 0x1

    move v13, v0

    goto :goto_4

    .line 431
    :cond_12
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxStart:[J

    aget-wide v0, v0, v13

    sub-long v0, v14, v0

    .line 432
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_26

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLive;->fxDur:[J

    aget-wide v2, v2, v13

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2c

    .line 433
    :cond_26
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxTex:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, v13

    goto :goto_e

    .line 436
    :cond_2c
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLive;->fxCell:[I

    aget v2, v2, v13

    if-ltz v2, :cond_a5

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLive;->fxCell:[I

    aget v3, v2, v13

    .line 437
    :goto_36
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLive;->fxRows:[I

    aget v2, v2, v13

    .line 438
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

    .line 439
    :goto_61
    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v7, v0, v1

    .line 440
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

    .line 436
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

    .line 438
    :cond_b2
    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_61

    .line 443
    :cond_b5
    return-void
.end method

.method static frame()V
    .registers 2

    .prologue
    .line 46
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLive;->frameDone:Z

    if-eqz v0, :cond_5

    .line 56
    :goto_4
    return-void

    .line 47
    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLive;->frameDone:Z

    .line 48
    const/16 v0, 0x3e8

    sput v0, Lfr/testudo/spacecorsair/mod/ModFx;->budget:I

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLive;->nowMs:J

    .line 50
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLive;->nowMs:J

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModV34;->incomeTick(J)V

    .line 52
    :try_start_17
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLive;->drawFx()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_4

    .line 53
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
    return-void
.end method

.method static fx(Ljava/lang/String;IIFFFJFFFZ)V
    .registers 18

    .prologue
    .line 413
    sget v0, Lfr/testudo/spacecorsair/mod/ModLive;->fxNext:I

    .line 414
    sget v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxNext:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x40

    sput v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxNext:I

    .line 415
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxTex:[Ljava/lang/String;

    aput-object p0, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxCols:[I

    aput p1, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxFrames:[I

    aput p2, v1, v0

    .line 416
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

    .line 417
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxR:[F

    aput p8, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxG:[F

    aput p9, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxB:[F

    aput p10, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxAdd:[Z

    aput-boolean p11, v1, v0

    .line 418
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxStart:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 419
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxDur:[J

    const-wide/16 v2, 0x3c

    invoke-static {v2, v3, p6, p7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 420
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxCell:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 421
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxRows:[I

    add-int v2, p2, p1

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v2, p1

    aput v2, v1, v0

    .line 422
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxVX:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 423
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxVY:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 424
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->fxSpin:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 425
    return-void
.end method

.method public static hit(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)F
    .registers 18

    .prologue
    const/4 v3, 0x0

    .line 451
    .line 453
    :try_start_1
    invoke-static/range {p0 .. p2}, Lfr/testudo/spacecorsair/mod/ModAnchor;->beam(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)F

    move-result v2

    .line 454
    cmpg-float v4, v2, v3

    if-gtz v4, :cond_10

    cmpl-float v4, p1, v3

    if-lez v4, :cond_10

    move/from16 p1, v3

    .line 480
    :goto_f
    return p1

    .line 455
    :cond_10
    move-object/from16 v0, p2

    invoke-static {p0, v2, v0}, Lfr/testudo/spacecorsair/mod/ModV34;->damage(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)F

    move-result v2

    .line 456
    move-object/from16 v0, p2

    invoke-static {p0, v2, v0}, Lfr/testudo/spacecorsair/mod/ModV35;->damage(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)F

    move-result v2

    .line 457
    move-object/from16 v0, p2

    invoke-static {p0, v2, v0}, Lfr/testudo/spacecorsair/mod/ModBoss;->damageIn(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)F

    move-result v2

    .line 458
    move-object/from16 v0, p2

    invoke-static {p0, v2, v0}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->damageIn(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)F

    move-result v2

    .line 459
    move-object/from16 v0, p2

    invoke-static {p0, v2, v0}, Lfr/testudo/spacecorsair/mod/ModV34;->shieldAbsorb(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)F

    move-result v2

    .line 460
    move-object/from16 v0, p2

    invoke-static {p0, v2, v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->hit(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)F

    move-result v14

    .line 461
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLive;->onHit(Lfr/testudo/spacecorsair/business/Element;)V

    .line 462
    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v2, :cond_79

    if-eqz p2, :cond_79

    .line 463
    move-object v0, p0

    check-cast v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-object v2, v0

    .line 464
    invoke-static {v2, v14}, Lfr/testudo/spacecorsair/mod/ModLevFx;->hit(Lfr/testudo/spacecorsair/business/player/PlayerShip;F)V

    .line 465
    iget-object v4, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    if-eqz v4, :cond_73

    iget-object v4, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v4, v4, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    cmpl-float v3, v4, v3

    if-lez v3, :cond_73

    .line 466
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

    .line 467
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModShield;->impact(F)V

    .line 468
    move-object/from16 v0, p2

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v14}, Lfr/testudo/spacecorsair/mod/ModMonolith;->hit(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/engine/Vector2;F)V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_73} :catch_cc

    :cond_73
    :goto_73
    move/from16 p1, v14

    .line 479
    :goto_75
    invoke-static/range {p0 .. p2}, Lfr/testudo/spacecorsair/mod/ModQol;->onHit(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    goto :goto_f

    .line 470
    :cond_79
    if-eqz p2, :cond_73

    cmpl-float v2, p1, v3

    if-lez v2, :cond_73

    .line 471
    :try_start_7f
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/Element;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v7

    .line 472
    if-eqz v7, :cond_73

    iget-object v2, v7, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->artOf(Lfr/testudo/spacecorsair/display/Texture;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLive;->alienArt(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x3fe3333333333333L    # 0.6

    cmpg-double v2, v2, v4

    if-gez v2, :cond_73

    .line 473
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
    :try_end_cb
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_cb} :catch_cc

    goto :goto_73

    .line 476
    :catch_cc
    move-exception v2

    goto :goto_75
.end method

.method private static hostileEnemy(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 2

    .prologue
    .line 97
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
    .line 271
    invoke-static/range {p1 .. p1}, Lfr/testudo/spacecorsair/mod/ModLive;->names(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 272
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

    .line 273
    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLive;->nowMs:J

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-eqz v2, :cond_19f

    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLive;->nowMs:J

    move-wide v14, v8

    .line 274
    :goto_1f
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModLive;->st(Lfr/testudo/spacecorsair/business/Element;)[F

    move-result-object v16

    .line 275
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

    .line 276
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

    .line 277
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

    .line 278
    :cond_69
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/business/Element;->life:F

    aput v6, v16, v5

    .line 279
    invoke-static/range {p1 .. p1}, Lfr/testudo/spacecorsair/mod/ModLive;->alienArt(Ljava/lang/String;)Z

    move-result v17

    .line 280
    const/4 v5, 0x4

    aget v18, v16, v5

    .line 282
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

    .line 283
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

    .line 284
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

    .line 285
    :goto_bc
    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    .line 286
    if-eqz p3, :cond_cb

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f4ccccd    # 0.8f

    const/high16 v10, 0x3f400000    # 0.75f

    .line 287
    :cond_cb
    if-nez p3, :cond_d8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v2, :cond_d8

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->lightMul()F

    move-result v2

    mul-float/2addr v11, v2

    .line 288
    :cond_d8
    const/4 v2, 0x0

    aget-object v2, v13, v2

    const/4 v12, 0x1

    move/from16 v5, p2

    move/from16 v6, p2

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    .line 290
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

    .line 291
    if-nez p3, :cond_106

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v2, :cond_106

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->engineMul()F

    move-result v2

    mul-float/2addr v11, v2

    .line 292
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

    .line 294
    :goto_11b
    if-eqz v17, :cond_18e

    .line 296
    const-wide/16 v8, 0x78

    div-long v8, v14, v8

    const/high16 v2, 0x41200000    # 10.0f

    mul-float v2, v2, v18

    float-to-long v10, v2

    add-long/2addr v8, v10

    const-wide/16 v10, 0x8

    rem-long/2addr v8, v10

    long-to-int v5, v8

    .line 297
    const/4 v2, 0x2

    aget v2, v16, v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLive;->before(F)Z

    move-result v2

    if-eqz v2, :cond_1d9

    const v2, 0x3f59999a    # 0.85f

    move v6, v2

    .line 298
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

    .line 299
    const/4 v2, 0x1

    aget v2, v16, v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLive;->before(F)Z

    move-result v2

    if-eqz v2, :cond_18e

    .line 300
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

    .line 301
    const/16 v2, 0xa

    aget-object v2, v13, v2

    const v8, 0x3f0ccccd    # 0.55f

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3f19999a    # 0.6f

    const/4 v12, 0x1

    move/from16 v5, p2

    move/from16 v6, p2

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    .line 304
    :cond_18e
    return-void

    .line 272
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

    .line 273
    :cond_19f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-wide v14, v8

    goto/16 :goto_1f

    .line 275
    :cond_1a6
    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_40

    .line 276
    :cond_1aa
    const/4 v5, 0x0

    goto/16 :goto_58

    .line 282
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

    .line 293
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

    .line 297
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

    .line 228
    iget-object v0, p1, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->artOf(Lfr/testudo/spacecorsair/display/Texture;)Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModLive;->sizeOf(Lfr/testudo/spacecorsair/display/Drawable;)F

    move-result v2

    .line 230
    const/4 v0, 0x0

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_11

    .line 245
    :cond_10
    :goto_10
    return-void

    .line 232
    :cond_11
    if-nez v1, :cond_1c

    .line 233
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v0, :cond_10

    const/4 v0, 0x0

    invoke-static {p0, v0, v2, p3}, Lfr/testudo/spacecorsair/mod/ModLive;->damage(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FF)V

    goto :goto_10

    .line 237
    :cond_1c
    const-string v0, "orig_alien_rat0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 239
    :try_start_24
    sput-boolean p4, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    .line 240
    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModLive;->layers(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FZFZ)V
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_33

    .line 242
    sput-boolean v6, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    .line 244
    invoke-static {p0, v1, v2, p3}, Lfr/testudo/spacecorsair/mod/ModLive;->damage(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FF)V

    goto :goto_10

    .line 242
    :catchall_33
    move-exception v0

    sput-boolean v6, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    .line 243
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

    .line 373
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    if-nez v2, :cond_f

    .line 386
    :cond_e
    :goto_e
    return-void

    .line 374
    :cond_f
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v2

    .line 375
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getRaretySort()I

    move-result v3

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getRaretySort()I

    move-result v4

    if-lt v3, v4, :cond_e

    .line 377
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLive$1;->$SwitchMap$fr$testudo$spacecorsair$business$loot$LootRarety:[I

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_72

    move v8, v0

    move v7, v1

    move v6, v12

    .line 382
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

    .line 383
    const/high16 v4, 0x44020000    # 520.0f

    .line 384
    const-string v0, "loot_beam"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    .line 385
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

    .line 378
    :pswitch_64
    const v6, 0x3eb33333    # 0.35f

    const v7, 0x3f19999a    # 0.6f

    move v8, v12

    goto :goto_31

    .line 379
    :pswitch_6c
    const v7, 0x3ecccccd    # 0.4f

    move v8, v12

    move v6, v9

    goto :goto_31

    .line 377
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

    .line 258
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->NAMES:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 259
    if-nez v0, :cond_7a

    .line 260
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 261
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

    .line 262
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

    .line 263
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

    .line 264
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

    .line 265
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->NAMES:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    :cond_7a
    return-object v0
.end method

.method static normDelta(F)F
    .registers 4

    .prologue
    const/high16 v2, 0x43b40000    # 360.0f

    .line 340
    move v0, p0

    :goto_3
    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_b

    sub-float/2addr v0, v2

    goto :goto_3

    .line 341
    :cond_b
    :goto_b
    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_13

    add-float/2addr v0, v2

    goto :goto_b

    .line 342
    :cond_13
    return v0
.end method

.method static onHit(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 7

    .prologue
    .line 214
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->state:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 215
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

    .line 216
    :cond_19
    return-void
.end method

.method private static over(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 176
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;

    if-nez v0, :cond_9

    instance-of v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;

    if-eqz v0, :cond_a

    .line 188
    :cond_9
    :goto_9
    return-void

    .line 177
    :cond_a
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/Element;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v2

    .line 178
    if-eqz v2, :cond_9

    .line 179
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLive;->hostileEnemy(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v3

    .line 180
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_39

    move-object v0, p0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->isPousee:Z

    .line 182
    :goto_1d
    if-eqz v0, :cond_48

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_21
    invoke-static {p0, v2, v3, v0, v1}, Lfr/testudo/spacecorsair/mod/ModLive;->living(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/display/Drawable;ZFZ)V

    .line 183
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLive;->sizeOf(Lfr/testudo/spacecorsair/display/Drawable;)F

    move-result v0

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModV34;->shieldDraw(Lfr/testudo/spacecorsair/business/Element;F)V

    .line 184
    if-eqz v3, :cond_9

    .line 185
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->kindOf(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v0

    .line 186
    if-ltz v0, :cond_9

    check-cast p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-static {p0, v2, v0}, Lfr/testudo/spacecorsair/mod/ModLive;->bossPlate(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;Lfr/testudo/spacecorsair/display/Drawable;I)V

    goto :goto_9

    .line 181
    :cond_39
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_46

    move-object v0, p0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->isPousee:Z

    if-eqz v0, :cond_46

    const/4 v0, 0x1

    goto :goto_1d

    :cond_46
    move v0, v1

    goto :goto_1d

    .line 182
    :cond_48
    const v0, 0x3e19999a    # 0.15f

    goto :goto_21
.end method

.method static rim(Lfr/testudo/spacecorsair/display/Drawable;Lfr/testudo/spacecorsair/business/Element;FFFFF)V
    .registers 25

    .prologue
    .line 162
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 163
    if-eqz v1, :cond_a

    iget v2, v1, Lfr/testudo/spacecorsair/display/Texture;->name:I

    if-gtz v2, :cond_b

    .line 172
    :cond_a
    :goto_a
    return-void

    .line 165
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

    .line 167
    :goto_21
    const/4 v2, 0x1

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModFx;->flatNext:Z

    .line 168
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

    .line 169
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, p2, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    add-float v5, v2, v3

    .line 170
    const/4 v2, 0x1

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModFx;->flatNext:Z

    .line 171
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

    .line 166
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

    .line 91
    if-nez p0, :cond_4

    .line 93
    :cond_3
    :goto_3
    return v0

    .line 92
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

    .line 93
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

.method private static st(Lfr/testudo/spacecorsair/business/Element;)[F
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 204
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLive;->state:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 205
    if-nez v0, :cond_31

    .line 206
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

    .line 207
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLive;->state:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_31
    return-object v0
.end method

.method static titanHostile(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 102
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
    .line 113
    move-object/from16 v0, p0

    instance-of v4, v0, Lfr/testudo/spacecorsair/business/loot/LootElement;

    if-eqz v4, :cond_c

    .line 114
    check-cast p0, Lfr/testudo/spacecorsair/business/loot/LootElement;

    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModLive;->lootBeam(Lfr/testudo/spacecorsair/business/loot/LootElement;)V

    .line 158
    :cond_b
    :goto_b
    return-void

    .line 117
    :cond_c
    move-object/from16 v0, p0

    instance-of v4, v0, Lfr/testudo/spacecorsair/mod/ModWreck;

    if-nez v4, :cond_b

    .line 118
    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/business/Element;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v15

    .line 119
    if-eqz v15, :cond_b

    .line 120
    invoke-static {v15}, Lfr/testudo/spacecorsair/mod/ModLive;->sizeOf(Lfr/testudo/spacecorsair/display/Drawable;)F

    move-result v16

    .line 121
    const/4 v4, 0x0

    cmpg-float v4, v16, v4

    if-lez v4, :cond_b

    .line 122
    sget-wide v18, Lfr/testudo/spacecorsair/mod/ModLive;->nowMs:J

    .line 123
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModV34;->shieldTick(Lfr/testudo/spacecorsair/business/Element;J)V

    .line 124
    move-object/from16 v0, p0

    instance-of v4, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v4, :cond_10d

    .line 125
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v17

    .line 126
    if-eqz v17, :cond_10d

    .line 128
    const v7, 0x44f3bfff    # 1949.9999f

    move-object/from16 v0, p0

    iget v0, v0, Lfr/testudo/spacecorsair/business/Element;->a:F

    move/from16 v16, v0

    .line 129
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

    .line 130
    check-cast v4, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lfr/testudo/spacecorsair/mod/ModLive;->titanHostile(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;)Z

    move-result v4

    if-eqz v4, :cond_d1

    .line 131
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

    .line 132
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

    .line 133
    :cond_d1
    move-object/from16 v0, v17

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v4, v4, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModRep;->rank(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_f5

    .line 134
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

    .line 136
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

    .line 141
    :cond_10d
    move-object/from16 v0, p0

    instance-of v4, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v4, :cond_14a

    move-object/from16 v4, p0

    .line 143
    check-cast v4, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-object v4, v4, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    .line 144
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

    .line 145
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

    .line 148
    :cond_14a
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModLive;->hostileEnemy(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 149
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->kindOf(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v17

    .line 150
    if-ltz v17, :cond_1b9

    .line 151
    const v4, 0x3ff33333    # 1.9f

    mul-float v7, v16, v4

    .line 152
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

    .line 153
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

    .line 155
    :cond_1b9
    const v4, 0x3fcccccd    # 1.6f

    mul-float v7, v16, v4

    .line 156
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

    .line 157
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
    .line 107
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    .line 108
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

    .line 109
    :cond_22
    return-void
.end method
