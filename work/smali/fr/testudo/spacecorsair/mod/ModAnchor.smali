.class public final Lfr/testudo/spacecorsair/mod/ModAnchor;
.super Ljava/lang/Object;
.source "ModAnchor.java"


# static fields
.field static final BREAK_MS:J = 0x384L

.field static final CAP_MUL:F = 1.5f

.field private static D:F = 0.0f

.field static final DEPLOY_MS:J = 0x514L

.field static final FOLDING:I = 0x3

.field static final FOLD_MS:J = 0x320L

.field static final HOLDING:I = 0x2

.field static final HOLD_MS:J = 0x9c4L

.field private static final HOTW:[F

.field private static final ICE:[F

.field static final IDLE:I = 0x0

.field private static final LOW:[F

.field private static final NS:I = 0x10

.field static final PLANTED:I = 0x1

.field static final PLANT_MS:J = 0x1f4L

.field static final REGEN_MS:J = 0x61a8L

.field static final STILL_MS:J = 0x9c4L

.field static final STOP_SPEED:F = 0.05f

.field static final TAKEN:F = 0.65f

.field static final TAKEN_DOOM:F = 0.5f

.field static final TRY_MS:J = 0x5dcL

.field private static final a:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static agit:F

.field private static final b:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static brokeAt:J

.field private static final brokeFrac:[F

.field private static final c:Lfr/testudo/spacecorsair/engine/Vector2;

.field static cap:F

.field private static crossLX:F

.field private static crossLY:F

.field static cur:F

.field private static final dent:[F

.field private static final dentV:[F

.field private static fullAt:J

.field private static final glowSeg:[F

.field private static final hitLX:[F

.field private static final hitLY:[F

.field private static hitN:I

.field private static final hitSparked:[Z

.field private static final hitStr:[F

.field private static final hitT:[J

.field private static final hitU:[F

.field private static lastJ:J

.field private static logMove:Z

.field private static logs:I

.field private static regenMs:J

.field static share:F

.field private static stage:I

.field private static stageAt:J

.field static state:I

.field private static stillMs:J

.field private static t:J

.field private static tryMs:J


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    const/16 v4, 0x10

    const/4 v3, 0x3

    const/16 v2, 0x8

    .line 37
    sput v5, Lfr/testudo/spacecorsair/mod/ModAnchor;->state:I

    .line 38
    const-wide/16 v0, 0x10

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->lastJ:J

    .line 39
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->cur:F

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->share:F

    .line 42
    const/high16 v0, 0x447a0000    # 1000.0f

    sput v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->D:F

    .line 47
    new-array v0, v2, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->hitU:[F

    new-array v0, v2, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->hitStr:[F

    new-array v0, v2, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->hitLX:[F

    new-array v0, v2, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->hitLY:[F

    .line 48
    new-array v0, v2, [J

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->hitT:[J

    .line 49
    new-array v0, v2, [Z

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->hitSparked:[Z

    .line 51
    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModAnchor;->brokeAt:J

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v1, v0, v5

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->brokeFrac:[F

    .line 54
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 57
    new-array v0, v4, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->dent:[F

    new-array v0, v4, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->dentV:[F

    new-array v0, v4, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->glowSeg:[F

    .line 59
    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModAnchor;->fullAt:J

    .line 318
    new-array v0, v3, [F

    fill-array-data v0, :array_76

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->ICE:[F

    new-array v0, v3, [F

    fill-array-data v0, :array_80

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->LOW:[F

    new-array v0, v3, [F

    fill-array-data v0, :array_8a

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->HOTW:[F

    return-void

    nop

    :array_76
    .array-data 4
        0x3f3851ec    # 0.72f
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    :array_80
    .array-data 4
        0x3f800000    # 1.0f
        0x3f0ccccd    # 0.55f
        0x3e99999a    # 0.3f
    .end array-data

    :array_8a
    .array-data 4
        0x3f800000    # 1.0f
        0x3f733333    # 0.95f
        0x3f59999a    # 0.85f
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static absorb(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/business/projectiles/Projectile;F)V
    .registers 13

    .prologue
    .line 289
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModV34;->wallDamage(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;F)F

    move-result v1

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModTitan;->busy()Z

    move-result v0

    if-eqz v0, :cond_63

    const/high16 v0, 0x3f000000    # 0.5f

    :goto_c
    mul-float v2, v1, v0

    .line 290
    sget v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->cur:F

    sub-float/2addr v0, v2

    sput v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->cur:F

    .line 291
    sget v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->crossLX:F

    float-to-double v0, v0

    sget v3, Lfr/testudo/spacecorsair/mod/ModAnchor;->crossLY:F

    neg-float v3, v3

    float-to-double v4, v3

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    const-wide/high16 v4, 0x405e000000000000L    # 120.0

    div-double/2addr v0, v4

    double-to-float v3, v0

    .line 293
    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3e99999a    # 0.3f

    const/high16 v4, 0x3f800000    # 1.0f

    sget v5, Lfr/testudo/spacecorsair/mod/ModAnchor;->cap:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    div-float v4, v2, v4

    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 294
    const/4 v0, 0x0

    const/16 v1, 0xf

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v5, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x41800000    # 16.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 295
    const/4 v0, -0x2

    move v1, v0

    :goto_54
    const/4 v0, 0x2

    if-gt v1, v0, :cond_96

    .line 296
    add-int v6, v5, v1

    .line 297
    if-ltz v6, :cond_5f

    const/16 v0, 0x10

    if-lt v6, v0, :cond_67

    .line 295
    :cond_5f
    :goto_5f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_54

    .line 289
    :cond_63
    const v0, 0x3f266666    # 0.65f

    goto :goto_c

    .line 298
    :cond_67
    if-nez v1, :cond_87

    const/high16 v0, 0x3f800000    # 1.0f

    .line 299
    :goto_6b
    sget-object v7, Lfr/testudo/spacecorsair/mod/ModAnchor;->dentV:[F

    aget v8, v7, v6

    const/high16 v9, 0x41100000    # 9.0f

    mul-float/2addr v9, v4

    mul-float/2addr v9, v0

    add-float/2addr v8, v9

    aput v8, v7, v6

    .line 300
    sget-object v7, Lfr/testudo/spacecorsair/mod/ModAnchor;->glowSeg:[F

    const/high16 v8, 0x3fc00000    # 1.5f

    sget-object v9, Lfr/testudo/spacecorsair/mod/ModAnchor;->glowSeg:[F

    aget v9, v9, v6

    mul-float/2addr v0, v4

    add-float/2addr v0, v9

    invoke-static {v8, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aput v0, v7, v6

    goto :goto_5f

    .line 298
    :cond_87
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_92

    const v0, 0x3ee66666    # 0.45f

    goto :goto_6b

    :cond_92
    const v0, 0x3e19999a    # 0.15f

    goto :goto_6b

    .line 302
    :cond_96
    const/high16 v0, 0x3f800000    # 1.0f

    sget v1, Lfr/testudo/spacecorsair/mod/ModAnchor;->agit:F

    const v5, 0x3df5c28f    # 0.12f

    add-float/2addr v1, v5

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->agit:F

    .line 303
    sget v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->hitN:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lfr/testudo/spacecorsair/mod/ModAnchor;->hitN:I

    rem-int/lit8 v0, v0, 0x8

    .line 304
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModAnchor;->hitU:[F

    aput v3, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModAnchor;->hitT:[J

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->t:J

    aput-wide v4, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModAnchor;->hitSparked:[Z

    const/4 v4, 0x0

    aput-boolean v4, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModAnchor;->hitStr:[F

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3eb33333    # 0.35f

    const/high16 v6, 0x3f800000    # 1.0f

    sget v7, Lfr/testudo/spacecorsair/mod/ModAnchor;->cap:F

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    div-float v6, v2, v6

    const/high16 v7, 0x41400000    # 12.0f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModAnchor;->hitLX:[F

    sget v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->crossLX:F

    aput v4, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModAnchor;->hitLY:[F

    sget v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->crossLY:F

    aput v4, v1, v0

    .line 305
    sget v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->logs:I

    const/16 v1, 0x50

    if-ge v0, v1, :cond_145

    sget v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->logs:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->logs:I

    const-string v0, "v39anchor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "absorbed "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " left "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    sget v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->cur:F

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->cap:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " u "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_145
    sget v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->cur:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_18c

    .line 307
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->cur:F

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->brokeAt:J

    .line 309
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->brokeFrac:[F

    const/4 v1, 0x0

    const v2, 0x3d4ccccd    # 0.05f

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModAnchor;->deployed()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v0, v1

    .line 310
    const/high16 v0, 0x3e800000    # 0.25f

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->addShake(F)V

    .line 311
    const-string v0, "shield_down"

    const v1, 0x3f4ccccd    # 0.8f

    const v2, 0x3f4ccccd    # 0.8f

    const-wide/16 v4, 0x3e8

    invoke-static {v0, v1, v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 312
    const-string v0, "WALL DOWN"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    const v3, 0x3e99999a    # 0.3f

    invoke-static {p0, v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 313
    const-string v0, "broken"

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModAnchor;->end(Lfr/testudo/spacecorsair/business/player/PlayerShip;Ljava/lang/String;)V

    .line 315
    :cond_18c
    return-void
.end method

.method private static arcAt(Lfr/testudo/spacecorsair/business/player/PlayerShip;FFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 10

    .prologue
    .line 360
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 361
    float-to-double v2, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    neg-float v3, p2

    float-to-double v4, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    double-to-float v0, v0

    invoke-static {p0, v2, v0, p3}, Lfr/testudo/spacecorsair/mod/ModAnchor;->scr(Lfr/testudo/spacecorsair/business/player/PlayerShip;FFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public static beam(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)F
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 241
    :try_start_1
    sget v1, Lfr/testudo/spacecorsair/mod/ModAnchor;->state:I

    if-eqz v1, :cond_13

    instance-of v1, p2, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    if-eqz v1, :cond_13

    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModAnchor;->enemyShot(Lfr/testudo/spacecorsair/business/projectiles/Projectile;)Z

    move-result v1

    if-eqz v1, :cond_13

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_14

    .line 253
    :cond_13
    :goto_13
    return p1

    .line 242
    :cond_14
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v1, :cond_1f

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV35;->standing(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    .line 243
    :cond_1f
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 244
    if-eqz v1, :cond_13

    .line 245
    iget-object v2, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v3, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v1, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModAnchor;->cross(Lfr/testudo/spacecorsair/business/player/PlayerShip;FFFF)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 246
    invoke-static {v1, p2, p1}, Lfr/testudo/spacecorsair/mod/ModAnchor;->absorb(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/business/projectiles/Projectile;F)V

    .line 247
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v1, :cond_4b

    iget-object v1, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v1, p1}, Lfr/testudo/spacecorsair/mod/ModPolice;->wallHit(Lfr/testudo/spacecorsair/business/Element;F)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4b} :catch_4d

    :cond_4b
    move p1, v0

    .line 248
    goto :goto_13

    .line 250
    :catch_4d
    move-exception v0

    goto :goto_13
.end method

.method static charge()F
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 547
    sget v1, Lfr/testudo/spacecorsair/mod/ModAnchor;->cap:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_c

    sget v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->cur:F

    sget v1, Lfr/testudo/spacecorsair/mod/ModAnchor;->cap:F

    div-float/2addr v0, v1

    :cond_c
    return v0
.end method

.method private static cross(Lfr/testudo/spacecorsair/business/player/PlayerShip;FFFF)Z
    .registers 19

    .prologue
    .line 266
    const/high16 v0, 0x44800000    # 1024.0f

    sget v1, Lfr/testudo/spacecorsair/mod/ModAnchor;->D:F

    div-float/2addr v0, v1

    .line 267
    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 269
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v1, p1, v1

    iget-object v6, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v6, p2, v6

    iget-object v7, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v7, p3, v7

    iget-object v8, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v8, p4, v8

    .line 270
    float-to-double v10, v1

    mul-double/2addr v10, v4

    float-to-double v12, v6

    mul-double/2addr v12, v2

    add-double/2addr v10, v12

    float-to-double v12, v0

    mul-double/2addr v10, v12

    double-to-float v9, v10

    neg-float v1, v1

    float-to-double v10, v1

    mul-double/2addr v10, v2

    float-to-double v12, v6

    mul-double/2addr v12, v4

    add-double/2addr v10, v12

    float-to-double v12, v0

    mul-double/2addr v10, v12

    double-to-float v1, v10

    .line 271
    float-to-double v10, v7

    mul-double/2addr v10, v4

    float-to-double v12, v8

    mul-double/2addr v12, v2

    add-double/2addr v10, v12

    float-to-double v12, v0

    mul-double/2addr v10, v12

    double-to-float v6, v10

    neg-float v7, v7

    float-to-double v10, v7

    mul-double/2addr v2, v10

    float-to-double v10, v8

    mul-double/2addr v4, v10

    add-double/2addr v2, v4

    float-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-float v0, v2

    .line 272
    const/high16 v2, 0x44250000    # 660.0f

    .line 273
    sub-float v3, v6, v9

    sub-float/2addr v0, v1

    .line 274
    mul-float v4, v3, v3

    mul-float v5, v0, v0

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, v9, v3

    mul-float v7, v1, v0

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    mul-float v6, v9, v9

    mul-float v7, v1, v1

    add-float/2addr v6, v7

    mul-float/2addr v2, v2

    sub-float v2, v6, v2

    .line 275
    const/4 v6, 0x0

    cmpg-float v6, v2, v6

    if-lez v6, :cond_74

    const v6, 0x358637bd    # 1.0E-6f

    cmpg-float v6, v4, v6

    if-gez v6, :cond_76

    :cond_74
    const/4 v0, 0x0

    .line 285
    :goto_75
    return v0

    .line 276
    :cond_76
    mul-float v6, v5, v5

    const/high16 v7, 0x40800000    # 4.0f

    mul-float/2addr v7, v4

    mul-float/2addr v2, v7

    sub-float v2, v6, v2

    .line 277
    const/4 v6, 0x0

    cmpg-float v6, v2, v6

    if-gez v6, :cond_85

    const/4 v0, 0x0

    goto :goto_75

    .line 278
    :cond_85
    neg-float v5, v5

    float-to-double v6, v5

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    sub-double/2addr v6, v10

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    float-to-double v4, v2

    div-double v4, v6, v4

    double-to-float v2, v4

    .line 279
    const/4 v4, 0x0

    cmpg-float v4, v2, v4

    if-ltz v4, :cond_9f

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v2, v4

    if-lez v4, :cond_a1

    :cond_9f
    const/4 v0, 0x0

    goto :goto_75

    .line 280
    :cond_a1
    mul-float/2addr v3, v2

    add-float/2addr v3, v9

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 281
    float-to-double v4, v3

    neg-float v1, v0

    float-to-double v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 282
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x42f00000    # 120.0f

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModAnchor;->deployed()F

    move-result v4

    mul-float/2addr v2, v4

    cmpl-float v1, v1, v2

    if-lez v1, :cond_c2

    const/4 v0, 0x0

    goto :goto_75

    .line 283
    :cond_c2
    sput v3, Lfr/testudo/spacecorsair/mod/ModAnchor;->crossLX:F

    .line 284
    sput v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->crossLY:F

    .line 285
    const/4 v0, 0x1

    goto :goto_75
.end method

.method static deployed()F
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 203
    sget v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->state:I

    packed-switch v2, :pswitch_data_2a

    move v0, v1

    .line 207
    :goto_9
    :pswitch_9
    return v0

    .line 204
    :pswitch_a
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->t:J

    const-wide/16 v4, 0x1f4

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const v3, 0x44a28000    # 1300.0f

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_9

    .line 206
    :pswitch_1d
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->tryMs:J

    long-to-float v1, v2

    const/high16 v2, 0x44480000    # 800.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float/2addr v0, v1

    goto :goto_9

    .line 203
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_1d
    .end packed-switch
.end method

.method static doomsdayClick(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 5

    .prologue
    .line 156
    :try_start_0
    sget v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->stage:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_10

    sget v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->state:I

    if-nez v0, :cond_10

    sget v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->cur:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_11

    .line 163
    :cond_10
    :goto_10
    return-void

    .line 157
    :cond_11
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->brokeAt:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_21

    sget v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->cur:F

    sget v1, Lfr/testudo/spacecorsair/mod/ModAnchor;->cap:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_10

    .line 158
    :cond_21
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModAnchor;->plant(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 159
    const-string v0, "v39anchor"

    const-string v1, "auto-plant on doomsday click"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_10

    .line 160
    :catch_2c
    move-exception v0

    goto :goto_10
.end method

.method public static drawOver(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 13

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 322
    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModAnchor;->brokeAt:J

    cmp-long v0, v6, v10

    if-lez v0, :cond_52

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModAnchor;->brokeAt:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x384

    cmp-long v0, v6, v8

    if-gez v0, :cond_52

    move v0, v1

    .line 323
    :goto_19
    sget v3, Lfr/testudo/spacecorsair/mod/ModAnchor;->state:I

    if-nez v3, :cond_54

    sget v3, Lfr/testudo/spacecorsair/mod/ModAnchor;->cap:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_54

    sget v3, Lfr/testudo/spacecorsair/mod/ModAnchor;->cur:F

    sget v6, Lfr/testudo/spacecorsair/mod/ModAnchor;->cap:F

    cmpg-float v3, v3, v6

    if-ltz v3, :cond_3c

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModAnchor;->fullAt:J

    cmp-long v3, v6, v10

    if-lez v3, :cond_54

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModAnchor;->fullAt:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x2bc

    cmp-long v3, v6, v8

    if-gez v3, :cond_54

    :cond_3c
    move v3, v1

    .line 324
    :goto_3d
    sget v6, Lfr/testudo/spacecorsair/mod/ModAnchor;->state:I

    if-nez v6, :cond_45

    if-nez v0, :cond_45

    if-eqz v3, :cond_51

    :cond_45
    sget v3, Lfr/testudo/spacecorsair/mod/ModAnchor;->stage:I

    if-eqz v3, :cond_51

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v3, v3, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-eqz v3, :cond_56

    .line 348
    :cond_51
    :goto_51
    return-void

    :cond_52
    move v0, v2

    .line 322
    goto :goto_19

    :cond_54
    move v3, v2

    .line 323
    goto :goto_3d

    .line 325
    :cond_56
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v3

    .line 326
    if-eqz v3, :cond_51

    iget-object v6, v3, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v6, :cond_51

    .line 327
    iget-object v3, v3, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sput v3, Lfr/testudo/spacecorsair/mod/ModAnchor;->D:F

    .line 328
    sget v3, Lfr/testudo/spacecorsair/mod/ModAnchor;->stage:I

    const/4 v6, 0x5

    if-lt v3, v6, :cond_88

    const/high16 v3, 0x3f800000    # 1.0f

    .line 329
    :goto_6d
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    .line 331
    if-eqz v0, :cond_7c

    :try_start_71
    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModAnchor;->brokeAt:J

    sub-long v6, v4, v6

    long-to-float v6, v6

    const/high16 v7, 0x44610000    # 900.0f

    div-float/2addr v6, v7

    invoke-static {p0, v3, v6}, Lfr/testudo/spacecorsair/mod/ModAnchor;->shatter(Lfr/testudo/spacecorsair/business/player/PlayerShip;FF)V

    .line 332
    :cond_7c
    sget v6, Lfr/testudo/spacecorsair/mod/ModAnchor;->state:I

    if-nez v6, :cond_8b

    .line 333
    if-nez v0, :cond_85

    invoke-static {p0, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModAnchor;->recharge(Lfr/testudo/spacecorsair/business/player/PlayerShip;FJ)V
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_85} :catch_ba
    .catchall {:try_start_71 .. :try_end_85} :catchall_be

    .line 346
    :cond_85
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    goto :goto_51

    .line 328
    :cond_88
    const/high16 v3, 0x3f000000    # 0.5f

    goto :goto_6d

    .line 336
    :cond_8b
    :try_start_8b
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->t:J

    long-to-float v0, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v0, v4

    .line 337
    sget v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->state:I

    if-ne v4, v1, :cond_a0

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->t:J

    const-wide/16 v6, 0x320

    cmp-long v1, v4, v6

    if-gez v1, :cond_a0

    invoke-static {p0, v3, v0}, Lfr/testudo/spacecorsair/mod/ModAnchor;->plantFx(Lfr/testudo/spacecorsair/business/player/PlayerShip;FF)V

    .line 338
    :cond_a0
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModAnchor;->deployed()F
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_a3} :catch_ba
    .catchall {:try_start_8b .. :try_end_a3} :catchall_be

    move-result v1

    .line 339
    const v4, 0x3a83126f    # 0.001f

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_ae

    .line 346
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    goto :goto_51

    .line 340
    :cond_ae
    :try_start_ae
    invoke-static {p0, v3, v1, v0}, Lfr/testudo/spacecorsair/mod/ModAnchor;->emitters(Lfr/testudo/spacecorsair/business/player/PlayerShip;FFF)V

    .line 341
    invoke-static {p0, v3, v1, v0}, Lfr/testudo/spacecorsair/mod/ModAnchor;->wall(Lfr/testudo/spacecorsair/business/player/PlayerShip;FFF)V

    .line 342
    invoke-static {p0, v3}, Lfr/testudo/spacecorsair/mod/ModAnchor;->hits(Lfr/testudo/spacecorsair/business/player/PlayerShip;F)V
    :try_end_b7
    .catch Ljava/lang/Throwable; {:try_start_ae .. :try_end_b7} :catch_ba
    .catchall {:try_start_ae .. :try_end_b7} :catchall_be

    .line 346
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    goto :goto_51

    .line 343
    :catch_ba
    move-exception v0

    .line 346
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    goto :goto_51

    :catchall_be
    move-exception v0

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    .line 347
    throw v0
.end method

.method private static emitters(Lfr/testudo/spacecorsair/business/player/PlayerShip;FFF)V
    .registers 24

    .prologue
    .line 397
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModAnchor;->padY()F

    move-result v2

    const/high16 v3, 0x44000000    # 512.0f

    sub-float v15, v2, v3

    const/high16 v16, 0x44250000    # 660.0f

    .line 398
    const/4 v2, 0x0

    move v14, v2

    :goto_c
    const/4 v2, 0x2

    if-ge v14, v2, :cond_109

    .line 399
    invoke-static {v14}, Lfr/testudo/spacecorsair/mod/ModAnchor;->pad(I)F

    move-result v2

    const/high16 v3, 0x44000000    # 512.0f

    sub-float/2addr v2, v3

    .line 400
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModAnchor;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v15, v3}, Lfr/testudo/spacecorsair/mod/ModAnchor;->scr(Lfr/testudo/spacecorsair/business/player/PlayerShip;FFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 401
    const v2, 0x3f4ccccd    # 0.8f

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x41100000    # 9.0f

    const/high16 v5, 0x41000000    # 8.0f

    sget v6, Lfr/testudo/spacecorsair/mod/ModAnchor;->agit:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    mul-float v4, v4, p3

    int-to-float v5, v14

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    add-float v11, v2, v3

    .line 402
    const-string v2, "fx_glow"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModAnchor;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget v5, Lfr/testudo/spacecorsair/mod/ModAnchor;->D:F

    const v6, 0x3db851ec    # 0.09f

    mul-float/2addr v5, v6

    sget v6, Lfr/testudo/spacecorsair/mod/ModAnchor;->D:F

    const v7, 0x3db851ec    # 0.09f

    mul-float/2addr v6, v7

    const/4 v7, 0x0

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModAnchor;->ICE:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    sget-object v9, Lfr/testudo/spacecorsair/mod/ModAnchor;->ICE:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModAnchor;->ICE:[F

    const/4 v12, 0x2

    aget v10, v10, v12

    const v12, 0x3f666666    # 0.9f

    mul-float v12, v12, p1

    mul-float/2addr v11, v12

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 403
    const-string v2, "fx_core"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModAnchor;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget v5, Lfr/testudo/spacecorsair/mod/ModAnchor;->D:F

    const v6, 0x3d0f5c29    # 0.035f

    mul-float/2addr v5, v6

    sget v6, Lfr/testudo/spacecorsair/mod/ModAnchor;->D:F

    const v7, 0x3d0f5c29    # 0.035f

    mul-float/2addr v6, v7

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f666666    # 0.9f

    mul-float v11, v11, p1

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 404
    const/4 v2, 0x0

    move v13, v2

    :goto_90
    const/16 v2, 0x8

    if-ge v13, v2, :cond_104

    .line 405
    if-nez v14, :cond_ad

    rsub-int/lit8 v2, v13, 0x7

    move v11, v2

    .line 406
    :goto_99
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModAnchor;->segDeg(I)F

    move-result v2

    .line 407
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x42f00000    # 120.0f

    mul-float v4, v4, p2

    cmpl-float v3, v3, v4

    if-lez v3, :cond_b1

    .line 404
    :goto_a9
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_90

    .line 405
    :cond_ad
    add-int/lit8 v2, v13, 0x8

    move v11, v2

    goto :goto_99

    .line 408
    :cond_b1
    const/high16 v3, 0x41c00000    # 24.0f

    sub-float v3, v16, v3

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->dent:[F

    aget v4, v4, v11

    sub-float/2addr v3, v4

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/ModAnchor;->arcAt(Lfr/testudo/spacecorsair/business/player/PlayerShip;FFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 409
    const-string v2, "fx_glow"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModAnchor;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModAnchor;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModAnchor;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget v7, Lfr/testudo/spacecorsair/mod/ModAnchor;->D:F

    const v8, 0x3b83126f    # 0.004f

    mul-float/2addr v7, v8

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModAnchor;->ICE:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    sget-object v9, Lfr/testudo/spacecorsair/mod/ModAnchor;->ICE:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModAnchor;->ICE:[F

    const/4 v12, 0x2

    aget v10, v10, v12

    const v12, 0x3e23d70a    # 0.16f

    const v17, 0x3e99999a    # 0.3f

    const/high16 v18, 0x3f800000    # 1.0f

    sget-object v19, Lfr/testudo/spacecorsair/mod/ModAnchor;->glowSeg:[F

    aget v11, v19, v11

    move/from16 v0, v18

    invoke-static {v0, v11}, Ljava/lang/Math;->min(FF)F

    move-result v11

    mul-float v11, v11, v17

    add-float/2addr v11, v12

    mul-float v11, v11, p1

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->strip(Ljava/lang/String;FFFFFFFFFZ)V

    goto :goto_a9

    .line 398
    :cond_104
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto/16 :goto_c

    .line 412
    :cond_109
    return-void
.end method

.method private static end(Lfr/testudo/spacecorsair/business/player/PlayerShip;Ljava/lang/String;)V
    .registers 6

    .prologue
    const-wide/16 v2, 0x0

    .line 178
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTitan;->anchorHold:Z

    if-eqz v0, :cond_9

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTitan;->anchorRelease(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 179
    :cond_9
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->state:I

    .line 180
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->stillMs:J

    .line 181
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->tryMs:J

    .line 182
    const-string v0, "v39anchor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method private static enemyShot(Lfr/testudo/spacecorsair/business/projectiles/Projectile;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 257
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    .line 258
    instance-of v2, v1, Lfr/testudo/spacecorsair/business/world/station/Station;

    if-eqz v2, :cond_c

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModStationGuns;->playerWanted()Z

    move-result v0

    .line 259
    :cond_b
    :goto_b
    return v0

    :cond_c
    if-eqz v1, :cond_1c

    iget-boolean v2, v1, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v2, :cond_1c

    iget-boolean v2, v1, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v2, :cond_1c

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV35;->standing(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v1

    if-ne v1, v0, :cond_b

    :cond_1c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static flash(FF)F
    .registers 12

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const v8, 0x3f333333    # 0.7f

    const/4 v2, 0x0

    .line 452
    .line 453
    sget v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->hitN:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 454
    const/4 v1, 0x0

    move v0, v2

    :goto_10
    if-ge v1, v3, :cond_4e

    .line 455
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->t:J

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModAnchor;->hitT:[J

    aget-wide v6, v6, v1

    sub-long/2addr v4, v6

    long-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    .line 456
    cmpg-float v5, v4, v2

    if-ltz v5, :cond_25

    cmpl-float v5, v4, v8

    if-lez v5, :cond_28

    .line 454
    :cond_25
    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 457
    :cond_28
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModAnchor;->hitU:[F

    aget v5, v5, v1

    sub-float v5, p0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3fcccccd    # 1.6f

    mul-float/2addr v6, v4

    sub-float/2addr v5, v6

    .line 458
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModAnchor;->hitStr:[F

    aget v6, v6, v1

    div-float/2addr v4, v8

    sub-float v4, v9, v4

    mul-float/2addr v4, v6

    neg-float v6, v5

    mul-float/2addr v5, v6

    const v6, 0x3c23d70a    # 0.01f

    div-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    goto :goto_25

    .line 460
    :cond_4e
    invoke-static {v9, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private static hits(Lfr/testudo/spacecorsair/business/player/PlayerShip;F)V
    .registers 23

    .prologue
    .line 465
    sget v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->hitN:I

    const/16 v3, 0x8

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 466
    const/4 v2, 0x0

    move/from16 v17, v2

    :goto_b
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_156

    .line 467
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->t:J

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->hitT:[J

    aget-wide v4, v4, v17

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    .line 468
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-ltz v3, :cond_28

    const v3, 0x3eb33333    # 0.35f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2d

    .line 466
    :cond_28
    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto :goto_b

    .line 469
    :cond_2d
    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3eb33333    # 0.35f

    div-float/2addr v2, v4

    sub-float v13, v3, v2

    .line 470
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->hitLX:[F

    aget v2, v2, v17

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModAnchor;->hitLY:[F

    aget v3, v3, v17

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/ModAnchor;->scr(Lfr/testudo/spacecorsair/business/player/PlayerShip;FFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 471
    sget v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->D:F

    const v3, 0x3d4ccccd    # 0.05f

    const v4, 0x3d23d70a    # 0.04f

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModAnchor;->hitStr:[F

    aget v5, v5, v17

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float v5, v2, v3

    .line 472
    const-string v2, "fx_hex"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModAnchor;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float v11, v13, p1

    const/4 v12, 0x1

    move v6, v5

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 473
    const-string v2, "fx_glow"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModAnchor;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v6, 0x400ccccd    # 2.2f

    mul-float v14, v5, v6

    const v6, 0x400ccccd    # 2.2f

    mul-float/2addr v6, v5

    const/4 v7, 0x0

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModAnchor;->ICE:[F

    const/4 v8, 0x0

    aget v8, v5, v8

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModAnchor;->ICE:[F

    const/4 v9, 0x1

    aget v9, v5, v9

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModAnchor;->ICE:[F

    const/4 v10, 0x2

    aget v10, v5, v10

    const v5, 0x3f333333    # 0.7f

    mul-float/2addr v5, v13

    mul-float v11, v5, p1

    const/4 v12, 0x1

    move v5, v14

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 474
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->hitSparked:[Z

    aget-boolean v2, v2, v17

    if-nez v2, :cond_28

    .line 475
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->hitSparked:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v17

    .line 476
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->hitLX:[F

    aget v2, v2, v17

    float-to-double v2, v2

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->hitLY:[F

    aget v4, v4, v17

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 477
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModAnchor;->hitLX:[F

    aget v3, v3, v17

    div-float v19, v3, v2

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModAnchor;->hitLY:[F

    aget v3, v3, v17

    div-float v20, v3, v2

    .line 478
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->hitLX:[F

    aget v4, v4, v17

    sget v5, Lfr/testudo/spacecorsair/mod/ModAnchor;->D:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x44800000    # 1024.0f

    div-float/2addr v4, v5

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModAnchor;->hitLY:[F

    aget v5, v5, v17

    sget v6, Lfr/testudo/spacecorsair/mod/ModAnchor;->D:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x44800000    # 1024.0f

    div-float/2addr v5, v6

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModAnchor;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 479
    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_e7
    const/4 v2, 0x4

    move/from16 v0, v16

    if-ge v0, v2, :cond_28

    .line 480
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x43820000    # 260.0f

    mul-float v3, v3, v19

    const/high16 v4, -0x3cf40000    # -140.0f

    const/high16 v5, 0x430c0000    # 140.0f

    invoke-static {v4, v5}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x43820000    # 260.0f

    mul-float v4, v4, v20

    const/high16 v5, -0x3cf40000    # -140.0f

    const/high16 v6, 0x430c0000    # 140.0f

    invoke-static {v5, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 481
    const-string v2, "fx_glow"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModAnchor;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModAnchor;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModAnchor;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v7, 0x43a00000    # 320.0f

    sget v8, Lfr/testudo/spacecorsair/mod/ModAnchor;->D:F

    const v9, 0x3c449ba6    # 0.012f

    mul-float/2addr v8, v9

    sget v9, Lfr/testudo/spacecorsair/mod/ModAnchor;->D:F

    const v10, 0x3b83126f    # 0.004f

    mul-float/2addr v9, v10

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModAnchor;->HOTW:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    sget-object v11, Lfr/testudo/spacecorsair/mod/ModAnchor;->HOTW:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    sget-object v12, Lfr/testudo/spacecorsair/mod/ModAnchor;->ICE:[F

    const/4 v13, 0x2

    aget v12, v12, v13

    const v13, 0x3f666666    # 0.9f

    mul-float v13, v13, p1

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 479
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    goto :goto_e7

    .line 485
    :cond_156
    return-void
.end method

.method private static lift(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 167
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTitan;->anchorRelease(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 168
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->curPouseePourcentage:F

    iget v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxPouseeForce:F

    mul-float/2addr v0, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->curPouseeForce:F

    .line 169
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->curPouseeForce:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_19

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isBoosterEnabled:Z

    if-eqz v0, :cond_4e

    :cond_19
    move v0, v1

    :goto_1a
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isPousee:Z

    .line 170
    const/4 v0, 0x2

    sput v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->state:I

    .line 171
    const-wide/16 v2, 0x0

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->tryMs:J

    .line 172
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModAnchor;->logMove:Z

    .line 173
    const-string v0, "v39anchor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lift t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->t:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " charge "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModAnchor;->pct()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void

    .line 169
    :cond_4e
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private static pad(I)F
    .registers 3

    .prologue
    .line 365
    sget v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->stage:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_e

    if-nez p0, :cond_b

    const/16 v0, 0x177

    :goto_9
    int-to-float v0, v0

    :goto_a
    return v0

    :cond_b
    const/16 v0, 0x287

    goto :goto_9

    :cond_e
    if-nez p0, :cond_14

    const/16 v0, 0x191

    :goto_12
    int-to-float v0, v0

    goto :goto_a

    :cond_14
    const/16 v0, 0x26c

    goto :goto_12
.end method

.method private static padY()F
    .registers 2

    .prologue
    .line 369
    sget v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->stage:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_8

    const/high16 v0, 0x43e00000    # 448.0f

    :goto_7
    return v0

    :cond_8
    const v0, 0x43a78000    # 335.0f

    goto :goto_7
.end method

.method private static pct()I
    .registers 2

    .prologue
    .line 198
    sget v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->cap:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_14

    sget v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->cur:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    sget v1, Lfr/testudo/spacecorsair/mod/ModAnchor;->cap:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private static plant(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 6

    .prologue
    const-wide/16 v2, 0x0

    const v4, 0x3f19999a    # 0.6f

    .line 138
    const/4 v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->state:I

    .line 139
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->t:J

    .line 140
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->tryMs:J

    .line 141
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->hitN:I

    .line 142
    const-wide/16 v0, -0x1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->brokeAt:J

    .line 143
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTitan;->holdForce(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 144
    const v0, 0x3eb33333    # 0.35f

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->addShake(F)V

    .line 145
    const-string v0, "titan_blast"

    const v1, 0x3ee66666    # 0.45f

    const-wide/16 v2, 0x5dc

    invoke-static {v0, v1, v4, v2, v3}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 146
    const-string v0, "ANCHORED"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x3f6147ae    # 0.88f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v4, v1, v2}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 147
    const-string v0, "v39anchor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "plant stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->stage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " charge "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModAnchor;->pct()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->cap:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method private static plantFx(Lfr/testudo/spacecorsair/business/player/PlayerShip;FF)V
    .registers 22

    .prologue
    .line 374
    sget-object v13, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenCenter:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 375
    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f4ccccd    # 0.8f

    div-float v3, p2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 376
    sget v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->D:F

    const v3, 0x3e99999a    # 0.3f

    const v4, 0x3f8ccccd    # 1.1f

    mul-float/2addr v4, v14

    add-float/2addr v3, v4

    mul-float v6, v2, v3

    .line 377
    const-string v2, "fx_shock"

    iget v3, v13, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v4, v13, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    const/4 v7, 0x0

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModAnchor;->ICE:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    sget-object v9, Lfr/testudo/spacecorsair/mod/ModAnchor;->ICE:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModAnchor;->ICE:[F

    const/4 v11, 0x2

    aget v10, v10, v11

    const v11, 0x3f4ccccd    # 0.8f

    mul-float v11, v11, p1

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v14

    mul-float/2addr v11, v12

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 378
    sget v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->D:F

    const/high16 v3, 0x3e800000    # 0.25f

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v4, v14

    add-float/2addr v3, v4

    mul-float v6, v2, v3

    .line 379
    const-string v2, "fx_shock"

    iget v3, v13, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v4, v13, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f59999a    # 0.85f

    const v10, 0x3f0ccccd    # 0.55f

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float v11, v11, p1

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v14

    mul-float/2addr v11, v12

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 380
    sget v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->stage:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_7c

    const-string v2, "leviathan_stage5_ringseg"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    .line 381
    :goto_79
    if-nez v2, :cond_7e

    .line 393
    :cond_7b
    return-void

    .line 380
    :cond_7c
    const/4 v2, 0x0

    goto :goto_79

    .line 382
    :cond_7e
    const/4 v3, 0x0

    move/from16 v17, v3

    :goto_81
    const/16 v3, 0x10

    move/from16 v0, v17

    if-ge v0, v3, :cond_7b

    .line 383
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLevData;->SEG_BOX:[F

    mul-int/lit8 v4, v17, 0x4

    aget v5, v3, v4

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLevData;->SEG_BOX:[F

    mul-int/lit8 v4, v17, 0x4

    add-int/lit8 v4, v4, 0x1

    aget v6, v3, v4

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLevData;->SEG_BOX:[F

    mul-int/lit8 v4, v17, 0x4

    add-int/lit8 v4, v4, 0x2

    aget v7, v3, v4

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLevData;->SEG_BOX:[F

    mul-int/lit8 v4, v17, 0x4

    add-int/lit8 v4, v4, 0x3

    aget v8, v3, v4

    .line 384
    cmpg-float v3, v7, v5

    if-gtz v3, :cond_ae

    .line 382
    :cond_a9
    :goto_a9
    add-int/lit8 v3, v17, 0x1

    move/from16 v17, v3

    goto :goto_81

    .line 385
    :cond_ae
    const/high16 v3, 0x42000000    # 32.0f

    mul-float v3, v3, p2

    move/from16 v0, v17

    int-to-float v4, v0

    sub-float/2addr v3, v4

    .line 386
    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_a9

    .line 387
    neg-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    float-to-double v10, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->exp(D)D

    move-result-wide v10

    double-to-float v11, v10

    .line 388
    rem-int/lit8 v3, v17, 0x4

    int-to-float v3, v3

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float v13, v3, v4

    div-int/lit8 v3, v17, 0x4

    int-to-float v3, v3

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float v14, v3, v4

    .line 389
    add-float v3, v5, v7

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x44000000    # 512.0f

    sub-float/2addr v3, v4

    add-float v4, v6, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v4, v9

    const/high16 v9, 0x44000000    # 512.0f

    sub-float/2addr v4, v9

    sget-object v9, Lfr/testudo/spacecorsair/mod/ModAnchor;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v9}, Lfr/testudo/spacecorsair/mod/ModAnchor;->scr(Lfr/testudo/spacecorsair/business/player/PlayerShip;FFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 390
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModAnchor;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget v9, Lfr/testudo/spacecorsair/mod/ModAnchor;->D:F

    sub-float v5, v7, v5

    mul-float/2addr v5, v9

    const/high16 v7, 0x44800000    # 1024.0f

    div-float/2addr v5, v7

    sget v7, Lfr/testudo/spacecorsair/mod/ModAnchor;->D:F

    sub-float v6, v8, v6

    mul-float/2addr v6, v7

    const/high16 v7, 0x44800000    # 1024.0f

    div-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    const v8, 0x3f4ccccd    # 0.8f

    const v9, 0x3e4ccccd    # 0.2f

    mul-float/2addr v9, v11

    add-float/2addr v8, v9

    const v9, 0x3f666666    # 0.9f

    const v10, 0x3dcccccd    # 0.1f

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    const v12, 0x3e99999a    # 0.3f

    const v15, 0x3f19999a    # 0.6f

    mul-float/2addr v11, v15

    add-float/2addr v11, v12

    mul-float v11, v11, p1

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/high16 v16, 0x3f000000    # 0.5f

    sub-float v16, p2, v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(FF)F

    move-result v15

    const v16, 0x3e99999a    # 0.3f

    div-float v15, v15, v16

    sub-float/2addr v12, v15

    mul-float/2addr v11, v12

    const/4 v12, 0x1

    sget-object v15, Lfr/testudo/spacecorsair/mod/ModLevData;->SEG_UV:[F

    mul-int/lit8 v16, v17, 0x2

    aget v15, v15, v16

    add-float/2addr v15, v13

    sget-object v16, Lfr/testudo/spacecorsair/mod/ModLevData;->SEG_UV:[F

    mul-int/lit8 v18, v17, 0x2

    add-int/lit8 v18, v18, 0x1

    aget v16, v16, v18

    add-float v16, v16, v14

    invoke-static/range {v2 .. v16}, Lfr/testudo/spacecorsair/mod/ModFx;->sprTex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    goto/16 :goto_a9
.end method

.method public static projectile(Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V
    .registers 6

    .prologue
    const-wide/16 v2, 0x0

    .line 218
    :try_start_2
    sget v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->state:I

    if-eqz v0, :cond_16

    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->lifeTimeInMilli:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_16

    instance-of v0, p0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    if-nez v0, :cond_16

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModAnchor;->enemyShot(Lfr/testudo/spacecorsair/business/projectiles/Projectile;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 233
    :cond_16
    :goto_16
    return-void

    .line 219
    :cond_17
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 220
    if-eqz v0, :cond_16

    .line 221
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->lastJ:J

    long-to-float v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    .line 222
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float/2addr v1, v4

    sub-float v1, v3, v1

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v0, v2, v1, v3, v4}, Lfr/testudo/spacecorsair/mod/ModAnchor;->cross(Lfr/testudo/spacecorsair/business/player/PlayerShip;FFFF)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 223
    iget v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->damage:F

    invoke-static {v0, p0, v1}, Lfr/testudo/spacecorsair/mod/ModAnchor;->absorb(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/business/projectiles/Projectile;F)V

    .line 224
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    iget v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->damage:F

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModPolice;->wallHit(Lfr/testudo/spacecorsair/business/Element;F)V

    .line 226
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->lifeTimeInMilli:J

    .line 227
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->damage:F

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->ignoreImactDecalOnTarget:Z
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5c} :catch_5d

    goto :goto_16

    .line 230
    :catch_5d
    move-exception v0

    goto :goto_16
.end method

.method private static recharge(Lfr/testudo/spacecorsair/business/player/PlayerShip;FJ)V
    .registers 32

    .prologue
    .line 522
    const-string v2, "lev_anchor_seg"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v20

    const-string v2, "lev_anchor_end"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v19

    .line 523
    sget v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->cap:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_b5

    sget v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->cur:F

    sget v3, Lfr/testudo/spacecorsair/mod/ModAnchor;->cap:F

    div-float/2addr v2, v3

    move/from16 v17, v2

    .line 524
    :goto_1a
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->fullAt:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_ba

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->fullAt:J

    sub-long v2, p2, v2

    const-wide/16 v4, 0x2bc

    cmp-long v2, v2, v4

    if-gez v2, :cond_ba

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v17, v2

    if-ltz v2, :cond_ba

    const/4 v2, 0x1

    move/from16 v22, v2

    .line 525
    :goto_35
    if-eqz v22, :cond_bf

    const/high16 v2, 0x3f800000    # 1.0f

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->fullAt:J

    sub-long v4, p2, v4

    long-to-float v3, v4

    const/high16 v4, 0x442f0000    # 700.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    move/from16 v18, v2

    .line 526
    :goto_44
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f000000    # 0.5f

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->regenMs:J

    long-to-double v4, v4

    const-wide v6, 0x4070400000000000L    # 260.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    add-float v23, v2, v3

    .line 527
    const/4 v2, 0x0

    move v13, v2

    :goto_5b
    const/4 v2, 0x2

    if-ge v13, v2, :cond_c3

    .line 528
    invoke-static {v13}, Lfr/testudo/spacecorsair/mod/ModAnchor;->pad(I)F

    move-result v2

    const/high16 v3, 0x44000000    # 512.0f

    sub-float/2addr v2, v3

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModAnchor;->padY()F

    move-result v3

    const/high16 v4, 0x44000000    # 512.0f

    sub-float/2addr v3, v4

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/ModAnchor;->scr(Lfr/testudo/spacecorsair/business/player/PlayerShip;FFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 529
    sget v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->D:F

    const v3, 0x3d23d70a    # 0.04f

    const v4, 0x3d4ccccd    # 0.05f

    mul-float v4, v4, v17

    add-float/2addr v3, v4

    mul-float v5, v2, v3

    .line 530
    const-string v2, "fx_glow"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModAnchor;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v7, 0x0

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModAnchor;->ICE:[F

    const/4 v8, 0x0

    aget v8, v6, v8

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModAnchor;->ICE:[F

    const/4 v9, 0x1

    aget v9, v6, v9

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModAnchor;->ICE:[F

    const/4 v10, 0x2

    aget v10, v6, v10

    const/high16 v6, 0x3e800000    # 0.25f

    const v11, 0x3eb33333    # 0.35f

    mul-float v11, v11, v17

    mul-float v11, v11, v23

    add-float/2addr v6, v11

    const v11, 0x3f19999a    # 0.6f

    mul-float v11, v11, v18

    add-float/2addr v6, v11

    mul-float v11, p1, v6

    const/4 v12, 0x1

    move v6, v5

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 527
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_5b

    .line 523
    :cond_b5
    const/4 v2, 0x0

    move/from16 v17, v2

    goto/16 :goto_1a

    .line 524
    :cond_ba
    const/4 v2, 0x0

    move/from16 v22, v2

    goto/16 :goto_35

    .line 525
    :cond_bf
    const/4 v2, 0x0

    move/from16 v18, v2

    goto :goto_44

    .line 532
    :cond_c3
    if-eqz v20, :cond_c7

    if-nez v19, :cond_c8

    .line 543
    :cond_c7
    return-void

    .line 533
    :cond_c8
    const/high16 v24, 0x43400000    # 192.0f

    const/high16 v25, 0x42e80000    # 116.0f

    const v2, -0x3bcd4000    # -715.0f

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v25, v3

    add-float v26, v2, v3

    .line 534
    const/4 v2, 0x0

    move/from16 v21, v2

    :goto_d8
    const/16 v2, 0x10

    move/from16 v0, v21

    if-ge v0, v2, :cond_c7

    .line 535
    invoke-static/range {v21 .. v21}, Lfr/testudo/spacecorsair/mod/ModAnchor;->segDeg(I)F

    move-result v7

    .line 536
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x42f00000    # 120.0f

    div-float/2addr v2, v3

    .line 537
    if-nez v22, :cond_f4

    cmpl-float v2, v2, v17

    if-lez v2, :cond_f4

    .line 534
    :goto_ef
    add-int/lit8 v2, v21, 0x1

    move/from16 v21, v2

    goto :goto_d8

    .line 538
    :cond_f4
    if-eqz v22, :cond_14d

    const v2, 0x3f0ccccd    # 0.55f

    mul-float v2, v2, v18

    :goto_fb
    mul-float v11, p1, v2

    .line 539
    move/from16 v0, v26

    neg-float v2, v0

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModAnchor;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    invoke-static {v0, v7, v2, v3}, Lfr/testudo/spacecorsair/mod/ModAnchor;->arcAt(Lfr/testudo/spacecorsair/business/player/PlayerShip;FFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 540
    if-eqz v21, :cond_10f

    const/16 v2, 0xf

    move/from16 v0, v21

    if-ne v0, v2, :cond_157

    :cond_10f
    const/4 v2, 0x1

    .line 541
    :goto_110
    if-eqz v2, :cond_159

    move-object/from16 v2, v19

    :goto_114
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModAnchor;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget v5, Lfr/testudo/spacecorsair/mod/ModAnchor;->D:F

    mul-float v5, v5, v24

    const/high16 v6, 0x44800000    # 1024.0f

    div-float/2addr v5, v6

    sget v6, Lfr/testudo/spacecorsair/mod/ModAnchor;->D:F

    mul-float v6, v6, v25

    const/high16 v8, 0x44800000    # 1024.0f

    div-float/2addr v6, v8

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    add-float/2addr v7, v8

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModAnchor;->ICE:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    sget-object v9, Lfr/testudo/spacecorsair/mod/ModAnchor;->ICE:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModAnchor;->ICE:[F

    const/4 v12, 0x2

    aget v10, v10, v12

    const/4 v12, 0x1

    if-nez v21, :cond_15c

    const/high16 v13, 0x3f800000    # 1.0f

    :goto_143
    const/4 v14, 0x0

    if-nez v21, :cond_15e

    const/4 v15, 0x0

    :goto_147
    const/high16 v16, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v16}, Lfr/testudo/spacecorsair/mod/ModFx;->sprTex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    goto :goto_ef

    .line 538
    :cond_14d
    const v2, 0x3d4ccccd    # 0.05f

    const v3, 0x3d75c28f    # 0.06f

    mul-float v3, v3, v23

    add-float/2addr v2, v3

    goto :goto_fb

    .line 540
    :cond_157
    const/4 v2, 0x0

    goto :goto_110

    :cond_159
    move-object/from16 v2, v20

    .line 541
    goto :goto_114

    :cond_15c
    const/4 v13, 0x0

    goto :goto_143

    :cond_15e
    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_147
.end method

.method private static scr(Lfr/testudo/spacecorsair/business/player/PlayerShip;FFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 8

    .prologue
    const/high16 v3, 0x44800000    # 1024.0f

    .line 352
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenCenter:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 353
    sget v1, Lfr/testudo/spacecorsair/mod/ModAnchor;->D:F

    mul-float/2addr v1, p1

    div-float/2addr v1, v3

    sget v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->D:F

    mul-float/2addr v2, p2

    div-float/2addr v2, v3

    invoke-virtual {p3, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 354
    iget v1, p3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v2, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v1, v2

    iget v2, p3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float/2addr v0, v2

    invoke-virtual {p3, v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 355
    return-object p3
.end method

.method private static segDeg(I)F
    .registers 5

    .prologue
    .line 415
    const/high16 v0, -0x3d100000    # -120.0f

    const/high16 v1, 0x41700000    # 15.0f

    int-to-float v2, p0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private static shatter(Lfr/testudo/spacecorsair/business/player/PlayerShip;FF)V
    .registers 30

    .prologue
    .line 492
    const-string v2, "lev_anchor_seg"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    .line 493
    const/high16 v18, 0x44250000    # 660.0f

    const/high16 v3, 0x42f00000    # 120.0f

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->brokeFrac:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    mul-float v19, v3, v4

    .line 494
    const/high16 v20, 0x43400000    # 192.0f

    const/high16 v21, 0x42e80000    # 116.0f

    const v3, -0x3bcd4000    # -715.0f

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v21, v4

    add-float v22, v3, v4

    .line 495
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e2e147b    # 0.17f

    div-float v5, p2, v5

    sub-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v23

    .line 496
    const/4 v3, 0x0

    const v4, 0x3e2e147b    # 0.17f

    sub-float v4, p2, v4

    const v5, 0x3f547ae1    # 0.83f

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v24

    .line 497
    const/4 v3, 0x0

    move/from16 v17, v3

    :goto_3c
    const/16 v3, 0x10

    move/from16 v0, v17

    if-ge v0, v3, :cond_164

    .line 498
    invoke-static/range {v17 .. v17}, Lfr/testudo/spacecorsair/mod/ModAnchor;->segDeg(I)F

    move-result v25

    .line 499
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    add-float v4, v4, v19

    cmpl-float v3, v3, v4

    if-lez v3, :cond_57

    .line 497
    :cond_52
    :goto_52
    add-int/lit8 v3, v17, 0x1

    move/from16 v17, v3

    goto :goto_3c

    .line 500
    :cond_57
    mul-float v3, v24, v24

    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v5, 0x42480000    # 50.0f

    move/from16 v0, v17

    int-to-float v6, v0

    const v7, 0x40133333    # 2.3f

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    mul-float v26, v3, v4

    .line 501
    const/4 v3, 0x0

    cmpl-float v3, v23, v3

    if-lez v3, :cond_131

    const v3, 0x3f666666    # 0.9f

    :goto_76
    mul-float v11, p1, v3

    .line 502
    move/from16 v0, v22

    neg-float v3, v0

    add-float v3, v3, v26

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-static {v0, v1, v3, v4}, Lfr/testudo/spacecorsair/mod/ModAnchor;->arcAt(Lfr/testudo/spacecorsair/business/player/PlayerShip;FFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 503
    if-eqz v2, :cond_df

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModAnchor;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget v5, Lfr/testudo/spacecorsair/mod/ModAnchor;->D:F

    mul-float v5, v5, v20

    const/high16 v6, 0x44800000    # 1024.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3ecccccd    # 0.4f

    mul-float v7, v7, v24

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    sget v6, Lfr/testudo/spacecorsair/mod/ModAnchor;->D:F

    mul-float v6, v6, v21

    const/high16 v7, 0x44800000    # 1024.0f

    div-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    add-float v7, v7, v25

    const/high16 v8, 0x41c80000    # 25.0f

    mul-float v8, v8, v24

    move/from16 v0, v17

    int-to-float v9, v0

    const v10, 0x3fd9999a    # 1.7f

    mul-float/2addr v9, v10

    float-to-double v12, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v9, v12

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 504
    const/4 v8, 0x0

    cmpl-float v8, v23, v8

    if-lez v8, :cond_14f

    const/high16 v8, 0x3f800000    # 1.0f

    :goto_c7
    const/4 v9, 0x0

    cmpl-float v9, v23, v9

    if-lez v9, :cond_156

    const/high16 v9, 0x3f800000    # 1.0f

    :goto_ce
    const/4 v10, 0x0

    cmpl-float v10, v23, v10

    if-lez v10, :cond_15d

    const/high16 v10, 0x3f800000    # 1.0f

    :goto_d5
    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    .line 503
    invoke-static/range {v2 .. v16}, Lfr/testudo/spacecorsair/mod/ModFx;->sprTex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    .line 505
    :cond_df
    const/4 v3, 0x0

    cmpl-float v3, v24, v3

    if-lez v3, :cond_52

    rem-int/lit8 v3, v17, 0x2

    if-nez v3, :cond_52

    .line 506
    const/high16 v3, 0x40800000    # 4.0f

    add-float v3, v3, v25

    const v4, 0x3fcccccd    # 1.6f

    mul-float v4, v4, v26

    add-float v4, v4, v18

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModAnchor;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModAnchor;->arcAt(Lfr/testudo/spacecorsair/business/player/PlayerShip;FFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 507
    const-string v3, "fx_hex"

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModAnchor;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget v6, Lfr/testudo/spacecorsair/mod/ModAnchor;->D:F

    const v7, 0x3d23d70a    # 0.04f

    mul-float/2addr v6, v7

    sget v7, Lfr/testudo/spacecorsair/mod/ModAnchor;->D:F

    const v8, 0x3d23d70a    # 0.04f

    mul-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    mul-int/lit8 v9, v17, 0x25

    int-to-float v9, v9

    add-float/2addr v8, v9

    const/high16 v9, 0x430c0000    # 140.0f

    mul-float v9, v9, v24

    add-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3f4ccccd    # 0.8f

    const v11, 0x3f19999a    # 0.6f

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v12, v12, v24

    mul-float v12, v12, p1

    const/4 v13, 0x1

    invoke-static/range {v3 .. v13}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    goto/16 :goto_52

    .line 501
    :cond_131
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, v24

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const v3, 0x3e99999a    # 0.3f

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v5, v5, v24

    mul-float/2addr v3, v5

    float-to-double v8, v3

    cmpg-double v3, v6, v8

    if-gez v3, :cond_14c

    const v3, 0x3e4ccccd    # 0.2f

    :goto_149
    mul-float/2addr v3, v4

    goto/16 :goto_76

    :cond_14c
    const/high16 v3, 0x3f400000    # 0.75f

    goto :goto_149

    .line 504
    :cond_14f
    sget-object v8, Lfr/testudo/spacecorsair/mod/ModAnchor;->LOW:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    goto/16 :goto_c7

    :cond_156
    sget-object v9, Lfr/testudo/spacecorsair/mod/ModAnchor;->LOW:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    goto/16 :goto_ce

    :cond_15d
    sget-object v10, Lfr/testudo/spacecorsair/mod/ModAnchor;->LOW:[F

    const/4 v12, 0x2

    aget v10, v10, v12

    goto/16 :goto_d5

    .line 510
    :cond_164
    const/4 v2, 0x0

    cmpl-float v2, v24, v2

    if-lez v2, :cond_1ac

    const v2, 0x3f19999a    # 0.6f

    cmpg-float v2, v24, v2

    if-gez v2, :cond_1ac

    .line 511
    sget-object v4, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenCenter:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 512
    sget v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->D:F

    const v3, 0x3f266666    # 0.65f

    const v5, 0x3f666666    # 0.9f

    mul-float v5, v5, v24

    add-float/2addr v3, v5

    mul-float v6, v2, v3

    .line 513
    const-string v2, "fx_shock"

    iget v3, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    const/4 v7, 0x0

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModAnchor;->LOW:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    sget-object v9, Lfr/testudo/spacecorsair/mod/ModAnchor;->LOW:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModAnchor;->LOW:[F

    const/4 v11, 0x2

    aget v10, v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float v11, v11, p1

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3f19999a    # 0.6f

    div-float v13, v24, v13

    sub-float/2addr v12, v13

    mul-float/2addr v11, v12

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 515
    :cond_1ac
    return-void
.end method

.method private static springs(J)V
    .registers 10

    .prologue
    .line 187
    long-to-float v0, p0

    const/high16 v1, 0x41800000    # 16.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 188
    const/4 v0, 0x0

    :goto_b
    const/16 v2, 0x10

    if-ge v0, v2, :cond_53

    .line 189
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->dentV:[F

    aget v3, v2, v0

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->dent:[F

    aget v4, v4, v0

    neg-float v4, v4

    const v5, 0x3e6147ae    # 0.22f

    mul-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    aput v3, v2, v0

    .line 190
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->dentV:[F

    aget v3, v2, v0

    const-wide v4, 0x3fe8f5c28f5c28f6L    # 0.78

    float-to-double v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    aput v3, v2, v0

    .line 191
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->dent:[F

    aget v3, v2, v0

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->dentV:[F

    aget v4, v4, v0

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    aput v3, v2, v0

    .line 192
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->glowSeg:[F

    aget v3, v2, v0

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    float-to-double v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    aput v3, v2, v0

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 194
    :cond_53
    sget v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->agit:F

    const-wide v2, 0x3fef0a3d70a3d70aL    # 0.97

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v0, v1

    sput v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->agit:F

    .line 195
    return-void
.end method

.method public static tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 12

    .prologue
    .line 64
    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x64

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->lastJ:J

    .line 65
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v1, v0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 67
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->stageAt:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-gtz v0, :cond_2a

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->stageAt:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_48

    .line 68
    :cond_2a
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->stageAt:J

    .line 69
    const/4 v0, 0x0

    .line 71
    :try_start_2d
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCaps;->profile(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Lfr/testudo/spacecorsair/mod/ModCaps$Profile;

    move-result-object v4

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->is(Lfr/testudo/spacecorsair/mod/ModCaps$Profile;)Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->currentShip()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->level(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->stage(I)I
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_42} :catch_a0

    move-result v0

    .line 75
    :cond_43
    :goto_43
    const/4 v4, 0x4

    if-lt v0, v4, :cond_a3

    :goto_46
    sput v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->stage:I

    .line 77
    :cond_48
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    if-eqz v0, :cond_a5

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v4

    .line 78
    :goto_53
    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-lez v4, :cond_c3

    .line 79
    sget v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->cur:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_a7

    sput v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->cur:F

    .line 82
    :cond_61
    :goto_61
    sput v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->cap:F

    .line 87
    :goto_63
    sget v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->stage:I

    if-eqz v0, :cond_78

    if-nez v1, :cond_78

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-nez v0, :cond_78

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v0, :cond_78

    sget v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->cap:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_d5

    .line 88
    :cond_78
    sget v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->state:I

    if-eqz v0, :cond_81

    const-string v0, "off"

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModAnchor;->end(Lfr/testudo/spacecorsair/business/player/PlayerShip;Ljava/lang/String;)V

    .line 89
    :cond_81
    const-wide/16 v0, 0x0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->stillMs:J

    .line 90
    sget v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->cap:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9f

    sget v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->cap:F

    sget v1, Lfr/testudo/spacecorsair/mod/ModAnchor;->cur:F

    sget v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->cap:F

    long-to-float v3, p1

    mul-float/2addr v2, v3

    const v3, 0x46c35000    # 25000.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->cur:F

    .line 128
    :cond_9f
    :goto_9f
    return-void

    .line 72
    :catch_a0
    move-exception v0

    .line 73
    const/4 v0, 0x0

    goto :goto_43

    .line 75
    :cond_a3
    const/4 v0, 0x0

    goto :goto_46

    .line 77
    :cond_a5
    const/4 v0, 0x0

    goto :goto_53

    .line 80
    :cond_a7
    sget v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->cap:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_b4

    sget v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->share:F

    mul-float/2addr v4, v0

    sput v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->cur:F

    goto :goto_61

    .line 81
    :cond_b4
    sget v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->cap:F

    cmpl-float v4, v0, v4

    if-eqz v4, :cond_61

    sget v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->cur:F

    sget v5, Lfr/testudo/spacecorsair/mod/ModAnchor;->cap:F

    div-float/2addr v4, v5

    mul-float/2addr v4, v0

    sput v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->cur:F

    goto :goto_61

    .line 84
    :cond_c3
    sget v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->cap:F

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_d1

    sget v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->cur:F

    sget v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->cap:F

    div-float/2addr v0, v4

    sput v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->share:F

    .line 85
    :cond_d1
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->cap:F

    goto :goto_63

    .line 93
    :cond_d5
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModAnchor;->trying(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z

    move-result v0

    .line 94
    invoke-static {p1, p2}, Lfr/testudo/spacecorsair/mod/ModAnchor;->springs(J)V

    .line 95
    sget v1, Lfr/testudo/spacecorsair/mod/ModAnchor;->state:I

    packed-switch v1, :pswitch_data_20c

    goto :goto_9f

    .line 97
    :pswitch_e2
    sget v1, Lfr/testudo/spacecorsair/mod/ModAnchor;->cur:F

    sget v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->cap:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_113

    .line 98
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->regenMs:J

    add-long/2addr v4, p1

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->regenMs:J

    .line 99
    sget v1, Lfr/testudo/spacecorsair/mod/ModAnchor;->cap:F

    sget v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->cur:F

    sget v5, Lfr/testudo/spacecorsair/mod/ModAnchor;->cap:F

    long-to-float v6, p1

    mul-float/2addr v5, v6

    const v6, 0x46c35000    # 25000.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sput v1, Lfr/testudo/spacecorsair/mod/ModAnchor;->cur:F

    .line 100
    sget v1, Lfr/testudo/spacecorsair/mod/ModAnchor;->cur:F

    sget v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->cap:F

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_113

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->fullAt:J

    const-string v1, "v39anchor"

    const-string v2, "recharged"

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_113
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModAnchor;->logMove:Z

    if-eqz v1, :cond_150

    if-eqz v0, :cond_150

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModTitan;->busy()Z

    move-result v1

    if-nez v1, :cond_150

    .line 103
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModAnchor;->logMove:Z

    .line 104
    const-string v1, "v39anchor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moving force "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxPouseeForce:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " speed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/engine/Vector2;->length()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_150
    if-nez v0, :cond_178

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/Vector2;->length()F

    move-result v0

    const v1, 0x3d4ccccd    # 0.05f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_178

    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->stillMs:J

    add-long/2addr v0, p1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->stillMs:J

    .line 107
    :goto_164
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->stillMs:J

    const-wide/16 v2, 0x9c4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_9f

    sget v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->cur:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9f

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModAnchor;->plant(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    goto/16 :goto_9f

    .line 106
    :cond_178
    const-wide/16 v0, 0x0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->stillMs:J

    goto :goto_164

    .line 110
    :pswitch_17d
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->t:J

    add-long/2addr v2, p1

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->t:J

    .line 111
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTitan;->holdForce(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 112
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    long-to-double v4, p1

    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->multiply(F)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 113
    if-eqz v0, :cond_1ac

    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->tryMs:J

    add-long/2addr v0, p1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->tryMs:J

    .line 114
    :goto_19f
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->tryMs:J

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-ltz v0, :cond_9f

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModAnchor;->lift(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    goto/16 :goto_9f

    .line 113
    :cond_1ac
    const-wide/16 v0, 0x0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->tryMs:J

    goto :goto_19f

    .line 117
    :pswitch_1b1
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->t:J

    add-long/2addr v0, p1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->t:J

    .line 118
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->tryMs:J

    add-long/2addr v0, p1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->tryMs:J

    .line 119
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->tryMs:J

    const-wide/16 v2, 0x9c4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_9f

    const/4 v0, 0x3

    sput v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->state:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->tryMs:J

    const-string v0, "v39anchor"

    const-string v1, "fold"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9f

    .line 122
    :pswitch_1d3
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->t:J

    add-long/2addr v0, p1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->t:J

    .line 123
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->tryMs:J

    add-long/2addr v0, p1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->tryMs:J

    const-wide/16 v2, 0x320

    cmp-long v0, v0, v2

    if-ltz v0, :cond_9f

    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->state:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->stillMs:J

    const-wide/16 v0, 0x0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModAnchor;->tryMs:J

    const-string v0, "v39anchor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "down charge "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModAnchor;->pct()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9f

    .line 95
    :pswitch_data_20c
    .packed-switch 0x0
        :pswitch_e2
        :pswitch_17d
        :pswitch_1b1
        :pswitch_1d3
    .end packed-switch
.end method

.method private static trying(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 132
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isBoosterEnabled:Z

    if-eqz v1, :cond_6

    .line 134
    :cond_5
    :goto_5
    return v0

    .line 133
    :cond_6
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    .line 134
    if-eqz v1, :cond_1a

    iget v1, v1, Lfr/testudo/spacecorsair/engine/GameThread;->gazEventIndex:I

    if-ltz v1, :cond_1a

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->curPouseePourcentage:F

    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_5

    :cond_1a
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static wall(Lfr/testudo/spacecorsair/business/player/PlayerShip;FFF)V
    .registers 31

    .prologue
    .line 423
    const-string v2, "lev_anchor_seg"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v20

    const-string v2, "lev_anchor_end"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v19

    .line 424
    if-eqz v20, :cond_10

    if-nez v19, :cond_11

    .line 448
    :cond_10
    return-void

    .line 425
    :cond_11
    const/high16 v22, 0x43400000    # 192.0f

    const/high16 v23, 0x42e80000    # 116.0f

    const v2, -0x3bcd4000    # -715.0f

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v23, v3

    add-float v24, v2, v3

    .line 426
    sget v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->cap:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_80

    sget v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->cur:F

    sget v3, Lfr/testudo/spacecorsair/mod/ModAnchor;->cap:F

    div-float/2addr v2, v3

    move/from16 v17, v2

    .line 427
    :goto_2c
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3e99999a    # 0.3f

    sub-float v4, v4, v17

    const v5, 0x3e99999a    # 0.3f

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v25

    .line 428
    sget v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->state:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_84

    const/high16 v2, 0x3f800000    # 1.0f

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->tryMs:J

    long-to-float v3, v4

    const v4, 0x451c4000    # 2500.0f

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    move/from16 v18, v2

    .line 429
    :goto_54
    const v2, 0x40466666    # 3.1f

    const/high16 v3, 0x40c00000    # 6.0f

    sget v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->agit:F

    mul-float/2addr v3, v4

    add-float v26, v2, v3

    .line 430
    const/4 v2, 0x0

    move/from16 v21, v2

    :goto_61
    const/16 v2, 0x10

    move/from16 v0, v21

    if-ge v0, v2, :cond_10

    .line 431
    invoke-static/range {v21 .. v21}, Lfr/testudo/spacecorsair/mod/ModAnchor;->segDeg(I)F

    move-result v7

    .line 432
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x42f00000    # 120.0f

    div-float/2addr v2, v3

    .line 433
    const v3, 0x3d8f5c29    # 0.07f

    add-float v3, v3, p2

    cmpl-float v3, v2, v3

    if-lez v3, :cond_92

    .line 430
    :goto_7b
    add-int/lit8 v2, v21, 0x1

    move/from16 v21, v2

    goto :goto_61

    .line 426
    :cond_80
    const/4 v2, 0x0

    move/from16 v17, v2

    goto :goto_2c

    .line 428
    :cond_84
    sget v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->state:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8e

    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v18, v2

    goto :goto_54

    :cond_8e
    const/4 v2, 0x0

    move/from16 v18, v2

    goto :goto_54

    .line 434
    :cond_92
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3d8f5c29    # 0.07f

    add-float v5, v5, p2

    sub-float v2, v5, v2

    const v5, 0x3e0f5c29    # 0.14f

    div-float/2addr v2, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 435
    const v3, 0x3f0ccccd    # 0.55f

    const v4, 0x3e19999a    # 0.15f

    mul-float v5, p3, v26

    move/from16 v0, v21

    int-to-float v6, v0

    const v8, 0x3f666666    # 0.9f

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v5, v8

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const v4, 0x3dcccccd    # 0.1f

    const v5, 0x40e9999a    # 7.3f

    const/high16 v6, 0x40800000    # 4.0f

    sget v8, Lfr/testudo/spacecorsair/mod/ModAnchor;->agit:F

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    mul-float v5, v5, p3

    move/from16 v0, v21

    int-to-float v6, v0

    const v8, 0x3fd9999a    # 1.7f

    mul-float/2addr v6, v8

    sub-float/2addr v5, v6

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v5, v8

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 436
    mul-float v2, v2, p1

    mul-float/2addr v2, v3

    const v3, 0x3f19999a    # 0.6f

    const v4, 0x3ecccccd    # 0.4f

    mul-float v4, v4, v17

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3eb33333    # 0.35f

    sget v5, Lfr/testudo/spacecorsair/mod/ModAnchor;->agit:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    .line 437
    const/4 v3, 0x0

    cmpl-float v3, v25, v3

    if-lez v3, :cond_10b

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float v3, v3, v25

    float-to-double v8, v3

    cmpg-double v3, v4, v8

    if-gez v3, :cond_10b

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v2, v3

    .line 438
    :cond_10b
    const/4 v3, 0x0

    cmpl-float v3, v18, v3

    if-lez v3, :cond_1f3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const v3, 0x3d75c28f    # 0.06f

    const v6, 0x3e99999a    # 0.3f

    mul-float v6, v6, v18

    add-float/2addr v3, v6

    float-to-double v8, v3

    cmpg-double v3, v4, v8

    if-gez v3, :cond_1f3

    const v3, 0x3e19999a    # 0.15f

    mul-float/2addr v2, v3

    move v11, v2

    .line 439
    :goto_127
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x42f00000    # 120.0f

    div-float v3, v7, v3

    move/from16 v0, p3

    invoke-static {v3, v0}, Lfr/testudo/spacecorsair/mod/ModAnchor;->flash(FF)F

    move-result v3

    const v4, 0x3f333333    # 0.7f

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModAnchor;->glowSeg:[F

    aget v5, v5, v21

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 440
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->ICE:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModAnchor;->LOW:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->ICE:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sub-float/2addr v3, v4

    mul-float v3, v3, v25

    add-float/2addr v2, v3

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModAnchor;->ICE:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->LOW:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModAnchor;->ICE:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    sub-float/2addr v4, v5

    mul-float v4, v4, v25

    add-float/2addr v3, v4

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->ICE:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModAnchor;->LOW:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModAnchor;->ICE:[F

    const/4 v8, 0x2

    aget v6, v6, v8

    sub-float/2addr v5, v6

    mul-float v5, v5, v25

    add-float/2addr v4, v5

    .line 441
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModAnchor;->HOTW:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-float/2addr v5, v2

    mul-float/2addr v5, v12

    add-float v8, v2, v5

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->HOTW:[F

    const/4 v5, 0x1

    aget v2, v2, v5

    sub-float/2addr v2, v3

    mul-float/2addr v2, v12

    add-float v9, v3, v2

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->HOTW:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    sub-float/2addr v2, v4

    mul-float/2addr v2, v12

    add-float v10, v4, v2

    .line 442
    move/from16 v0, v24

    neg-float v2, v0

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModAnchor;->dent:[F

    aget v3, v3, v21

    sub-float/2addr v2, v3

    .line 443
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModAnchor;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    invoke-static {v0, v7, v2, v3}, Lfr/testudo/spacecorsair/mod/ModAnchor;->arcAt(Lfr/testudo/spacecorsair/business/player/PlayerShip;FFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 444
    if-eqz v21, :cond_1ab

    const/16 v2, 0xf

    move/from16 v0, v21

    if-ne v0, v2, :cond_1e9

    :cond_1ab
    const/4 v2, 0x1

    .line 445
    :goto_1ac
    if-nez v21, :cond_1eb

    const/high16 v13, 0x3f800000    # 1.0f

    :goto_1b0
    if-nez v21, :cond_1ed

    const/4 v15, 0x0

    .line 446
    :goto_1b3
    if-eqz v2, :cond_1f0

    move-object/from16 v2, v19

    :goto_1b7
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModAnchor;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget v5, Lfr/testudo/spacecorsair/mod/ModAnchor;->D:F

    mul-float v5, v5, v22

    const/high16 v6, 0x44800000    # 1024.0f

    div-float/2addr v5, v6

    sget v6, Lfr/testudo/spacecorsair/mod/ModAnchor;->D:F

    mul-float v6, v6, v23

    const/high16 v14, 0x44800000    # 1024.0f

    div-float/2addr v6, v14

    move-object/from16 v0, p0

    iget v14, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    add-float/2addr v7, v14

    const/high16 v14, 0x3f800000    # 1.0f

    const v16, 0x3f4ccccd    # 0.8f

    mul-float v12, v12, v16

    mul-float v12, v12, p1

    add-float/2addr v11, v12

    invoke-static {v14, v11}, Ljava/lang/Math;->min(FF)F

    move-result v11

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v16}, Lfr/testudo/spacecorsair/mod/ModFx;->sprTex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    goto/16 :goto_7b

    .line 444
    :cond_1e9
    const/4 v2, 0x0

    goto :goto_1ac

    .line 445
    :cond_1eb
    const/4 v13, 0x0

    goto :goto_1b0

    :cond_1ed
    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_1b3

    :cond_1f0
    move-object/from16 v2, v20

    .line 446
    goto :goto_1b7

    :cond_1f3
    move v11, v2

    goto/16 :goto_127
.end method
