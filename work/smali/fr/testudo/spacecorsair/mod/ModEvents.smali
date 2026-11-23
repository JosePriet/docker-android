.class public final Lfr/testudo/spacecorsair/mod/ModEvents;
.super Ljava/lang/Object;
.source "ModEvents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;,
        Lfr/testudo/spacecorsair/mod/ModEvents$Context;,
        Lfr/testudo/spacecorsair/mod/ModEvents$Objective;,
        Lfr/testudo/spacecorsair/mod/ModEvents$Twist;,
        Lfr/testudo/spacecorsair/mod/ModEvents$Event;,
        Lfr/testudo/spacecorsair/mod/ModEvents$Actor;,
        Lfr/testudo/spacecorsair/mod/ModEvents$Action;,
        Lfr/testudo/spacecorsair/mod/ModEvents$Stop;
    }
.end annotation


# static fields
.field static final BOUNTY:I = 0x2

.field static final BOUNTY_MS:J = 0x2bf20L

.field static final BOUNTY_PAY:I = 0x2ee0

.field static final DISTRESS:I = 0x1

.field static final DISTRESS_MS:J = 0x3a980L

.field static final DISTRESS_PAY:I = 0x1770

.field static final DISTRESS_RANGE:F = 3200.0f

.field static final DISTRESS_STANDING:F = 3.0f

.field public static ENABLED:Z = false

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

.field private static enteredAt:J

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

.field private static policeVictim:Z

.field private static rivalLeft:F

.field static salvageDouble:Z

.field private static target:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static testAt:J

.field private static testLast:Ljava/lang/String;

.field private static victim:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

.field private static wanted:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 43
    sput v3, Lfr/testudo/spacecorsair/mod/ModEvents;->kind:I

    .line 44
    const-wide/16 v0, -0x1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModEvents;->nextAt:J

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->hostiles:Ljava/util/ArrayList;

    .line 223
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Kessler Vane"

    aput-object v1, v0, v3

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

    .line 326
    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModEvents;->ENABLED:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static around(Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 8

    .prologue
    .line 149
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    .line 150
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

.method private static art(Lfr/testudo/spacecorsair/mod/ModEvents$Actor;Lfr/testudo/spacecorsair/mod/ModEvents$Context;Ljava/util/Random;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 515
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_4a

    .line 523
    :pswitch_7
    iget v0, p1, Lfr/testudo/spacecorsair/mod/ModEvents$Context;->level:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_47

    invoke-virtual {p2}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_47

    const-string v0, "rv_gunship"

    :goto_14
    return-object v0

    .line 516
    :pswitch_15
    const-string v0, "tortoise"

    goto :goto_14

    .line 517
    :pswitch_18
    const-string v0, "poi_outpost_1"

    goto :goto_14

    .line 518
    :pswitch_1b
    const-string v0, "orig_police"

    goto :goto_14

    .line 519
    :pswitch_1e
    invoke-virtual {p2}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "tortoise"

    goto :goto_14

    :cond_27
    const-string v0, "hornet"

    goto :goto_14

    .line 521
    :pswitch_2a
    const-string v0, "reaver"

    iget-object v1, p1, Lfr/testudo/spacecorsair/mod/ModEvents$Context;->owner:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string v0, "rv_raider"

    goto :goto_14

    .line 522
    :cond_37
    const-string v0, "kretari"

    iget-object v1, p1, Lfr/testudo/spacecorsair/mod/ModEvents$Context;->owner:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "kt_scout"

    goto :goto_14

    :cond_44
    const-string v0, "orig_police"

    goto :goto_14

    .line 523
    :cond_47
    const-string v0, "rv_raider"

    goto :goto_14

    .line 515
    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_15
        :pswitch_18
        :pswitch_7
        :pswitch_1e
        :pswitch_1b
        :pswitch_2a
    .end packed-switch
.end method

.method private static bearing(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/engine/Vector2;)Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 154
    iget v0, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v0, v1

    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v1, v2

    .line 155
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

    .line 156
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

    .line 157
    neg-float v1, v1

    float-to-double v4, v1

    float-to-double v0, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 158
    const-wide v4, 0x3fe921fb54442d18L    # 0.7853981633974483

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x7

    .line 159
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
    .line 284
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->wanted:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModEvents;->dead(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 285
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->wanted:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_29

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->wanted:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_29

    .line 286
    const/16 v0, 0x2ee0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->missionPay(I)I

    move-result v0

    .line 287
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModEvents;->wanted:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModQol;->addCredits(ILfr/testudo/spacecorsair/business/Element;)V

    .line 288
    const-string v0, "Bounty collected."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 290
    :cond_29
    const-string v0, "bountydead"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModEvents;->end(Ljava/lang/String;)V

    .line 298
    :cond_2e
    :goto_2e
    return-void

    .line 293
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

    .line 294
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

    .line 295
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->wanted:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    .line 296
    const-string v0, "jumped"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModEvents;->end(Ljava/lang/String;)V

    goto :goto_2e
.end method

.method private static dead(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 3

    .prologue
    .line 236
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

    .line 240
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

    .line 241
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

    .line 242
    :cond_3a
    const-string v0, "gone"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModEvents;->end(Ljava/lang/String;)V

    .line 281
    :cond_3f
    :goto_3f
    return-void

    .line 245
    :cond_40
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->victim:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModEvents;->dead(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 246
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModEvents;->policeVictim:Z

    if-eqz v0, :cond_5b

    const-string v0, "The police cruiser was lost."

    :goto_4e
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 247
    const-string v0, "lost"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModEvents;->end(Ljava/lang/String;)V

    goto :goto_3f

    .line 246
    :cond_5b
    const-string v0, "The freighter was lost."

    goto :goto_4e

    .line 250
    :cond_5e
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSector;->play()J

    move-result-wide v0

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModEvents;->endsAt:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_81

    .line 251
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->victim:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    new-array v1, v7, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveNextPortal()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newDiseapear()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 252
    const-string v0, "timeout"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModEvents;->end(Ljava/lang/String;)V

    goto :goto_3f

    .line 255
    :cond_81
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->hold:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v0, :cond_8e

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->victim:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModEvents;->hold:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 256
    :cond_8e
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModEvents;->engaged:Z

    if-nez v0, :cond_ef

    .line 257
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModEvents;->victim:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const v1, 0x44bb8000    # 1500.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c1

    .line 258
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModEvents;->engaged:Z

    .line 259
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->hostiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_ab
    :goto_ab
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ef

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    instance-of v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v2, :cond_ab

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initChasePlayer()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    goto :goto_ab

    .line 260
    :cond_c1
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->hostiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ef

    .line 261
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

    .line 262
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->victim:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    cmpg-float v0, v0, v6

    if-gtz v0, :cond_3f

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->victim:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iput v6, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->victim:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iput-boolean v4, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    goto/16 :goto_3f

    .line 266
    :cond_ef
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->hostiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11e

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModEvents;->engaged:Z

    if-nez v0, :cond_11e

    .line 267
    const-string v0, "The raiders broke off."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 268
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->victim:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    new-array v1, v7, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveNextPortal()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newDiseapear()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 269
    const-string v0, "brokeoff"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModEvents;->end(Ljava/lang/String;)V

    goto/16 :goto_3f

    .line 272
    :cond_11e
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->hostiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 273
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->victim:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    new-array v1, v7, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveNextPortal()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newDiseapear()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 274
    const/16 v0, 0x1770

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->missionPay(I)I

    move-result v1

    .line 275
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->victim:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModQol;->addCredits(ILfr/testudo/spacecorsair/business/Element;)V

    .line 276
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModSector;->baseFaction(Lfr/testudo/spacecorsair/game/levels/LevelId;)I

    move-result v0

    .line 277
    if-ltz v0, :cond_15d

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v0, v2, v0

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v0, v2, v5}, Lfr/testudo/spacecorsair/mod/ModRep;->change(Ljava/lang/String;FZ)V

    .line 278
    :cond_15d
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModEvents;->policeVictim:Z

    if-eqz v0, :cond_182

    const-string v0, "Police cruiser saved. The crew sends their thanks."

    :goto_163
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saved pay="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModEvents;->end(Ljava/lang/String;)V

    goto/16 :goto_3f

    .line 278
    :cond_182
    const-string v0, "Freighter saved. The crew sends their thanks."

    goto :goto_163
.end method

.method static enabled()Z
    .registers 1

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method private static end(Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 315
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

    .line 316
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

    .line 317
    :cond_44
    sput v7, Lfr/testudo/spacecorsair/mod/ModEvents;->kind:I

    .line 318
    sput-object v6, Lfr/testudo/spacecorsair/mod/ModEvents;->victim:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 319
    sput-object v6, Lfr/testudo/spacecorsair/mod/ModEvents;->hold:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 320
    sput-object v6, Lfr/testudo/spacecorsair/mod/ModEvents;->wanted:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 321
    sput-object v6, Lfr/testudo/spacecorsair/mod/ModEvents;->target:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 322
    sput-boolean v7, Lfr/testudo/spacecorsair/mod/ModEvents;->engaged:Z

    .line 323
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->hostiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 324
    return-void
.end method

.method static generate(JLfr/testudo/spacecorsair/mod/ModEvents$Context;)Lfr/testudo/spacecorsair/mod/ModEvents$Event;
    .registers 23

    .prologue
    .line 450
    invoke-virtual/range {p2 .. p2}, Lfr/testudo/spacecorsair/mod/ModEvents$Context;->ready()Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v3, 0x0

    .line 511
    :cond_7
    :goto_7
    return-object v3

    .line 451
    :cond_8
    new-instance v17, Ljava/util/Random;

    invoke-static/range {p0 .. p1}, Lfr/testudo/spacecorsair/mod/ModEvents;->mix(J)J

    move-result-wide v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 452
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 453
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->values()[Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    move-result-object v4

    array-length v5, v4

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v5, :cond_30

    aget-object v6, v4, v2

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->offered(Lfr/testudo/spacecorsair/mod/ModEvents$Context;)Z

    move-result v7

    if-eqz v7, :cond_2d

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 454
    :cond_30
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    .line 455
    sget-object v8, Lfr/testudo/spacecorsair/mod/ModEvents$Twist;->QUIET:Lfr/testudo/spacecorsair/mod/ModEvents$Twist;

    .line 456
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->BOUNTY:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    if-eq v7, v2, :cond_66

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->AMBUSH:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    if-eq v7, v2, :cond_66

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->SALVAGE:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    if-eq v7, v2, :cond_66

    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModEvents$Context;->level:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_66

    .line 457
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModEvents$Twist;->values()[Lfr/testudo/spacecorsair/mod/ModEvents$Twist;

    move-result-object v2

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModEvents$Twist;->values()[Lfr/testudo/spacecorsair/mod/ModEvents$Twist;

    move-result-object v3

    array-length v3, v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-object v8, v2, v3

    .line 459
    :cond_66
    new-instance v3, Lfr/testudo/spacecorsair/mod/ModEvents$Event;

    move-wide/from16 v4, p0

    move-object/from16 v6, p2

    invoke-direct/range {v3 .. v8}, Lfr/testudo/spacecorsair/mod/ModEvents$Event;-><init>(JLfr/testudo/spacecorsair/mod/ModEvents$Context;Lfr/testudo/spacecorsair/mod/ModEvents$Objective;Lfr/testudo/spacecorsair/mod/ModEvents$Twist;)V

    .line 460
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModEvents$Context;->level:I

    mul-int/lit8 v2, v2, 0x1e

    add-int/lit16 v2, v2, 0x320

    const/16 v4, 0x191

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int v6, v2, v4

    .line 461
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModEvents$Context;->level:I

    div-int/lit8 v2, v2, 0xf

    add-int/lit8 v4, v2, 0x1

    .line 462
    iget-object v2, v7, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->actor:Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v2, v0, v1}, Lfr/testudo/spacecorsair/mod/ModEvents;->art(Lfr/testudo/spacecorsair/mod/ModEvents$Actor;Lfr/testudo/spacecorsair/mod/ModEvents$Context;Ljava/util/Random;)Ljava/lang/String;

    move-result-object v18

    .line 463
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Twist;->BETRAYAL:Lfr/testudo/spacecorsair/mod/ModEvents$Twist;

    if-eq v8, v2, :cond_9b

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Twist;->RIVAL:Lfr/testudo/spacecorsair/mod/ModEvents$Twist;

    if-ne v8, v2, :cond_b5

    .line 464
    :cond_9b
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Twist;->BETRAYAL:Lfr/testudo/spacecorsair/mod/ModEvents$Twist;

    if-ne v8, v2, :cond_138

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModEvents$Action;->MEET:Lfr/testudo/spacecorsair/mod/ModEvents$Action;

    .line 465
    :goto_a1
    iget-object v2, v3, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->stops:Ljava/util/List;

    new-instance v9, Lfr/testudo/spacecorsair/mod/ModEvents$Stop;

    sget-object v11, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;->RAIDER:Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    const-string v12, "rv_raider"

    div-int/lit8 v13, v6, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-direct/range {v9 .. v16}, Lfr/testudo/spacecorsair/mod/ModEvents$Stop;-><init>(Lfr/testudo/spacecorsair/mod/ModEvents$Action;Lfr/testudo/spacecorsair/mod/ModEvents$Actor;Ljava/lang/String;IIII)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    :cond_b5
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->ESCORT:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    if-eq v7, v2, :cond_bd

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->DEFEND:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    if-ne v7, v2, :cond_ef

    .line 468
    :cond_bd
    iget-object v2, v3, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->stops:Ljava/util/List;

    new-instance v9, Lfr/testudo/spacecorsair/mod/ModEvents$Stop;

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModEvents$Action;->MEET:Lfr/testudo/spacecorsair/mod/ModEvents$Action;

    iget-object v11, v7, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->actor:Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v12, v18

    move v13, v6

    invoke-direct/range {v9 .. v16}, Lfr/testudo/spacecorsair/mod/ModEvents$Stop;-><init>(Lfr/testudo/spacecorsair/mod/ModEvents$Action;Lfr/testudo/spacecorsair/mod/ModEvents$Actor;Ljava/lang/String;IIII)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    iget-object v2, v3, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->stops:Ljava/util/List;

    new-instance v9, Lfr/testudo/spacecorsair/mod/ModEvents$Stop;

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModEvents$Action;->CLEAR:Lfr/testudo/spacecorsair/mod/ModEvents$Action;

    sget-object v11, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;->RAIDER:Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;->RAIDER:Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v5, v0, v1}, Lfr/testudo/spacecorsair/mod/ModEvents;->art(Lfr/testudo/spacecorsair/mod/ModEvents$Actor;Lfr/testudo/spacecorsair/mod/ModEvents$Context;Ljava/util/Random;)Ljava/lang/String;

    move-result-object v12

    const/16 v16, 0x0

    move v13, v6

    move v14, v4

    move v15, v4

    invoke-direct/range {v9 .. v16}, Lfr/testudo/spacecorsair/mod/ModEvents$Stop;-><init>(Lfr/testudo/spacecorsair/mod/ModEvents$Action;Lfr/testudo/spacecorsair/mod/ModEvents$Actor;Ljava/lang/String;IIII)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    :cond_ef
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->RACE:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    if-eq v7, v2, :cond_ff

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->BOUNTY:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    if-eq v7, v2, :cond_ff

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->ESCORT:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    if-eq v7, v2, :cond_ff

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->DEFEND:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    if-ne v7, v2, :cond_13c

    :cond_ff
    const/4 v2, 0x1

    .line 472
    :goto_100
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->DEFEND:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    if-ne v7, v5, :cond_13e

    move-object/from16 v0, p2

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModEvents$Context;->level:I

    add-int/lit8 v16, v5, 0xa

    .line 473
    :goto_10a
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->BLOCKADE:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    if-ne v7, v5, :cond_252

    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModEvents$Context;->policeTier:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v14, v2, 0x1

    .line 474
    :goto_116
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->RACE:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    if-ne v7, v2, :cond_141

    const/4 v2, 0x3

    .line 475
    :goto_11b
    const/4 v5, 0x1

    :goto_11c
    if-gt v5, v2, :cond_143

    .line 476
    iget-object v0, v3, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->stops:Ljava/util/List;

    move-object/from16 v19, v0

    new-instance v9, Lfr/testudo/spacecorsair/mod/ModEvents$Stop;

    iget-object v10, v7, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->action:Lfr/testudo/spacecorsair/mod/ModEvents$Action;

    iget-object v11, v7, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->actor:Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    mul-int v13, v6, v5

    move-object/from16 v12, v18

    move v15, v14

    invoke-direct/range {v9 .. v16}, Lfr/testudo/spacecorsair/mod/ModEvents$Stop;-><init>(Lfr/testudo/spacecorsair/mod/ModEvents$Action;Lfr/testudo/spacecorsair/mod/ModEvents$Actor;Ljava/lang/String;IIII)V

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    add-int/lit8 v5, v5, 0x1

    goto :goto_11c

    .line 464
    :cond_138
    sget-object v10, Lfr/testudo/spacecorsair/mod/ModEvents$Action;->CHALLENGE:Lfr/testudo/spacecorsair/mod/ModEvents$Action;

    goto/16 :goto_a1

    :cond_13c
    move v2, v4

    .line 471
    goto :goto_100

    .line 472
    :cond_13e
    const/16 v16, 0x0

    goto :goto_10a

    .line 474
    :cond_141
    const/4 v2, 0x1

    goto :goto_11b

    .line 478
    :cond_143
    mul-int v13, v6, v2

    .line 479
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Twist;->BETRAYAL:Lfr/testudo/spacecorsair/mod/ModEvents$Twist;

    if-eq v8, v2, :cond_14d

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Twist;->REINFORCEMENTS:Lfr/testudo/spacecorsair/mod/ModEvents$Twist;

    if-ne v8, v2, :cond_16b

    .line 480
    :cond_14d
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Twist;->BETRAYAL:Lfr/testudo/spacecorsair/mod/ModEvents$Twist;

    if-ne v8, v2, :cond_1d0

    const/4 v14, 0x1

    .line 481
    :goto_152
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Twist;->BETRAYAL:Lfr/testudo/spacecorsair/mod/ModEvents$Twist;

    if-ne v8, v2, :cond_1d3

    const-string v12, "rv_raider"

    .line 482
    :goto_158
    add-int/lit16 v13, v13, 0x12c

    .line 483
    iget-object v2, v3, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->stops:Ljava/util/List;

    new-instance v9, Lfr/testudo/spacecorsair/mod/ModEvents$Stop;

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModEvents$Action;->CLEAR:Lfr/testudo/spacecorsair/mod/ModEvents$Action;

    sget-object v11, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;->RAIDER:Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    const/16 v16, 0x0

    move v15, v14

    invoke-direct/range {v9 .. v16}, Lfr/testudo/spacecorsair/mod/ModEvents$Stop;-><init>(Lfr/testudo/spacecorsair/mod/ModEvents$Action;Lfr/testudo/spacecorsair/mod/ModEvents$Actor;Ljava/lang/String;IIII)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    :cond_16b
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->ESCORT:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    if-eq v7, v2, :cond_177

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->RESCUE:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    if-eq v7, v2, :cond_177

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->BLOCKADE:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    if-ne v7, v2, :cond_19f

    .line 486
    :cond_177
    iget-object v2, v3, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->stops:Ljava/util/List;

    iget-object v4, v3, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->stops:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/mod/ModEvents$Stop;

    iget v2, v2, Lfr/testudo/spacecorsair/mod/ModEvents$Stop;->distance:I

    add-int v13, v2, v6

    .line 487
    iget-object v2, v3, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->stops:Ljava/util/List;

    new-instance v9, Lfr/testudo/spacecorsair/mod/ModEvents$Stop;

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModEvents$Action;->PASS:Lfr/testudo/spacecorsair/mod/ModEvents$Action;

    sget-object v11, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;->STATION:Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    const-string v12, "poi_outpost_1"

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-direct/range {v9 .. v16}, Lfr/testudo/spacecorsair/mod/ModEvents$Stop;-><init>(Lfr/testudo/spacecorsair/mod/ModEvents$Action;Lfr/testudo/spacecorsair/mod/ModEvents$Actor;Ljava/lang/String;IIII)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    :cond_19f
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->RACE:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    if-eq v7, v2, :cond_1ab

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->FACTION_WAR:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    if-eq v7, v2, :cond_1ab

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Twist;->RIVAL:Lfr/testudo/spacecorsair/mod/ModEvents$Twist;

    if-ne v8, v2, :cond_1df

    .line 491
    :cond_1ab
    div-int/lit8 v2, v13, 0x28

    add-int/lit8 v2, v2, 0x19

    iput v2, v3, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->deadline:I

    .line 492
    iget-object v2, v3, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->stops:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1df

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/mod/ModEvents$Stop;

    iget v5, v3, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->deadline:I

    iget v6, v2, Lfr/testudo/spacecorsair/mod/ModEvents$Stop;->count:I

    mul-int/lit8 v6, v6, 0xc

    iget v2, v2, Lfr/testudo/spacecorsair/mod/ModEvents$Stop;->holdSeconds:I

    add-int/2addr v2, v6

    add-int/2addr v2, v5

    iput v2, v3, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->deadline:I

    goto :goto_1b7

    .line 480
    :cond_1d0
    add-int/lit8 v14, v4, 0x1

    goto :goto_152

    .line 481
    :cond_1d3
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;->RAIDER:Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v2, v0, v1}, Lfr/testudo/spacecorsair/mod/ModEvents;->art(Lfr/testudo/spacecorsair/mod/ModEvents$Actor;Lfr/testudo/spacecorsair/mod/ModEvents$Context;Ljava/util/Random;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_158

    .line 494
    :cond_1df
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModEvents$Context;->level:I

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV34;->bounty(I)F

    move-result v2

    float-to-int v4, v2

    .line 495
    mul-int/lit8 v2, v4, 0x2

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/2addr v2, v5

    iput v2, v3, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->credits:I

    .line 496
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModEvents$Context;->standing:I

    const/16 v5, 0x64

    if-lt v2, v5, :cond_226

    const/4 v2, 0x0

    :goto_1fe
    iput v2, v3, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->standing:I

    .line 497
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->SALVAGE:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    if-eq v7, v2, :cond_208

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->RESCUE:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    if-ne v7, v2, :cond_238

    .line 498
    :cond_208
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModEvents$Context;->level:I

    const/16 v4, 0xa

    if-lt v2, v4, :cond_228

    invoke-virtual/range {v17 .. v17}, Ljava/util/Random;->nextBoolean()Z

    move-result v2

    if-eqz v2, :cond_228

    .line 499
    const-string v2, "diamond"

    iput-object v2, v3, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->item:Ljava/lang/String;

    .line 500
    const-string v2, "RARE"

    iput-object v2, v3, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->lootTier:Ljava/lang/String;

    .line 501
    iget v2, v3, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->credits:I

    add-int/lit16 v2, v2, -0x5dc

    iput v2, v3, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->credits:I

    goto/16 :goto_7

    .line 496
    :cond_226
    const/4 v2, 0x1

    goto :goto_1fe

    .line 503
    :cond_228
    const-string v2, "malachite"

    iput-object v2, v3, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->item:Ljava/lang/String;

    .line 504
    const-string v2, "FINE"

    iput-object v2, v3, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->lootTier:Ljava/lang/String;

    .line 505
    iget v2, v3, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->credits:I

    add-int/lit16 v2, v2, -0xc8

    iput v2, v3, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->credits:I

    goto/16 :goto_7

    .line 507
    :cond_238
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModEvents$Context;->level:I

    const/4 v5, 0x6

    if-lt v2, v5, :cond_7

    const/4 v2, 0x4

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    if-nez v2, :cond_7

    .line 508
    const/4 v2, 0x1

    iput v2, v3, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->parts:I

    .line 509
    iget v2, v3, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->credits:I

    sub-int/2addr v2, v4

    iput v2, v3, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->credits:I

    goto/16 :goto_7

    :cond_252
    move v14, v2

    goto/16 :goto_116
.end method

.method static mark(Lfr/testudo/spacecorsair/business/Element;)I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 93
    if-eqz p0, :cond_7

    sget v1, Lfr/testudo/spacecorsair/mod/ModEvents;->kind:I

    if-nez v1, :cond_8

    .line 96
    :cond_7
    :goto_7
    return v0

    .line 94
    :cond_8
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModEvents;->victim:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-ne p0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_7

    .line 95
    :cond_e
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModEvents;->wanted:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-ne p0, v1, :cond_7

    const/4 v0, 0x2

    goto :goto_7
.end method

.method private static mix(J)J
    .registers 6

    .prologue
    .line 443
    const-wide v0, -0x61c8864680b583ebL

    add-long/2addr v0, p0

    .line 444
    const/16 v2, 0x1e

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    const-wide v2, -0x40a7b892e31b1a47L    # -0.0014818730883930777

    mul-long/2addr v0, v2

    .line 445
    const/16 v2, 0x1b

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    const-wide v2, -0x6b2fb644ecceee15L    # -1.981759996145912E-208

    mul-long/2addr v0, v2

    .line 446
    const/16 v2, 0x1f

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method static onLevel()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 61
    const/4 v0, 0x0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModEvents;->end(Ljava/lang/String;)V

    .line 62
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModEvents;->salvageDouble:Z

    .line 63
    sput v1, Lfr/testudo/spacecorsair/mod/ModChain;->links:I

    .line 64
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModEvents;->fieldStripped:Z

    .line 65
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSector;->play()J

    move-result-wide v0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModEvents;->enteredAt:J

    .line 66
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModEvents;->enteredAt:J

    const-wide/32 v2, 0x15f90

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModEvents;->nextAt:J

    .line 67
    return-void
.end method

.method public static onTrigger(JLjava/lang/String;Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;III)Z
    .registers 19

    .prologue
    .line 529
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModEvents;->ENABLED:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 539
    :goto_5
    return v0

    .line 530
    :cond_6
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v10, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 531
    if-eqz v10, :cond_18

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPlace;->level()Lfr/testudo/spacecorsair/game/levels/Level;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModRep;->index(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1a

    :cond_18
    const/4 v0, 0x0

    goto :goto_5

    .line 532
    :cond_1a
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPlace;->level()Lfr/testudo/spacecorsair/game/levels/Level;

    move-result-object v0

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModMap;->owner(Lfr/testudo/spacecorsair/game/levels/LevelId;)I

    move-result v2

    .line 533
    if-gez v2, :cond_28

    const/4 v0, 0x0

    goto :goto_5

    .line 534
    :cond_28
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModEvents$Context;

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV34;->playerLevel()I

    move-result v1

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v2, v3, v2

    iget-object v3, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    .line 535
    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModRep;->standing(Ljava/lang/String;)F

    move-result v2

    float-to-int v4, v2

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPolice;->heat()I

    move-result v5

    move-object v2, p2

    move/from16 v6, p6

    move/from16 v7, p4

    move/from16 v8, p5

    move-object v9, p3

    invoke-direct/range {v0 .. v9}, Lfr/testudo/spacecorsair/mod/ModEvents$Context;-><init>(ILjava/lang/String;Ljava/lang/String;IIIIILfr/testudo/spacecorsair/mod/ModEvents$Trigger;)V

    .line 536
    invoke-static {p0, p1, v0}, Lfr/testudo/spacecorsair/mod/ModEvents;->generate(JLfr/testudo/spacecorsair/mod/ModEvents$Context;)Lfr/testudo/spacecorsair/mod/ModEvents$Event;

    move-result-object v0

    .line 537
    invoke-static {v0, v10}, Lfr/testudo/spacecorsair/mod/ModEvents;->spawn(Lfr/testudo/spacecorsair/mod/ModEvents$Event;Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z

    move-result v1

    if-nez v1, :cond_54

    const/4 v0, 0x0

    goto :goto_5

    .line 538
    :cond_54
    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->objective:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->brief:Ljava/lang/String;

    const/16 v1, 0x2328

    invoke-static {p2, v0, v1}, Lfr/testudo/spacecorsair/mod/ModComms;->show(Ljava/lang/String;Ljava/lang/String;I)V

    .line 539
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private static salvage(Lfr/testudo/spacecorsair/business/player/PlayerShip;JJ)V
    .registers 12

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x44480000    # 800.0f

    .line 301
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

    .line 302
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModEvents;->target:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_39

    .line 303
    sput-boolean v5, Lfr/testudo/spacecorsair/mod/ModEvents;->salvageDouble:Z

    .line 304
    const-string v0, "You reached the wreck field first. Its salvage is yours, twice over."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 305
    const-string v0, "salvagewon"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModEvents;->end(Ljava/lang/String;)V

    .line 312
    :cond_38
    :goto_38
    return-void

    .line 306
    :cond_39
    sget v0, Lfr/testudo/spacecorsair/mod/ModEvents;->rivalLeft:F

    cmpg-float v0, v0, v4

    if-lez v0, :cond_45

    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModEvents;->endsAt:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_38

    .line 307
    :cond_45
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSector;->stripField()V

    .line 308
    sput-boolean v5, Lfr/testudo/spacecorsair/mod/ModEvents;->fieldStripped:Z

    .line 309
    const-string v0, "The scavengers stripped the wreck field."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 310
    const-string v0, "salvagelost"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModEvents;->end(Ljava/lang/String;)V

    goto :goto_38
.end method

.method static spawn(Lfr/testudo/spacecorsair/mod/ModEvents$Event;Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z
    .registers 14

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 544
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModEvents;->ENABLED:Z

    if-eqz v0, :cond_12

    if-eqz p0, :cond_12

    if-eqz p1, :cond_12

    iget-boolean v0, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v0, :cond_12

    iget-boolean v0, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-eqz v0, :cond_13

    .line 585
    :cond_12
    :goto_12
    return v6

    .line 545
    :cond_13
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->objective:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->BOUNTY:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    if-eq v0, v1, :cond_25

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->objective:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->AMBUSH:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    if-eq v0, v1, :cond_25

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->objective:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->SALVAGE:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    if-ne v0, v1, :cond_12

    .line 546
    :cond_25
    sget v0, Lfr/testudo/spacecorsair/mod/ModEvents;->kind:I

    if-nez v0, :cond_12

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->active:Z

    if-nez v0, :cond_12

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-nez v0, :cond_12

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v0, :cond_12

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-nez v0, :cond_12

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 547
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModSector;->excluded(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 548
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->stops:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lfr/testudo/spacecorsair/mod/ModEvents$Stop;

    .line 549
    new-instance v7, Ljava/util/Random;

    iget-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->seed:J

    invoke-direct {v7, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 550
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v8, Lfr/testudo/spacecorsair/mod/ModEvents$Stop;->distance:I

    int-to-float v1, v1

    iget v2, v8, Lfr/testudo/spacecorsair/mod/ModEvents$Stop;->distance:I

    add-int/lit16 v2, v2, 0xc8

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModPlace;->farPoint(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v11

    .line 551
    iget-object v0, v8, Lfr/testudo/spacecorsair/mod/ModEvents$Stop;->art:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->hasArt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 552
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->objective:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->SALVAGE:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    if-ne v0, v1, :cond_bc

    move v9, v6

    .line 553
    :goto_7a
    iget v0, v8, Lfr/testudo/spacecorsair/mod/ModEvents$Stop;->count:I

    if-ge v9, v0, :cond_b9

    .line 554
    iget-object v0, v8, Lfr/testudo/spacecorsair/mod/ModEvents$Stop;->art:Ljava/lang/String;

    iget-object v1, v8, Lfr/testudo/spacecorsair/mod/ModEvents$Stop;->art:Ljava/lang/String;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModSector;->artSize(Ljava/lang/String;)F

    move-result v1

    iget v2, v11, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v3, v11, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-int/lit16 v4, v9, 0x1f4

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 555
    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v4

    const/high16 v5, 0x43b40000    # 360.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    .line 554
    invoke-static/range {v0 .. v7}, Lfr/testudo/spacecorsair/mod/ModSector;->still(Ljava/lang/String;FFFFFZLjava/util/Random;)[Lfr/testudo/spacecorsair/mod/ModWreck;

    move-result-object v1

    .line 556
    array-length v2, v1

    move v0, v6

    :goto_9d
    if-ge v0, v2, :cond_b5

    aget-object v3, v1, v0

    .line 557
    iput-boolean v10, v3, Lfr/testudo/spacecorsair/mod/ModWreck;->isMissionObjective:Z

    .line 558
    sget-object v4, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v4, v3, Lfr/testudo/spacecorsair/mod/ModWreck;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 559
    iget-object v4, v3, Lfr/testudo/spacecorsair/mod/ModWreck;->group:[Z

    aput-boolean v6, v4, v6

    .line 560
    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->encounterLevel:I

    iput v4, v3, Lfr/testudo/spacecorsair/mod/ModWreck;->srcLevel:I

    .line 561
    const/4 v4, 0x2

    iput v4, v3, Lfr/testudo/spacecorsair/mod/ModWreck;->srcClass:I

    .line 556
    add-int/lit8 v0, v0, 0x1

    goto :goto_9d

    .line 553
    :cond_b5
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_7a

    :cond_b9
    move v6, v10

    .line 564
    goto/16 :goto_12

    .line 566
    :cond_bc
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFleet;->TYPES:[Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    array-length v2, v1

    move v0, v6

    :goto_c0
    if-ge v0, v2, :cond_12

    aget-object v3, v1, v0

    .line 567
    iget-object v4, v8, Lfr/testudo/spacecorsair/mod/ModEvents$Stop;->art:Ljava/lang/String;

    iget-object v5, v3, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->art:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d1

    .line 566
    add-int/lit8 v0, v0, 0x1

    goto :goto_c0

    .line 568
    :cond_d1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v0, v6

    .line 569
    :goto_d7
    iget v2, v8, Lfr/testudo/spacecorsair/mod/ModEvents$Stop;->count:I

    if-ge v0, v2, :cond_e9

    .line 570
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->encounterLevel:I

    invoke-static {v3, v2}, Lfr/testudo/spacecorsair/mod/ModFleet;->build(Lfr/testudo/spacecorsair/mod/ModFleet$Type;I)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v2

    .line 571
    if-eqz v2, :cond_12

    .line 572
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    add-int/lit8 v0, v0, 0x1

    goto :goto_d7

    .line 574
    :cond_e9
    :goto_e9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_11a

    .line 575
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 576
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v11, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v4, v11, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-int/lit16 v5, v6, 0xdc

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 577
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 578
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Event;->objective:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->AMBUSH:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    if-ne v2, v3, :cond_10e

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initAttackTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 579
    :cond_10e
    iput-boolean v10, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->isMissionObjective:Z

    .line 580
    sget-object v2, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 581
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    .line 574
    add-int/lit8 v6, v6, 0x1

    goto :goto_e9

    :cond_11a
    move v6, v10

    .line 583
    goto/16 :goto_12
.end method

.method private static start(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 12

    .prologue
    .line 128
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

    .line 129
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModEvents;->ENABLED:Z

    if-eqz v0, :cond_5d

    .line 130
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModMap;->owner(Lfr/testudo/spacecorsair/game/levels/LevelId;)I

    move-result v2

    .line 131
    if-ltz v2, :cond_5d

    .line 132
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSector;->play()J

    move-result-wide v0

    .line 133
    const-wide/32 v4, 0x7fffffff

    const-wide/16 v6, 0x0

    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModEvents;->enteredAt:J

    sub-long v8, v0, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 134
    sget v3, Lfr/testudo/spacecorsair/mod/ModChain;->links:I

    const/4 v5, 0x3

    if-lt v3, v5, :cond_5a

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;->KILLS:Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    .line 135
    :goto_40
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    int-to-long v6, v5

    xor-long/2addr v0, v6

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v2, v5, v2

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    sget v5, Lfr/testudo/spacecorsair/mod/ModChain;->links:I

    const/4 v6, -0x1

    invoke-static/range {v0 .. v6}, Lfr/testudo/spacecorsair/mod/ModEvents;->onTrigger(JLjava/lang/String;Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;III)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 146
    :goto_59
    return-void

    .line 134
    :cond_5a
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;->TIME:Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    goto :goto_40

    .line 139
    :cond_5d
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    .line 140
    const/4 v2, 0x1

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModSector;->poiAt(I)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    .line 141
    const-wide v4, 0x3fd999999999999aL    # 0.4

    cmpg-double v3, v0, v4

    if-gez v3, :cond_9b

    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModEvents;->startDistress(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 145
    :goto_72
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

    goto :goto_59

    .line 142
    :cond_9b
    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    cmpg-double v0, v0, v4

    if-ltz v0, :cond_a3

    if-nez v2, :cond_a7

    :cond_a3
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModEvents;->startBounty(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    goto :goto_72

    .line 143
    :cond_a7
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModEvents;->fieldStripped:Z

    if-nez v0, :cond_af

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModEvents;->salvageDouble:Z

    if-eqz v0, :cond_b3

    :cond_af
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModEvents;->startBounty(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    goto :goto_72

    .line 144
    :cond_b3
    invoke-static {p0, v2}, Lfr/testudo/spacecorsair/mod/ModEvents;->startSalvage(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/engine/Vector2;)V

    goto :goto_72
.end method

.method private static startBounty(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 11

    .prologue
    const/4 v2, 0x1

    const v8, 0x3e99999a    # 0.3f

    .line 200
    iget v0, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 201
    const-string v1, "reaver"

    invoke-static {v1, v0, v2}, Lfr/testudo/spacecorsair/mod/ModSector;->wingShip(Ljava/lang/String;IZ)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v0

    .line 202
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-nez v1, :cond_15

    .line 221
    :goto_14
    return-void

    .line 203
    :cond_15
    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 204
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV34;->elite(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V

    .line 205
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModSector;->poiAt(I)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    .line 206
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

    .line 207
    :cond_3d
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 208
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 209
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

    .line 210
    new-instance v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;-><init>()V

    new-instance v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    iget v4, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v5, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/16 v6, 0x640

    .line 211
    invoke-virtual {v3, v4, v5, v6}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v2

    new-instance v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/16 v4, 0xbb8

    .line 212
    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initIdleDuring(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v2

    .line 210
    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setActivitySequence(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 213
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    .line 214
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->wanted:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 215
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModEvents;->target:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 216
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSector;->play()J

    move-result-wide v2

    const-wide/32 v4, 0x2bf20

    add-long/2addr v2, v4

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModEvents;->endsAt:J

    .line 217
    const/4 v2, 0x2

    sput v2, Lfr/testudo/spacecorsair/mod/ModEvents;->kind:I

    .line 218
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

    .line 219
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 220
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
    .line 163
    const/4 v0, 0x1

    iget v1, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMin:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 164
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModSector;->lawless(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v1

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModEvents;->policeVictim:Z

    .line 165
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModEvents;->policeVictim:Z

    if-eqz v1, :cond_25

    iget v1, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newPolice(II)Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;

    move-result-object v0

    move-object v3, v0

    .line 167
    :goto_22
    if-nez v3, :cond_31

    .line 197
    :goto_24
    return-void

    .line 166
    :cond_25
    iget v1, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newTrasnporteur(II)Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    move-result-object v0

    move-object v3, v0

    goto :goto_22

    .line 168
    :cond_31
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x45480000    # 3200.0f

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModEvents;->around(Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v4

    .line 169
    iget-object v0, v3, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 170
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModEvents;->policeVictim:Z

    if-nez v0, :cond_48

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/UniverseName;->getRandomTransporteurName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->specificName:Ljava/lang/String;

    .line 171
    :cond_48
    const/4 v0, 0x1

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    const/4 v1, 0x0

    const/16 v2, 0x5dc

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWaitUntilPlayerClose(I)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {v3, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 172
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->hold:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 173
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    sput-object v3, Lfr/testudo/spacecorsair/mod/ModEvents;->victim:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 175
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

    .line 176
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v6

    if-gez v0, :cond_a4

    const/4 v0, 0x1

    :goto_8f
    add-int/lit8 v6, v0, 0x2

    .line 177
    const/4 v0, 0x0

    move v2, v0

    :goto_93
    if-ge v2, v6, :cond_e0

    .line 178
    const-string v0, "reaver"

    const/4 v1, 0x0

    invoke-static {v0, v5, v1}, Lfr/testudo/spacecorsair/mod/ModSector;->wingShip(Ljava/lang/String;IZ)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v1

    .line 179
    instance-of v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-nez v0, :cond_a6

    .line 177
    :goto_a0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_93

    .line 176
    :cond_a4
    const/4 v0, 0x0

    goto :goto_8f

    .line 180
    :cond_a6
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

    .line 181
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/Element;->updateSapCoords()V

    move-object v0, v1

    .line 182
    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    .line 183
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->hostiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a0

    .line 185
    :cond_e0
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->hostiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, v3, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    .line 187
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->victim:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    goto/16 :goto_24

    .line 190
    :cond_f0
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModEvents;->engaged:Z

    .line 191
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSector;->play()J

    move-result-wide v0

    const-wide/32 v6, 0x3a980

    add-long/2addr v0, v6

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModEvents;->endsAt:J

    .line 192
    const/4 v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModEvents;->kind:I

    .line 193
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModEvents;->policeVictim:Z

    if-eqz v0, :cond_145

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Distress call: a police cruiser is under pirate attack, "

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

    .line 195
    :goto_128
    const-string v0, "DISTRESS CALL"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f400000    # 0.75f

    const v3, 0x3e4ccccd    # 0.2f

    invoke-static {p0, v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 196
    const-string v0, "warp_in"

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x5dc

    invoke-static {v0, v1, v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    goto/16 :goto_24

    .line 194
    :cond_145
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

    goto :goto_128
.end method

.method private static startSalvage(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/engine/Vector2;)V
    .registers 6

    .prologue
    .line 226
    sput-object p1, Lfr/testudo/spacecorsair/mod/ModEvents;->target:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 227
    const v0, 0x44bb8000    # 1500.0f

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, p1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v1

    const v2, 0x3f8ccccd    # 1.1f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModEvents;->rivalLeft:F

    .line 228
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSector;->play()J

    move-result-wide v0

    const-wide/32 v2, 0x1d4c0

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModEvents;->endsAt:J

    .line 229
    const/4 v0, 0x3

    sput v0, Lfr/testudo/spacecorsair/mod/ModEvents;->kind:I

    .line 230
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

    .line 231
    const-string v0, "SALVAGE RACE"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x3ecccccd    # 0.4f

    const v2, 0x3f666666    # 0.9f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 232
    return-void
.end method

.method private static testForce(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 8

    .prologue
    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 106
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModEvents;->testAt:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_16

    const-string v2, "corsair_nodialog"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 117
    :cond_16
    :goto_16
    return-void

    .line 107
    :cond_17
    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModEvents;->testAt:J

    .line 108
    const-string v0, "corsair_event"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_16

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModEvents;->testLast:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 110
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->testLast:Ljava/lang/String;

    .line 111
    sget v1, Lfr/testudo/spacecorsair/mod/ModEvents;->kind:I

    if-eqz v1, :cond_34

    const-string v1, "test"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModEvents;->end(Ljava/lang/String;)V

    .line 112
    :cond_34
    const/4 v1, 0x1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModSector;->poiAt(I)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    .line 113
    const-string v2, "distress"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_77

    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModEvents;->startDistress(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 116
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

    .line 114
    :cond_77
    const-string v2, "bounty"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModEvents;->startBounty(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    goto :goto_44

    .line 115
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
    .line 121
    sget v0, Lfr/testudo/spacecorsair/mod/ModEvents;->kind:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->victim:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_e

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->victim:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 123
    :goto_d
    return-object v0

    .line 122
    :cond_e
    sget v0, Lfr/testudo/spacecorsair/mod/ModEvents;->kind:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->wanted:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_1c

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->wanted:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_d

    .line 123
    :cond_1c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents;->target:Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_d
.end method

.method static tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/LevelId;J)V
    .registers 10

    .prologue
    .line 71
    if-eqz p0, :cond_1a

    if-eqz p1, :cond_1a

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModEvents;->enabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCalm;->active()Z

    move-result v0

    if-nez v0, :cond_1a

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->active:Z

    if-nez v0, :cond_1a

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->chase()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 89
    :cond_1a
    :goto_1a
    return-void

    .line 72
    :cond_1b
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSector;->play()J

    move-result-wide v0

    .line 73
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModEvents;->nextAt:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_2d

    const-wide/32 v2, 0x15f90

    add-long/2addr v2, v0

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModEvents;->nextAt:J

    .line 74
    :cond_2d
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModEvents;->testForce(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 76
    :try_start_30
    sget v2, Lfr/testudo/spacecorsair/mod/ModEvents;->kind:I

    packed-switch v2, :pswitch_data_6c

    goto :goto_1a

    .line 78
    :pswitch_36
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModEvents;->nextAt:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1a

    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModEvents;->start(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_3f} :catch_40

    goto :goto_1a

    .line 85
    :catch_40
    move-exception v0

    .line 86
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

    .line 87
    const-string v0, "error"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModEvents;->end(Ljava/lang/String;)V

    goto :goto_1a

    .line 80
    :pswitch_5f
    :try_start_5f
    invoke-static {p0, p2, p3}, Lfr/testudo/spacecorsair/mod/ModEvents;->distress(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    goto :goto_1a

    .line 81
    :pswitch_63
    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModEvents;->bounty(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    goto :goto_1a

    .line 82
    :pswitch_67
    invoke-static {p0, v0, v1, p2, p3}, Lfr/testudo/spacecorsair/mod/ModEvents;->salvage(Lfr/testudo/spacecorsair/business/player/PlayerShip;JJ)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_6a} :catch_40

    goto :goto_1a

    .line 76
    nop

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_36
        :pswitch_5f
        :pswitch_63
        :pswitch_67
    .end packed-switch
.end method
