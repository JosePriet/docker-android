.class public final Lfr/testudo/spacecorsair/mod/ModTitanAI;
.super Ljava/lang/Object;
.source "ModTitanAI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/mod/ModTitanAI$T;
    }
.end annotation


# static fields
.field private static boostWas:Z

.field private static final callAt:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static callMs:I

.field private static callText:Ljava/lang/String;

.field private static callUntil:J

.field private static cb:F

.field private static cg:F

.field private static cr:F

.field static noBoostMs:I

.field static noMissileMs:I

.field static radarMs:I

.field private static savedRadar:I

.field private static final st:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;",
            "Lfr/testudo/spacecorsair/mod/ModTitanAI$T;",
            ">;"
        }
    .end annotation
.end field

.field private static final v:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static final w:Lfr/testudo/spacecorsair/engine/Vector2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->st:Ljava/util/Map;

    .line 56
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->v:Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->w:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 59
    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->savedRadar:I

    .line 138
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->callAt:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static callout(Ljava/lang/String;Ljava/lang/String;FFFI)V
    .registers 10

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->callText:Ljava/lang/String;

    .line 142
    sput p5, Lfr/testudo/spacecorsair/mod/ModTitanAI;->callMs:I

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p5

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->callUntil:J

    .line 144
    sput p2, Lfr/testudo/spacecorsair/mod/ModTitanAI;->cr:F

    sput p3, Lfr/testudo/spacecorsair/mod/ModTitanAI;->cg:F

    sput p4, Lfr/testudo/spacecorsair/mod/ModTitanAI;->cb:F

    .line 145
    return-void
.end method

.method private static calm(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Lfr/testudo/spacecorsair/mod/ModTitanAI$T;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 78
    iput v0, p1, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    .line 79
    iput v0, p1, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act2:I

    .line 80
    iput v0, p1, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->enrageMs:I

    .line 81
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->undome(Lfr/testudo/spacecorsair/mod/ModTitanAI$T;)V

    .line 82
    iget-object v0, p1, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->mirror:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 83
    iget-object v0, p1, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->trail:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 84
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->a:F

    .line 85
    iget v0, p1, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->baseForce:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_23

    iget v0, p1, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->baseForce:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->pouseeForce:F

    .line 86
    :cond_23
    return-void
.end method

.method static damageIn(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)F
    .registers 19

    .prologue
    .line 397
    move-object/from16 v0, p0

    instance-of v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v2, :cond_8

    if-nez p2, :cond_9

    .line 429
    :cond_8
    :goto_8
    return p1

    .line 398
    :cond_9
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v14

    .line 399
    if-eqz v14, :cond_8

    .line 400
    check-cast p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 401
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->t(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;)Lfr/testudo/spacecorsair/mod/ModTitanAI$T;

    move-result-object v15

    .line 402
    iget-object v2, v14, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    .line 403
    const-string v3, "spartan"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p2

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x43b40000    # 360.0f

    rem-float/2addr v2, v3

    const/high16 v3, 0x42b40000    # 90.0f

    add-float/2addr v2, v3

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/Element;->normalizeSpin(F)F

    move-result v2

    .line 406
    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLive;->normDelta(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x42480000    # 50.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_8

    .line 407
    const-string v2, "shield_ripple"

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p2

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p2

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v7, 0x43820000    # 260.0f

    const-wide/16 v8, 0x17c

    iget-object v10, v14, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v10, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->r:F

    iget-object v11, v14, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v11, v11, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->g:F

    iget-object v12, v14, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v12, v12, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->b:F

    const/4 v13, 0x1

    invoke-static/range {v2 .. v13}, Lfr/testudo/spacecorsair/mod/ModLive;->fx(Ljava/lang/String;IIFFFJFFFZ)V

    .line 408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 409
    iget-wide v4, v15, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->wallSaid:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1f40

    cmp-long v4, v4, v6

    if-lez v4, :cond_a3

    iput-wide v2, v15, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->wallSaid:J

    invoke-static {v14}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->fi(Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;)I

    move-result v3

    invoke-static {v14}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->fi(Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;)I

    move-result v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->data(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    aget-object v4, v2, v4

    iget-object v2, v14, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v5, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->r:F

    iget-object v2, v14, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v6, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->g:F

    iget-object v2, v14, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v7, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->b:F

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->use(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;ILjava/lang/String;FFF)V

    .line 410
    :cond_a3
    const v2, 0x3dcccccd    # 0.1f

    mul-float p1, p1, v2

    goto/16 :goto_8

    .line 412
    :cond_aa
    const-string v3, "ironclad"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_137

    iget-object v3, v15, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->plates:[F

    if-eqz v3, :cond_137

    .line 414
    const/4 v2, 0x0

    :goto_b7
    iget-object v3, v15, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->plates:[F

    array-length v3, v3

    if-ge v2, v3, :cond_8

    .line 415
    iget-object v3, v15, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->plates:[F

    aget v3, v3, v2

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_c8

    .line 414
    add-int/lit8 v2, v2, 0x1

    goto :goto_b7

    .line 416
    :cond_c8
    const v3, 0x3f333333    # 0.7f

    mul-float v14, p1, v3

    .line 417
    iget-object v3, v15, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->plates:[F

    aget v4, v3, v2

    sub-float/2addr v4, v14

    aput v4, v3, v2

    .line 418
    iget-object v3, v15, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->plates:[F

    aget v3, v3, v2

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_130

    .line 419
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->plateX(I)F

    move-result v5

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->plateY(I)F

    move-result v2

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModTitanAI;->w:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v3, v4, v5, v2, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 420
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModTitanAI;->w:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x5

    invoke-static {v2, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModWreck;->debris(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;FI)V

    .line 421
    const-string v2, "fx_sparks_sheet"

    const/4 v3, 0x4

    const/16 v4, 0x10

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModTitanAI;->w:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModTitanAI;->w:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v7, 0x43960000    # 300.0f

    const-wide/16 v8, 0x1f4

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f4ccccd    # 0.8f

    const v12, 0x3ecccccd    # 0.4f

    const/4 v13, 0x1

    invoke-static/range {v2 .. v13}, Lfr/testudo/spacecorsair/mod/ModLive;->fx(Ljava/lang/String;IIFFFJFFFZ)V

    .line 422
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->spanish()Z

    move-result v2

    if-eqz v2, :cond_134

    const-string v2, "PLACA DESTRUIDA"

    :goto_123
    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f4ccccd    # 0.8f

    const v5, 0x3e99999a    # 0.3f

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 424
    :cond_130
    sub-float p1, p1, v14

    goto/16 :goto_8

    .line 422
    :cond_134
    const-string v2, "ARMOUR PLATE DOWN"

    goto :goto_123

    .line 426
    :cond_137
    const-string v3, "varn"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, v15, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    if-lez v2, :cond_8

    .line 427
    const/high16 v2, 0x3f000000    # 0.5f

    mul-float p1, p1, v2

    goto/16 :goto_8
.end method

.method static data(I)[Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->spanish()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV30Data;->TITAN_ES:[[Ljava/lang/String;

    aget-object v0, v0, p0

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV30Data;->TITAN_EN:[[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_a
.end method

.method private static dir(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)V
    .registers 9

    .prologue
    .line 516
    iget v0, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v1, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v0, v1

    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v2, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v1, v2

    .line 517
    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 518
    div-float/2addr v0, v2

    div-float/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 519
    return-void
.end method

.method static draw(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;)V
    .registers 22

    .prologue
    .line 441
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModTitanAI;->st:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;

    .line 442
    if-nez v13, :cond_e

    .line 506
    :cond_d
    :goto_d
    return-void

    .line 443
    :cond_e
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v14, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 444
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 445
    move-object/from16 v0, p1

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v15, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    .line 446
    const v18, 0x44bb8000    # 1500.0f

    .line 447
    const-string v2, "spartan"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b7

    .line 448
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v2, :cond_74

    .line 449
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    const/4 v4, 0x0

    move/from16 v0, v18

    neg-float v5, v0

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModTitanAI;->w:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 450
    const-string v2, "shield_segment"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitanAI;->w:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitanAI;->w:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v5, 0x0

    add-float/2addr v4, v5

    const v5, 0x3f666666    # 0.9f

    mul-float v5, v5, v18

    const v6, 0x3f666666    # 0.9f

    mul-float v6, v6, v18

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    move-object/from16 v0, p1

    iget-object v8, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v8, v8, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->r:F

    move-object/from16 v0, p1

    iget-object v9, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v9, v9, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->g:F

    move-object/from16 v0, p1

    iget-object v10, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v10, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->b:F

    const v11, 0x3f0ccccd    # 0.55f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    .line 452
    :cond_74
    iget v2, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->enrageMs:I

    if-lez v2, :cond_d

    const-string v2, "shield_shell"

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x45af0000    # 5600.0f

    const/high16 v6, 0x45af0000    # 5600.0f

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget-object v8, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v8, v8, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->r:F

    move-object/from16 v0, p1

    iget-object v9, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v9, v9, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->g:F

    move-object/from16 v0, p1

    iget-object v10, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v10, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->b:F

    const v11, 0x3eb33333    # 0.35f

    const v12, 0x3dcccccd    # 0.1f

    move-wide/from16 v0, v16

    long-to-double v14, v0

    const-wide/high16 v16, 0x4069000000000000L    # 200.0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v13, v14

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    goto/16 :goto_d

    .line 453
    :cond_b7
    const-string v2, "reaver"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_185

    if-eqz v14, :cond_185

    iget v2, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    if-gtz v2, :cond_c9

    iget v2, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act2:I

    if-lez v2, :cond_185

    .line 454
    :cond_c9
    iget v2, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    if-lez v2, :cond_116

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v4, v14, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v5, v14, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3ecccccd    # 0.4f

    const v8, 0x3e19999a    # 0.15f

    const v9, 0x3f666666    # 0.9f

    invoke-static/range {v2 .. v9}, Lfr/testudo/spacecorsair/mod/ModFx;->line(FFFFFFFF)V

    .line 456
    const-string v2, "fx_beam"

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v5, v14, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v6, v14, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v7, 0x41e00000    # 28.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3ee66666    # 0.45f

    const v10, 0x3e4ccccd    # 0.2f

    const v11, 0x3f333333    # 0.7f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->strip(Ljava/lang/String;FFFFFFFFFZ)V

    .line 458
    :cond_116
    iget v2, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act2:I

    if-lez v2, :cond_d

    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    const/4 v4, 0x0

    move/from16 v0, v18

    neg-float v5, v0

    const v6, 0x3ed70a3d    # 0.42f

    mul-float/2addr v5, v6

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModTitanAI;->w:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 460
    const-string v2, "fx_fire"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitanAI;->w:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitanAI;->w:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v5, v5, v18

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v6, v6, v18

    move-wide/from16 v0, v16

    long-to-float v7, v0

    const/high16 v8, 0x40800000    # 4.0f

    div-float/2addr v7, v8

    const/high16 v8, 0x43b40000    # 360.0f

    rem-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f000000    # 0.5f

    const v10, 0x3e19999a    # 0.15f

    const v11, 0x3f666666    # 0.9f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 461
    const-string v2, "fx_beam"

    invoke-static {v15, v2}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->tele(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v5, v14, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v6, v14, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v7, 0x43340000    # 180.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3e99999a    # 0.3f

    const v10, 0x3dcccccd    # 0.1f

    const v11, 0x3eb33333    # 0.35f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->strip(Ljava/lang/String;FFFFFFFFFZ)V

    goto/16 :goto_d

    .line 463
    :cond_185
    const-string v2, "ironclad"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e8

    iget-object v2, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->plates:[F

    if-eqz v2, :cond_2e8

    .line 464
    const/4 v2, 0x0

    move v14, v2

    :goto_193
    iget-object v2, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->plates:[F

    array-length v2, v2

    if-ge v14, v2, :cond_1db

    .line 465
    iget-object v2, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->plates:[F

    aget v2, v2, v14

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1a5

    .line 464
    :goto_1a1
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto :goto_193

    .line 466
    :cond_1a5
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    invoke-static {v14}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->plateX(I)F

    move-result v4

    invoke-static {v14}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->plateY(I)F

    move-result v5

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModTitanAI;->w:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 467
    const-string v2, "fx_hex"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitanAI;->w:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitanAI;->w:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x43960000    # 300.0f

    const/high16 v6, 0x43960000    # 300.0f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f4ccccd    # 0.8f

    const v10, 0x3eb33333    # 0.35f

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    goto :goto_1a1

    .line 469
    :cond_1db
    iget v2, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    if-lez v2, :cond_d

    .line 470
    iget v2, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    int-to-float v2, v2

    const/high16 v3, 0x44fa0000    # 2000.0f

    div-float v14, v2, v3

    .line 471
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f000000    # 0.5f

    move-wide/from16 v0, v16

    long-to-double v4, v0

    const-wide v6, 0x4051800000000000L    # 70.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    add-float v18, v2, v3

    .line 472
    const-string v2, "fx_glow"

    iget-object v3, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->p1:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v4, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->p1:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x44610000    # 900.0f

    const/high16 v6, 0x44610000    # 900.0f

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3e4ccccd    # 0.2f

    const v10, 0x3dcccccd    # 0.1f

    const v11, 0x3eb33333    # 0.35f

    const v12, 0x3e99999a    # 0.3f

    mul-float v12, v12, v18

    add-float/2addr v11, v12

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 473
    const-string v2, "marker_hostile"

    invoke-static {v15, v2}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->tele(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->p1:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v4, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->p1:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x443e0000    # 760.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const v7, 0x3f99999a    # 1.2f

    mul-float/2addr v7, v14

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    const/high16 v6, 0x443e0000    # 760.0f

    const/high16 v7, 0x3f000000    # 0.5f

    const v8, 0x3f99999a    # 1.2f

    mul-float/2addr v8, v14

    add-float/2addr v7, v8

    mul-float/2addr v6, v7

    move-wide/from16 v0, v16

    long-to-float v7, v0

    const/high16 v8, 0x40a00000    # 5.0f

    div-float/2addr v7, v8

    const/high16 v8, 0x43b40000    # 360.0f

    rem-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3e99999a    # 0.3f

    const v10, 0x3e19999a    # 0.15f

    const v11, 0x3f666666    # 0.9f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    .line 474
    const-string v2, "fx_shock"

    iget-object v3, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->p1:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v4, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->p1:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x44430000    # 780.0f

    const/high16 v6, 0x44430000    # 780.0f

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3eb33333    # 0.35f

    const v10, 0x3e19999a    # 0.15f

    const/high16 v11, 0x3f000000    # 0.5f

    const v12, 0x3ecccccd    # 0.4f

    mul-float v12, v12, v18

    add-float/2addr v11, v12

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 475
    iget v2, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    const/16 v3, 0x1f4

    if-ge v2, v3, :cond_d

    .line 476
    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    int-to-float v3, v3

    const/high16 v4, 0x43fa0000    # 500.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 477
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v4, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->p1:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v5, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->p1:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v5, v6

    mul-float/2addr v2, v5

    add-float/2addr v4, v2

    .line 478
    const-string v2, "fx_core"

    const/high16 v5, 0x43200000    # 160.0f

    const/high16 v6, 0x43200000    # 160.0f

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f333333    # 0.7f

    const v10, 0x3eb33333    # 0.35f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 479
    const-string v5, "fx_beam"

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v10, 0x42200000    # 40.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x3f0ccccd    # 0.55f

    const v13, 0x3e4ccccd    # 0.2f

    const/high16 v14, 0x3f000000    # 0.5f

    const/4 v15, 0x1

    move v8, v3

    move v9, v4

    invoke-static/range {v5 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->strip(Ljava/lang/String;FFFFFFFFFZ)V

    goto/16 :goto_d

    .line 482
    :cond_2e8
    const-string v2, "helion"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a4

    .line 483
    iget v2, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    if-lez v2, :cond_369

    .line 484
    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    int-to-float v3, v3

    const v4, 0x453b8000    # 3000.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 485
    iget v3, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->ang0:F

    iget v4, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->ang1:F

    iget v5, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->ang0:F

    sub-float/2addr v4, v5

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 486
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v5, v6

    const/high16 v6, 0x45480000    # 3200.0f

    mul-float/2addr v5, v6

    add-float/2addr v5, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x45480000    # 3200.0f

    mul-float/2addr v2, v3

    add-float v6, v4, v2

    .line 487
    const-string v2, "vfx_lance_core"

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v7, 0x42b40000    # 90.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f59999a    # 0.85f

    const v10, 0x3ee66666    # 0.45f

    const v11, 0x3f666666    # 0.9f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->strip(Ljava/lang/String;FFFFFFFFFZ)V

    .line 488
    const-string v2, "fx_glow"

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v7, 0x43820000    # 260.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f333333    # 0.7f

    const v10, 0x3e99999a    # 0.3f

    const v11, 0x3ee66666    # 0.45f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->strip(Ljava/lang/String;FFFFFFFFFZ)V

    .line 490
    :cond_369
    iget v2, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->enrageMs:I

    if-lez v2, :cond_d

    .line 491
    const v2, 0x453b8000    # 3000.0f

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->enrageMs:I

    int-to-float v4, v4

    const v5, 0x451c4000    # 2500.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    mul-float v6, v2, v3

    .line 492
    const-string v2, "vfx_nova_ring"

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v5, 0x40066666    # 2.1f

    mul-float/2addr v5, v6

    const v7, 0x40066666    # 2.1f

    mul-float/2addr v6, v7

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f19999a    # 0.6f

    const v10, 0x3e4ccccd    # 0.2f

    const v11, 0x3f59999a    # 0.85f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    goto/16 :goto_d

    .line 494
    :cond_3a4
    const-string v2, "warden"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46a

    .line 495
    iget v2, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    if-lez v2, :cond_3d9

    if-eqz v14, :cond_3d9

    const-string v2, "fx_beam"

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v5, v14, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v6, v14, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v7, 0x42700000    # 60.0f

    const v8, 0x3ee66666    # 0.45f

    const v9, 0x3f333333    # 0.7f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f0ccccd    # 0.55f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->strip(Ljava/lang/String;FFFFFFFFFZ)V

    .line 496
    :cond_3d9
    iget v2, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act2:I

    if-lez v2, :cond_d

    .line 497
    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act2:I

    int-to-float v3, v3

    const/high16 v4, 0x44960000    # 1200.0f

    div-float/2addr v3, v4

    sub-float v10, v2, v3

    .line 498
    iget-object v2, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->p2:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v3, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->p2:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v4, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->p1:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v3, v4

    add-float v4, v2, v3

    iget-object v2, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->p2:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v3, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->p2:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v5, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->p1:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v3, v5

    add-float v5, v2, v3

    .line 499
    iget-object v2, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->p1:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v3, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->p1:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3e4ccccd    # 0.2f

    const v8, 0x3e4ccccd    # 0.2f

    const v9, 0x3ecccccd    # 0.4f

    const v11, 0x3f19999a    # 0.6f

    mul-float/2addr v11, v10

    add-float/2addr v9, v11

    invoke-static/range {v2 .. v9}, Lfr/testudo/spacecorsair/mod/ModFx;->line(FFFFFFFF)V

    .line 500
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f000000    # 0.5f

    move-wide/from16 v0, v16

    long-to-double v6, v0

    const-wide v8, 0x4056800000000000L    # 90.0

    const-wide/high16 v16, 0x404e000000000000L    # 60.0

    float-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    sub-double v8, v8, v16

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    .line 501
    const-string v3, "fx_beam"

    invoke-static {v15, v3}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->tele(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v3, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->p1:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v3, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->p1:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x42700000    # 60.0f

    const/high16 v9, 0x435c0000    # 220.0f

    mul-float/2addr v9, v10

    add-float v11, v3, v9

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3e800000    # 0.25f

    const v14, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3e800000    # 0.25f

    const v9, 0x3ee66666    # 0.45f

    mul-float/2addr v2, v9

    add-float v15, v3, v2

    const/16 v16, 0x1

    move v9, v4

    move v10, v5

    invoke-static/range {v6 .. v16}, Lfr/testudo/spacecorsair/mod/ModFx;->strip(Ljava/lang/String;FFFFFFFFFZ)V

    goto/16 :goto_d

    .line 503
    :cond_46a
    const-string v2, "kretari"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget v2, Lfr/testudo/spacecorsair/mod/ModTitanAI;->radarMs:I

    if-lez v2, :cond_d

    if-eqz v14, :cond_d

    .line 504
    const-string v2, "fx_shock"

    iget-object v3, v14, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v4, v14, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x44610000    # 900.0f

    const/high16 v6, 0x44610000    # 900.0f

    move-wide/from16 v0, v16

    long-to-float v7, v0

    const/high16 v8, 0x40400000    # 3.0f

    div-float/2addr v7, v8

    const/high16 v8, 0x43b40000    # 360.0f

    rem-float/2addr v7, v8

    const v8, 0x3f4ccccd    # 0.8f

    const v9, 0x3ecccccd    # 0.4f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3eb33333    # 0.35f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    goto/16 :goto_d
.end method

.method static drawCallout(Lfr/testudo/spacecorsair/business/player/PlayerShip;F)V
    .registers 11

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 162
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitanAI;->callText:Ljava/lang/String;

    .line 163
    if-nez v3, :cond_7

    .line 171
    :goto_6
    return-void

    .line 164
    :cond_7
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->callUntil:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 165
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-gtz v2, :cond_18

    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->callText:Ljava/lang/String;

    goto :goto_6

    .line 166
    :cond_18
    long-to-float v2, v0

    const/high16 v4, 0x43fa0000    # 500.0f

    div-float/2addr v2, v4

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sget v4, Lfr/testudo/spacecorsair/mod/ModTitanAI;->callMs:I

    int-to-long v4, v4

    sub-long v0, v4, v0

    long-to-float v0, v0

    const/high16 v1, 0x42f00000    # 120.0f

    div-float/2addr v0, v1

    const v1, 0x3e4ccccd    # 0.2f

    add-float/2addr v0, v1

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    mul-float v7, v2, v0

    .line 167
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextLarge:Lfr/testudo/spacecorsair/textengine/GLText;

    invoke-virtual {v0, v3}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 169
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModTitanAI;->callAt:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    neg-float v0, v0

    neg-float v2, p1

    const v4, 0x3df5c28f    # 0.12f

    mul-float/2addr v2, v4

    invoke-virtual {v1, v0, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 170
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModTitanAI;->callAt:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    sget v4, Lfr/testudo/spacecorsair/mod/ModTitanAI;->cr:F

    sget v5, Lfr/testudo/spacecorsair/mod/ModTitanAI;->cg:F

    sget v6, Lfr/testudo/spacecorsair/mod/ModTitanAI;->cb:F

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->LARGE:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    goto :goto_6
.end method

.method private static enrageCallout(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;I)V
    .registers 11

    .prologue
    const v8, 0x3ecccccd    # 0.4f

    const v3, 0x3eb33333    # 0.35f

    const/high16 v4, 0x3e800000    # 0.25f

    const/4 v7, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 124
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->data(I)[Ljava/lang/String;

    move-result-object v6

    .line 125
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 126
    aget-object v1, v6, v7

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->say(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 127
    if-eqz v0, :cond_30

    const/4 v1, 0x2

    aget-object v1, v6, v1

    const v5, 0x3f19999a    # 0.6f

    invoke-static {v0, v1, v2, v5, v8}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->say(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    const/4 v1, 0x3

    aget-object v1, v6, v1

    const v5, 0x3f19999a    # 0.6f

    invoke-static {v0, v1, v2, v5, v8}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->say(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 128
    :cond_30
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playDanger()V

    .line 129
    const/4 v0, 0x0

    aget-object v0, v6, v0

    aget-object v1, v6, v7

    const/16 v5, 0xbb8

    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->callout(Ljava/lang/String;Ljava/lang/String;FFFI)V

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enrage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v6, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->log(ILjava/lang/String;)V

    .line 131
    return-void
.end method

.method static factionIndex(Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;)I
    .registers 2

    .prologue
    .line 105
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->fi(Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;)I

    move-result v0

    return v0
.end method

.method private static fi(Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;)I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 109
    move v0, v1

    :goto_2
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v2, v2

    if-ge v0, v2, :cond_13

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v2, v2, v0

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    if-ne v2, v3, :cond_10

    .line 110
    :goto_f
    return v0

    .line 109
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_13
    move v0, v1

    .line 110
    goto :goto_f
.end method

.method static forget(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;)V
    .registers 2

    .prologue
    .line 96
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->st:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;

    .line 97
    if-eqz v0, :cond_d

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->calm(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Lfr/testudo/spacecorsair/mod/ModTitanAI$T;)V

    .line 98
    :cond_d
    return-void
.end method

.method private static full(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;)[F
    .registers 5

    .prologue
    const v3, 0x3cf5c28f    # 0.03f

    .line 433
    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    mul-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    mul-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    mul-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    mul-float/2addr v2, v3

    aput v2, v0, v1

    return-object v0
.end method

.method private static lockBoost(Lfr/testudo/spacecorsair/business/player/PlayerShip;I)V
    .registers 3

    .prologue
    .line 63
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->noBoostMs:I

    if-gtz v0, :cond_8

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isBoosterEnabled:Z

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->boostWas:Z

    .line 64
    :cond_8
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->noBoostMs:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->noBoostMs:I

    .line 65
    return-void
.end method

.method private static log(ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 157
    const-string v0, "corsair_nodialog"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "ModTitanAI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v2, v2, p0

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_2a
    return-void
.end method

.method private static mine(Lfr/testudo/spacecorsair/engine/Vector2;)V
    .registers 5

    .prologue
    .line 533
    :try_start_0
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newMine()Lfr/testudo/spacecorsair/business/world/Mine;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    const v2, 0x3d4ccccd    # 0.05f

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/MineSpec;->MINESPEC_2:Lfr/testudo/spacecorsair/business/ennemis/MineSpec;

    invoke-virtual {v0, p0, v1, v2, v3}, Lfr/testudo/spacecorsair/business/world/Mine;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;FLfr/testudo/spacecorsair/business/ennemis/MineSpec;)Lfr/testudo/spacecorsair/business/world/Mine;

    move-result-object v0

    .line 534
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1f} :catch_20

    .line 538
    :goto_1f
    return-void

    .line 535
    :catch_20
    move-exception v0

    goto :goto_1f
.end method

.method private static plateX(I)F
    .registers 3

    .prologue
    .line 436
    rem-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_d

    const/4 v0, -0x1

    :goto_5
    mul-int/lit16 v0, v0, 0x5dc

    int-to-float v0, v0

    const v1, 0x3e23d70a    # 0.16f

    mul-float/2addr v0, v1

    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private static plateY(I)F
    .registers 3

    .prologue
    .line 437
    const/4 v0, 0x2

    if-ge p0, v0, :cond_c

    const/4 v0, -0x1

    :goto_4
    mul-int/lit16 v0, v0, 0x5dc

    int-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_4
.end method

.method private static pull(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/engine/Vector2;F)V
    .registers 6

    .prologue
    .line 510
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModTitanAI;->v:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, p1, v1}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->dir(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 511
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModTitanAI;->v:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float/2addr v1, p2

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModTitanAI;->v:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 512
    return-void
.end method

.method static resetPlayer(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 69
    if-eqz p0, :cond_b

    sget v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->savedRadar:I

    if-ltz v0, :cond_b

    sget v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->savedRadar:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->radarPortee:I

    .line 70
    :cond_b
    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->savedRadar:I

    .line 71
    sput v1, Lfr/testudo/spacecorsair/mod/ModTitanAI;->radarMs:I

    .line 72
    sput v1, Lfr/testudo/spacecorsair/mod/ModTitanAI;->noBoostMs:I

    .line 73
    sput v1, Lfr/testudo/spacecorsair/mod/ModTitanAI;->noMissileMs:I

    .line 74
    return-void
.end method

.method private static run(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;Lfr/testudo/spacecorsair/mod/ModTitanAI$T;Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 22

    .prologue
    .line 207
    invoke-static/range {p0 .. p1}, Lfr/testudo/spacecorsair/mod/ModLive;->titanHostile(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;)Z

    move-result v2

    .line 208
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p3

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v8

    .line 209
    invoke-static/range {p1 .. p1}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->fi(Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;)I

    move-result v3

    .line 210
    move-object/from16 v0, p1

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v9, v4, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    .line 211
    move-object/from16 v0, p2

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->baseForce:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2b

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->pouseeForce:F

    move-object/from16 v0, p2

    iput v4, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->baseForce:F

    .line 212
    :cond_2b
    const-string v4, "ironclad"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    move-object/from16 v0, p2

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->plates:[F

    if-nez v4, :cond_41

    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->full(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;)[F

    move-result-object v4

    move-object/from16 v0, p2

    iput-object v4, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->plates:[F

    .line 213
    :cond_41
    if-eqz v2, :cond_4a

    const v4, 0x45bb8000    # 6000.0f

    cmpl-float v4, v8, v4

    if-lez v4, :cond_7f

    .line 214
    :cond_4a
    move-object/from16 v0, p2

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    if-gtz v3, :cond_70

    move-object/from16 v0, p2

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act2:I

    if-gtz v3, :cond_70

    move-object/from16 v0, p2

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->enrageMs:I

    if-gtz v3, :cond_70

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->a:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_70

    move-object/from16 v0, p2

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->domed:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_77

    :cond_70
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->calm(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Lfr/testudo/spacecorsair/mod/ModTitanAI$T;)V

    .line 215
    :cond_77
    if-nez v2, :cond_7e

    const/4 v2, 0x0

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->engaged:Z

    .line 393
    :cond_7e
    :goto_7e
    return-void

    .line 218
    :cond_7f
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->engaged:Z

    if-nez v2, :cond_bf

    const v2, 0x458ca000    # 4500.0f

    cmpg-float v2, v8, v2

    if-gez v2, :cond_bf

    .line 219
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->engaged:Z

    .line 220
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->data(I)[Ljava/lang/String;

    move-result-object v2

    .line 221
    const-string v4, "spartan"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a5

    const-string v4, "ironclad"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c0

    :cond_a5
    const/4 v4, 0x4

    aget-object v4, v2, v4

    move-object/from16 v0, p1

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v5, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->r:F

    move-object/from16 v0, p1

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v6, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->g:F

    move-object/from16 v0, p1

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v7, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->b:F

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->use(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;ILjava/lang/String;FFF)V

    .line 224
    :cond_bf
    :goto_bf
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->a:I

    int-to-long v4, v2

    sub-long v4, v4, p4

    long-to-int v2, v4

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->a:I

    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->b:I

    int-to-long v4, v2

    sub-long v4, v4, p4

    long-to-int v2, v4

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->b:I

    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->c:I

    int-to-long v4, v2

    sub-long v4, v4, p4

    long-to-int v2, v4

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->c:I

    .line 225
    move-object/from16 v0, p2

    iget v10, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    move-object/from16 v0, p2

    iget v11, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act2:I

    .line 226
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    if-lez v2, :cond_fd

    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    int-to-long v4, v2

    sub-long v4, v4, p4

    long-to-int v2, v4

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    .line 227
    :cond_fd
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act2:I

    if-lez v2, :cond_10f

    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act2:I

    int-to-long v4, v2

    sub-long v4, v4, p4

    long-to-int v2, v4

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act2:I

    .line 228
    :cond_10f
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->enrageMs:I

    if-lez v2, :cond_121

    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->enrageMs:I

    int-to-long v4, v2

    sub-long v4, v4, p4

    long-to-int v2, v4

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->enrageMs:I

    .line 229
    :cond_121
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1c7

    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->life:F

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    div-float/2addr v2, v4

    .line 230
    :goto_133
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->enraged:Z

    if-nez v4, :cond_1cb

    const v4, 0x3e99999a    # 0.3f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1cb

    const/4 v2, 0x1

    move v14, v2

    .line 231
    :goto_142
    if-eqz v14, :cond_14e

    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->enraged:Z

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->enrageCallout(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;I)V

    .line 232
    :cond_14e
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->data(I)[Ljava/lang/String;

    move-result-object v12

    .line 234
    const-string v2, "spartan"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1de

    .line 236
    if-eqz v14, :cond_162

    const/16 v2, 0x2ee0

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->enrageMs:I

    .line 237
    :cond_162
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->enrageMs:I

    if-lez v2, :cond_1cf

    .line 238
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v4, v2, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 239
    const/4 v2, 0x0

    move v3, v2

    :goto_172
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_7e

    .line 240
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/business/Element;

    .line 241
    instance-of v5, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v5, :cond_1bc

    move-object/from16 v0, p0

    if-eq v2, v0, :cond_1bc

    iget-boolean v5, v2, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v5, :cond_1bc

    iget-object v5, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v5

    const v6, 0x45228000    # 2600.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1bc

    move-object/from16 v0, p2

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->domed:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1bc

    .line 242
    move-object/from16 v0, p2

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->domed:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    move-object/from16 v0, p2

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->domedWas:Ljava/util/ArrayList;

    iget-boolean v6, v2, Lfr/testudo/spacecorsair/business/Element;->invincible:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    const/4 v5, 0x1

    iput-boolean v5, v2, Lfr/testudo/spacecorsair/business/Element;->invincible:Z

    .line 239
    :cond_1bc
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_172

    .line 222
    :cond_1c0
    const-string v2, "engaged"

    invoke-static {v3, v2}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->log(ILjava/lang/String;)V

    goto/16 :goto_bf

    .line 229
    :cond_1c7
    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_133

    .line 230
    :cond_1cb
    const/4 v2, 0x0

    move v14, v2

    goto/16 :goto_142

    .line 247
    :cond_1cf
    move-object/from16 v0, p2

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->domed:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7e

    .line 248
    invoke-static/range {p2 .. p2}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->undome(Lfr/testudo/spacecorsair/mod/ModTitanAI$T;)V

    goto/16 :goto_7e

    .line 250
    :cond_1de
    const-string v2, "reaver"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_356

    .line 251
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->a:I

    if-gtz v2, :cond_20e

    const v2, 0x450fc000    # 2300.0f

    cmpg-float v2, v8, v2

    if-gez v2, :cond_20e

    .line 252
    const/16 v2, 0x2710

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->a:I

    const/16 v2, 0x7d0

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    .line 253
    const/4 v2, 0x4

    aget-object v4, v12, v2

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const v7, 0x3e4ccccd    # 0.2f

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->use(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;ILjava/lang/String;FFF)V

    .line 255
    :cond_20e
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    if-lez v2, :cond_224

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const v4, 0x3bc49ba6    # 0.006f

    move-wide/from16 v0, p4

    long-to-float v5, v0

    mul-float/2addr v4, v5

    move-object/from16 v0, p3

    invoke-static {v0, v2, v4}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->pull(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/engine/Vector2;F)V

    .line 256
    :cond_224
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->b:I

    if-gtz v2, :cond_231

    const v2, 0x45228000    # 2600.0f

    cmpg-float v2, v8, v2

    if-ltz v2, :cond_233

    :cond_231
    if-eqz v14, :cond_254

    .line 257
    :cond_233
    const/16 v2, 0x3e80

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->b:I

    const/16 v2, 0xa28

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act2:I

    const/4 v2, 0x0

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->hitDone:Z

    .line 258
    const/4 v2, 0x6

    aget-object v4, v12, v2

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3ee66666    # 0.45f

    const v7, 0x3e19999a    # 0.15f

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->use(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;ILjava/lang/String;FFF)V

    .line 260
    :cond_254
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act2:I

    if-lez v2, :cond_2a5

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p3

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitanAI;->v:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v4}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->dir(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitanAI;->v:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v4, 0x41100000    # 9.0f

    mul-float/2addr v3, v4

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitanAI;->v:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x41100000    # 9.0f

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 263
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->hitDone:Z

    if-nez v2, :cond_2a5

    const v2, 0x4428c000    # 675.0f

    cmpg-float v2, v8, v2

    if-gez v2, :cond_2a5

    .line 264
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->hitDone:Z

    .line 265
    move-object/from16 v0, p3

    iget v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-static {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModV34;->skillHit(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;FZ)V

    .line 266
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/engine/SoundManager;->playShockWave()V

    .line 269
    :cond_2a5
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->enraged:Z

    if-eqz v2, :cond_7e

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 271
    move-object/from16 v0, p2

    iget-wide v4, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->trailAt:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0xdc

    cmp-long v4, v4, v6

    if-lez v4, :cond_315

    .line 272
    move-object/from16 v0, p2

    iput-wide v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->trailAt:J

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    const/4 v4, 0x0

    const v5, 0x441d8000    # 630.0f

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModTitanAI;->w:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 274
    move-object/from16 v0, p2

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->trail:Ljava/util/ArrayList;

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitanAI;->w:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModTitanAI;->w:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-direct {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    move-object/from16 v0, p2

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->trail:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x12

    if-le v2, v3, :cond_2f8

    move-object/from16 v0, p2

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->trail:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 276
    :cond_2f8
    const-string v2, "fx_fire_sheet"

    const/4 v3, 0x4

    const/16 v4, 0x10

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModTitanAI;->w:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModTitanAI;->w:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v7, 0x43d20000    # 420.0f

    const-wide/16 v8, 0x708

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f0ccccd    # 0.55f

    const v12, 0x3e4ccccd    # 0.2f

    const/4 v13, 0x1

    invoke-static/range {v2 .. v13}, Lfr/testudo/spacecorsair/mod/ModLive;->fx(Ljava/lang/String;IIFFFJFFFZ)V

    .line 278
    :cond_315
    const/4 v2, 0x0

    move v3, v2

    :goto_317
    move-object/from16 v0, p2

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->trail:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_7e

    .line 279
    move-object/from16 v0, p2

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->trail:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p3

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v2

    const/high16 v4, 0x43660000    # 230.0f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_352

    move-object/from16 v0, p3

    iget v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    const v3, 0x3ca3d70a    # 0.02f

    mul-float/2addr v2, v3

    move-wide/from16 v0, p4

    long-to-float v3, v0

    mul-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-static {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModV34;->skillHit(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;FZ)V

    goto/16 :goto_7e

    .line 278
    :cond_352
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_317

    .line 282
    :cond_356
    const-string v2, "kretari"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42c

    .line 283
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->a:I

    if-gtz v2, :cond_3a5

    const v2, 0x453b8000    # 3000.0f

    cmpg-float v2, v8, v2

    if-gez v2, :cond_3a5

    .line 284
    const/16 v2, 0x32c8

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->a:I

    .line 285
    const/16 v2, 0xfa0

    sput v2, Lfr/testudo/spacecorsair/mod/ModTitanAI;->radarMs:I

    .line 286
    const/4 v2, 0x4

    aget-object v4, v12, v2

    const v5, 0x3f4ccccd    # 0.8f

    const v6, 0x3ecccccd    # 0.4f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->use(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;ILjava/lang/String;FFF)V

    .line 287
    const-string v2, "fx_spore_sheet"

    const/4 v3, 0x4

    const/16 v4, 0x10

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v7, 0x45480000    # 3200.0f

    const-wide/16 v8, 0x384

    const/high16 v10, 0x3f400000    # 0.75f

    const v11, 0x3ecccccd    # 0.4f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x1

    invoke-static/range {v2 .. v13}, Lfr/testudo/spacecorsair/mod/ModLive;->fx(Ljava/lang/String;IIFFFJFFFZ)V

    .line 289
    :cond_3a5
    if-eqz v14, :cond_3f5

    .line 290
    const/16 v2, 0x1f40

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->enrageMs:I

    .line 291
    const/4 v2, 0x0

    :goto_3ae
    const/4 v3, 0x4

    if-ge v2, v3, :cond_3f5

    .line 292
    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->level:I

    invoke-static {v3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlienRat(I)Lfr/testudo/spacecorsair/business/ennemis/AlienRat;

    move-result-object v3

    .line 293
    int-to-double v4, v2

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    .line 294
    iget-object v6, v3, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p3

    iget-object v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v7, v8

    const/high16 v8, 0x43d20000    # 420.0f

    mul-float/2addr v7, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    const/high16 v5, 0x43d20000    # 420.0f

    mul-float/2addr v4, v5

    invoke-virtual {v6, v7, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 295
    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 296
    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initAttackTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 297
    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    .line 298
    move-object/from16 v0, p2

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->mirror:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    add-int/lit8 v2, v2, 0x1

    goto :goto_3ae

    .line 301
    :cond_3f5
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->enrageMs:I

    if-lez v2, :cond_423

    .line 302
    move-object/from16 v0, p2

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->mirror:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_403
    :goto_403
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-boolean v4, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v4, :cond_403

    iget-object v4, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p3

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p3

    iget v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    iput v4, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->spin:F

    goto :goto_403

    .line 303
    :cond_423
    move-object/from16 v0, p2

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->mirror:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_7e

    .line 304
    :cond_42c
    const-string v2, "varn"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_505

    .line 305
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->a:I

    if-gtz v2, :cond_477

    const v2, 0x45228000    # 2600.0f

    cmpg-float v2, v8, v2

    if-gez v2, :cond_477

    .line 306
    const/16 v2, 0x2328

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->a:I

    .line 307
    const/4 v2, 0x0

    :goto_448
    const/4 v4, 0x3

    if-ge v2, v4, :cond_468

    .line 308
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    add-int/lit8 v6, v2, -0x1

    mul-int/lit16 v6, v6, 0x12c

    int-to-float v6, v6

    const v7, 0x443b8000    # 750.0f

    sget-object v9, Lfr/testudo/spacecorsair/mod/ModTitanAI;->w:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v4, v5, v6, v7, v9}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 309
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitanAI;->w:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->mine(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 307
    add-int/lit8 v2, v2, 0x1

    goto :goto_448

    .line 311
    :cond_468
    const/4 v2, 0x4

    aget-object v4, v12, v2

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f400000    # 0.75f

    const v7, 0x3eb33333    # 0.35f

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->use(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;ILjava/lang/String;FFF)V

    .line 313
    :cond_477
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->b:I

    if-gtz v2, :cond_49f

    const v2, 0x453b8000    # 3000.0f

    cmpg-float v2, v8, v2

    if-gez v2, :cond_49f

    .line 314
    const/16 v2, 0x3a98

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->b:I

    const/16 v2, 0xfa0

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    .line 315
    const/4 v2, 0x6

    aget-object v4, v12, v2

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f400000    # 0.75f

    const v7, 0x3eb33333    # 0.35f

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->use(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;ILjava/lang/String;FFF)V

    .line 317
    :cond_49f
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    if-lez v2, :cond_4e4

    const v2, 0x3e0f5c29    # 0.14f

    :goto_4a8
    move-object/from16 v0, p0

    iput v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->a:F

    .line 318
    if-eqz v14, :cond_4ed

    .line 319
    const/4 v2, 0x0

    :goto_4af
    const/16 v3, 0x8

    if-ge v2, v3, :cond_4e7

    .line 320
    int-to-double v4, v2

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    div-double/2addr v4, v6

    .line 321
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitanAI;->w:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p3

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    const v7, 0x44228000    # 650.0f

    mul-float/2addr v6, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    const v5, 0x44228000    # 650.0f

    mul-float/2addr v4, v5

    invoke-virtual {v3, v6, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 322
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitanAI;->w:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->mine(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 319
    add-int/lit8 v2, v2, 0x1

    goto :goto_4af

    .line 317
    :cond_4e4
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_4a8

    .line 324
    :cond_4e7
    const/16 v2, 0x1388

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->enrageMs:I

    .line 326
    :cond_4ed
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->enrageMs:I

    if-lez v2, :cond_500

    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->baseForce:F

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v2, v3

    :goto_4fa
    move-object/from16 v0, p0

    iput v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->pouseeForce:F

    goto/16 :goto_7e

    :cond_500
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->baseForce:F

    goto :goto_4fa

    .line 327
    :cond_505
    const-string v2, "ironclad"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c8

    .line 328
    if-eqz v14, :cond_52c

    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->full(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;)[F

    move-result-object v2

    move-object/from16 v0, p2

    iput-object v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->plates:[F

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->spanish()Z

    move-result v2

    if-eqz v2, :cond_5c4

    const-string v2, "BLINDAJE RESTAURADO"

    :goto_51f
    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f4ccccd    # 0.8f

    const v6, 0x3e99999a    # 0.3f

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4, v5, v6}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->say(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 329
    :cond_52c
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->a:I

    if-gtz v2, :cond_565

    const v2, 0x456d8000    # 3800.0f

    cmpg-float v2, v8, v2

    if-gez v2, :cond_565

    .line 330
    const/16 v2, 0x1770

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->a:I

    const/16 v2, 0x7d0

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    const/4 v2, 0x0

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->hitDone:Z

    .line 331
    move-object/from16 v0, p2

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->p1:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p3

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 332
    const/4 v2, 0x6

    aget-object v4, v12, v2

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f4ccccd    # 0.8f

    const v7, 0x3e99999a    # 0.3f

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->use(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;ILjava/lang/String;FFF)V

    .line 334
    :cond_565
    if-lez v10, :cond_7e

    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    if-gtz v2, :cond_7e

    move-object/from16 v0, p2

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->hitDone:Z

    if-nez v2, :cond_7e

    .line 335
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->hitDone:Z

    .line 336
    const-string v2, "fx_explosion_big_sheet"

    const/16 v3, 0x8

    const/16 v4, 0x40

    move-object/from16 v0, p2

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->p1:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p2

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->p1:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v7, 0x44610000    # 900.0f

    const-wide/16 v8, 0x384

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f400000    # 0.75f

    const v12, 0x3ecccccd    # 0.4f

    const/4 v13, 0x1

    invoke-static/range {v2 .. v13}, Lfr/testudo/spacecorsair/mod/ModLive;->fx(Ljava/lang/String;IIFFFJFFFZ)V

    .line 337
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/engine/SoundManager;->playRandomExplode()V

    .line 338
    move-object/from16 v0, p3

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p2

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->p1:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v2

    const/high16 v3, 0x43be0000    # 380.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7e

    move-object/from16 v0, p3

    iget v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    const v3, 0x3df5c28f    # 0.12f

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-static {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModV34;->skillHit(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;FZ)V

    goto/16 :goto_7e

    .line 328
    :cond_5c4
    const-string v2, "ARMOUR RESTORED"

    goto/16 :goto_51f

    .line 340
    :cond_5c8
    const-string v2, "helion"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74b

    .line 341
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->a:I

    if-gtz v2, :cond_62c

    const v2, 0x453b8000    # 3000.0f

    cmpg-float v2, v8, v2

    if-gez v2, :cond_62c

    .line 342
    const/16 v2, 0x2ee0

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->a:I

    const/16 v2, 0xbb8

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    .line 343
    move-object/from16 v0, p3

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, v4

    float-to-double v4, v2

    move-object/from16 v0, p3

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v2, v6

    float-to-double v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 344
    const/high16 v4, 0x420c0000    # 35.0f

    sub-float v4, v2, v4

    move-object/from16 v0, p2

    iput v4, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->ang0:F

    const/high16 v4, 0x420c0000    # 35.0f

    add-float/2addr v2, v4

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->ang1:F

    .line 345
    const/4 v2, 0x4

    aget-object v4, v12, v2

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f666666    # 0.9f

    const/high16 v7, 0x3f000000    # 0.5f

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->use(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;ILjava/lang/String;FFF)V

    .line 347
    :cond_62c
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    if-lez v2, :cond_69e

    .line 348
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p2

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    int-to-float v4, v4

    const v5, 0x453b8000    # 3000.0f

    div-float/2addr v4, v5

    sub-float/2addr v2, v4

    .line 349
    move-object/from16 v0, p2

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->ang0:F

    move-object/from16 v0, p2

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->ang1:F

    move-object/from16 v0, p2

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->ang0:F

    sub-float/2addr v5, v6

    mul-float/2addr v2, v5

    add-float/2addr v2, v4

    .line 350
    move-object/from16 v0, p3

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    move-object/from16 v0, p3

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 351
    sub-float v2, v4, v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLive;->normDelta(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v4, 0x40800000    # 4.0f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_69e

    const/high16 v2, 0x45480000    # 3200.0f

    cmpg-float v2, v8, v2

    if-gez v2, :cond_69e

    move-object/from16 v0, p3

    iget v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float/2addr v2, v4

    move-wide/from16 v0, p4

    long-to-float v4, v0

    mul-float/2addr v2, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v2, v4

    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-static {v0, v1, v2, v4}, Lfr/testudo/spacecorsair/mod/ModV34;->skillHit(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;FZ)V

    .line 353
    :cond_69e
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->b:I

    if-gtz v2, :cond_6c6

    const v2, 0x455ac000    # 3500.0f

    cmpg-float v2, v8, v2

    if-gez v2, :cond_6c6

    .line 354
    const/16 v2, 0x1f40

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->b:I

    const/16 v2, 0x384

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act2:I

    .line 355
    const/4 v2, 0x6

    aget-object v4, v12, v2

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f666666    # 0.9f

    const/high16 v7, 0x3f000000    # 0.5f

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->use(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;ILjava/lang/String;FFF)V

    .line 357
    :cond_6c6
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act2:I

    if-lez v2, :cond_6ff

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p3

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitanAI;->v:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v4}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->dir(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitanAI;->v:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    neg-float v3, v3

    const/high16 v4, 0x41300000    # 11.0f

    mul-float/2addr v3, v4

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitanAI;->v:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitanAI;->v:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v5, 0x41300000    # 11.0f

    mul-float/2addr v4, v5

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModTitanAI;->v:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 361
    :cond_6ff
    if-eqz v14, :cond_70c

    const/16 v2, 0x9c4

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->enrageMs:I

    const/4 v2, 0x0

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->hitDone:Z

    .line 362
    :cond_70c
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->enrageMs:I

    if-lez v2, :cond_7e

    .line 363
    const v2, 0x453b8000    # 3000.0f

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p2

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->enrageMs:I

    int-to-float v4, v4

    const v5, 0x451c4000    # 2500.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    .line 364
    move-object/from16 v0, p2

    iget-boolean v3, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->hitDone:Z

    if-nez v3, :cond_7e

    sub-float v2, v8, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x43340000    # 180.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7e

    .line 365
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->hitDone:Z

    .line 366
    move-object/from16 v0, p3

    iget v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    const v3, 0x3e3851ec    # 0.18f

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-static {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModV34;->skillHit(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;FZ)V

    goto/16 :goto_7e

    .line 369
    :cond_74b
    const-string v2, "warden"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 370
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->a:I

    if-gtz v2, :cond_77b

    const v2, 0x45228000    # 2600.0f

    cmpg-float v2, v8, v2

    if-gez v2, :cond_77b

    .line 371
    const/16 v2, 0x2710

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->a:I

    const/16 v2, 0xbb8

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    .line 372
    const/4 v2, 0x4

    aget-object v4, v12, v2

    const/high16 v5, 0x3f000000    # 0.5f

    const v6, 0x3f333333    # 0.7f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->use(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;ILjava/lang/String;FFF)V

    .line 374
    :cond_77b
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    if-lez v2, :cond_791

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const v4, 0x3ba3d70a    # 0.005f

    move-wide/from16 v0, p4

    long-to-float v5, v0

    mul-float/2addr v4, v5

    move-object/from16 v0, p3

    invoke-static {v0, v2, v4}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->pull(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/engine/Vector2;F)V

    .line 375
    :cond_791
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->b:I

    if-gtz v2, :cond_7ba

    const v2, 0x453b8000    # 3000.0f

    cmpg-float v2, v8, v2

    if-gez v2, :cond_7ba

    .line 376
    const/16 v2, 0x2ee0

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->b:I

    .line 377
    const/16 v2, 0xfa0

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->lockBoost(Lfr/testudo/spacecorsair/business/player/PlayerShip;I)V

    .line 378
    const/4 v2, 0x6

    aget-object v4, v12, v2

    const/high16 v5, 0x3f000000    # 0.5f

    const v6, 0x3f333333    # 0.7f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->use(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;ILjava/lang/String;FFF)V

    .line 380
    :cond_7ba
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->c:I

    if-gtz v2, :cond_7fe

    const v2, 0x45834000    # 4200.0f

    cmpg-float v2, v8, v2

    if-gez v2, :cond_7fe

    .line 381
    const/16 v2, 0x2328

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->c:I

    const/16 v2, 0x4b0

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act2:I

    const/4 v2, 0x0

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->hitDone:Z

    .line 382
    move-object/from16 v0, p2

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->p1:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 383
    move-object/from16 v0, p2

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->p2:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p3

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 384
    const/16 v2, 0x8

    aget-object v4, v12, v2

    const/high16 v5, 0x3f000000    # 0.5f

    const v6, 0x3f333333    # 0.7f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->use(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;ILjava/lang/String;FFF)V

    .line 386
    :cond_7fe
    if-lez v11, :cond_83e

    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act2:I

    if-gtz v2, :cond_83e

    move-object/from16 v0, p2

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->hitDone:Z

    if-nez v2, :cond_83e

    .line 387
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->hitDone:Z

    .line 388
    move-object/from16 v0, p3

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p2

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->p1:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p2

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->p2:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v4}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->segDist(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v2

    const/high16 v3, 0x430c0000    # 140.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_837

    move-object/from16 v0, p3

    iget v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    const v3, 0x3e19999a    # 0.15f

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-static {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModV34;->skillHit(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;FZ)V

    .line 389
    :cond_837
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/engine/SoundManager;->playElectricSpark()V

    .line 391
    :cond_83e
    if-eqz v14, :cond_7e

    const/16 v2, 0x1770

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->lockBoost(Lfr/testudo/spacecorsair/business/player/PlayerShip;I)V

    sget v2, Lfr/testudo/spacecorsair/mod/ModTitanAI;->noMissileMs:I

    const/16 v3, 0x1770

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    sput v2, Lfr/testudo/spacecorsair/mod/ModTitanAI;->noMissileMs:I

    goto/16 :goto_7e
.end method

.method private static say(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V
    .registers 5

    .prologue
    .line 120
    invoke-static {p0, p1, p2, p3, p4}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 121
    return-void
.end method

.method private static segDist(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)F
    .registers 11

    .prologue
    .line 522
    iget v0, p2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v0, v1

    iget v1, p2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v2, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v1, v2

    .line 523
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    .line 524
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1a

    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    .line 528
    :goto_19
    return v0

    .line 526
    :cond_1a
    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    iget v5, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v6, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    iget v6, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v7, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    div-float v2, v5, v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 527
    iget v3, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v3

    iget v3, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v0, v3

    iget v3, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    iget v2, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v1, v2

    .line 528
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_19
.end method

.method private static t(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;)Lfr/testudo/spacecorsair/mod/ModTitanAI$T;
    .registers 3

    .prologue
    .line 114
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->st:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;

    .line 115
    if-nez v0, :cond_14

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModTitanAI;->st:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_14
    return-object v0
.end method

.method private static tele(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tele_cap_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->lazyTex(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tele_cap_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2c
    return-object p1
.end method

.method static tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 10

    .prologue
    const/4 v4, 0x1

    .line 181
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->noBoostMs:I

    if-lez v0, :cond_19

    .line 182
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->noBoostMs:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->noBoostMs:I

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isBoosterEnabled:Z

    .line 184
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->noBoostMs:I

    if-gtz v0, :cond_19

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->boostWas:Z

    if-eqz v0, :cond_19

    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isBoosterEnabled:Z

    .line 186
    :cond_19
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->noMissileMs:I

    if-lez v0, :cond_32

    sget v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->noMissileMs:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->noMissileMs:I

    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->nextShootMissileAlowed:J

    sget v2, Lfr/testudo/spacecorsair/mod/ModTitanAI;->noMissileMs:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_32

    sget v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->noMissileMs:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->nextShootMissileAlowed:J

    .line 187
    :cond_32
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->radarMs:I

    if-lez v0, :cond_52

    .line 188
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->radarMs:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->radarMs:I

    .line 189
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->savedRadar:I

    if-gez v0, :cond_45

    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->radarPortee:I

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->savedRadar:I

    .line 190
    :cond_45
    iput v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->radarPortee:I

    .line 191
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->radarMs:I

    if-gtz v0, :cond_52

    sget v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->savedRadar:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->radarPortee:I

    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->savedRadar:I

    .line 193
    :cond_52
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->caps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 204
    :cond_5a
    return-void

    .line 194
    :cond_5b
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->caps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_65
    :goto_65
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 195
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 196
    if-eqz v0, :cond_65

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->removed:Z

    if-nez v2, :cond_65

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v2, :cond_65

    .line 198
    :try_start_82
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    invoke-static {v0, v2, p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModCapitals;->guns(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    .line 199
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->t(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;)Lfr/testudo/spacecorsair/mod/ModTitanAI$T;

    move-result-object v2

    move-object v3, p0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->run(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;Lfr/testudo/spacecorsair/mod/ModTitanAI$T;Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    :try_end_9a
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_9a} :catch_9b

    goto :goto_65

    .line 200
    :catch_9b
    move-exception v0

    goto :goto_65
.end method

.method private static undome(Lfr/testudo/spacecorsair/mod/ModTitanAI$T;)V
    .registers 4

    .prologue
    .line 89
    const/4 v0, 0x0

    move v2, v0

    :goto_2
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->domed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_24

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->domed:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->domedWas:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/Element;->invincible:Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 90
    :cond_24
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->domed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 91
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->domedWas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 92
    return-void
.end method

.method private static use(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;ILjava/lang/String;FFF)V
    .registers 12

    .prologue
    .line 149
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3, p4, p5}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->say(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 150
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->data(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v5, 0x898

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->callout(Ljava/lang/String;Ljava/lang/String;FFFI)V

    .line 151
    const-string v0, "doom_charge"

    const/high16 v1, 0x3f400000    # 0.75f

    const v2, 0x3f99999a    # 1.2f

    const-wide/16 v4, 0x190

    invoke-static {v0, v1, v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skill "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->log(ILjava/lang/String;)V

    .line 153
    return-void
.end method
