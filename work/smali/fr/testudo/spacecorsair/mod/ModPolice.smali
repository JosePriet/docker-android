.class public Lfr/testudo/spacecorsair/mod/ModPolice;
.super Ljava/lang/Object;
.source "ModPolice.java"


# static fields
.field static final BATTLESHIP:I = 0x4

.field public static final CAP:I = 0x8

.field static final CAPITAL:I = 0x5

.field public static final CIVIL_HIT_MS:J = 0x1388L

.field public static final CREDITS_PER_SHIP:I = 0x3e8

.field public static final CREDITS_PER_TITAN:I = 0x2710

.field public static final DECAY_MS:J = 0x4e20L

.field public static final DMG_BONUS:F = 1.25f

.field public static final DRAIN:F = 1.5f

.field public static final DRAIN_STOP_MS:J = 0xbb8L

.field static final FRIGATE:I = 0x0

.field public static final GATE_MIN:F = 2500.0f

.field public static final HEAT_CIVIL_HIT:I = 0x1

.field public static final HEAT_CIVIL_KILL:I = 0x3

.field public static final HEAT_POLICE_HIT:I = 0x1

.field public static final HULL_BONUS:F = 1.25f

.field public static final KILL_CUT:F = 0.3f

.field public static final KILL_HEAT:[I

.field static final LIGHT_CYCLE_MS:J = 0x4b0L

.field public static final MISSILE_DMG:F = 2.0f

.field public static final MISSILE_MS:J = 0x1388L

.field public static final MISSILE_MS_BIG:J = 0x1f40L

.field public static final MISSILE_RANGE:F = 2400.0f

.field static final NONE:I = -0x1

.field public static final PIN:F = 0.2f

.field public static final PIN_MS:I = 0x9c4

.field public static final POLICE_HIT_MS:J = 0x1f40L

.field public static final RETURN_MS:J = 0x927c0L

.field public static final SHIELD_BONUS:F = 1.25f

.field public static final SNARE:F = 0.65f

.field public static final SNARE_CD_MS:J = 0x1770L

.field public static final SNARE_MS:I = 0xbb8

.field static final SPARTAN_CAPITAL_WAVE:[I

.field public static final SPEED_BONUS:F = 1.15f

.field public static final STOCK_POLICE_CLASS:I = 0x2

.field public static final TECH_THROUGH_WALL:Z = false

.field static final TITAN:I = 0x6

.field public static final TITAN_MIN_LEVEL:I = 0x10

.field public static final UNLOCK:[I

.field public static final WAVE_BASE_MS:[J

.field public static final WAVE_FLOOR_MS:J = 0x1f40L

.field public static final WAVE_MS:J = 0x6d60L

.field private static final active:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/business/ennemis/Ennemis;",
            ">;"
        }
    .end annotation
.end field

.field private static final boosted:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/business/ennemis/Ennemis;",
            ">;"
        }
    .end annotation
.end field

.field private static final civilHit:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static drainTextAt:J

.field private static heat:I

.field private static heatRose:Z

.field private static here:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field private static joinTimer:J

.field private static lastLevel:Ljava/lang/Object;

.field private static lastTop:I

.field private static final lb:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static final left:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lfr/testudo/spacecorsair/game/levels/LevelId;",
            "[J>;"
        }
    .end annotation
.end field

.field private static final lightBar:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static logCheck:J

.field private static logOn:Ljava/lang/Boolean;

.field private static final monoAura:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static nextPoliceHit:J

.field private static final police:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            "[J>;"
        }
    .end annotation
.end field

.field private static quietMs:J

.field private static regenStopUntil:J

.field private static sinceWave:J

.field private static final snareReady:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field static spawning:Z

.field private static swTimer:J

.field private static titan:Lfr/testudo/spacecorsair/business/Element;

.field private static waveFlag:Z

.field private static waveTimer:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x7

    .line 43
    new-array v0, v1, [I

    fill-array-data v0, :array_6a

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->KILL_HEAT:[I

    .line 45
    new-array v0, v1, [I

    fill-array-data v0, :array_7c

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->UNLOCK:[I

    .line 50
    const/4 v0, 0x6

    new-array v0, v0, [J

    fill-array-data v0, :array_8e

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->WAVE_BASE_MS:[J

    .line 54
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_aa

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->SPARTAN_CAPITAL_WAVE:[I

    .line 175
    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModPolice;->lastTop:I

    .line 177
    const-wide v0, 0x1fffffffffffffffL

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->sinceWave:J

    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->left:Ljava/util/HashMap;

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->active:Ljava/util/ArrayList;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->boosted:Ljava/util/ArrayList;

    .line 187
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->police:Ljava/util/WeakHashMap;

    .line 188
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->snareReady:Ljava/util/WeakHashMap;

    .line 189
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->civilHit:Ljava/util/WeakHashMap;

    .line 646
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->lightBar:Ljava/util/WeakHashMap;

    .line 647
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->lb:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 648
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->monoAura:Ljava/util/WeakHashMap;

    return-void

    .line 43
    nop

    :array_6a
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x6
        0x8
        0x0
    .end array-data

    .line 45
    :array_7c
    .array-data 4
        0x1
        0x5
        0xa
        0x10
        0x18
        0x22
        0x2e
    .end array-data

    .line 50
    :array_8e
    .array-data 8
        0x7530
        0x88b8
        0x9c40
        0xafc8
        0xc350
        0xea60
    .end array-data

    .line 54
    :array_aa
    .array-data 4
        0x4
        0x4
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static arrival(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 4

    .prologue
    .line 535
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findClosestPortal(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v1

    .line 536
    if-eqz v1, :cond_26

    iget-object v0, v1, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const v2, 0x451c4000    # 2500.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_26

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_24} :catch_25

    .line 540
    :goto_24
    return-object v0

    .line 537
    :catch_25
    move-exception v0

    .line 540
    :cond_26
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPlace;->ambushPoint(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    goto :goto_24
.end method

.method private static boosts(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 7

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 545
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->boosted:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_d
    if-ltz v1, :cond_51

    .line 546
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->boosted:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 547
    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v2, :cond_30

    iget v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-lez v2, :cond_30

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v2

    const/high16 v3, 0x44fa0000    # 2000.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_44

    .line 548
    :cond_30
    iget v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->alterationSnareValue:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_3b

    iput v4, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->alterationSnareValue:F

    const/4 v2, 0x0

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->alterationSnareDuree:I

    .line 549
    :cond_3b
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->boosted:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 545
    :cond_40
    :goto_40
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_d

    .line 552
    :cond_44
    iget v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->alterationSnareValue:F

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_40

    .line 553
    iput v5, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->alterationSnareValue:F

    .line 554
    const/16 v2, 0xc8

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->alterationSnareDuree:I

    goto :goto_40

    .line 557
    :cond_51
    return-void
.end method

.method static build(III)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 14

    .prologue
    const/high16 v10, 0x42c80000    # 100.0f

    const v6, 0x3f333333    # 0.7f

    const/4 v9, 0x3

    const/4 v2, 0x0

    const/high16 v8, 0x3fa00000    # 1.25f

    .line 583
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModPoliceData;->randomHull(II)Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;

    move-result-object v4

    .line 584
    if-nez v4, :cond_11

    const/4 v1, 0x0

    .line 629
    :cond_10
    :goto_10
    return-object v1

    .line 585
    :cond_11
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModPoliceData;->drawable(Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;)Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v3

    .line 586
    if-nez v3, :cond_19

    const/4 v1, 0x0

    goto :goto_10

    .line 587
    :cond_19
    iget-object v0, v3, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->prefetch(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 588
    new-instance v5, Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v4, Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;->size:I

    int-to-float v0, v0

    mul-float/2addr v0, v6

    iget v1, v4, Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;->size:I

    int-to-float v1, v1

    mul-float/2addr v1, v6

    invoke-direct {v5, v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    .line 591
    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModV34;->want(I)V

    .line 592
    iget v0, v4, Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;->ai:I

    packed-switch v0, :pswitch_data_192

    .line 596
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->albatrosSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModFleet$Cruiser;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/mod/ModFleet$Cruiser;-><init>()V

    iput-object v3, v1, Lfr/testudo/spacecorsair/mod/ModFleet$Cruiser;->d:Lfr/testudo/spacecorsair/display/Drawable;

    iput-object v5, v1, Lfr/testudo/spacecorsair/mod/ModFleet$Cruiser;->phys:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, p2}, Lfr/testudo/spacecorsair/mod/ModPolice;->row([Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    move-result-object v3

    invoke-static {v0, p2}, Lfr/testudo/spacecorsair/mod/ModPolice;->idx([Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)I

    move-result v5

    invoke-virtual {v1, v3, v5}, Lfr/testudo/spacecorsair/mod/ModFleet$Cruiser;->initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    .line 598
    :goto_49
    invoke-static {v0, p2}, Lfr/testudo/spacecorsair/mod/ModPolice;->idx([Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV34;->baseHull(I)F

    move-result v0

    .line 599
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_f4

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getLevel()I

    move-result v3

    invoke-static {v0, p1, v3}, Lfr/testudo/spacecorsair/mod/ModPolice;->hull(FII)F

    move-result v0

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 601
    :goto_60
    iget v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 602
    iput v10, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeInPourc:F

    .line 603
    iget v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    mul-float/2addr v0, v8

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    .line 604
    iget v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->pouseeForce:F

    const v3, 0x3f933333    # 1.15f

    mul-float/2addr v0, v3

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->pouseeForce:F

    .line 605
    iget v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->xp:I

    int-to-float v0, v0

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModV34;->classFactor(I)F

    move-result v3

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->xp:I

    .line 606
    instance-of v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    if-eqz v0, :cond_fb

    move-object v0, v1

    .line 607
    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    .line 608
    new-array v3, v9, [Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    aput-object v5, v3, v2

    const/4 v5, 0x1

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    aput-object v6, v3, v5

    const/4 v5, 0x2

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    aput-object v0, v3, v5

    array-length v5, v3

    move v0, v2

    :goto_9a
    if-ge v0, v5, :cond_fb

    aget-object v6, v3, v0

    .line 609
    if-eqz v6, :cond_aa

    iget v7, v6, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->shootDamage:I

    int-to-float v7, v7

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v6, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->shootDamage:I

    .line 608
    :cond_aa
    add-int/lit8 v0, v0, 0x1

    goto :goto_9a

    .line 593
    :pswitch_ad
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->BasciEnnemisSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModFleet$Fighter;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/mod/ModFleet$Fighter;-><init>()V

    iput-object v3, v1, Lfr/testudo/spacecorsair/mod/ModFleet$Fighter;->d:Lfr/testudo/spacecorsair/display/Drawable;

    iput-object v5, v1, Lfr/testudo/spacecorsair/mod/ModFleet$Fighter;->phys:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, p2}, Lfr/testudo/spacecorsair/mod/ModPolice;->row([Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    move-result-object v3

    invoke-static {v0, p2}, Lfr/testudo/spacecorsair/mod/ModPolice;->idx([Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)I

    move-result v5

    invoke-virtual {v1, v3, v5}, Lfr/testudo/spacecorsair/mod/ModFleet$Fighter;->initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;

    goto :goto_49

    .line 594
    :pswitch_c4
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->defensorSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModFleet$Gunship;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/mod/ModFleet$Gunship;-><init>()V

    iput-object v3, v1, Lfr/testudo/spacecorsair/mod/ModFleet$Gunship;->d:Lfr/testudo/spacecorsair/display/Drawable;

    iput-object v5, v1, Lfr/testudo/spacecorsair/mod/ModFleet$Gunship;->phys:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, p2}, Lfr/testudo/spacecorsair/mod/ModPolice;->row([Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    move-result-object v3

    invoke-static {v0, p2}, Lfr/testudo/spacecorsair/mod/ModPolice;->idx([Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)I

    move-result v5

    invoke-virtual {v1, v3, v5}, Lfr/testudo/spacecorsair/mod/ModFleet$Gunship;->initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    goto/16 :goto_49

    .line 595
    :pswitch_dc
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->FrelonSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModFleet$Raider;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/mod/ModFleet$Raider;-><init>()V

    iput-object v3, v1, Lfr/testudo/spacecorsair/mod/ModFleet$Raider;->d:Lfr/testudo/spacecorsair/display/Drawable;

    iput-object v5, v1, Lfr/testudo/spacecorsair/mod/ModFleet$Raider;->phys:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, p2}, Lfr/testudo/spacecorsair/mod/ModPolice;->row([Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    move-result-object v3

    invoke-static {v0, p2}, Lfr/testudo/spacecorsair/mod/ModPolice;->idx([Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)I

    move-result v5

    invoke-virtual {v1, v3, v5}, Lfr/testudo/spacecorsair/mod/ModFleet$Raider;->initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    goto/16 :goto_49

    .line 600
    :cond_f4
    iget v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    mul-float/2addr v0, v8

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    goto/16 :goto_60

    .line 612
    :cond_fb
    if-lt p1, v9, :cond_111

    .line 613
    instance-of v0, v1, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    if-eqz v0, :cond_174

    move-object v0, v1

    .line 614
    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    .line 615
    if-eqz v0, :cond_111

    iget v3, v0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    mul-float/2addr v3, v8

    iput v3, v0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    iget v3, v0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    iput v3, v0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    .line 621
    :cond_111
    :goto_111
    :try_start_111
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    :try_end_114
    .catch Ljava/lang/Throwable; {:try_start_111 .. :try_end_114} :catch_190

    .line 622
    :goto_114
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModPolice;->name(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    .line 623
    const/4 v0, -0x1

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificNameDecalX:I

    .line 624
    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    if-eqz v0, :cond_126

    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v0, v10}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 625
    :cond_126
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->police:Ljava/util/WeakHashMap;

    new-array v5, v9, [J

    int-to-long v6, p1

    aput-wide v6, v5, v2

    const/4 v6, 0x1

    if-nez p1, :cond_18d

    const-wide/16 v2, 0x9c4

    :goto_132
    aput-wide v2, v5, v6

    const/4 v2, 0x2

    const-wide/16 v6, 0x0

    aput-wide v6, v5, v2

    invoke-virtual {v0, v1, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v0, v0, p0

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->council(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_154

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->lightBar:Ljava/util/WeakHashMap;

    iget v2, v4, Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;->size:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    :cond_154
    iget-object v0, v4, Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;->art:Ljava/lang/String;

    iget v2, v4, Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;->size:I

    int-to-float v2, v2

    invoke-static {v1, v0, p0, v2}, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->put(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;IF)V

    .line 628
    const-string v0, "monolith"

    iget-object v2, v4, Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;->art:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->monoAura:Ljava/util/WeakHashMap;

    iget v2, v4, Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;->size:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_10

    .line 617
    :cond_174
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->bigShield:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;

    .line 618
    if-eqz v0, :cond_111

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cap:F

    mul-float/2addr v3, v8

    iput v3, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cap:F

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cap:F

    iput v3, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cur:F

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->rate:F

    mul-float/2addr v3, v8

    iput v3, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->rate:F

    goto :goto_111

    .line 625
    :cond_18d
    const-wide/16 v2, 0x1f40

    goto :goto_132

    .line 621
    :catch_190
    move-exception v0

    goto :goto_114

    .line 592
    :pswitch_data_192
    .packed-switch 0x0
        :pswitch_ad
        :pswitch_dc
        :pswitch_c4
    .end packed-switch
.end method

.method public static civilAttacked(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V
    .registers 2

    .prologue
    .line 236
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModPolice;->spawning:Z

    if-nez v0, :cond_6

    if-nez p0, :cond_7

    .line 244
    :cond_6
    :goto_6
    return-void

    .line 238
    :cond_7
    :try_start_7
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->isPolice(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPolice;->policeHit()V

    goto :goto_6

    .line 241
    :catch_11
    move-exception v0

    goto :goto_6

    .line 239
    :cond_13
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v0

    if-nez v0, :cond_6

    .line 240
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->civilHit(Lfr/testudo/spacecorsair/business/Element;Z)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_1d} :catch_11

    goto :goto_6
.end method

.method private static civilHit(Lfr/testudo/spacecorsair/business/Element;Z)V
    .registers 8

    .prologue
    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 248
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->civilHit:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 249
    if-nez v0, :cond_11

    if-nez p1, :cond_11

    .line 253
    :cond_10
    :goto_10
    return-void

    .line 250
    :cond_11
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/16 v4, 0x1388

    cmp-long v0, v0, v4

    if-ltz v0, :cond_10

    .line 251
    :cond_1f
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->civilHit:Ljava/util/WeakHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const/4 v0, 0x1

    const-string v1, "civilian hit"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModPolice;->offence(ILjava/lang/String;)V

    goto :goto_10
.end method

.method static className(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 560
    const/4 v0, 0x5

    if-ne p0, v0, :cond_a

    const-string v0, "Capital"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 562
    :goto_9
    return-object v0

    .line 561
    :cond_a
    const/4 v0, 0x6

    if-ne p0, v0, :cond_14

    const-string v0, "Titan"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 562
    :cond_14
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModShips;->CLASS_NAMES:[Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShips;->CLASS_NAMES:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_9
.end method

.method static classOf(Lfr/testudo/spacecorsair/business/Element;)I
    .registers 3

    .prologue
    .line 214
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->police:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 215
    if-eqz v0, :cond_f

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    long-to-int v0, v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x2

    goto :goto_e
.end method

.method public static cutCountdown(JJ)J
    .registers 8

    .prologue
    .line 210
    const-wide/16 v0, 0x1f40

    const v2, 0x3e99999a    # 0.3f

    long-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-long v2, v2

    sub-long v2, p0, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static decayed(IJ)I
    .registers 8

    .prologue
    .line 144
    const/4 v0, 0x0

    const-wide/16 v2, 0x4e20

    div-long v2, p1, v2

    long-to-int v1, v2

    sub-int v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static enter(Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 13

    .prologue
    const-wide/16 v10, 0x0

    const/4 v0, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 412
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPolice;->here:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v1, :cond_2c

    sget v1, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    if-lez v1, :cond_2c

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPolice;->left:Ljava/util/HashMap;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPolice;->here:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const/4 v3, 0x3

    new-array v3, v3, [J

    sget v4, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModPolice;->leaveHeat(I)I

    move-result v4

    int-to-long v4, v4

    aput-wide v4, v3, v6

    sget v4, Lfr/testudo/spacecorsair/mod/ModPolice;->lastTop:I

    int-to-long v4, v4

    aput-wide v4, v3, v7

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSector;->play()J

    move-result-wide v4

    aput-wide v4, v3, v8

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    :cond_2c
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPolice;->visualsClear()V

    .line 414
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPolice;->police:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->clear()V

    .line 415
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPolice;->snareReady:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->clear()V

    .line 416
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPolice;->civilHit:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->clear()V

    .line 417
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPolice;->active:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 418
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPolice;->boosted:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 419
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->titan:Lfr/testudo/spacecorsair/business/Element;

    .line 420
    sput v6, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    .line 421
    const/4 v1, -0x1

    sput v1, Lfr/testudo/spacecorsair/mod/ModPolice;->lastTop:I

    .line 422
    sput-boolean v6, Lfr/testudo/spacecorsair/mod/ModPolice;->heatRose:Z

    .line 423
    sput-wide v10, Lfr/testudo/spacecorsair/mod/ModPolice;->quietMs:J

    .line 424
    const-wide v2, 0x1fffffffffffffffL

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModPolice;->sinceWave:J

    .line 425
    const-wide/16 v2, 0x6d60

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModPolice;->waveTimer:J

    .line 426
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->safe(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v1

    if-eqz v1, :cond_65

    move-object p0, v0

    :cond_65
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModPolice;->here:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 427
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->here:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-nez v0, :cond_6c

    .line 439
    :cond_6b
    :goto_6b
    return-void

    .line 428
    :cond_6c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->left:Ljava/util/HashMap;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPolice;->here:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 429
    if-eqz v0, :cond_98

    aget-wide v2, v0, v8

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSector;->play()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModPolice;->keptOnReturn(JJ)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 430
    aget-wide v2, v0, v6

    long-to-int v1, v2

    sput v1, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    .line 431
    aget-wide v0, v0, v7

    long-to-int v0, v0

    sget v1, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModPolice;->unlockedClass(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModPolice;->lastTop:I

    .line 433
    :cond_98
    const-string v0, "corsair_heat"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->sw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 434
    if-eqz v0, :cond_b0

    .line 435
    :try_start_a0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I
    :try_end_aa
    .catch Ljava/lang/NumberFormatException; {:try_start_a0 .. :try_end_aa} :catch_e9

    .line 436
    :goto_aa
    sget v0, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    if-lez v0, :cond_b0

    sput-wide v10, Lfr/testudo/spacecorsair/mod/ModPolice;->waveTimer:J

    .line 438
    :cond_b0
    sget v0, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    if-lez v0, :cond_6b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPolice;->here:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " heat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lastTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lfr/testudo/spacecorsair/mod/ModPolice;->lastTop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->log(Ljava/lang/String;)V

    goto :goto_6b

    .line 435
    :catch_e9
    move-exception v0

    goto :goto_aa
.end method

.method static factionIndex(Lfr/testudo/spacecorsair/game/levels/LevelId;)I
    .registers 3

    .prologue
    .line 168
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModMap;->owner(Lfr/testudo/spacecorsair/game/levels/LevelId;)I

    move-result v0

    .line 169
    if-gez v0, :cond_c

    const-string v0, "warden"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v0

    .line 170
    :cond_c
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static heat()I
    .registers 1

    .prologue
    .line 194
    sget v0, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    return v0
.end method

.method public static hit(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)F
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 265
    if-eqz p2, :cond_9

    :try_start_3
    iget-object v1, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v1, :cond_9

    if-nez p0, :cond_a

    .line 278
    :cond_9
    :goto_9
    return p1

    .line 266
    :cond_a
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 267
    if-eq p0, v1, :cond_14

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v2, :cond_26

    .line 268
    :cond_14
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->police:Ljava/util/WeakHashMap;

    iget-object v2, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v1, v0, p1}, Lfr/testudo/spacecorsair/mod/ModPolice;->policeWeapon(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/business/Element;F)V

    goto :goto_9

    .line 275
    :catch_24
    move-exception v0

    goto :goto_9

    .line 271
    :cond_26
    iget-object v2, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v2, :cond_38

    iget-object v2, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-eq v2, v1, :cond_38

    iget-object v1, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v1

    if-eqz v1, :cond_39

    :cond_38
    const/4 v0, 0x1

    .line 272
    :cond_39
    if-eqz v0, :cond_9

    .line 273
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->isPolice(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPolice;->policeHit()V

    goto :goto_9

    .line 274
    :cond_45
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_9

    instance-of v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_9

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->civilHit(Lfr/testudo/spacecorsair/business/Element;Z)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_58} :catch_24

    goto :goto_9
.end method

.method public static hull(FII)F
    .registers 5

    .prologue
    .line 149
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModV34;->classFactor(I)F

    move-result v0

    mul-float/2addr v0, p0

    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModV34;->curve(I)F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3fa00000    # 1.25f

    mul-float/2addr v0, v1

    return v0
.end method

.method private static idx([Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)I
    .registers 4

    .prologue
    .line 578
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static isPolice(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 198
    if-nez p0, :cond_6

    move v0, v1

    .line 200
    :cond_5
    :goto_5
    return v0

    .line 199
    :cond_6
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPolice;->police:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->isPoliceTitan(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 200
    instance-of v2, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;

    if-eqz v2, :cond_24

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v2

    if-nez v2, :cond_24

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModSector;->factionShip(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_24
    move v0, v1

    goto :goto_5
.end method

.method private static join()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 473
    :try_start_1
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v2, v1, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    move v1, v0

    .line 474
    :goto_a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_54

    .line 475
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 476
    instance-of v3, v0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;

    if-eqz v3, :cond_32

    iget-boolean v3, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v3, :cond_32

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModPolice;->police:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModSector;->sectorPolice(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModSector;->factionShip(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 474
    :cond_32
    :goto_32
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 477
    :cond_36
    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;

    .line 478
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModPolice;->police:Ljava/util/WeakHashMap;

    const/4 v4, 0x3

    new-array v4, v4, [J

    fill-array-data v4, :array_5a

    invoke-virtual {v3, v0, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    iget-object v3, v0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->curState:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    sget-object v4, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ATTACK_TARGET:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    if-eq v3, v4, :cond_32

    .line 480
    const/4 v3, 0x1

    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModPolice;->spawning:Z
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4c} :catch_53

    .line 481
    :try_start_4c
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->setAtackPlayerMode()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_55

    const/4 v0, 0x0

    :try_start_50
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModPolice;->spawning:Z

    goto :goto_32

    .line 483
    :catch_53
    move-exception v0

    .line 486
    :cond_54
    return-void

    .line 481
    :catchall_55
    move-exception v0

    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModPolice;->spawning:Z

    throw v0
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_5a} :catch_53

    .line 478
    :array_5a
    .array-data 8
        0x2
        0x1388
        0x0
    .end array-data
.end method

.method public static keptOnReturn(JJ)Z
    .registers 8

    .prologue
    .line 139
    sub-long v0, p2, p0

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static killHeat(I)I
    .registers 2

    .prologue
    .line 129
    if-ltz p0, :cond_7

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->KILL_HEAT:[I

    array-length v0, v0

    if-lt p0, v0, :cond_9

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_9
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->KILL_HEAT:[I

    aget v0, v0, p0

    goto :goto_8
.end method

.method public static killedByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 5

    .prologue
    .line 284
    if-eqz p0, :cond_10

    :try_start_2
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->here:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v0, :cond_10

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->titan:Lfr/testudo/spacecorsair/business/Element;

    if-eq p0, v0, :cond_10

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->isPoliceTitan(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 297
    :cond_10
    :goto_10
    return-void

    .line 285
    :cond_11
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->isPolice(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 286
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->classOf(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v0

    .line 287
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->killHeat(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "police kill class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->offence(ILjava/lang/String;)V

    .line 288
    sget v0, Lfr/testudo/spacecorsair/mod/ModPolice;->lastTop:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->waveBase(I)J

    move-result-wide v0

    .line 289
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModPolice;->waveTimer:J

    invoke-static {v2, v3, v0, v1}, Lfr/testudo/spacecorsair/mod/ModPolice;->cutCountdown(JJ)J

    move-result-wide v0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->waveTimer:J

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "police kill: countdown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModPolice;->waveTimer:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->log(Ljava/lang/String;)V

    goto :goto_10

    .line 294
    :catch_62
    move-exception v0

    goto :goto_10

    .line 293
    :cond_64
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_10

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v0

    if-nez v0, :cond_10

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x3

    const-string v1, "civilian kill"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModPolice;->offence(ILjava/lang/String;)V
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_7a} :catch_62

    goto :goto_10
.end method

.method public static leaveHeat(I)I
    .registers 2

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static level(I)I
    .registers 2

    .prologue
    .line 125
    const/4 v0, 0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static lights(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 15

    .prologue
    .line 659
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->lightBar:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 660
    if-eqz v0, :cond_e

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v1, :cond_f

    .line 669
    :cond_e
    :goto_e
    return-void

    .line 661
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x4b0

    rem-long/2addr v2, v4

    .line 662
    const-wide/16 v4, 0x258

    cmp-long v1, v2, v4

    if-gez v1, :cond_9a

    const/4 v1, 0x1

    move v11, v1

    .line 663
    :goto_1e
    const-wide/16 v4, 0x12c

    rem-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v1, v2, v4

    if-gez v1, :cond_9d

    const/4 v1, 0x1

    move v12, v1

    .line 664
    :goto_29
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v13

    const/high16 v0, 0x42200000    # 40.0f

    const v1, 0x3e6147ae    # 0.22f

    mul-float/2addr v1, v13

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 665
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, p0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    neg-float v2, v13

    const v4, 0x3df5c28f    # 0.12f

    mul-float/2addr v2, v4

    neg-float v4, v13

    const v5, 0x3d4ccccd    # 0.05f

    mul-float/2addr v4, v5

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModPolice;->lb:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v1, v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 666
    const-string v0, "fx_core"

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPolice;->lb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPolice;->lb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3dcccccd    # 0.1f

    const v8, 0x3da3d70a    # 0.08f

    if-eqz v11, :cond_a0

    if-eqz v12, :cond_a0

    const/high16 v9, 0x3f800000    # 1.0f

    :goto_63
    const/4 v10, 0x1

    move v4, v3

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 667
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, p0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    const v2, 0x3df5c28f    # 0.12f

    mul-float/2addr v2, v13

    neg-float v4, v13

    const v5, 0x3d4ccccd    # 0.05f

    mul-float/2addr v4, v5

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModPolice;->lb:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v1, v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 668
    const-string v0, "fx_core"

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPolice;->lb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPolice;->lb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v5, 0x0

    const v6, 0x3df5c28f    # 0.12f

    const v7, 0x3eb33333    # 0.35f

    const/high16 v8, 0x3f800000    # 1.0f

    if-nez v11, :cond_a4

    if-eqz v12, :cond_a4

    const/high16 v9, 0x3f800000    # 1.0f

    :goto_93
    const/4 v10, 0x1

    move v4, v3

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    goto/16 :goto_e

    .line 662
    :cond_9a
    const/4 v1, 0x0

    move v11, v1

    goto :goto_1e

    .line 663
    :cond_9d
    const/4 v1, 0x0

    move v12, v1

    goto :goto_29

    .line 666
    :cond_a0
    const v9, 0x3df5c28f    # 0.12f

    goto :goto_63

    .line 668
    :cond_a4
    const v9, 0x3df5c28f    # 0.12f

    goto :goto_93
.end method

.method static log(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 710
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 711
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPolice;->logOn:Ljava/lang/Boolean;

    if-eqz v2, :cond_12

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModPolice;->logCheck:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-lez v2, :cond_2b

    :cond_12
    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->logCheck:J

    const-string v0, "corsair_policelog"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->sw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_24

    const-string v0, "corsair_policelog"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    :cond_24
    const/4 v0, 0x1

    :goto_25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->logOn:Ljava/lang/Boolean;

    .line 712
    :cond_2b
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->logOn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "CorsairMod"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "police "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4b} :catch_4e

    .line 716
    :cond_4b
    :goto_4b
    return-void

    .line 711
    :cond_4c
    const/4 v0, 0x0

    goto :goto_25

    .line 713
    :catch_4e
    move-exception v0

    goto :goto_4b
.end method

.method private static missiles(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/business/ennemis/Ennemis;[JJ)V
    .registers 12

    .prologue
    const/4 v6, 0x1

    .line 356
    const/4 v0, 0x0

    aget-wide v0, p2, v0

    long-to-int v0, v0

    .line 357
    if-eqz v0, :cond_e

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    const/4 v1, 0x5

    if-eq v0, v1, :cond_e

    .line 363
    :cond_d
    :goto_d
    return-void

    .line 358
    :cond_e
    aget-wide v2, p2, v6

    sub-long/2addr v2, p3

    aput-wide v2, p2, v6

    .line 359
    aget-wide v2, p2, v6

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_d

    .line 360
    iget-object v1, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v1

    const/high16 v2, 0x45160000    # 2400.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2e

    const-wide/16 v0, 0x1f4

    aput-wide v0, p2, v6

    goto :goto_d

    .line 361
    :cond_2e
    if-nez v0, :cond_3d

    const-wide/16 v0, 0x1388

    :goto_32
    aput-wide v0, p2, v6

    .line 362
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    invoke-static {p1, v0}, Lfr/testudo/spacecorsair/mod/ModMissile;->policeMissile(Lfr/testudo/spacecorsair/business/Element;F)Z

    goto :goto_d

    .line 361
    :cond_3d
    const-wide/16 v0, 0x1f40

    goto :goto_32
.end method

.method static name(II)Ljava/lang/String;
    .registers 6

    .prologue
    .line 567
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v1, v0, p0

    .line 569
    const-string v0, "kretari"

    iget-object v2, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string v0, "High Council"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 570
    :goto_14
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->spanish()Z

    move-result v2

    if-eqz v2, :cond_5a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModPolice;->className(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_41
    return-object v0

    .line 569
    :cond_42
    const-string v0, "reaver"

    iget-object v2, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    const-string v0, "Militia"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_53
    const-string v0, "Police"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 570
    :cond_5a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModPolice;->className(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_41
.end method

.method public static nextTop(IIIZ)I
    .registers 7

    .prologue
    const/4 v2, 0x6

    .line 99
    if-gtz p0, :cond_5

    const/4 v0, -0x1

    .line 102
    :cond_4
    :goto_4
    return v0

    .line 100
    :cond_5
    const/4 v0, 0x0

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 101
    if-lt v0, v2, :cond_4

    invoke-static {p2, p0, p1, p3}, Lfr/testudo/spacecorsair/mod/ModPolice;->titanAllowed(IIIZ)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v0, 0x5

    goto :goto_4
.end method

.method private static offence(ILjava/lang/String;)V
    .registers 10

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    .line 225
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->here:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v0, :cond_9

    if-gtz p0, :cond_a

    .line 232
    :cond_9
    :goto_9
    return-void

    .line 226
    :cond_a
    sget v0, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    if-lez v0, :cond_1e

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->active:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_59

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModPolice;->sinceWave:J

    const-wide/16 v4, 0x6d60

    cmp-long v0, v2, v4

    if-ltz v0, :cond_59

    :cond_1e
    move v0, v1

    .line 227
    :goto_1f
    sget v2, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    add-int/2addr v2, p0

    sput v2, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    .line 228
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModPolice;->heatRose:Z

    .line 229
    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModPolice;->quietMs:J

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offence "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " +"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " heat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModPolice;->log(Ljava/lang/String;)V

    .line 231
    if-eqz v0, :cond_9

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModPolice;->waveTimer:J

    goto :goto_9

    .line 226
    :cond_59
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public static onTitanKilled()V
    .registers 2

    .prologue
    .line 301
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->titan:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->remove(Lfr/testudo/spacecorsair/business/Element;)V

    .line 302
    const/16 v0, 0x2710

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPolice;->titan:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModQol;->addCredits(ILfr/testudo/spacecorsair/business/Element;)V

    .line 303
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->titan:Lfr/testudo/spacecorsair/business/Element;

    .line 304
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    .line 305
    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModPolice;->lastTop:I

    .line 306
    const-string v0, "titan killed: heat reset"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->log(Ljava/lang/String;)V

    .line 307
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->standDown(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 308
    return-void
.end method

.method private static policeHit()V
    .registers 4

    .prologue
    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 257
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModPolice;->nextPoliceHit:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_b

    .line 260
    :goto_a
    return-void

    .line 258
    :cond_b
    const-wide/16 v2, 0x1f40

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->nextPoliceHit:J

    .line 259
    const/4 v0, 0x1

    const-string v1, "police hit"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModPolice;->offence(ILjava/lang/String;)V

    goto :goto_a
.end method

.method private static policeWeapon(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/business/Element;F)V
    .registers 15

    .prologue
    const/4 v8, 0x2

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 326
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->police:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 327
    aget-wide v4, v0, v2

    long-to-int v3, v4

    .line 329
    if-ne v3, v1, :cond_a1

    move v3, v2

    move v5, v2

    move v6, v1

    .line 333
    :goto_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 334
    if-eqz v6, :cond_68

    .line 335
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->snareReady:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 336
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-ltz v0, :cond_68

    .line 337
    :cond_2e
    if-eqz v3, :cond_ce

    const v0, 0x3e4ccccd    # 0.2f

    .line 338
    :goto_33
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPolice;->snareReady:Ljava/util/WeakHashMap;

    const-wide/16 v6, 0x1770

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationSnareDuree:I

    if-lez v1, :cond_49

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationSnareValue:F

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :cond_49
    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationSnareValue:F

    .line 340
    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationSnareDuree:I

    if-eqz v3, :cond_d3

    const/16 v0, 0x9c4

    :goto_51
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationSnareDuree:I

    .line 341
    if-eqz v3, :cond_d7

    const-string v0, "PINNED"

    :goto_5b
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x3ecccccd    # 0.4f

    const v2, 0x3f333333    # 0.7f

    invoke-static {p0, v0, v1, v2, v11}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 344
    :cond_68
    if-eqz v5, :cond_a0

    .line 345
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    .line 346
    if-eqz v0, :cond_80

    iget v1, v0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    cmpl-float v1, v1, v10

    if-lez v1, :cond_80

    iget v1, v0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, p2

    sub-float/2addr v1, v2

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    .line 347
    :cond_80
    const-wide/16 v0, 0xbb8

    add-long/2addr v0, v8

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->regenStopUntil:J

    .line 348
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->drainTextAt:J

    sub-long v0, v8, v0

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_a0

    .line 349
    sput-wide v8, Lfr/testudo/spacecorsair/mod/ModPolice;->drainTextAt:J

    .line 350
    const-string v0, "Shield drained!"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3f59999a    # 0.85f

    invoke-static {p0, v0, v1, v2, v11}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 353
    :cond_a0
    return-void

    .line 330
    :cond_a1
    if-eq v3, v8, :cond_a6

    const/4 v4, 0x3

    if-ne v3, v4, :cond_ab

    :cond_a6
    move v3, v2

    move v5, v1

    move v6, v2

    goto/16 :goto_16

    .line 331
    :cond_ab
    const/4 v4, 0x4

    if-eq v3, v4, :cond_b1

    const/4 v4, 0x5

    if-ne v3, v4, :cond_a0

    :cond_b1
    aget-wide v4, v0, v8

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    aput-wide v6, v0, v8

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_ca

    move v4, v1

    :goto_c2
    if-nez v4, :cond_cc

    move v0, v1

    :goto_c5
    move v3, v4

    move v5, v0

    move v6, v4

    goto/16 :goto_16

    :cond_ca
    move v4, v2

    goto :goto_c2

    :cond_cc
    move v0, v2

    goto :goto_c5

    .line 337
    :cond_ce
    const v0, 0x3f266666    # 0.65f

    goto/16 :goto_33

    .line 340
    :cond_d3
    const/16 v0, 0xbb8

    goto/16 :goto_51

    .line 341
    :cond_d7
    const-string v0, "SNARED"

    goto :goto_5b
.end method

.method public static regenStopped()Z
    .registers 4

    .prologue
    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModPolice;->regenStopUntil:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static room(II)I
    .registers 4

    .prologue
    .line 120
    const/4 v0, 0x0

    rsub-int/lit8 v1, p0, 0x8

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static row([Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;
    .registers 4

    .prologue
    .line 574
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aget-object v0, p0, v0

    return-object v0
.end method

.method public static safe(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 154
    if-eqz p0, :cond_7

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->isMulti:Z

    if-eqz v1, :cond_8

    .line 162
    :cond_7
    :goto_7
    :pswitch_7
    return v0

    .line 155
    :cond_8
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPolice$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_16

    .line 162
    const/4 v0, 0x0

    goto :goto_7

    .line 155
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private static standDown(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 444
    :try_start_1
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 446
    new-instance v1, Ljava/util/ArrayList;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModPolice;->police:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_17
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 447
    if-eqz v0, :cond_17

    iget-boolean v4, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v4, :cond_17

    .line 448
    const/4 v4, 0x1

    iput-boolean v4, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    .line 449
    if-eqz v2, :cond_33

    iget-object v4, v2, Lfr/testudo/spacecorsair/game/levels/Level;->toDelete:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    :cond_33
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 451
    goto :goto_17

    .line 452
    :cond_37
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPolice;->visualsClear()V

    .line 453
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->police:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 454
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->active:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 455
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->standDown()V

    .line 456
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->titan:Lfr/testudo/spacecorsair/business/Element;

    .line 457
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->boosted:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 458
    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModPolice;->lastTop:I

    .line 459
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModPolice;->heatRose:Z

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stand down ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ships)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->log(Ljava/lang/String;)V

    .line 461
    if-lez v1, :cond_91

    if-eqz p0, :cond_91

    .line 462
    const-string v0, "POLICE STAND DOWN"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x3ecccccd    # 0.4f

    const/high16 v2, 0x3f400000    # 0.75f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 463
    const-string v0, "warp_in"

    const/high16 v1, 0x3f000000    # 0.5f

    const v2, 0x3f99999a    # 1.2f

    const-wide/16 v4, 0x3e8

    invoke-static {v0, v1, v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_91} :catch_92

    .line 468
    :cond_91
    :goto_91
    return-void

    .line 465
    :catch_92
    move-exception v0

    goto :goto_91
.end method

.method private static sw(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 674
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 675
    if-eqz v1, :cond_9

    move-object v0, v1

    .line 681
    :cond_8
    :goto_8
    return-object v0

    .line 677
    :cond_9
    :try_start_9
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 678
    if-nez v1, :cond_17

    move-object v1, v0

    .line 679
    :goto_10
    if-eqz v1, :cond_8

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 678
    :cond_17
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_1e} :catch_20

    move-result-object v1

    goto :goto_10

    .line 680
    :catch_20
    move-exception v1

    goto :goto_8
.end method

.method private static switches(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 688
    const-string v0, "corsair_policewave"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v2

    .line 691
    :try_start_7
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 692
    if-eqz v3, :cond_4d

    const-string v0, "corsair_policewave"

    invoke-interface {v3, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const/4 v0, 0x1

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "corsair_policewave"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_23} :catch_4a

    .line 696
    :goto_23
    if-eqz v2, :cond_29

    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModPolice;->waveFlag:Z

    if-eqz v3, :cond_2b

    :cond_29
    if-eqz v0, :cond_47

    :cond_2b
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->here:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v0, :cond_47

    if-eqz p0, :cond_47

    .line 697
    sget v0, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    if-gtz v0, :cond_3b

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->UNLOCK:[I

    aget v0, v0, v1

    sput v0, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    .line 698
    :cond_3b
    const-string v0, "forced wave"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->log(Ljava/lang/String;)V

    .line 699
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->wave(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 700
    const-wide/16 v0, 0x6d60

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->waveTimer:J

    .line 702
    :cond_47
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModPolice;->waveFlag:Z

    .line 703
    return-void

    .line 693
    :catch_4a
    move-exception v0

    move v0, v1

    .line 694
    goto :goto_23

    :cond_4d
    move v0, v1

    goto :goto_23
.end method

.method public static tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 16

    .prologue
    const-wide/16 v10, 0x4e20

    const-wide/16 v8, 0x1f40

    const/4 v0, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    .line 368
    :try_start_8
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 369
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPolice;->lastLevel:Ljava/lang/Object;

    if-eq v1, v2, :cond_19

    .line 370
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModPolice;->lastLevel:Ljava/lang/Object;

    .line 371
    if-nez v1, :cond_42

    :goto_16
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->enter(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 373
    :cond_19
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->swTimer:J

    sub-long/2addr v0, p1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->swTimer:J

    .line 374
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->swTimer:J

    cmp-long v0, v0, v6

    if-gtz v0, :cond_2b

    const-wide/16 v0, 0x3e8

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->swTimer:J

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->switches(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 375
    :cond_2b
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->here:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v0, :cond_41

    if-eqz p0, :cond_41

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v0, :cond_41

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-nez v0, :cond_41

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-eqz v0, :cond_45

    .line 409
    :cond_41
    :goto_41
    return-void

    .line 371
    :cond_42
    iget-object v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    goto :goto_16

    .line 376
    :cond_45
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->boosts(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 377
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->active:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7b

    const/4 v0, 0x1

    move v3, v0

    .line 378
    :goto_52
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->active:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_5b
    if-ltz v2, :cond_8e

    .line 379
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->active:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 380
    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v1, :cond_6f

    iget v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_7e

    :cond_6f
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPolice;->active:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->unvisual(Lfr/testudo/spacecorsair/business/Element;)V

    .line 378
    :cond_77
    :goto_77
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_5b

    .line 377
    :cond_7b
    const/4 v0, 0x0

    move v3, v0

    goto :goto_52

    .line 381
    :cond_7e
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPolice;->police:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 382
    if-eqz v1, :cond_77

    invoke-static {p0, v0, v1, p1, p2}, Lfr/testudo/spacecorsair/mod/ModPolice;->missiles(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/business/ennemis/Ennemis;[JJ)V

    goto :goto_77

    .line 406
    :catch_8c
    move-exception v0

    goto :goto_41

    .line 384
    :cond_8e
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->titan:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_a8

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->titan:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v0, :cond_a0

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->titan:Lfr/testudo/spacecorsair/business/Element;

    iget v0, v0, Lfr/testudo/spacecorsair/business/Element;->life:F

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_a8

    :cond_a0
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->titan:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->remove(Lfr/testudo/spacecorsair/business/Element;)V

    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->titan:Lfr/testudo/spacecorsair/business/Element;

    .line 385
    :cond_a8
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->sinceWave:J

    const-wide v4, 0x1fffffffffffffffL

    cmp-long v0, v0, v4

    if-gez v0, :cond_b8

    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->sinceWave:J

    add-long/2addr v0, p1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->sinceWave:J

    .line 386
    :cond_b8
    if-eqz v3, :cond_df

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->active:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_df

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->titan:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_cc

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->titan:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v0, :cond_df

    :cond_cc
    sget v0, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    if-lez v0, :cond_df

    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->waveTimer:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_df

    .line 387
    const-wide/16 v0, 0x1f40

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->waveTimer:J

    .line 388
    const-string v0, "wave cleared: next in 8000 ms"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->log(Ljava/lang/String;)V

    .line 390
    :cond_df
    sget v0, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    if-lez v0, :cond_41

    .line 391
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->active:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f5

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->titan:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_f9

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->titan:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v0, :cond_f9

    :cond_f5
    const-wide/16 v0, 0x0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->quietMs:J

    .line 392
    :cond_f9
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->quietMs:J

    add-long/2addr v0, p1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->quietMs:J

    .line 393
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->quietMs:J

    cmp-long v0, v0, v10

    if-ltz v0, :cond_130

    .line 394
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->quietMs:J

    sub-long/2addr v0, v10

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->quietMs:J

    .line 395
    sget v0, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decay heat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->log(Ljava/lang/String;)V

    .line 397
    sget v0, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    if-gtz v0, :cond_130

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->standDown(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    goto/16 :goto_41

    .line 399
    :cond_130
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->joinTimer:J

    sub-long/2addr v0, p1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->joinTimer:J

    .line 400
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->joinTimer:J

    cmp-long v0, v0, v6

    if-gtz v0, :cond_148

    const-wide/16 v0, 0x7d0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->joinTimer:J

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCalm;->active()Z

    move-result v0

    if-nez v0, :cond_148

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPolice;->join()V

    .line 401
    :cond_148
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->waveTimer:J

    sub-long/2addr v0, p1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->waveTimer:J

    .line 402
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->waveTimer:J

    cmp-long v0, v0, v6

    if-gtz v0, :cond_41

    .line 403
    sget v0, Lfr/testudo/spacecorsair/mod/ModPolice;->lastTop:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->waveBase(I)J

    move-result-wide v0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->waveTimer:J

    .line 404
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->wave(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    :try_end_15e
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_15e} :catch_8c

    goto/16 :goto_41
.end method

.method public static titanAllowed(IIIZ)Z
    .registers 5

    .prologue
    .line 90
    const/16 v0, 0x10

    if-lt p0, v0, :cond_d

    if-lez p1, :cond_d

    const/4 v0, 0x5

    if-ne p2, v0, :cond_d

    if-nez p3, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method static under(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 3

    .prologue
    .line 652
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->under(Lfr/testudo/spacecorsair/business/Element;)V

    .line 653
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->monoAura:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 654
    if-eqz v0, :cond_18

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v1, :cond_18

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModMonolith;->policeAura(Lfr/testudo/spacecorsair/business/Element;F)V

    .line 655
    :cond_18
    return-void
.end method

.method public static unlockedClass(I)I
    .registers 4

    .prologue
    .line 83
    const/4 v1, -0x1

    .line 84
    const/4 v0, 0x0

    :goto_2
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPolice;->UNLOCK:[I

    array-length v2, v2

    if-ge v0, v2, :cond_11

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPolice;->UNLOCK:[I

    aget v2, v2, v0

    if-lt p0, v2, :cond_e

    move v1, v0

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 85
    :cond_11
    return v1
.end method

.method private static unvisual(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 634
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->lightBar:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->monoAura:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->remove(Lfr/testudo/spacecorsair/business/Element;)V

    .line 637
    return-void
.end method

.method private static visualsClear()V
    .registers 1

    .prologue
    .line 640
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->lightBar:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 641
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->monoAura:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 642
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->clearAll()V

    .line 643
    return-void
.end method

.method public static wallHit(Lfr/testudo/spacecorsair/business/Element;F)V
    .registers 2

    .prologue
    .line 314
    return-void
.end method

.method private static wave(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 19

    .prologue
    .line 490
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCalm;->active()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 530
    :cond_6
    :goto_6
    return-void

    .line 491
    :cond_7
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModPolice;->here:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 492
    sget v4, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    sget v5, Lfr/testudo/spacecorsair/mod/ModPolice;->lastTop:I

    iget v6, v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->active()Z

    move-result v2

    if-nez v2, :cond_19

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPolice;->titan:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v2, :cond_70

    :cond_19
    const/4 v2, 0x1

    :goto_1a
    invoke-static {v4, v5, v6, v2}, Lfr/testudo/spacecorsair/mod/ModPolice;->nextTop(IIIZ)I

    move-result v2

    .line 493
    if-ltz v2, :cond_6

    .line 494
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModPolice;->factionIndex(Lfr/testudo/spacecorsair/game/levels/LevelId;)I

    move-result v6

    .line 495
    iget v3, v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModPolice;->level(I)I

    move-result v7

    .line 496
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->arrival(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v8

    .line 497
    const/4 v3, 0x0

    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModPolice;->heatRose:Z

    .line 498
    const-wide/16 v4, 0x0

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModPolice;->sinceWave:J

    .line 499
    const/4 v3, 0x6

    if-ne v2, v3, :cond_73

    .line 500
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v2, v2, v6

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-static {v2, v7, v8}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->spawn(Ljava/lang/String;ILfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v2

    .line 501
    if-eqz v2, :cond_72

    .line 502
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModPolice;->titan:Lfr/testudo/spacecorsair/business/Element;

    .line 503
    const/4 v2, 0x6

    sput v2, Lfr/testudo/spacecorsair/mod/ModPolice;->lastTop:I

    .line 504
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wave titan "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v3, v3, v6

    iget-object v3, v3, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " L"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModPolice;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 492
    :cond_70
    const/4 v2, 0x0

    goto :goto_1a

    .line 507
    :cond_72
    const/4 v2, 0x5

    .line 509
    :cond_73
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v10

    double-to-int v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModPolice;->waveClasses(II)[I

    move-result-object v3

    .line 510
    const/4 v4, 0x5

    if-ne v2, v4, :cond_94

    const-string v4, "spartan"

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v5, v5, v6

    iget-object v5, v5, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_94

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModPolice;->SPARTAN_CAPITAL_WAVE:[I

    .line 511
    :cond_94
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModPolice;->active:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    array-length v5, v3

    invoke-static {v4, v5}, Lfr/testudo/spacecorsair/mod/ModPolice;->room(II)I

    move-result v9

    .line 512
    const/4 v4, 0x0

    .line 513
    const/4 v5, 0x0

    :goto_a1
    if-ge v5, v9, :cond_f1

    .line 514
    aget v10, v3, v5

    invoke-static {v6, v10, v7}, Lfr/testudo/spacecorsair/mod/ModPolice;->build(III)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v10

    .line 515
    if-nez v10, :cond_ae

    .line 513
    :goto_ab
    add-int/lit8 v5, v5, 0x1

    goto :goto_a1

    .line 516
    :cond_ae
    iget-object v11, v10, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v11, v8}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v11

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    const-wide v14, 0x407f400000000000L    # 500.0

    mul-double/2addr v12, v14

    const-wide v14, 0x406f400000000000L    # 250.0

    sub-double/2addr v12, v14

    double-to-float v12, v12

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v14

    const-wide v16, 0x407f400000000000L    # 500.0

    mul-double v14, v14, v16

    const-wide v16, 0x406f400000000000L    # 250.0

    sub-double v14, v14, v16

    double-to-float v13, v14

    invoke-virtual {v11, v12, v13}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 517
    invoke-virtual {v10}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 518
    invoke-virtual {v10}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    .line 519
    invoke-virtual {v10}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initChasePlayer()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 520
    sget-object v11, Lfr/testudo/spacecorsair/mod/ModPolice;->active:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    sget-object v11, Lfr/testudo/spacecorsair/mod/ModPolice;->boosted:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    add-int/lit8 v4, v4, 0x1

    goto :goto_ab

    .line 524
    :cond_f1
    if-lez v4, :cond_f5

    sput v2, Lfr/testudo/spacecorsair/mod/ModPolice;->lastTop:I

    .line 525
    :cond_f5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wave "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v6, v8, v6

    iget-object v6, v6, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " top="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " L"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ships="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v3, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " active="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModPolice;->active:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " heat="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v5, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModPolice;->log(Ljava/lang/String;)V

    .line 526
    if-lez v4, :cond_6

    .line 527
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "POLICE WAVE: "

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModPolice;->className(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x3eb33333    # 0.35f

    const v4, 0x3f19999a    # 0.6f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 528
    const-string v2, "warp_in"

    const v3, 0x3f333333    # 0.7f

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v6, 0x5dc

    invoke-static {v2, v3, v4, v6, v7}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    goto/16 :goto_6
.end method

.method public static waveBase(I)J
    .registers 4

    .prologue
    .line 205
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->WAVE_BASE_MS:[J

    const/4 v1, 0x0

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPolice;->WAVE_BASE_MS:[J

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public static waveClasses(II)[I
    .registers 6

    .prologue
    const/4 v1, 0x6

    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    if-gez p0, :cond_9

    new-array v0, v2, [I

    .line 115
    :goto_8
    return-object v0

    .line 108
    :cond_9
    if-lt p0, v1, :cond_10

    new-array v0, v3, [I

    aput v1, v0, v2

    goto :goto_8

    .line 109
    :cond_10
    const/4 v1, 0x5

    if-ne p0, v1, :cond_1a

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3e

    goto :goto_8

    .line 110
    :cond_1a
    if-nez p0, :cond_22

    new-array v0, v0, [I

    fill-array-data v0, :array_48

    goto :goto_8

    .line 111
    :cond_22
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 112
    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    .line 113
    aput p0, v1, v3

    aput p0, v1, v2

    .line 114
    :goto_32
    array-length v2, v1

    if-ge v0, v2, :cond_3c

    add-int/lit8 v2, p0, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_3c
    move-object v0, v1

    .line 115
    goto :goto_8

    .line 109
    :array_3e
    .array-data 4
        0x5
        0x4
        0x4
    .end array-data

    .line 110
    :array_48
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
