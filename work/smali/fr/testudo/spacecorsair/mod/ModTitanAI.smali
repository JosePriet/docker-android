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
    .line 51
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->st:Ljava/util/Map;

    .line 52
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->v:Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->w:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 55
    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->savedRadar:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calm(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Lfr/testudo/spacecorsair/mod/ModTitanAI$T;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 74
    iput v0, p1, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    .line 75
    iput v0, p1, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act2:I

    .line 76
    iput v0, p1, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->enrageMs:I

    .line 77
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->undome(Lfr/testudo/spacecorsair/mod/ModTitanAI$T;)V

    .line 78
    iget-object v0, p1, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->mirror:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 79
    iget-object v0, p1, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->trail:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 80
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->a:F

    .line 81
    iget v0, p1, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->baseForce:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_23

    iget v0, p1, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->baseForce:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->pouseeForce:F

    .line 82
    :cond_23
    return-void
.end method

.method static damageIn(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)F
    .registers 16

    .prologue
    .line 338
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v0, :cond_6

    if-nez p2, :cond_7

    .line 368
    :cond_6
    :goto_6
    return p1

    .line 339
    :cond_7
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v10

    .line 340
    if-eqz v10, :cond_6

    .line 341
    check-cast p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 342
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->t(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;)Lfr/testudo/spacecorsair/mod/ModTitanAI$T;

    move-result-object v1

    .line 343
    iget-object v0, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    .line 344
    const-string v2, "spartan"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 346
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    const/high16 v1, 0x42b40000    # 90.0f

    add-float/2addr v0, v1

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/Element;->normalizeSpin(F)F

    move-result v0

    .line 347
    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLive;->normDelta(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 348
    const-string v0, "shield_ripple"

    const/4 v1, 0x1

    const/4 v2, 0x1

    iget-object v3, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v4, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x43820000    # 260.0f

    const-wide/16 v6, 0x17c

    iget-object v8, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v8, v8, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->r:F

    iget-object v9, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v9, v9, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->g:F

    iget-object v10, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v10, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->b:F

    const/4 v11, 0x1

    invoke-static/range {v0 .. v11}, Lfr/testudo/spacecorsair/mod/ModLive;->fx(Ljava/lang/String;IIFFFJFFFZ)V

    .line 349
    const v0, 0x3dcccccd    # 0.1f

    mul-float/2addr p1, v0

    goto :goto_6

    .line 351
    :cond_6c
    const-string v2, "ironclad"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f0

    iget-object v2, v1, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->plates:[F

    if-eqz v2, :cond_f0

    .line 353
    const/4 v0, 0x0

    :goto_79
    iget-object v2, v1, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->plates:[F

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 354
    iget-object v2, v1, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->plates:[F

    aget v2, v2, v0

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_8a

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    .line 355
    :cond_8a
    const v2, 0x3f333333    # 0.7f

    mul-float v12, p1, v2

    .line 356
    iget-object v2, v1, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->plates:[F

    aget v3, v2, v0

    sub-float/2addr v3, v12

    aput v3, v2, v0

    .line 357
    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->plates:[F

    aget v1, v1, v0

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_ea

    .line 358
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->plateX(I)F

    move-result v3

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->plateY(I)F

    move-result v0

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitanAI;->w:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v1, v2, v3, v0, v4}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 359
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->w:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x43b40000    # 360.0f

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModWreck;->debris(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;FI)V

    .line 360
    const-string v0, "fx_sparks_sheet"

    const/4 v1, 0x4

    const/16 v2, 0x10

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitanAI;->w:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitanAI;->w:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x43960000    # 300.0f

    const-wide/16 v6, 0x1f4

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f4ccccd    # 0.8f

    const v10, 0x3ecccccd    # 0.4f

    const/4 v11, 0x1

    invoke-static/range {v0 .. v11}, Lfr/testudo/spacecorsair/mod/ModLive;->fx(Ljava/lang/String;IIFFFJFFFZ)V

    .line 361
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->spanish()Z

    move-result v0

    if-eqz v0, :cond_ed

    const-string v0, "PLACA DESTRUIDA"

    :goto_df
    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f4ccccd    # 0.8f

    const v3, 0x3e99999a    # 0.3f

    invoke-static {p0, v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 363
    :cond_ea
    sub-float/2addr p1, v12

    goto/16 :goto_6

    .line 361
    :cond_ed
    const-string v0, "ARMOUR PLATE DOWN"

    goto :goto_df

    .line 365
    :cond_f0
    const-string v2, "varn"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, v1, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    if-lez v0, :cond_6

    .line 366
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    goto/16 :goto_6
.end method

.method static data(I)[Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
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
    .line 436
    iget v0, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v1, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v0, v1

    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v2, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v1, v2

    .line 437
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

    .line 438
    div-float/2addr v0, v2

    div-float/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 439
    return-void
.end method

.method static draw(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;)V
    .registers 20

    .prologue
    .line 380
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModTitanAI;->st:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;

    .line 381
    if-nez v13, :cond_e

    .line 426
    :cond_d
    :goto_d
    return-void

    .line 382
    :cond_e
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v10, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 384
    move-object/from16 v0, p1

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    .line 385
    const v6, 0x44bb8000    # 1500.0f

    .line 386
    const-string v3, "spartan"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 387
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v2, :cond_70

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    const/4 v4, 0x0

    neg-float v5, v6

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v5, v7

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModTitanAI;->w:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v4, v5, v7}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 389
    const-string v2, "shield_segment"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitanAI;->w:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitanAI;->w:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v5, 0x0

    add-float/2addr v4, v5

    const v5, 0x3f666666    # 0.9f

    mul-float/2addr v5, v6

    const v7, 0x3f666666    # 0.9f

    mul-float/2addr v6, v7

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

    .line 391
    :cond_70
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

    .line 392
    :cond_b3
    const-string v3, "reaver"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10c

    iget v3, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    if-lez v3, :cond_10c

    if-eqz v10, :cond_10c

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v4, v10, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v5, v10, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3ecccccd    # 0.4f

    const v8, 0x3e19999a    # 0.15f

    const v9, 0x3f666666    # 0.9f

    invoke-static/range {v2 .. v9}, Lfr/testudo/spacecorsair/mod/ModFx;->line(FFFFFFFF)V

    .line 394
    const-string v2, "fx_beam"

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v5, v10, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v6, v10, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v7, 0x41e00000    # 28.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3ee66666    # 0.45f

    const v10, 0x3e4ccccd    # 0.2f

    const v11, 0x3f333333    # 0.7f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->strip(Ljava/lang/String;FFFFFFFFFZ)V

    goto/16 :goto_d

    .line 395
    :cond_10c
    const-string v3, "ironclad"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a7

    iget-object v3, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->plates:[F

    if-eqz v3, :cond_1a7

    .line 396
    const/4 v2, 0x0

    move v14, v2

    :goto_11a
    iget-object v2, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->plates:[F

    array-length v2, v2

    if-ge v14, v2, :cond_162

    .line 397
    iget-object v2, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->plates:[F

    aget v2, v2, v14

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_12c

    .line 396
    :goto_128
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto :goto_11a

    .line 398
    :cond_12c
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

    .line 399
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

    goto :goto_128

    .line 401
    :cond_162
    iget v2, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    if-lez v2, :cond_d

    .line 402
    iget v2, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    int-to-float v2, v2

    const/high16 v3, 0x44c80000    # 1600.0f

    div-float v6, v2, v3

    .line 403
    const-string v2, "marker_hostile"

    iget-object v3, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->p1:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v4, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->p1:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x443e0000    # 760.0f

    const v7, 0x3ecccccd    # 0.4f

    const v8, 0x3f19999a    # 0.6f

    mul-float/2addr v8, v6

    add-float/2addr v7, v8

    mul-float/2addr v5, v7

    const/high16 v7, 0x443e0000    # 760.0f

    const v8, 0x3ecccccd    # 0.4f

    const v9, 0x3f19999a    # 0.6f

    mul-float/2addr v6, v9

    add-float/2addr v6, v8

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

    const v11, 0x3f4ccccd    # 0.8f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    goto/16 :goto_d

    .line 405
    :cond_1a7
    const-string v3, "helion"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_263

    .line 406
    iget v2, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    if-lez v2, :cond_228

    .line 407
    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    int-to-float v3, v3

    const v4, 0x453b8000    # 3000.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 408
    iget v3, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->ang0:F

    iget v4, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->ang1:F

    iget v5, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->ang0:F

    sub-float/2addr v4, v5

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 409
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

    .line 410
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

    .line 411
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

    .line 413
    :cond_228
    iget v2, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->enrageMs:I

    if-lez v2, :cond_d

    .line 414
    const v2, 0x453b8000    # 3000.0f

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->enrageMs:I

    int-to-float v4, v4

    const v5, 0x451c4000    # 2500.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    mul-float v6, v2, v3

    .line 415
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

    .line 417
    :cond_263
    const-string v3, "warden"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2df

    .line 418
    iget v2, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    if-lez v2, :cond_298

    if-eqz v10, :cond_298

    const-string v2, "fx_beam"

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v5, v10, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v6, v10, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v7, 0x42700000    # 60.0f

    const v8, 0x3ee66666    # 0.45f

    const v9, 0x3f333333    # 0.7f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f0ccccd    # 0.55f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->strip(Ljava/lang/String;FFFFFFFFFZ)V

    .line 419
    :cond_298
    iget v2, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act2:I

    if-lez v2, :cond_d

    .line 420
    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act2:I

    int-to-float v3, v3

    const/high16 v4, 0x44960000    # 1200.0f

    div-float/2addr v3, v4

    sub-float v9, v2, v3

    .line 421
    iget-object v2, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->p1:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v3, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->p1:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v4, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->p2:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v5, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->p2:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v6, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->p1:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->p2:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v6, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->p2:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v7, v13, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->p1:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v6, v7

    add-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3e4ccccd    # 0.2f

    const v8, 0x3e4ccccd    # 0.2f

    const v10, 0x3ecccccd    # 0.4f

    const v11, 0x3f19999a    # 0.6f

    mul-float/2addr v9, v11

    add-float/2addr v9, v10

    invoke-static/range {v2 .. v9}, Lfr/testudo/spacecorsair/mod/ModFx;->line(FFFFFFFF)V

    goto/16 :goto_d

    .line 423
    :cond_2df
    const-string v3, "kretari"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget v2, Lfr/testudo/spacecorsair/mod/ModTitanAI;->radarMs:I

    if-lez v2, :cond_d

    if-eqz v10, :cond_d

    .line 424
    const-string v2, "fx_shock"

    iget-object v3, v10, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v4, v10, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

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

.method private static enrageCallout(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;I)V
    .registers 10

    .prologue
    const v7, 0x3f19999a    # 0.6f

    const v6, 0x3ecccccd    # 0.4f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 120
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->data(I)[Ljava/lang/String;

    move-result-object v0

    .line 121
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 122
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const v3, 0x3eb33333    # 0.35f

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-static {p0, v2, v5, v3, v4}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->say(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 123
    if-eqz v1, :cond_2d

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-static {v1, v2, v5, v7, v6}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->say(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    const/4 v2, 0x3

    aget-object v0, v0, v2

    invoke-static {v1, v0, v5, v7, v6}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->say(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 124
    :cond_2d
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playDanger()V

    .line 125
    return-void
.end method

.method static factionIndex(Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;)I
    .registers 2

    .prologue
    .line 101
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->fi(Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;)I

    move-result v0

    return v0
.end method

.method private static fi(Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;)I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 105
    move v0, v1

    :goto_2
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v2, v2

    if-ge v0, v2, :cond_13

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v2, v2, v0

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    if-ne v2, v3, :cond_10

    .line 106
    :goto_f
    return v0

    .line 105
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_13
    move v0, v1

    .line 106
    goto :goto_f
.end method

.method static forget(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;)V
    .registers 2

    .prologue
    .line 92
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->st:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;

    .line 93
    if-eqz v0, :cond_d

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->calm(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Lfr/testudo/spacecorsair/mod/ModTitanAI$T;)V

    .line 94
    :cond_d
    return-void
.end method

.method private static full(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;)[F
    .registers 5

    .prologue
    const v3, 0x3cf5c28f    # 0.03f

    .line 372
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
    .line 59
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->noBoostMs:I

    if-gtz v0, :cond_8

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isBoosterEnabled:Z

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->boostWas:Z

    .line 60
    :cond_8
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->noBoostMs:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->noBoostMs:I

    .line 61
    return-void
.end method

.method private static mine(Lfr/testudo/spacecorsair/engine/Vector2;)V
    .registers 5

    .prologue
    .line 453
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

    .line 454
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1f} :catch_20

    .line 458
    :goto_1f
    return-void

    .line 455
    :catch_20
    move-exception v0

    goto :goto_1f
.end method

.method private static plateX(I)F
    .registers 3

    .prologue
    .line 375
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
    .line 376
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
    .line 430
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModTitanAI;->v:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, p1, v1}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->dir(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 431
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModTitanAI;->v:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float/2addr v1, p2

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModTitanAI;->v:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 432
    return-void
.end method

.method static resetPlayer(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 65
    if-eqz p0, :cond_b

    sget v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->savedRadar:I

    if-ltz v0, :cond_b

    sget v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->savedRadar:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->radarPortee:I

    .line 66
    :cond_b
    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->savedRadar:I

    .line 67
    sput v1, Lfr/testudo/spacecorsair/mod/ModTitanAI;->radarMs:I

    .line 68
    sput v1, Lfr/testudo/spacecorsair/mod/ModTitanAI;->noBoostMs:I

    .line 69
    sput v1, Lfr/testudo/spacecorsair/mod/ModTitanAI;->noMissileMs:I

    .line 70
    return-void
.end method

.method private static run(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;Lfr/testudo/spacecorsair/mod/ModTitanAI$T;Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 22

    .prologue
    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v2, :cond_7b

    const/4 v2, 0x1

    .line 156
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p3

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v3

    .line 157
    invoke-static/range {p1 .. p1}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->fi(Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;)I

    move-result v4

    .line 158
    move-object/from16 v0, p1

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v5, v5, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    .line 159
    move-object/from16 v0, p2

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->baseForce:F

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2e

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->pouseeForce:F

    move-object/from16 v0, p2

    iput v6, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->baseForce:F

    .line 160
    :cond_2e
    const-string v6, "ironclad"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44

    move-object/from16 v0, p2

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->plates:[F

    if-nez v6, :cond_44

    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->full(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;)[F

    move-result-object v6

    move-object/from16 v0, p2

    iput-object v6, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->plates:[F

    .line 161
    :cond_44
    if-eqz v2, :cond_4d

    const v2, 0x459c4000    # 5000.0f

    cmpl-float v2, v3, v2

    if-lez v2, :cond_7d

    .line 162
    :cond_4d
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    if-gtz v2, :cond_73

    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act2:I

    if-gtz v2, :cond_73

    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->enrageMs:I

    if-gtz v2, :cond_73

    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->a:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_73

    move-object/from16 v0, p2

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->domed:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7a

    :cond_73
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->calm(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Lfr/testudo/spacecorsair/mod/ModTitanAI$T;)V

    .line 334
    :cond_7a
    :goto_7a
    return-void

    .line 155
    :cond_7b
    const/4 v2, 0x0

    goto :goto_7

    .line 165
    :cond_7d
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->a:I

    int-to-long v6, v2

    sub-long v6, v6, p4

    long-to-int v2, v6

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->a:I

    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->b:I

    int-to-long v6, v2

    sub-long v6, v6, p4

    long-to-int v2, v6

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->b:I

    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->c:I

    int-to-long v6, v2

    sub-long v6, v6, p4

    long-to-int v2, v6

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->c:I

    .line 166
    move-object/from16 v0, p2

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    move-object/from16 v0, p2

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act2:I

    .line 167
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    if-lez v2, :cond_bb

    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    int-to-long v8, v2

    sub-long v8, v8, p4

    long-to-int v2, v8

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    .line 168
    :cond_bb
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act2:I

    if-lez v2, :cond_cd

    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act2:I

    int-to-long v8, v2

    sub-long v8, v8, p4

    long-to-int v2, v8

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act2:I

    .line 169
    :cond_cd
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->enrageMs:I

    if-lez v2, :cond_df

    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->enrageMs:I

    int-to-long v8, v2

    sub-long v8, v8, p4

    long-to-int v2, v8

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->enrageMs:I

    .line 170
    :cond_df
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    const/4 v8, 0x0

    cmpl-float v2, v2, v8

    if-lez v2, :cond_17e

    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->life:F

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    div-float/2addr v2, v8

    .line 171
    :goto_f1
    move-object/from16 v0, p2

    iget-boolean v8, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->enraged:Z

    if-nez v8, :cond_182

    const v8, 0x3e99999a    # 0.3f

    cmpg-float v2, v2, v8

    if-gez v2, :cond_182

    const/4 v2, 0x1

    move v14, v2

    .line 172
    :goto_100
    if-eqz v14, :cond_10c

    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->enraged:Z

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->enrageCallout(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;I)V

    .line 173
    :cond_10c
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->data(I)[Ljava/lang/String;

    move-result-object v4

    .line 175
    const-string v2, "spartan"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_195

    .line 177
    if-eqz v14, :cond_120

    const/16 v2, 0x2ee0

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->enrageMs:I

    .line 178
    :cond_120
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->enrageMs:I

    if-lez v2, :cond_186

    .line 179
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v4, v2, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 180
    const/4 v2, 0x0

    move v3, v2

    :goto_130
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_7a

    .line 181
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/business/Element;

    .line 182
    instance-of v5, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v5, :cond_17a

    move-object/from16 v0, p0

    if-eq v2, v0, :cond_17a

    iget-boolean v5, v2, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v5, :cond_17a

    iget-object v5, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v5

    const v6, 0x45228000    # 2600.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_17a

    move-object/from16 v0, p2

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->domed:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17a

    .line 183
    move-object/from16 v0, p2

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->domed:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    move-object/from16 v0, p2

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->domedWas:Ljava/util/ArrayList;

    iget-boolean v6, v2, Lfr/testudo/spacecorsair/business/Element;->invincible:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    const/4 v5, 0x1

    iput-boolean v5, v2, Lfr/testudo/spacecorsair/business/Element;->invincible:Z

    .line 180
    :cond_17a
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_130

    .line 170
    :cond_17e
    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_f1

    .line 171
    :cond_182
    const/4 v2, 0x0

    move v14, v2

    goto/16 :goto_100

    .line 188
    :cond_186
    move-object/from16 v0, p2

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->domed:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7a

    .line 189
    invoke-static/range {p2 .. p2}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->undome(Lfr/testudo/spacecorsair/mod/ModTitanAI$T;)V

    goto/16 :goto_7a

    .line 191
    :cond_195
    const-string v2, "reaver"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_315

    .line 192
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->a:I

    if-gtz v2, :cond_1c9

    const v2, 0x450fc000    # 2300.0f

    cmpg-float v2, v3, v2

    if-gez v2, :cond_1c9

    .line 193
    const/16 v2, 0x2710

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->a:I

    const/16 v2, 0x7d0

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    .line 194
    const/4 v2, 0x4

    aget-object v2, v4, v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const v7, 0x3e4ccccd    # 0.2f

    move-object/from16 v0, p3

    invoke-static {v0, v2, v5, v6, v7}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->say(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 196
    :cond_1c9
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    if-lez v2, :cond_1df

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const v5, 0x3bc49ba6    # 0.006f

    move-wide/from16 v0, p4

    long-to-float v6, v0

    mul-float/2addr v5, v6

    move-object/from16 v0, p3

    invoke-static {v0, v2, v5}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->pull(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/engine/Vector2;F)V

    .line 197
    :cond_1df
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->b:I

    if-gtz v2, :cond_1ec

    const v2, 0x45228000    # 2600.0f

    cmpg-float v2, v3, v2

    if-ltz v2, :cond_1ee

    :cond_1ec
    if-eqz v14, :cond_213

    .line 198
    :cond_1ee
    const/16 v2, 0x3e80

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->b:I

    const/16 v2, 0xa28

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act2:I

    const/4 v2, 0x0

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->hitDone:Z

    .line 199
    const/4 v2, 0x6

    aget-object v2, v4, v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3ee66666    # 0.45f

    const v6, 0x3e19999a    # 0.15f

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4, v5, v6}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->say(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 201
    :cond_213
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act2:I

    if-lez v2, :cond_264

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p3

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModTitanAI;->v:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->dir(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitanAI;->v:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v5, 0x41100000    # 9.0f

    mul-float/2addr v4, v5

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModTitanAI;->v:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v6, 0x41100000    # 9.0f

    mul-float/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 204
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->hitDone:Z

    if-nez v2, :cond_264

    const v2, 0x4428c000    # 675.0f

    cmpg-float v2, v3, v2

    if-gez v2, :cond_264

    .line 205
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->hitDone:Z

    .line 206
    move-object/from16 v0, p3

    iget v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-virtual {v0, v2, v1, v3}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 207
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/engine/SoundManager;->playShockWave()V

    .line 210
    :cond_264
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->enraged:Z

    if-eqz v2, :cond_7a

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 212
    move-object/from16 v0, p2

    iget-wide v4, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->trailAt:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0xdc

    cmp-long v4, v4, v6

    if-lez v4, :cond_2d4

    .line 213
    move-object/from16 v0, p2

    iput-wide v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->trailAt:J

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    const/4 v4, 0x0

    const v5, 0x441d8000    # 630.0f

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModTitanAI;->w:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 215
    move-object/from16 v0, p2

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->trail:Ljava/util/ArrayList;

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitanAI;->w:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModTitanAI;->w:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-direct {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    move-object/from16 v0, p2

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->trail:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x12

    if-le v2, v3, :cond_2b7

    move-object/from16 v0, p2

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->trail:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 217
    :cond_2b7
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

    .line 219
    :cond_2d4
    const/4 v2, 0x0

    move v3, v2

    :goto_2d6
    move-object/from16 v0, p2

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->trail:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_7a

    .line 220
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

    if-gez v2, :cond_311

    move-object/from16 v0, p3

    iget v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    const v3, 0x3ca3d70a    # 0.02f

    mul-float/2addr v2, v3

    move-wide/from16 v0, p4

    long-to-float v3, v0

    mul-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    const/4 v3, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-virtual {v0, v2, v1, v3}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    goto/16 :goto_7a

    .line 219
    :cond_311
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2d6

    .line 223
    :cond_315
    const-string v2, "kretari"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3ef

    .line 224
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->a:I

    if-gtz v2, :cond_368

    const v2, 0x453b8000    # 3000.0f

    cmpg-float v2, v3, v2

    if-gez v2, :cond_368

    .line 225
    const/16 v2, 0x32c8

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->a:I

    .line 226
    const/16 v2, 0xfa0

    sput v2, Lfr/testudo/spacecorsair/mod/ModTitanAI;->radarMs:I

    .line 227
    const/4 v2, 0x4

    aget-object v2, v4, v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const v3, 0x3f4ccccd    # 0.8f

    const v4, 0x3ecccccd    # 0.4f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->say(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 228
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

    .line 230
    :cond_368
    if-eqz v14, :cond_3b8

    .line 231
    const/16 v2, 0x1f40

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->enrageMs:I

    .line 232
    const/4 v2, 0x0

    :goto_371
    const/4 v3, 0x4

    if-ge v2, v3, :cond_3b8

    .line 233
    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->level:I

    invoke-static {v3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlienRat(I)Lfr/testudo/spacecorsair/business/ennemis/AlienRat;

    move-result-object v3

    .line 234
    int-to-double v4, v2

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    .line 235
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

    .line 236
    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 237
    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initAttackTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 238
    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    .line 239
    move-object/from16 v0, p2

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->mirror:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_371

    .line 242
    :cond_3b8
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->enrageMs:I

    if-lez v2, :cond_3e6

    .line 243
    move-object/from16 v0, p2

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->mirror:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3c6
    :goto_3c6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-boolean v4, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v4, :cond_3c6

    iget-object v4, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p3

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p3

    iget v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    iput v4, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->spin:F

    goto :goto_3c6

    .line 244
    :cond_3e6
    move-object/from16 v0, p2

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->mirror:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_7a

    .line 245
    :cond_3ef
    const-string v2, "varn"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d0

    .line 246
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->a:I

    if-gtz v2, :cond_43e

    const v2, 0x45228000    # 2600.0f

    cmpg-float v2, v3, v2

    if-gez v2, :cond_43e

    .line 247
    const/16 v2, 0x2328

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->a:I

    .line 248
    const/4 v2, 0x0

    :goto_40b
    const/4 v5, 0x3

    if-ge v2, v5, :cond_42b

    .line 249
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    add-int/lit8 v7, v2, -0x1

    mul-int/lit16 v7, v7, 0x12c

    int-to-float v7, v7

    const v8, 0x443b8000    # 750.0f

    sget-object v9, Lfr/testudo/spacecorsair/mod/ModTitanAI;->w:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v5, v6, v7, v8, v9}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 250
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModTitanAI;->w:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->mine(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 248
    add-int/lit8 v2, v2, 0x1

    goto :goto_40b

    .line 252
    :cond_42b
    const/4 v2, 0x4

    aget-object v2, v4, v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f400000    # 0.75f

    const v7, 0x3eb33333    # 0.35f

    move-object/from16 v0, p0

    invoke-static {v0, v2, v5, v6, v7}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->say(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 254
    :cond_43e
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->b:I

    if-gtz v2, :cond_46a

    const v2, 0x453b8000    # 3000.0f

    cmpg-float v2, v3, v2

    if-gez v2, :cond_46a

    .line 255
    const/16 v2, 0x3a98

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->b:I

    const/16 v2, 0xfa0

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    .line 256
    const/4 v2, 0x6

    aget-object v2, v4, v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f400000    # 0.75f

    const v5, 0x3eb33333    # 0.35f

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->say(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 258
    :cond_46a
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    if-lez v2, :cond_4af

    const v2, 0x3e0f5c29    # 0.14f

    :goto_473
    move-object/from16 v0, p0

    iput v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->a:F

    .line 259
    if-eqz v14, :cond_4b8

    .line 260
    const/4 v2, 0x0

    :goto_47a
    const/16 v3, 0x8

    if-ge v2, v3, :cond_4b2

    .line 261
    int-to-double v4, v2

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    div-double/2addr v4, v6

    .line 262
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

    .line 263
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitanAI;->w:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->mine(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_47a

    .line 258
    :cond_4af
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_473

    .line 265
    :cond_4b2
    const/16 v2, 0x1388

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->enrageMs:I

    .line 267
    :cond_4b8
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->enrageMs:I

    if-lez v2, :cond_4cb

    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->baseForce:F

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v2, v3

    :goto_4c5
    move-object/from16 v0, p0

    iput v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->pouseeForce:F

    goto/16 :goto_7a

    :cond_4cb
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->baseForce:F

    goto :goto_4c5

    .line 268
    :cond_4d0
    const-string v2, "ironclad"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_596

    .line 269
    if-eqz v14, :cond_4f7

    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->full(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;)[F

    move-result-object v2

    move-object/from16 v0, p2

    iput-object v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->plates:[F

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->spanish()Z

    move-result v2

    if-eqz v2, :cond_592

    const-string v2, "BLINDAJE RESTAURADO"

    :goto_4ea
    const/high16 v5, 0x3f800000    # 1.0f

    const v7, 0x3f4ccccd    # 0.8f

    const v8, 0x3e99999a    # 0.3f

    move-object/from16 v0, p0

    invoke-static {v0, v2, v5, v7, v8}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->say(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 270
    :cond_4f7
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->a:I

    if-gtz v2, :cond_533

    const/high16 v2, 0x45480000    # 3200.0f

    cmpg-float v2, v3, v2

    if-gez v2, :cond_533

    .line 271
    const/16 v2, 0x1b58

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->a:I

    const/16 v2, 0x640

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    const/4 v2, 0x0

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->hitDone:Z

    .line 272
    move-object/from16 v0, p2

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->p1:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p3

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 273
    const/4 v2, 0x6

    aget-object v2, v4, v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f4ccccd    # 0.8f

    const v5, 0x3e99999a    # 0.3f

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->say(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 275
    :cond_533
    if-lez v6, :cond_7a

    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    if-gtz v2, :cond_7a

    move-object/from16 v0, p2

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->hitDone:Z

    if-nez v2, :cond_7a

    .line 276
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->hitDone:Z

    .line 277
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

    .line 278
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/engine/SoundManager;->playRandomExplode()V

    .line 279
    move-object/from16 v0, p3

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p2

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->p1:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v2

    const/high16 v3, 0x43be0000    # 380.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7a

    move-object/from16 v0, p3

    iget v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    const v3, 0x3df5c28f    # 0.12f

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-virtual {v0, v2, v1, v3}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    goto/16 :goto_7a

    .line 269
    :cond_592
    const-string v2, "ARMOUR RESTORED"

    goto/16 :goto_4ea

    .line 281
    :cond_596
    const-string v2, "helion"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_721

    .line 282
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->a:I

    if-gtz v2, :cond_5fe

    const v2, 0x453b8000    # 3000.0f

    cmpg-float v2, v3, v2

    if-gez v2, :cond_5fe

    .line 283
    const/16 v2, 0x2ee0

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->a:I

    const/16 v2, 0xbb8

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    .line 284
    move-object/from16 v0, p3

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, v5

    float-to-double v6, v2

    move-object/from16 v0, p3

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v2, v5

    float-to-double v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v2, v6

    .line 285
    const/high16 v5, 0x420c0000    # 35.0f

    sub-float v5, v2, v5

    move-object/from16 v0, p2

    iput v5, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->ang0:F

    const/high16 v5, 0x420c0000    # 35.0f

    add-float/2addr v2, v5

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->ang1:F

    .line 286
    const/4 v2, 0x4

    aget-object v2, v4, v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f666666    # 0.9f

    const/high16 v7, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    invoke-static {v0, v2, v5, v6, v7}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->say(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 288
    :cond_5fe
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    if-lez v2, :cond_670

    .line 289
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p2

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    int-to-float v5, v5

    const v6, 0x453b8000    # 3000.0f

    div-float/2addr v5, v6

    sub-float/2addr v2, v5

    .line 290
    move-object/from16 v0, p2

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->ang0:F

    move-object/from16 v0, p2

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->ang1:F

    move-object/from16 v0, p2

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->ang0:F

    sub-float/2addr v6, v7

    mul-float/2addr v2, v6

    add-float/2addr v2, v5

    .line 291
    move-object/from16 v0, p3

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v5, v6

    float-to-double v6, v5

    move-object/from16 v0, p3

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v5, v8

    float-to-double v8, v5

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v5, v6

    .line 292
    sub-float v2, v5, v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLive;->normDelta(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v5, 0x40800000    # 4.0f

    cmpg-float v2, v2, v5

    if-gez v2, :cond_670

    const/high16 v2, 0x45480000    # 3200.0f

    cmpg-float v2, v3, v2

    if-gez v2, :cond_670

    move-object/from16 v0, p3

    iget v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float/2addr v2, v5

    move-wide/from16 v0, p4

    long-to-float v5, v0

    mul-float/2addr v2, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v2, v5

    const/4 v5, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-virtual {v0, v2, v1, v5}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 294
    :cond_670
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->b:I

    if-gtz v2, :cond_69c

    const v2, 0x455ac000    # 3500.0f

    cmpg-float v2, v3, v2

    if-gez v2, :cond_69c

    .line 295
    const/16 v2, 0x1f40

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->b:I

    const/16 v2, 0x384

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act2:I

    .line 296
    const/4 v2, 0x6

    aget-object v2, v4, v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f666666    # 0.9f

    const/high16 v6, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4, v5, v6}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->say(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 298
    :cond_69c
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act2:I

    if-lez v2, :cond_6d5

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p3

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModTitanAI;->v:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->dir(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitanAI;->v:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    neg-float v4, v4

    const/high16 v5, 0x41300000    # 11.0f

    mul-float/2addr v4, v5

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModTitanAI;->v:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModTitanAI;->v:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v6, 0x41300000    # 11.0f

    mul-float/2addr v5, v6

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModTitanAI;->v:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v7, 0x40800000    # 4.0f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 302
    :cond_6d5
    if-eqz v14, :cond_6e2

    const/16 v2, 0x9c4

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->enrageMs:I

    const/4 v2, 0x0

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->hitDone:Z

    .line 303
    :cond_6e2
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->enrageMs:I

    if-lez v2, :cond_7a

    .line 304
    const v2, 0x453b8000    # 3000.0f

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p2

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->enrageMs:I

    int-to-float v5, v5

    const v6, 0x451c4000    # 2500.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    mul-float/2addr v2, v4

    .line 305
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->hitDone:Z

    if-nez v4, :cond_7a

    sub-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x43340000    # 180.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7a

    .line 306
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->hitDone:Z

    .line 307
    move-object/from16 v0, p3

    iget v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    const v3, 0x3e3851ec    # 0.18f

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-virtual {v0, v2, v1, v3}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    goto/16 :goto_7a

    .line 310
    :cond_721
    const-string v2, "warden"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 311
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->a:I

    if-gtz v2, :cond_755

    const v2, 0x45228000    # 2600.0f

    cmpg-float v2, v3, v2

    if-gez v2, :cond_755

    .line 312
    const/16 v2, 0x2710

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->a:I

    const/16 v2, 0xbb8

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    .line 313
    const/4 v2, 0x4

    aget-object v2, v4, v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const/high16 v5, 0x3f000000    # 0.5f

    const v6, 0x3f333333    # 0.7f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, p3

    invoke-static {v0, v2, v5, v6, v8}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->say(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 315
    :cond_755
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act:I

    if-lez v2, :cond_76b

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const v5, 0x3ba3d70a    # 0.005f

    move-wide/from16 v0, p4

    long-to-float v6, v0

    mul-float/2addr v5, v6

    move-object/from16 v0, p3

    invoke-static {v0, v2, v5}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->pull(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/engine/Vector2;F)V

    .line 316
    :cond_76b
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->b:I

    if-gtz v2, :cond_798

    const v2, 0x453b8000    # 3000.0f

    cmpg-float v2, v3, v2

    if-gez v2, :cond_798

    .line 317
    const/16 v2, 0x2ee0

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->b:I

    .line 318
    const/16 v2, 0xfa0

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->lockBoost(Lfr/testudo/spacecorsair/business/player/PlayerShip;I)V

    .line 319
    const/4 v2, 0x6

    aget-object v2, v4, v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const/high16 v5, 0x3f000000    # 0.5f

    const v6, 0x3f333333    # 0.7f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, p3

    invoke-static {v0, v2, v5, v6, v8}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->say(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 321
    :cond_798
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->c:I

    if-gtz v2, :cond_7e0

    const v2, 0x45834000    # 4200.0f

    cmpg-float v2, v3, v2

    if-gez v2, :cond_7e0

    .line 322
    const/16 v2, 0x2328

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->c:I

    const/16 v2, 0x4b0

    move-object/from16 v0, p2

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act2:I

    const/4 v2, 0x0

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->hitDone:Z

    .line 323
    move-object/from16 v0, p2

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->p1:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 324
    move-object/from16 v0, p2

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->p2:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p3

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 325
    const/16 v2, 0x8

    aget-object v2, v4, v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x3f000000    # 0.5f

    const v4, 0x3f333333    # 0.7f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->say(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 327
    :cond_7e0
    if-lez v7, :cond_820

    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->act2:I

    if-gtz v2, :cond_820

    move-object/from16 v0, p2

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->hitDone:Z

    if-nez v2, :cond_820

    .line 328
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->hitDone:Z

    .line 329
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

    if-gez v2, :cond_819

    move-object/from16 v0, p3

    iget v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    const v3, 0x3e19999a    # 0.15f

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-virtual {v0, v2, v1, v3}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 330
    :cond_819
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/engine/SoundManager;->playElectricSpark()V

    .line 332
    :cond_820
    if-eqz v14, :cond_7a

    const/16 v2, 0x1770

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->lockBoost(Lfr/testudo/spacecorsair/business/player/PlayerShip;I)V

    sget v2, Lfr/testudo/spacecorsair/mod/ModTitanAI;->noMissileMs:I

    const/16 v3, 0x1770

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    sput v2, Lfr/testudo/spacecorsair/mod/ModTitanAI;->noMissileMs:I

    goto/16 :goto_7a
.end method

.method private static say(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V
    .registers 5

    .prologue
    .line 116
    invoke-static {p0, p1, p2, p3, p4}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 117
    return-void
.end method

.method private static segDist(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)F
    .registers 11

    .prologue
    .line 442
    iget v0, p2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v0, v1

    iget v1, p2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v2, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v1, v2

    .line 443
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    .line 444
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1a

    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    .line 448
    :goto_19
    return v0

    .line 446
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

    .line 447
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

    .line 448
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
    .line 110
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->st:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;

    .line 111
    if-nez v0, :cond_14

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModTitanAI;->st:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_14
    return-object v0
.end method

.method static tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 10

    .prologue
    const/4 v4, 0x1

    .line 130
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->noBoostMs:I

    if-lez v0, :cond_19

    .line 131
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->noBoostMs:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->noBoostMs:I

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isBoosterEnabled:Z

    .line 133
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->noBoostMs:I

    if-gtz v0, :cond_19

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->boostWas:Z

    if-eqz v0, :cond_19

    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isBoosterEnabled:Z

    .line 135
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

    .line 136
    :cond_32
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->radarMs:I

    if-lez v0, :cond_52

    .line 137
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->radarMs:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->radarMs:I

    .line 138
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->savedRadar:I

    if-gez v0, :cond_45

    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->radarPortee:I

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->savedRadar:I

    .line 139
    :cond_45
    iput v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->radarPortee:I

    .line 140
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->radarMs:I

    if-gtz v0, :cond_52

    sget v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->savedRadar:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->radarPortee:I

    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitanAI;->savedRadar:I

    .line 142
    :cond_52
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->caps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 152
    :cond_5a
    return-void

    .line 143
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

    .line 144
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 145
    if-eqz v0, :cond_65

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->removed:Z

    if-nez v2, :cond_65

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v2, :cond_65

    .line 147
    :try_start_82
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->t(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;)Lfr/testudo/spacecorsair/mod/ModTitanAI$T;

    move-result-object v2

    move-object v3, p0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->run(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;Lfr/testudo/spacecorsair/mod/ModTitanAI$T;Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_91} :catch_92

    goto :goto_65

    .line 148
    :catch_92
    move-exception v0

    goto :goto_65
.end method

.method private static undome(Lfr/testudo/spacecorsair/mod/ModTitanAI$T;)V
    .registers 4

    .prologue
    .line 85
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

    .line 86
    :cond_24
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->domed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 87
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModTitanAI$T;->domedWas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 88
    return-void
.end method
