.class public final Lfr/testudo/spacecorsair/mod/ModEvents;
.super Ljava/lang/Object;
.source "ModEvents.java"


# static fields
.field static final BOUNTY:I = 0x2

.field static final BOUNTY_MS:J = 0x2bf20L

.field static final BOUNTY_PAY:I = 0x2ee0

.field static final DISTRESS:I = 0x1

.field static final DISTRESS_MS:J = 0x3a980L

.field static final DISTRESS_PAY:I = 0x1770

.field static final DISTRESS_RANGE:F = 3200.0f

.field static final DISTRESS_STANDING:F = 3.0f

.field static final FIRST_MS:J = 0x15f90L

.field static final GAP_MAX_MS:J = 0x57e40L

.field static final GAP_MIN_MS:J = 0x3a980L

.field static final NAMES:[Ljava/lang/String;

.field static final NONE:I = 0x0

.field static final RESCUE_RANGE:F = 1500.0f

.field static final SALVAGE:I = 0x3

.field static final SALVAGE_MS:J = 0x1d4c0L

.field static final SALVAGE_REACH:F = 800.0f

.field static final SCAV_SPEED:F = 0.6f

.field static final TRADER_DRAIN_PER_S:F = 0.025f

.field private static endsAt:J

.field private static engaged:Z

.field static fieldStripped:Z

.field private static hold:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static final hostiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;"
        }
    .end annotation
.end field

.field static kind:I

.field private static nextAt:J

.field private static rivalLeft:F

.field static salvageDouble:Z

.field private static target:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static testAt:J

.field private static testLast:Ljava/lang/String;

.field private static victim:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

.field private static wanted:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 39
    sput v2, Lfr/testudo/spacecorsair/mod/ModEvents;->kind:I

    .line 40
    const-wide/16 v0, -0x1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModEvents;->nextAt:J

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->hostiles:Ljava/util/ArrayList;

    .line 203
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Kessler Vane"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "Mother Rust"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "The Ninth Knife"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Ober Holt"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Saint Cinder"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Graves-7"

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->NAMES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static around(Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 8

    .prologue
    .line 132
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    .line 133
    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, p0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;)V

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v3, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-virtual {v2, v3, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    return-object v0
.end method

.method private static bearing(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/engine/Vector2;)Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 137
    iget v0, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v0, v1

    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v1, v2

    .line 138
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "east"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "north-east"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x2

    const-string v4, "north"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "north-west"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "west"

    .line 139
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "south-west"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "south"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "south-east"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 140
    neg-float v1, v1

    float-to-double v4, v1

    float-to-double v0, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 141
    const-wide v4, 0x3fe921fb54442d18L    # 0.7853981633974483

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x7

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.1f"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, p1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " km"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bounty(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 8

    .prologue
    .line 264
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->wanted:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModEvents;->dead(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 265
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->wanted:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_29

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->wanted:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_29

    .line 266
    const/16 v0, 0x2ee0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->missionPay(I)I

    move-result v0

    .line 267
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModEvents;->wanted:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModQol;->addCredits(ILfr/testudo/spacecorsair/business/Element;)V

    .line 268
    const-string v0, "Bounty collected."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 270
    :cond_29
    const-string v0, "bountydead"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModEvents;->end(Ljava/lang/String;)V

    .line 278
    :cond_2e
    :goto_2e
    return-void

    .line 273
    :cond_2f
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModEvents;->endsAt:J

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-gez v0, :cond_4f

    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModEvents;->endsAt:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2e

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->wanted:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const/high16 v1, 0x44fa0000    # 2000.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2e

    .line 274
    :cond_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModEvents;->wanted:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " jumped out of the sector."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 275
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->wanted:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    .line 276
    const-string v0, "jumped"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModEvents;->end(Ljava/lang/String;)V

    goto :goto_2e
.end method

.method private static dead(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 3

    .prologue
    .line 216
    if-eqz p0, :cond_d

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v0, :cond_d

    iget v0, p0, Lfr/testudo/spacecorsair/business/Element;->life:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_f

    :cond_d
    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private static distress(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 12

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 220
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->hostiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_d
    if-ltz v1, :cond_26

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->hostiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModEvents;->dead(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->hostiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_22
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_d

    .line 221
    :cond_26
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->victim:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModEvents;->dead(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v0, :cond_3a

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->victim:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_40

    .line 222
    :cond_3a
    const-string v0, "gone"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModEvents;->end(Ljava/lang/String;)V

    .line 261
    :cond_3f
    :goto_3f
    return-void

    .line 225
    :cond_40
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->victim:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModEvents;->dead(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 226
    const-string v0, "The freighter was lost."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 227
    const-string v0, "lost"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModEvents;->end(Ljava/lang/String;)V

    goto :goto_3f

    .line 230
    :cond_57
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSector;->play()J

    move-result-wide v0

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModEvents;->endsAt:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_7a

    .line 231
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->victim:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    new-array v1, v7, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveNextPortal()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newDiseapear()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 232
    const-string v0, "timeout"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModEvents;->end(Ljava/lang/String;)V

    goto :goto_3f

    .line 235
    :cond_7a
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->hold:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v0, :cond_87

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->victim:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModEvents;->hold:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 236
    :cond_87
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModEvents;->engaged:Z

    if-nez v0, :cond_e8

    .line 237
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModEvents;->victim:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const v1, 0x44bb8000    # 1500.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_ba

    .line 238
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModEvents;->engaged:Z

    .line 239
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->hostiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a4
    :goto_a4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    instance-of v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v2, :cond_a4

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initChasePlayer()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    goto :goto_a4

    .line 240
    :cond_ba
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->hostiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e8

    .line 241
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->victim:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents;->victim:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget v2, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    const v3, 0x3ccccccd    # 0.025f

    mul-float/2addr v2, v3

    long-to-float v3, p1

    mul-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    .line 242
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->victim:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    cmpg-float v0, v0, v6

    if-gtz v0, :cond_3f

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->victim:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iput v6, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->victim:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iput-boolean v4, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    goto/16 :goto_3f

    .line 246
    :cond_e8
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->hostiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_117

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModEvents;->engaged:Z

    if-nez v0, :cond_117

    .line 247
    const-string v0, "The raiders broke off."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 248
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->victim:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    new-array v1, v7, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveNextPortal()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newDiseapear()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 249
    const-string v0, "brokeoff"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModEvents;->end(Ljava/lang/String;)V

    goto/16 :goto_3f

    .line 252
    :cond_117
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->hostiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 253
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->victim:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    new-array v1, v7, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveNextPortal()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newDiseapear()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 254
    const/16 v0, 0x1770

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->missionPay(I)I

    move-result v0

    .line 255
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModEvents;->victim:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModQol;->addCredits(ILfr/testudo/spacecorsair/business/Element;)V

    .line 256
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModSector;->baseFaction(Lfr/testudo/spacecorsair/game/levels/LevelId;)I

    move-result v1

    .line 257
    if-ltz v1, :cond_156

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v1, v2, v1

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v1, v2, v5}, Lfr/testudo/spacecorsair/mod/ModRep;->change(Ljava/lang/String;FZ)V

    .line 258
    :cond_156
    const-string v1, "Freighter saved. The crew sends their thanks."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saved pay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModEvents;->end(Ljava/lang/String;)V

    goto/16 :goto_3f
.end method

.method static enabled()Z
    .registers 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method private static end(Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 295
    sget v0, Lfr/testudo/spacecorsair/mod/ModEvents;->kind:I

    if-eqz v0, :cond_2a

    const-string v0, "event"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end kind="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lfr/testudo/spacecorsair/mod/ModEvents;->kind:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " why="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_2a
    sget v0, Lfr/testudo/spacecorsair/mod/ModEvents;->kind:I

    if-eqz v0, :cond_44

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSector;->play()J

    move-result-wide v0

    const-wide/32 v2, 0x3a980

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x40fd4c0000000000L    # 120000.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModEvents;->nextAt:J

    .line 297
    :cond_44
    sput v7, Lfr/testudo/spacecorsair/mod/ModEvents;->kind:I

    .line 298
    sput-object v6, Lfr/testudo/spacecorsair/mod/ModEvents;->victim:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 299
    sput-object v6, Lfr/testudo/spacecorsair/mod/ModEvents;->hold:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 300
    sput-object v6, Lfr/testudo/spacecorsair/mod/ModEvents;->wanted:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 301
    sput-object v6, Lfr/testudo/spacecorsair/mod/ModEvents;->target:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 302
    sput-boolean v7, Lfr/testudo/spacecorsair/mod/ModEvents;->engaged:Z

    .line 303
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->hostiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 304
    return-void
.end method

.method static mark(Lfr/testudo/spacecorsair/business/Element;)I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 86
    if-eqz p0, :cond_7

    sget v1, Lfr/testudo/spacecorsair/mod/ModEvents;->kind:I

    if-nez v1, :cond_8

    .line 89
    :cond_7
    :goto_7
    return v0

    .line 87
    :cond_8
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModEvents;->victim:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-ne p0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_7

    .line 88
    :cond_e
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModEvents;->wanted:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-ne p0, v1, :cond_7

    const/4 v0, 0x2

    goto :goto_7
.end method

.method static onLevel()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 55
    const/4 v0, 0x0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModEvents;->end(Ljava/lang/String;)V

    .line 56
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModEvents;->salvageDouble:Z

    .line 57
    sput v1, Lfr/testudo/spacecorsair/mod/ModChain;->links:I

    .line 58
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModEvents;->fieldStripped:Z

    .line 59
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSector;->play()J

    move-result-wide v0

    const-wide/32 v2, 0x15f90

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModEvents;->nextAt:J

    .line 60
    return-void
.end method

.method private static salvage(Lfr/testudo/spacecorsair/business/player/PlayerShip;JJ)V
    .registers 12

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x44480000    # 800.0f

    .line 281
    sget v0, Lfr/testudo/spacecorsair/mod/ModEvents;->rivalLeft:F

    sget v1, Lfr/testudo/spacecorsair/mod/ModEvents;->rivalLeft:F

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    long-to-float v2, p3

    mul-float/2addr v1, v2

    const v2, 0x476a6000    # 60000.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    long-to-float v3, p3

    mul-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    sput v0, Lfr/testudo/spacecorsair/mod/ModEvents;->rivalLeft:F

    .line 282
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModEvents;->target:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_39

    .line 283
    sput-boolean v5, Lfr/testudo/spacecorsair/mod/ModEvents;->salvageDouble:Z

    .line 284
    const-string v0, "You reached the wreck field first. Its salvage is yours, twice over."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 285
    const-string v0, "salvagewon"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModEvents;->end(Ljava/lang/String;)V

    .line 292
    :cond_38
    :goto_38
    return-void

    .line 286
    :cond_39
    sget v0, Lfr/testudo/spacecorsair/mod/ModEvents;->rivalLeft:F

    cmpg-float v0, v0, v4

    if-lez v0, :cond_45

    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModEvents;->endsAt:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_38

    .line 287
    :cond_45
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSector;->stripField()V

    .line 288
    sput-boolean v5, Lfr/testudo/spacecorsair/mod/ModEvents;->fieldStripped:Z

    .line 289
    const-string v0, "The scavengers stripped the wreck field."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 290
    const-string v0, "salvagelost"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModEvents;->end(Ljava/lang/String;)V

    goto :goto_38
.end method

.method private static start(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 8

    .prologue
    .line 121
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSector;->play()J

    move-result-wide v0

    const-wide/32 v2, 0x3a980

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x40fd4c0000000000L    # 120000.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModEvents;->nextAt:J

    .line 122
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    .line 123
    const/4 v2, 0x1

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModSector;->poiAt(I)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    .line 124
    const-wide v4, 0x3fd999999999999aL    # 0.4

    cmpg-double v3, v0, v4

    if-gez v3, :cond_54

    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModEvents;->startDistress(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 128
    :goto_2b
    const-string v0, "event"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start kind="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lfr/testudo/spacecorsair/mod/ModEvents;->kind:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sector="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void

    .line 125
    :cond_54
    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    cmpg-double v0, v0, v4

    if-ltz v0, :cond_5c

    if-nez v2, :cond_60

    :cond_5c
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModEvents;->startBounty(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    goto :goto_2b

    .line 126
    :cond_60
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModEvents;->fieldStripped:Z

    if-nez v0, :cond_68

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModEvents;->salvageDouble:Z

    if-eqz v0, :cond_6c

    :cond_68
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModEvents;->startBounty(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    goto :goto_2b

    .line 127
    :cond_6c
    invoke-static {p0, v2}, Lfr/testudo/spacecorsair/mod/ModEvents;->startSalvage(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/engine/Vector2;)V

    goto :goto_2b
.end method

.method private static startBounty(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 11

    .prologue
    const/4 v2, 0x1

    const v8, 0x3e99999a    # 0.3f

    .line 180
    iget v0, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 181
    const-string v1, "reaver"

    invoke-static {v1, v0, v2}, Lfr/testudo/spacecorsair/mod/ModSector;->wingShip(Ljava/lang/String;IZ)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v0

    .line 182
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-nez v1, :cond_15

    .line 201
    :goto_14
    return-void

    .line 183
    :cond_15
    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 184
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV34;->elite(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V

    .line 185
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModSector;->poiAt(I)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    .line 186
    if-eqz v1, :cond_35

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v2

    const v3, 0x451c4000    # 2500.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3d

    :cond_35
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x457a0000    # 4000.0f

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModEvents;->around(Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    .line 187
    :cond_3d
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 188
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WANTED: "

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModEvents;->NAMES:[Ljava/lang/String;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModEvents;->NAMES:[Ljava/lang/String;

    array-length v6, v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    .line 190
    new-instance v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;-><init>()V

    new-instance v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    iget v4, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v5, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/16 v6, 0x640

    .line 191
    invoke-virtual {v3, v4, v5, v6}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v2

    new-instance v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/16 v4, 0xbb8

    .line 192
    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initIdleDuring(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v2

    .line 190
    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setActivitySequence(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 193
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    .line 194
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->wanted:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 195
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModEvents;->target:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 196
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSector;->play()J

    move-result-wide v2

    const-wide/32 v4, 0x2bf20

    add-long/2addr v2, v4

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModEvents;->endsAt:J

    .line 197
    const/4 v2, 0x2

    sput v2, Lfr/testudo/spacecorsair/mod/ModEvents;->kind:I

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bounty posted: "

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " was seen "

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, v1}, Lfr/testudo/spacecorsair/mod/ModEvents;->bearing(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/engine/Vector2;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Three minutes before it jumps out."

    .line 199
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 200
    const-string v0, "BOUNTY TARGET IN SECTOR"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1, v8, v8}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    goto/16 :goto_14
.end method

.method private static startDistress(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 14

    .prologue
    .line 146
    const/4 v0, 0x1

    iget v1, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMin:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 147
    iget v1, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newTrasnporteur(II)Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    move-result-object v3

    .line 148
    if-nez v3, :cond_14

    .line 177
    :goto_13
    return-void

    .line 149
    :cond_14
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x45480000    # 3200.0f

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModEvents;->around(Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v4

    .line 150
    iget-object v0, v3, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 151
    invoke-static {}, Lfr/testudo/spacecorsair/business/world/UniverseName;->getRandomTransporteurName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->specificName:Ljava/lang/String;

    .line 152
    const/4 v0, 0x1

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    const/4 v1, 0x0

    const/16 v2, 0x5dc

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWaitUntilPlayerClose(I)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {v3, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 153
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->hold:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 154
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    sput-object v3, Lfr/testudo/spacecorsair/mod/ModEvents;->victim:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 156
    const/4 v0, 0x1

    iget v1, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMin:I

    iget v2, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    sget-object v5, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v5, v5, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v5, v5, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v5, v5, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 157
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v6

    if-gez v0, :cond_83

    const/4 v0, 0x1

    :goto_6e
    add-int/lit8 v6, v0, 0x2

    .line 158
    const/4 v0, 0x0

    move v2, v0

    :goto_72
    if-ge v2, v6, :cond_bf

    .line 159
    const-string v0, "reaver"

    const/4 v1, 0x0

    invoke-static {v0, v5, v1}, Lfr/testudo/spacecorsair/mod/ModSector;->wingShip(Ljava/lang/String;IZ)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v1

    .line 160
    instance-of v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-nez v0, :cond_85

    .line 158
    :goto_7f
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_72

    .line 157
    :cond_83
    const/4 v0, 0x0

    goto :goto_6e

    .line 161
    :cond_85
    iget-object v0, v1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide v10, 0x4085e00000000000L    # 700.0

    mul-double/2addr v8, v10

    const-wide v10, 0x4075e00000000000L    # 350.0

    sub-double/2addr v8, v10

    double-to-float v7, v8

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide v10, 0x4085e00000000000L    # 700.0

    mul-double/2addr v8, v10

    const-wide v10, 0x4075e00000000000L    # 350.0

    sub-double/2addr v8, v10

    double-to-float v8, v8

    invoke-virtual {v0, v7, v8}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 162
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/Element;->updateSapCoords()V

    move-object v0, v1

    .line 163
    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    .line 164
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->hostiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7f

    .line 166
    :cond_bf
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->hostiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, v3, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    .line 168
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->victim:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    goto/16 :goto_13

    .line 171
    :cond_cf
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModEvents;->engaged:Z

    .line 172
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSector;->play()J

    move-result-wide v0

    const-wide/32 v6, 0x3a980

    add-long/2addr v0, v6

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModEvents;->endsAt:J

    .line 173
    const/4 v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModEvents;->kind:I

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Distress call: the freighter "

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v3, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->specificName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is under pirate attack, "

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, v4}, Lfr/testudo/spacecorsair/mod/ModEvents;->bearing(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/engine/Vector2;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 175
    const-string v0, "DISTRESS CALL"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f400000    # 0.75f

    const v3, 0x3e4ccccd    # 0.2f

    invoke-static {p0, v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 176
    const-string v0, "warp_in"

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x5dc

    invoke-static {v0, v1, v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    goto/16 :goto_13
.end method

.method private static startSalvage(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/engine/Vector2;)V
    .registers 6

    .prologue
    .line 206
    sput-object p1, Lfr/testudo/spacecorsair/mod/ModEvents;->target:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 207
    const v0, 0x44bb8000    # 1500.0f

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, p1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v1

    const v2, 0x3f8ccccd    # 1.1f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModEvents;->rivalLeft:F

    .line 208
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSector;->play()J

    move-result-wide v0

    const-wide/32 v2, 0x1d4c0

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModEvents;->endsAt:J

    .line 209
    const/4 v0, 0x3

    sput v0, Lfr/testudo/spacecorsair/mod/ModEvents;->kind:I

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scavengers are heading for the wreck field, "

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModEvents;->bearing(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/engine/Vector2;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Get there first."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 211
    const-string v0, "SALVAGE RACE"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x3ecccccd    # 0.4f

    const v2, 0x3f666666    # 0.9f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 212
    return-void
.end method

.method private static testForce(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 8

    .prologue
    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 99
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModEvents;->testAt:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_16

    const-string v2, "corsair_nodialog"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 110
    :cond_16
    :goto_16
    return-void

    .line 100
    :cond_17
    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModEvents;->testAt:J

    .line 101
    const-string v0, "corsair_event"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_16

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModEvents;->testLast:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 103
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->testLast:Ljava/lang/String;

    .line 104
    sget v1, Lfr/testudo/spacecorsair/mod/ModEvents;->kind:I

    if-eqz v1, :cond_34

    const-string v1, "test"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModEvents;->end(Ljava/lang/String;)V

    .line 105
    :cond_34
    const/4 v1, 0x1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModSector;->poiAt(I)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    .line 106
    const-string v2, "distress"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_77

    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModEvents;->startDistress(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 109
    :cond_44
    :goto_44
    const-string v1, "event"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "test start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " kind="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lfr/testudo/spacecorsair/mod/ModEvents;->kind:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " target="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModEvents;->testTarget()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 107
    :cond_77
    const-string v2, "bounty"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModEvents;->startBounty(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    goto :goto_44

    .line 108
    :cond_83
    const-string v2, "salvage"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    if-eqz v1, :cond_44

    invoke-static {p0, v1}, Lfr/testudo/spacecorsair/mod/ModEvents;->startSalvage(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/engine/Vector2;)V

    goto :goto_44
.end method

.method static testTarget()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 114
    sget v0, Lfr/testudo/spacecorsair/mod/ModEvents;->kind:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->victim:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_e

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->victim:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 116
    :goto_d
    return-object v0

    .line 115
    :cond_e
    sget v0, Lfr/testudo/spacecorsair/mod/ModEvents;->kind:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->wanted:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_1c

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->wanted:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_d

    .line 116
    :cond_1c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->target:Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_d
.end method

.method static tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/LevelId;J)V
    .registers 10

    .prologue
    .line 64
    if-eqz p0, :cond_14

    if-eqz p1, :cond_14

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModEvents;->enabled()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCalm;->active()Z

    move-result v0

    if-nez v0, :cond_14

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->active:Z

    if-eqz v0, :cond_15

    .line 82
    :cond_14
    :goto_14
    return-void

    .line 65
    :cond_15
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSector;->play()J

    move-result-wide v0

    .line 66
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModEvents;->nextAt:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_27

    const-wide/32 v2, 0x15f90

    add-long/2addr v2, v0

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModEvents;->nextAt:J

    .line 67
    :cond_27
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModEvents;->testForce(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 69
    :try_start_2a
    sget v2, Lfr/testudo/spacecorsair/mod/ModEvents;->kind:I

    packed-switch v2, :pswitch_data_66

    goto :goto_14

    .line 71
    :pswitch_30
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModEvents;->nextAt:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_14

    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModEvents;->start(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_39} :catch_3a

    goto :goto_14

    .line 78
    :catch_3a
    move-exception v0

    .line 79
    const-string v1, "event"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v0, "error"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModEvents;->end(Ljava/lang/String;)V

    goto :goto_14

    .line 73
    :pswitch_59
    :try_start_59
    invoke-static {p0, p2, p3}, Lfr/testudo/spacecorsair/mod/ModEvents;->distress(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    goto :goto_14

    .line 74
    :pswitch_5d
    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModEvents;->bounty(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    goto :goto_14

    .line 75
    :pswitch_61
    invoke-static {p0, v0, v1, p2, p3}, Lfr/testudo/spacecorsair/mod/ModEvents;->salvage(Lfr/testudo/spacecorsair/business/player/PlayerShip;JJ)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_64} :catch_3a

    goto :goto_14

    .line 69
    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_30
        :pswitch_59
        :pswitch_5d
        :pswitch_61
    .end packed-switch
.end method
