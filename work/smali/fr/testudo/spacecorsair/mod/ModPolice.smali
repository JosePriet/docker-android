.class public Lfr/testudo/spacecorsair/mod/ModPolice;
.super Ljava/lang/Object;
.source "ModPolice.java"


# static fields
.field public static final ARMOR:F = 0.25f

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

.field public static final STRAY_RATIO:F = 0.06666667f

.field public static final TECH_THROUGH_WALL:Z = false

.field static final TITAN:I = 0x6

.field public static final TITAN_ARMOR:F = 0.3f

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

.field private static final factionOf:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static guestHeat:I

.field private static heat:I

.field private static heatRose:Z

.field private static here:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field private static hostHeat:I

.field private static joinTimer:J

.field private static lastByGuest:Z

.field private static lastLevel:Ljava/lang/Object;

.field private static lastRadioTier:I

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

.field private static final policeMono:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static quietMs:J

.field private static regenStopUntil:J

.field private static sectorFi:I

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

.field private static final strayDmg:Ljava/util/WeakHashMap;
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

.field private static swTimer:J

.field private static swapN:I

.field private static titan:Lfr/testudo/spacecorsair/business/Element;

.field private static waveFlag:Z

.field private static waveTimer:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x7

    const/4 v2, -0x1

    .line 43
    new-array v0, v1, [I

    fill-array-data v0, :array_82

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->KILL_HEAT:[I

    .line 45
    new-array v0, v1, [I

    fill-array-data v0, :array_94

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->UNLOCK:[I

    .line 50
    const/4 v0, 0x6

    new-array v0, v0, [J

    fill-array-data v0, :array_a6

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->WAVE_BASE_MS:[J

    .line 54
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_c2

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->SPARTAN_CAPITAL_WAVE:[I

    .line 170
    sput v2, Lfr/testudo/spacecorsair/mod/ModPolice;->lastTop:I

    .line 171
    sput v2, Lfr/testudo/spacecorsair/mod/ModPolice;->lastRadioTier:I

    .line 173
    const-wide v0, 0x1fffffffffffffffL

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->sinceWave:J

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->left:Ljava/util/HashMap;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->active:Ljava/util/ArrayList;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->boosted:Ljava/util/ArrayList;

    .line 183
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->police:Ljava/util/WeakHashMap;

    .line 185
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->factionOf:Ljava/util/WeakHashMap;

    .line 187
    sput v2, Lfr/testudo/spacecorsair/mod/ModPolice;->sectorFi:I

    .line 188
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->snareReady:Ljava/util/WeakHashMap;

    .line 189
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->civilHit:Ljava/util/WeakHashMap;

    .line 191
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->strayDmg:Ljava/util/WeakHashMap;

    .line 808
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->lightBar:Ljava/util/WeakHashMap;

    .line 809
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->lb:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 810
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->monoAura:Ljava/util/WeakHashMap;

    .line 812
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->policeMono:Ljava/util/WeakHashMap;

    return-void

    .line 43
    :array_82
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
    :array_94
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
    :array_a6
    .array-data 8
        0x7530
        0x88b8
        0x9c40
        0xafc8
        0xc350
        0xea60
    .end array-data

    .line 54
    :array_c2
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

.method public static armor(Lfr/testudo/spacecorsair/business/Element;F)F
    .registers 3

    .prologue
    .line 385
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_7

    if-nez p0, :cond_8

    .line 388
    :cond_7
    :goto_7
    return p1

    .line 386
    :cond_8
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->isPoliceTitan(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0x3f333333    # 0.7f

    mul-float/2addr p1, v0

    goto :goto_7

    .line 387
    :cond_13
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->isPolice(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr p1, v0

    goto :goto_7
.end method

.method private static arrival(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 4

    .prologue
    .line 684
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findClosestPortal(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v1

    .line 685
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

    .line 689
    :goto_24
    return-object v0

    .line 686
    :catch_25
    move-exception v0

    .line 689
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

    .line 694
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->boosted:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_d
    if-ltz v1, :cond_51

    .line 695
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->boosted:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 696
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

    .line 697
    :cond_30
    iget v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->alterationSnareValue:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_3b

    iput v4, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->alterationSnareValue:F

    const/4 v2, 0x0

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->alterationSnareDuree:I

    .line 698
    :cond_3b
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->boosted:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 694
    :cond_40
    :goto_40
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_d

    .line 701
    :cond_44
    iget v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->alterationSnareValue:F

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_40

    .line 702
    iput v5, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->alterationSnareValue:F

    .line 703
    const/16 v2, 0xc8

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->alterationSnareDuree:I

    goto :goto_40

    .line 706
    :cond_51
    return-void
.end method

.method static build(III)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 4

    .prologue
    .line 732
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->build(IIIZ)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    return-object v0
.end method

.method static build(IIIZ)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 15

    .prologue
    const/high16 v10, 0x42c80000    # 100.0f

    const v6, 0x3f333333    # 0.7f

    const/4 v9, 0x3

    const/4 v2, 0x0

    const/high16 v8, 0x3fa00000    # 1.25f

    .line 737
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModPoliceData;->randomHull(II)Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;

    move-result-object v4

    .line 738
    if-nez v4, :cond_11

    const/4 v1, 0x0

    .line 788
    :cond_10
    :goto_10
    return-object v1

    .line 739
    :cond_11
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModPoliceData;->drawable(Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;)Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v0

    .line 740
    if-eqz v0, :cond_1e4

    if-eqz p3, :cond_1e4

    iget-object v1, v4, Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;->art:Ljava/lang/String;

    iget v3, v4, Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;->size:I

    int-to-float v3, v3

    invoke-static {v1, v3, v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->livery(Ljava/lang/String;FLfr/testudo/spacecorsair/display/Drawable;)Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v0

    move-object v3, v0

    .line 741
    :goto_23
    if-nez v3, :cond_27

    const/4 v1, 0x0

    goto :goto_10

    .line 742
    :cond_27
    iget-object v0, v3, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->prefetch(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 743
    new-instance v5, Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v4, Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;->size:I

    int-to-float v0, v0

    mul-float/2addr v0, v6

    iget v1, v4, Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;->size:I

    int-to-float v1, v1

    mul-float/2addr v1, v6

    invoke-direct {v5, v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    .line 746
    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModV34;->want(I)V

    .line 747
    iget v0, v4, Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;->ai:I

    packed-switch v0, :pswitch_data_1e8

    .line 751
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

    .line 753
    :goto_57
    invoke-static {v0, p2}, Lfr/testudo/spacecorsair/mod/ModPolice;->idx([Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV34;->baseHull(I)F

    move-result v0

    .line 754
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_102

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getLevel()I

    move-result v3

    invoke-static {v0, p1, v3}, Lfr/testudo/spacecorsair/mod/ModPolice;->hull(FII)F

    move-result v0

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 756
    :goto_6e
    iget v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 757
    iput v10, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeInPourc:F

    .line 758
    iget v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    mul-float/2addr v0, v8

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    .line 759
    iget v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->pouseeForce:F

    const v3, 0x3f933333    # 1.15f

    mul-float/2addr v0, v3

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->pouseeForce:F

    .line 760
    iget v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->xp:I

    int-to-float v0, v0

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModV34;->classFactor(I)F

    move-result v3

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->xp:I

    .line 761
    instance-of v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    if-eqz v0, :cond_109

    move-object v0, v1

    .line 762
    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    .line 763
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

    :goto_a8
    if-ge v0, v5, :cond_109

    aget-object v6, v3, v0

    .line 764
    if-eqz v6, :cond_b8

    iget v7, v6, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->shootDamage:I

    int-to-float v7, v7

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v6, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->shootDamage:I

    .line 763
    :cond_b8
    add-int/lit8 v0, v0, 0x1

    goto :goto_a8

    .line 748
    :pswitch_bb
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

    goto :goto_57

    .line 749
    :pswitch_d2
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

    goto/16 :goto_57

    .line 750
    :pswitch_ea
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

    goto/16 :goto_57

    .line 755
    :cond_102
    iget v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    mul-float/2addr v0, v8

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    goto/16 :goto_6e

    .line 767
    :cond_109
    if-lt p1, v9, :cond_11f

    .line 768
    instance-of v0, v1, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    if-eqz v0, :cond_1a6

    move-object v0, v1

    .line 769
    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    .line 770
    if-eqz v0, :cond_11f

    iget v3, v0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    mul-float/2addr v3, v8

    iput v3, v0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    iget v3, v0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    iput v3, v0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    .line 776
    :cond_11f
    :goto_11f
    :try_start_11f
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    :try_end_122
    .catch Ljava/lang/Throwable; {:try_start_11f .. :try_end_122} :catch_1e1

    .line 777
    :goto_122
    iget-object v0, v4, Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;->art:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPoliceData;->hullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 778
    if-nez v0, :cond_1c0

    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModPolice;->name(II)Ljava/lang/String;

    move-result-object v0

    :goto_12e
    iput-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    .line 779
    const/4 v0, -0x1

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificNameDecalX:I

    .line 780
    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    if-eqz v0, :cond_13c

    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v0, v10}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 781
    :cond_13c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->police:Ljava/util/WeakHashMap;

    new-array v5, v9, [J

    int-to-long v6, p1

    aput-wide v6, v5, v2

    const/4 v6, 0x1

    if-nez p1, :cond_1dd

    const-wide/16 v2, 0x9c4

    :goto_148
    aput-wide v2, v5, v6

    const/4 v2, 0x2

    const-wide/16 v6, 0x0

    aput-wide v6, v5, v2

    invoke-virtual {v0, v1, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->factionOf:Ljava/util/WeakHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    if-nez p3, :cond_10

    .line 784
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v0, v0, p0

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->council(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_175

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->lightBar:Ljava/util/WeakHashMap;

    iget v2, v4, Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;->size:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    :cond_175
    iget-object v0, v4, Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;->art:Ljava/lang/String;

    iget v2, v4, Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;->size:I

    int-to-float v2, v2

    invoke-static {v1, v0, p0, v2}, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->put(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;IF)V

    .line 786
    const-string v0, "monolith"

    iget-object v2, v4, Lfr/testudo/spacecorsair/mod/ModPoliceData$Hull;->art:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18e

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->policeMono:Ljava/util/WeakHashMap;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    :cond_18e
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

    .line 772
    :cond_1a6
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->bigShield:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;

    .line 773
    if-eqz v0, :cond_11f

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cap:F

    mul-float/2addr v3, v8

    iput v3, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cap:F

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cap:F

    iput v3, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cur:F

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->rate:F

    mul-float/2addr v3, v8

    iput v3, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->rate:F

    goto/16 :goto_11f

    .line 778
    :cond_1c0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModPolice;->name(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12e

    .line 781
    :cond_1dd
    const-wide/16 v2, 0x1f40

    goto/16 :goto_148

    .line 776
    :catch_1e1
    move-exception v0

    goto/16 :goto_122

    :cond_1e4
    move-object v3, v0

    goto/16 :goto_23

    .line 747
    nop

    :pswitch_data_1e8
    .packed-switch 0x0
        :pswitch_bb
        :pswitch_ea
        :pswitch_d2
    .end packed-switch
.end method

.method static ccefStandDown(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 2

    .prologue
    .line 369
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    .line 370
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->titan:Lfr/testudo/spacecorsair/business/Element;

    .line 371
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->standDown(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 372
    return-void
.end method

.method public static civilAttacked(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V
    .registers 2

    .prologue
    .line 271
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModPolice;->spawning:Z

    if-nez v0, :cond_6

    if-nez p0, :cond_7

    .line 279
    :cond_6
    :goto_6
    return-void

    .line 273
    :cond_7
    :try_start_7
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->isPolice(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPolice;->policeHit()V

    goto :goto_6

    .line 276
    :catch_11
    move-exception v0

    goto :goto_6

    .line 274
    :cond_13
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->notPoliceMatter(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 275
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->civilHit(Lfr/testudo/spacecorsair/business/Element;Z)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_23} :catch_11

    goto :goto_6
.end method

.method private static civilHit(Lfr/testudo/spacecorsair/business/Element;Z)V
    .registers 8

    .prologue
    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 283
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->civilHit:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 284
    if-nez v0, :cond_11

    if-nez p1, :cond_11

    .line 288
    :cond_10
    :goto_10
    return-void

    .line 285
    :cond_11
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/16 v4, 0x1388

    cmp-long v0, v0, v4

    if-ltz v0, :cond_10

    .line 286
    :cond_1f
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->civilHit:Ljava/util/WeakHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const/4 v0, 0x1

    const-string v1, "civilian hit"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModPolice;->offence(ILjava/lang/String;)V

    goto :goto_10
.end method

.method static className(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 709
    const/4 v0, 0x5

    if-ne p0, v0, :cond_a

    const-string v0, "Capital"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 711
    :goto_9
    return-object v0

    .line 710
    :cond_a
    const/4 v0, 0x6

    if-ne p0, v0, :cond_14

    const-string v0, "Titan"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 711
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

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->re(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method static classOf(Lfr/testudo/spacecorsair/business/Element;)I
    .registers 3

    .prologue
    .line 247
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->police:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 248
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
    .line 237
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

.method private static enter(Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 12

    .prologue
    const/4 v0, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, -0x1

    const/4 v8, 0x0

    .line 554
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPolice;->here:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v1, :cond_1b

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPolice;->titan:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v1, :cond_1b

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPolice;->titan:Lfr/testudo/spacecorsair/business/Element;

    iget v1, v1, Lfr/testudo/spacecorsair/business/Element;->life:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1b

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPolice;->here:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModCcef;->titanEscaped(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 555
    :cond_1b
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPolice;->here:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v1, :cond_41

    sget v1, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    if-lez v1, :cond_41

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPolice;->left:Ljava/util/HashMap;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModPolice;->here:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const/4 v4, 0x3

    new-array v4, v4, [J

    sget v5, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModPolice;->leaveHeat(I)I

    move-result v5

    int-to-long v6, v5

    aput-wide v6, v4, v8

    sget v5, Lfr/testudo/spacecorsair/mod/ModPolice;->lastTop:I

    int-to-long v6, v5

    aput-wide v6, v4, v9

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSector;->play()J

    move-result-wide v6

    aput-wide v6, v4, v10

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    :cond_41
    if-eqz p0, :cond_47

    :try_start_43
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->isMulti:Z

    if-eqz v1, :cond_9c

    :cond_47
    move v1, v2

    :goto_48
    sput v1, Lfr/testudo/spacecorsair/mod/ModPolice;->sectorFi:I
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_4a} :catch_a1

    .line 557
    :goto_4a
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPolice;->visualsClear()V

    .line 558
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPolice;->police:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->clear()V

    .line 559
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPolice;->snareReady:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->clear()V

    .line 560
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPolice;->civilHit:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->clear()V

    .line 561
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPolice;->strayDmg:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->clear()V

    .line 562
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPolice;->active:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 563
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPolice;->boosted:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 564
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->titan:Lfr/testudo/spacecorsair/business/Element;

    .line 565
    sput v8, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    .line 566
    sput v2, Lfr/testudo/spacecorsair/mod/ModPolice;->lastTop:I

    .line 567
    sput v2, Lfr/testudo/spacecorsair/mod/ModPolice;->lastRadioTier:I

    .line 568
    sput-boolean v8, Lfr/testudo/spacecorsair/mod/ModPolice;->heatRose:Z

    .line 569
    const-wide/16 v2, 0x0

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModPolice;->quietMs:J

    .line 570
    const-wide v2, 0x1fffffffffffffffL

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModPolice;->sinceWave:J

    .line 571
    const-wide/16 v2, 0x6d60

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModPolice;->waveTimer:J

    .line 572
    sput v8, Lfr/testudo/spacecorsair/mod/ModPolice;->guestHeat:I

    sput v8, Lfr/testudo/spacecorsair/mod/ModPolice;->hostHeat:I

    .line 573
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->safe(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v1

    if-nez v1, :cond_94

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModSector;->lawless(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v1

    if-eqz v1, :cond_95

    :cond_94
    move-object p0, v0

    :cond_95
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModPolice;->here:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 574
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->here:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-nez v0, :cond_a5

    .line 586
    :cond_9b
    :goto_9b
    return-void

    .line 556
    :cond_9c
    :try_start_9c
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->factionIndex(Lfr/testudo/spacecorsair/game/levels/LevelId;)I
    :try_end_9f
    .catch Ljava/lang/Throwable; {:try_start_9c .. :try_end_9f} :catch_a1

    move-result v1

    goto :goto_48

    :catch_a1
    move-exception v1

    sput v2, Lfr/testudo/spacecorsair/mod/ModPolice;->sectorFi:I

    goto :goto_4a

    .line 575
    :cond_a5
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->left:Ljava/util/HashMap;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPolice;->here:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 576
    if-eqz v0, :cond_d1

    aget-wide v2, v0, v10

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSector;->play()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModPolice;->keptOnReturn(JJ)Z

    move-result v1

    if-eqz v1, :cond_d1

    .line 577
    aget-wide v2, v0, v8

    long-to-int v1, v2

    sput v1, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    .line 578
    aget-wide v0, v0, v9

    long-to-int v0, v0

    sget v1, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModPolice;->unlockedClass(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModPolice;->lastTop:I

    .line 580
    :cond_d1
    const-string v0, "corsair_heat"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->sw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 581
    if-eqz v0, :cond_eb

    .line 582
    :try_start_d9
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I
    :try_end_e3
    .catch Ljava/lang/NumberFormatException; {:try_start_d9 .. :try_end_e3} :catch_125

    .line 583
    :goto_e3
    sget v0, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    if-lez v0, :cond_eb

    const-wide/16 v0, 0x0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->waveTimer:J

    .line 585
    :cond_eb
    sget v0, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    if-lez v0, :cond_9b

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

    goto/16 :goto_9b

    .line 582
    :catch_125
    move-exception v0

    goto :goto_e3
.end method

.method public static factionGuns(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 401
    :try_start_0
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCcef;->dropHidden(Ljava/util/List;)V

    .line 402
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->policeGuns(Ljava/util/List;)V
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_10

    .line 404
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->swap(Ljava/util/List;)V

    .line 405
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModVfx;->spawned(Ljava/util/List;)V

    .line 406
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->added(Ljava/util/List;)V

    .line 408
    return-void

    .line 404
    :catchall_10
    move-exception v0

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->swap(Ljava/util/List;)V

    .line 405
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModVfx;->spawned(Ljava/util/List;)V

    .line 406
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->added(Ljava/util/List;)V

    .line 407
    throw v0
.end method

.method static factionIndex(Lfr/testudo/spacecorsair/game/levels/LevelId;)I
    .registers 3

    .prologue
    .line 163
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModMap;->owner(Lfr/testudo/spacecorsair/game/levels/LevelId;)I

    move-result v0

    .line 164
    if-gez v0, :cond_c

    const-string v0, "warden"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v0

    .line 165
    :cond_c
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static guestHeatLeads()Z
    .registers 2

    .prologue
    .line 211
    sget v0, Lfr/testudo/spacecorsair/mod/ModPolice;->guestHeat:I

    sget v1, Lfr/testudo/spacecorsair/mod/ModPolice;->hostHeat:I

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static heat()I
    .registers 1

    .prologue
    .line 216
    sget v0, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    return v0
.end method

.method public static hit(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)F
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 300
    if-eqz p2, :cond_b

    :try_start_5
    iget-object v2, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v2, :cond_b

    if-nez p0, :cond_c

    .line 316
    :cond_b
    :goto_b
    return p1

    .line 301
    :cond_c
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 302
    if-eq p0, v2, :cond_16

    iget-boolean v3, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v3, :cond_38

    .line 305
    :cond_16
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->police:Ljava/util/WeakHashMap;

    iget-object v1, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    cmpl-float v0, p1, v4

    if-lez v0, :cond_b

    iget-wide v0, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->lifeTimeInMilli:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_30

    instance-of v0, p2, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    if-eqz v0, :cond_b

    :cond_30
    iget-object v0, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v2, v0, p1}, Lfr/testudo/spacecorsair/mod/ModPolice;->policeWeapon(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/business/Element;F)V

    goto :goto_b

    .line 313
    :catch_36
    move-exception v0

    goto :goto_b

    .line 308
    :cond_38
    iget-object v3, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v3, v3, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v3, :cond_4a

    iget-object v3, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-eq v3, v2, :cond_4a

    iget-object v2, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v2

    if-eqz v2, :cond_6b

    :cond_4a
    move v2, v0

    .line 309
    :goto_4b
    if-eqz v2, :cond_b

    .line 310
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v2, :cond_6d

    iget-object v2, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eq v2, v3, :cond_5f

    iget-object v2, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLan;->isGuestDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v2

    if-eqz v2, :cond_6d

    :cond_5f
    :goto_5f
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModPolice;->lastByGuest:Z

    .line 311
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->isPolice(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModPolice;->strayOrHit(Lfr/testudo/spacecorsair/business/Element;F)V

    goto :goto_b

    :cond_6b
    move v2, v1

    .line 308
    goto :goto_4b

    :cond_6d
    move v0, v1

    .line 310
    goto :goto_5f

    .line 312
    :cond_6f
    cmpl-float v0, p1, v4

    if-lez v0, :cond_b

    instance-of v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_b

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->notPoliceMatter(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->civilHit(Lfr/testudo/spacecorsair/business/Element;Z)V
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_87} :catch_36

    goto :goto_b
.end method

.method public static hull(FII)F
    .registers 5

    .prologue
    .line 144
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
    .line 727
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

    .line 225
    if-nez p0, :cond_6

    move v0, v1

    .line 227
    :cond_5
    :goto_5
    return v0

    .line 226
    :cond_6
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPolice;->police:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->isPoliceTitan(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 227
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

.method static isPoliceMonolith(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 2

    .prologue
    .line 221
    if-eqz p0, :cond_c

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->policeMono:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static join()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 621
    :try_start_1
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v2, v1, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    move v1, v0

    .line 622
    :goto_a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_54

    .line 623
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 624
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

    .line 622
    :cond_32
    :goto_32
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 625
    :cond_36
    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;

    .line 626
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModPolice;->police:Ljava/util/WeakHashMap;

    const/4 v4, 0x3

    new-array v4, v4, [J

    fill-array-data v4, :array_5a

    invoke-virtual {v3, v0, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    iget-object v3, v0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->curState:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    sget-object v4, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ATTACK_TARGET:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    if-eq v3, v4, :cond_32

    .line 628
    const/4 v3, 0x1

    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModPolice;->spawning:Z
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4c} :catch_53

    .line 629
    :try_start_4c
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->setAtackPlayerMode()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_55

    const/4 v0, 0x0

    :try_start_50
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModPolice;->spawning:Z

    goto :goto_32

    .line 631
    :catch_53
    move-exception v0

    .line 634
    :cond_54
    return-void

    .line 629
    :catchall_55
    move-exception v0

    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModPolice;->spawning:Z

    throw v0
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_5a} :catch_53

    .line 626
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
    .line 339
    if-eqz p0, :cond_16

    :try_start_2
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->here:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v0, :cond_16

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->titan:Lfr/testudo/spacecorsair/business/Element;

    if-eq p0, v0, :cond_16

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->isPoliceTitan(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCcef;->isCcef(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 352
    :cond_16
    :goto_16
    return-void

    .line 340
    :cond_17
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->isPolice(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 341
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->classOf(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v0

    .line 342
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

    .line 343
    sget v0, Lfr/testudo/spacecorsair/mod/ModPolice;->lastTop:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->waveBase(I)J

    move-result-wide v0

    .line 344
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModPolice;->waveTimer:J

    invoke-static {v2, v3, v0, v1}, Lfr/testudo/spacecorsair/mod/ModPolice;->cutCountdown(JJ)J

    move-result-wide v0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->waveTimer:J

    .line 345
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

    goto :goto_16

    .line 349
    :catch_68
    move-exception v0

    goto :goto_16

    .line 348
    :cond_6a
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_16

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v0

    if-nez v0, :cond_16

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->notPoliceMatter(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x3

    const-string v1, "civilian kill"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModPolice;->offence(ILjava/lang/String;)V
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_86} :catch_68

    goto :goto_16
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
    .line 823
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCcef;->lightSize(Lfr/testudo/spacecorsair/business/Element;)F

    move-result v0

    .line 824
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_11

    :try_start_9
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v1, :cond_10

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->lights(Lfr/testudo/spacecorsair/business/Element;F)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_10} :catch_b8

    .line 835
    :cond_10
    :goto_10
    return-void

    .line 825
    :cond_11
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->lightBar:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 826
    if-eqz v0, :cond_10

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v1, :cond_10

    .line 827
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x4b0

    rem-long/2addr v2, v4

    .line 828
    const-wide/16 v4, 0x258

    cmp-long v1, v2, v4

    if-gez v1, :cond_aa

    const/4 v1, 0x1

    move v11, v1

    .line 829
    :goto_2e
    const-wide/16 v4, 0x12c

    rem-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v1, v2, v4

    if-gez v1, :cond_ad

    const/4 v1, 0x1

    move v12, v1

    .line 830
    :goto_39
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v13

    const/high16 v0, 0x42200000    # 40.0f

    const v1, 0x3e6147ae    # 0.22f

    mul-float/2addr v1, v13

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 831
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

    .line 832
    const-string v0, "fx_core"

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPolice;->lb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPolice;->lb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3dcccccd    # 0.1f

    const v8, 0x3da3d70a    # 0.08f

    if-eqz v11, :cond_b0

    if-eqz v12, :cond_b0

    const/high16 v9, 0x3f800000    # 1.0f

    :goto_73
    const/4 v10, 0x1

    move v4, v3

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 833
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, p0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    const v2, 0x3df5c28f    # 0.12f

    mul-float/2addr v2, v13

    neg-float v4, v13

    const v5, 0x3d4ccccd    # 0.05f

    mul-float/2addr v4, v5

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModPolice;->lb:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v1, v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 834
    const-string v0, "fx_core"

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPolice;->lb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPolice;->lb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v5, 0x0

    const v6, 0x3df5c28f    # 0.12f

    const v7, 0x3eb33333    # 0.35f

    const/high16 v8, 0x3f800000    # 1.0f

    if-nez v11, :cond_b4

    if-eqz v12, :cond_b4

    const/high16 v9, 0x3f800000    # 1.0f

    :goto_a3
    const/4 v10, 0x1

    move v4, v3

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    goto/16 :goto_10

    .line 828
    :cond_aa
    const/4 v1, 0x0

    move v11, v1

    goto :goto_2e

    .line 829
    :cond_ad
    const/4 v1, 0x0

    move v12, v1

    goto :goto_39

    .line 832
    :cond_b0
    const v9, 0x3df5c28f    # 0.12f

    goto :goto_73

    .line 834
    :cond_b4
    const v9, 0x3df5c28f    # 0.12f

    goto :goto_a3

    .line 824
    :catch_b8
    move-exception v0

    goto/16 :goto_10
.end method

.method static log(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 876
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 877
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

    .line 878
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

    .line 882
    :cond_4b
    :goto_4b
    return-void

    .line 877
    :cond_4c
    const/4 v0, 0x0

    goto :goto_25

    .line 879
    :catch_4e
    move-exception v0

    goto :goto_4b
.end method

.method static missiles(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/business/ennemis/Ennemis;[JJ)V
    .registers 12

    .prologue
    const/4 v6, 0x1

    .line 490
    const/4 v0, 0x0

    aget-wide v0, p2, v0

    long-to-int v0, v0

    .line 491
    if-eqz v0, :cond_e

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    const/4 v1, 0x5

    if-eq v0, v1, :cond_e

    .line 497
    :cond_d
    :goto_d
    return-void

    .line 492
    :cond_e
    aget-wide v2, p2, v6

    sub-long/2addr v2, p3

    aput-wide v2, p2, v6

    .line 493
    aget-wide v2, p2, v6

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_d

    .line 494
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

    .line 495
    :cond_2e
    if-nez v0, :cond_3d

    const-wide/16 v0, 0x1388

    :goto_32
    aput-wide v0, p2, v6

    .line 496
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    invoke-static {p1, v0}, Lfr/testudo/spacecorsair/mod/ModMissile;->policeMissile(Lfr/testudo/spacecorsair/business/Element;F)Z

    goto :goto_d

    .line 495
    :cond_3d
    const-wide/16 v0, 0x1f40

    goto :goto_32
.end method

.method static name(II)Ljava/lang/String;
    .registers 6

    .prologue
    .line 716
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v1, v0, p0

    .line 718
    const-string v0, "kretari"

    iget-object v2, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string v0, "High Council"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 719
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

    .line 718
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

    .line 719
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

.method static notPoliceMatter(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 2

    .prologue
    .line 202
    if-eqz p0, :cond_e

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/Element;->isMissionObjective:Z

    if-nez v0, :cond_c

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModSector;->factionShip(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static offence(ILjava/lang/String;)V
    .registers 10

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    .line 258
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->here:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v0, :cond_9

    if-gtz p0, :cond_a

    .line 267
    :cond_9
    :goto_9
    return-void

    .line 259
    :cond_a
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->chase()Z

    move-result v0

    if-nez v0, :cond_9

    .line 260
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModPolice;->lastByGuest:Z

    if-eqz v0, :cond_68

    sget v0, Lfr/testudo/spacecorsair/mod/ModPolice;->guestHeat:I

    add-int/2addr v0, p0

    sput v0, Lfr/testudo/spacecorsair/mod/ModPolice;->guestHeat:I

    .line 261
    :goto_19
    sget v0, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    if-lez v0, :cond_2d

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->active:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6e

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModPolice;->sinceWave:J

    const-wide/16 v4, 0x6d60

    cmp-long v0, v2, v4

    if-ltz v0, :cond_6e

    :cond_2d
    move v0, v1

    .line 262
    :goto_2e
    sget v2, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    add-int/2addr v2, p0

    sput v2, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    .line 263
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModPolice;->heatRose:Z

    .line 264
    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModPolice;->quietMs:J

    .line 265
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

    .line 266
    if-eqz v0, :cond_9

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModPolice;->waveTimer:J

    goto :goto_9

    .line 260
    :cond_68
    sget v0, Lfr/testudo/spacecorsair/mod/ModPolice;->hostHeat:I

    add-int/2addr v0, p0

    sput v0, Lfr/testudo/spacecorsair/mod/ModPolice;->hostHeat:I

    goto :goto_19

    .line 261
    :cond_6e
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method public static onTitanKilled()V
    .registers 3

    .prologue
    const/4 v2, -0x1

    .line 356
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->titan:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->remove(Lfr/testudo/spacecorsair/business/Element;)V

    .line 357
    const/16 v0, 0x2710

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPolice;->titan:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModQol;->addCredits(ILfr/testudo/spacecorsair/business/Element;)V

    .line 358
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->titan:Lfr/testudo/spacecorsair/business/Element;

    .line 359
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    .line 360
    sput v2, Lfr/testudo/spacecorsair/mod/ModPolice;->lastTop:I

    .line 361
    sput v2, Lfr/testudo/spacecorsair/mod/ModPolice;->lastRadioTier:I

    .line 362
    const-string v0, "titan killed: heat reset"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->log(Ljava/lang/String;)V

    .line 363
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->standDown(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 364
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->regularTitanKilled()V

    .line 365
    return-void
.end method

.method public static pastTolerance(FF)Z
    .registers 3

    .prologue
    .line 197
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_d

    const v0, 0x3d888889

    mul-float/2addr v0, p1

    cmpl-float v0, p0, v0

    if-lez v0, :cond_f

    :cond_d
    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method static policeFactionOf(Lfr/testudo/spacecorsair/business/Element;)I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 412
    if-nez p0, :cond_4

    .line 415
    :goto_3
    return v1

    .line 413
    :cond_4
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->factionOf:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 414
    if-nez v0, :cond_22

    sget v2, Lfr/testudo/spacecorsair/mod/ModPolice;->sectorFi:I

    if-ltz v2, :cond_22

    instance-of v2, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;

    if-eqz v2, :cond_22

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->isPolice(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v2

    if-eqz v2, :cond_22

    sget v0, Lfr/testudo/spacecorsair/mod/ModPolice;->sectorFi:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 415
    :cond_22
    if-eqz v0, :cond_33

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_33

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->GUNS:[[Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;

    array-length v3, v3

    if-lt v2, v3, :cond_36

    :cond_33
    move v0, v1

    :goto_34
    move v1, v0

    goto :goto_3

    :cond_36
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_34
.end method

.method private static policeGuns(Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 419
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPolice;->factionOf:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    sget v2, Lfr/testudo/spacecorsair/mod/ModPolice;->sectorFi:I

    if-ltz v2, :cond_e

    :cond_c
    if-nez p0, :cond_f

    .line 442
    :cond_e
    :goto_e
    return-void

    .line 421
    :cond_f
    const/4 v2, 0x0

    move v12, v2

    :goto_11
    :try_start_11
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v12, v2, :cond_e

    .line 422
    invoke-interface {p0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 423
    instance-of v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;

    if-nez v3, :cond_23

    .line 421
    :cond_1f
    :goto_1f
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto :goto_11

    .line 424
    :cond_23
    move-object v0, v2

    check-cast v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;

    move-object v11, v0

    .line 425
    iget-object v2, v11, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-nez v2, :cond_c3

    const/4 v2, 0x0

    .line 426
    :goto_2c
    if-nez v2, :cond_46

    sget v3, Lfr/testudo/spacecorsair/mod/ModPolice;->sectorFi:I

    if-ltz v3, :cond_46

    iget-object v3, v11, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->sender:Lfr/testudo/spacecorsair/business/Element;

    instance-of v3, v3, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;

    if-eqz v3, :cond_46

    iget-object v3, v11, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModPolice;->isPolice(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v3

    if-eqz v3, :cond_46

    sget v2, Lfr/testudo/spacecorsair/mod/ModPolice;->sectorFi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 427
    :cond_46
    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_1f

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCapitals;->GUNS:[[Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;

    array-length v4, v4

    if-ge v3, v4, :cond_1f

    .line 428
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->GUNS:[[Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v2, v3, v2

    .line 429
    sget v3, Lfr/testudo/spacecorsair/mod/ModPolice;->swapN:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lfr/testudo/spacecorsair/mod/ModPolice;->swapN:I

    array-length v4, v2

    rem-int/2addr v3, v4

    aget-object v13, v2, v3

    .line 430
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newEnnergyBullet()Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    move-result-object v2

    iget v3, v11, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->damage:F

    const/4 v4, 0x6

    iget-object v5, v11, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->sender:Lfr/testudo/spacecorsair/business/Element;

    const/high16 v6, 0x3f800000    # 1.0f

    iget v7, v13, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->r:F

    iget v8, v13, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->g:F

    iget v9, v13, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->b:F

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModWeapons;->TAG:[Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget v14, v13, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->fam:I

    aget-object v10, v10, v14

    .line 431
    invoke-virtual/range {v2 .. v10}, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->init(FILfr/testudo/spacecorsair/business/Element;FFFFLfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    move-result-object v4

    .line 432
    iget-object v2, v4, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, v11, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 433
    iget-object v2, v4, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, v11, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 434
    iget v2, v11, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->spin:F

    iput v2, v4, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->spin:F

    .line 435
    iget-object v2, v11, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-double v2, v2

    iget-object v5, v11, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    float-to-double v6, v5

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 436
    const v3, 0x3c23d70a    # 0.01f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_cf

    iget v3, v13, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->range:F

    const v5, 0x3f933333    # 1.15f

    mul-float/2addr v3, v5

    const v5, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v5

    div-float v2, v3, v2

    float-to-long v2, v2

    :goto_b9
    iput-wide v2, v4, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->lifeTimeInMilli:J

    .line 437
    invoke-interface {p0, v12, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1f

    .line 439
    :catch_c0
    move-exception v2

    goto/16 :goto_e

    .line 425
    :cond_c3
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPolice;->factionOf:Ljava/util/WeakHashMap;

    iget-object v3, v11, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    goto/16 :goto_2c

    .line 436
    :cond_cf
    iget-wide v2, v11, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->lifeTimeInMilli:J
    :try_end_d1
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_d1} :catch_c0

    goto :goto_b9
.end method

.method private static policeHit()V
    .registers 4

    .prologue
    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 292
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModPolice;->nextPoliceHit:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_b

    .line 295
    :goto_a
    return-void

    .line 293
    :cond_b
    const-wide/16 v2, 0x1f40

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->nextPoliceHit:J

    .line 294
    const/4 v0, 0x1

    const-string v1, "police hit"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModPolice;->offence(ILjava/lang/String;)V

    goto :goto_a
.end method

.method static policeState(Lfr/testudo/spacecorsair/business/Element;)[J
    .registers 2

    .prologue
    .line 376
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->police:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method private static policeWeapon(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/business/Element;F)V
    .registers 15

    .prologue
    const/4 v8, 0x2

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 460
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->police:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 461
    aget-wide v4, v0, v2

    long-to-int v3, v4

    .line 463
    if-ne v3, v1, :cond_a1

    move v3, v2

    move v5, v2

    move v6, v1

    .line 467
    :goto_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 468
    if-eqz v6, :cond_68

    .line 469
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->snareReady:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 470
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-ltz v0, :cond_68

    .line 471
    :cond_2e
    if-eqz v3, :cond_ce

    const v0, 0x3e4ccccd    # 0.2f

    .line 472
    :goto_33
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPolice;->snareReady:Ljava/util/WeakHashMap;

    const-wide/16 v6, 0x1770

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationSnareDuree:I

    if-lez v1, :cond_49

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationSnareValue:F

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :cond_49
    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationSnareValue:F

    .line 474
    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationSnareDuree:I

    if-eqz v3, :cond_d3

    const/16 v0, 0x9c4

    :goto_51
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationSnareDuree:I

    .line 475
    if-eqz v3, :cond_d7

    const-string v0, "PINNED"

    :goto_5b
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x3ecccccd    # 0.4f

    const v2, 0x3f333333    # 0.7f

    invoke-static {p0, v0, v1, v2, v11}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 478
    :cond_68
    if-eqz v5, :cond_a0

    .line 479
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    .line 480
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

    .line 481
    :cond_80
    const-wide/16 v0, 0xbb8

    add-long/2addr v0, v8

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->regenStopUntil:J

    .line 482
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->drainTextAt:J

    sub-long v0, v8, v0

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_a0

    .line 483
    sput-wide v8, Lfr/testudo/spacecorsair/mod/ModPolice;->drainTextAt:J

    .line 484
    const-string v0, "Shield drained!"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3f59999a    # 0.85f

    invoke-static {p0, v0, v1, v2, v11}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 487
    :cond_a0
    return-void

    .line 464
    :cond_a1
    if-eq v3, v8, :cond_a6

    const/4 v4, 0x3

    if-ne v3, v4, :cond_ab

    :cond_a6
    move v3, v2

    move v5, v1

    move v6, v2

    goto/16 :goto_16

    .line 465
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

    .line 471
    :cond_ce
    const v0, 0x3f266666    # 0.65f

    goto/16 :goto_33

    .line 474
    :cond_d3
    const/16 v0, 0xbb8

    goto/16 :goto_51

    .line 475
    :cond_d7
    const-string v0, "SNARED"

    goto :goto_5b
.end method

.method static radioTimer(JIIFF)J
    .registers 14

    .prologue
    const/4 v1, 0x0

    .line 242
    if-ltz p2, :cond_19

    const/4 v0, 0x6

    if-ge p2, v0, :cond_19

    if-eq p3, p2, :cond_19

    cmpg-float v0, p4, v1

    if-lez v0, :cond_19

    cmpg-float v0, p5, v1

    if-lez v0, :cond_19

    div-float v0, p4, p5

    const v1, 0x3f19999a    # 0.6f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1a

    .line 243
    :cond_19
    :goto_19
    return-wide p0

    :cond_1a
    const-wide/16 v0, 0x1f40

    const-wide/16 v2, 0x36b0

    const-wide/16 v4, 0x7d0

    int-to-long v6, p2

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    goto :goto_19
.end method

.method public static regenStopped()Z
    .registers 4

    .prologue
    .line 253
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
    .line 723
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

    .line 149
    if-eqz p0, :cond_7

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->isMulti:Z

    if-eqz v1, :cond_8

    .line 157
    :cond_7
    :goto_7
    :pswitch_7
    return v0

    .line 150
    :cond_8
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPolice$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_16

    .line 157
    const/4 v0, 0x0

    goto :goto_7

    .line 150
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

    .line 591
    :try_start_1
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 593
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

    .line 594
    if-eqz v0, :cond_17

    iget-boolean v4, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v4, :cond_17

    .line 595
    const/4 v4, 0x1

    iput-boolean v4, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    .line 596
    if-eqz v2, :cond_33

    iget-object v4, v2, Lfr/testudo/spacecorsair/game/levels/Level;->toDelete:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    :cond_33
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 598
    goto :goto_17

    .line 599
    :cond_37
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPolice;->visualsClear()V

    .line 600
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->police:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 601
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->active:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 602
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->standDown()V

    .line 603
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->titan:Lfr/testudo/spacecorsair/business/Element;

    .line 604
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->boosted:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 605
    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModPolice;->lastTop:I

    .line 606
    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModPolice;->lastRadioTier:I

    .line 607
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModPolice;->heatRose:Z

    .line 608
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

    .line 609
    if-lez v1, :cond_94

    if-eqz p0, :cond_94

    .line 610
    const-string v0, "POLICE STAND DOWN"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x3ecccccd    # 0.4f

    const/high16 v2, 0x3f400000    # 0.75f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 611
    const-string v0, "warp_in"

    const/high16 v1, 0x3f000000    # 0.5f

    const v2, 0x3f99999a    # 1.2f

    const-wide/16 v4, 0x3e8

    invoke-static {v0, v1, v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_94} :catch_95

    .line 616
    :cond_94
    :goto_94
    return-void

    .line 613
    :catch_95
    move-exception v0

    goto :goto_94
.end method

.method private static strayOrHit(Lfr/testudo/spacecorsair/business/Element;F)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 325
    sget v0, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    if-gtz v0, :cond_13

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->police:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->isPoliceTitan(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_13
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPolice;->policeHit()V

    .line 334
    :cond_16
    :goto_16
    return-void

    .line 326
    :cond_17
    cmpg-float v0, p1, v1

    if-lez v0, :cond_16

    .line 327
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->strayDmg:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 328
    if-nez v0, :cond_41

    move v0, v1

    :goto_26
    add-float/2addr v0, p1

    .line 329
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPolice;->strayDmg:Ljava/util/WeakHashMap;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget v1, p0, Lfr/testudo/spacecorsair/business/Element;->maxLife:F

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModPolice;->pastTolerance(FF)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 331
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->strayDmg:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPolice;->policeHit()V

    goto :goto_16

    .line 328
    :cond_41
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_26
.end method

.method private static sw(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 840
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 841
    if-eqz v1, :cond_9

    move-object v0, v1

    .line 847
    :cond_8
    :goto_8
    return-object v0

    .line 843
    :cond_9
    :try_start_9
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 844
    if-nez v1, :cond_17

    move-object v1, v0

    .line 845
    :goto_10
    if-eqz v1, :cond_8

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 844
    :cond_17
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_1e} :catch_20

    move-result-object v1

    goto :goto_10

    .line 846
    :catch_20
    move-exception v1

    goto :goto_8
.end method

.method private static switches(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 854
    const-string v0, "corsair_policewave"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v2

    .line 857
    :try_start_7
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 858
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

    .line 862
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

    .line 863
    sget v0, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    if-gtz v0, :cond_3b

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->UNLOCK:[I

    aget v0, v0, v1

    sput v0, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    .line 864
    :cond_3b
    const-string v0, "forced wave"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->log(Ljava/lang/String;)V

    .line 865
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->wave(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 866
    const-wide/16 v0, 0x6d60

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->waveTimer:J

    .line 868
    :cond_47
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModPolice;->waveFlag:Z

    .line 869
    return-void

    .line 859
    :catch_4a
    move-exception v0

    move v0, v1

    .line 860
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

    .line 502
    :try_start_8
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 503
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPolice;->lastLevel:Ljava/lang/Object;

    if-eq v1, v2, :cond_19

    .line 504
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModPolice;->lastLevel:Ljava/lang/Object;

    .line 505
    if-nez v1, :cond_42

    :goto_16
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->enter(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 507
    :cond_19
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->swTimer:J

    sub-long/2addr v0, p1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->swTimer:J

    .line 508
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->swTimer:J

    cmp-long v0, v0, v6

    if-gtz v0, :cond_2b

    const-wide/16 v0, 0x3e8

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->swTimer:J

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->switches(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 509
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

    .line 551
    :cond_41
    :goto_41
    return-void

    .line 505
    :cond_42
    iget-object v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    goto :goto_16

    .line 510
    :cond_45
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->chase()Z

    move-result v0

    if-nez v0, :cond_41

    .line 511
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->boosts(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 512
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->active:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_81

    const/4 v0, 0x1

    move v3, v0

    .line 513
    :goto_58
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->active:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_61
    if-ltz v2, :cond_94

    .line 514
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->active:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 515
    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v1, :cond_75

    iget v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_84

    :cond_75
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPolice;->active:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->unvisual(Lfr/testudo/spacecorsair/business/Element;)V

    .line 513
    :cond_7d
    :goto_7d
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_61

    .line 512
    :cond_81
    const/4 v0, 0x0

    move v3, v0

    goto :goto_58

    .line 516
    :cond_84
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPolice;->police:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 517
    if-eqz v1, :cond_7d

    invoke-static {p0, v0, v1, p1, p2}, Lfr/testudo/spacecorsair/mod/ModPolice;->missiles(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/business/ennemis/Ennemis;[JJ)V

    goto :goto_7d

    .line 548
    :catch_92
    move-exception v0

    goto :goto_41

    .line 526
    :cond_94
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->titan:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_ae

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->titan:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v0, :cond_a6

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->titan:Lfr/testudo/spacecorsair/business/Element;

    iget v0, v0, Lfr/testudo/spacecorsair/business/Element;->life:F

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_ae

    :cond_a6
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->titan:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->remove(Lfr/testudo/spacecorsair/business/Element;)V

    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->titan:Lfr/testudo/spacecorsair/business/Element;

    .line 527
    :cond_ae
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->sinceWave:J

    const-wide v4, 0x1fffffffffffffffL

    cmp-long v0, v0, v4

    if-gez v0, :cond_be

    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->sinceWave:J

    add-long/2addr v0, p1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->sinceWave:J

    .line 528
    :cond_be
    if-eqz v3, :cond_e5

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->active:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e5

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->titan:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_d2

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->titan:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v0, :cond_e5

    :cond_d2
    sget v0, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    if-lez v0, :cond_e5

    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->waveTimer:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_e5

    .line 529
    const-wide/16 v0, 0x1f40

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->waveTimer:J

    .line 530
    const-string v0, "wave cleared: next in 8000 ms"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->log(Ljava/lang/String;)V

    .line 532
    :cond_e5
    sget v0, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    if-lez v0, :cond_41

    .line 533
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->active:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_fb

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->titan:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_ff

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->titan:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v0, :cond_ff

    :cond_fb
    const-wide/16 v0, 0x0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->quietMs:J

    .line 534
    :cond_ff
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->quietMs:J

    add-long/2addr v0, p1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->quietMs:J

    .line 535
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->quietMs:J

    cmp-long v0, v0, v10

    if-ltz v0, :cond_136

    .line 536
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->quietMs:J

    sub-long/2addr v0, v10

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->quietMs:J

    .line 537
    sget v0, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    .line 538
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

    .line 539
    sget v0, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    if-gtz v0, :cond_136

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->standDown(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    goto/16 :goto_41

    .line 541
    :cond_136
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->joinTimer:J

    sub-long/2addr v0, p1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->joinTimer:J

    .line 542
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->joinTimer:J

    cmp-long v0, v0, v6

    if-gtz v0, :cond_14e

    const-wide/16 v0, 0x7d0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->joinTimer:J

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCalm;->active()Z

    move-result v0

    if-nez v0, :cond_14e

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPolice;->join()V

    .line 543
    :cond_14e
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->waveTimer:J

    sub-long/2addr v0, p1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->waveTimer:J

    .line 544
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->waveTimer:J

    cmp-long v0, v0, v6

    if-gtz v0, :cond_41

    .line 545
    sget v0, Lfr/testudo/spacecorsair/mod/ModPolice;->lastTop:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->waveBase(I)J

    move-result-wide v0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModPolice;->waveTimer:J

    .line 546
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->wave(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    :try_end_164
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_164} :catch_92

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
    .line 816
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->under(Lfr/testudo/spacecorsair/business/Element;)V

    .line 817
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->monoAura:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 818
    if-eqz v0, :cond_18

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v1, :cond_18

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModMonolith;->policeAura(Lfr/testudo/spacecorsair/business/Element;F)V

    .line 819
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
    .line 793
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->factionOf:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->lightBar:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->monoAura:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->policeMono:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->remove(Lfr/testudo/spacecorsair/business/Element;)V

    .line 798
    return-void
.end method

.method private static visualsClear()V
    .registers 1

    .prologue
    .line 801
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->lightBar:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 802
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->monoAura:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 803
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPolice;->policeMono:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 804
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->clearAll()V

    .line 805
    return-void
.end method

.method public static wallHit(Lfr/testudo/spacecorsair/business/Element;F)V
    .registers 2

    .prologue
    .line 448
    return-void
.end method

.method private static wave(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 19

    .prologue
    .line 638
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCalm;->active()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 679
    :cond_6
    :goto_6
    return-void

    .line 639
    :cond_7
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModPolice;->here:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 640
    sget v4, Lfr/testudo/spacecorsair/mod/ModPolice;->heat:I

    sget v5, Lfr/testudo/spacecorsair/mod/ModPolice;->lastTop:I

    iget v6, v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->active()Z

    move-result v2

    if-nez v2, :cond_19

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPolice;->titan:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v2, :cond_73

    :cond_19
    const/4 v2, 0x1

    :goto_1a
    invoke-static {v4, v5, v6, v2}, Lfr/testudo/spacecorsair/mod/ModPolice;->nextTop(IIIZ)I

    move-result v2

    .line 641
    if-ltz v2, :cond_6

    .line 642
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModPolice;->factionIndex(Lfr/testudo/spacecorsair/game/levels/LevelId;)I

    move-result v6

    .line 643
    iget v3, v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModPolice;->level(I)I

    move-result v7

    .line 644
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->arrival(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v8

    .line 645
    const/4 v3, 0x0

    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModPolice;->heatRose:Z

    .line 646
    const-wide/16 v4, 0x0

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModPolice;->sinceWave:J

    .line 647
    const/4 v3, 0x6

    if-ne v2, v3, :cond_76

    .line 648
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v2, v2, v6

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-static {v2, v7, v8}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->spawn(Ljava/lang/String;ILfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v2

    .line 649
    if-eqz v2, :cond_75

    .line 650
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModPolice;->titan:Lfr/testudo/spacecorsair/business/Element;

    .line 651
    const/4 v2, 0x6

    sput v2, Lfr/testudo/spacecorsair/mod/ModPolice;->lastTop:I

    .line 652
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

    .line 653
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->titanWarning()V

    goto :goto_6

    .line 640
    :cond_73
    const/4 v2, 0x0

    goto :goto_1a

    .line 656
    :cond_75
    const/4 v2, 0x5

    .line 658
    :cond_76
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v10

    double-to-int v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModPolice;->waveClasses(II)[I

    move-result-object v3

    .line 659
    const/4 v4, 0x5

    if-ne v2, v4, :cond_97

    const-string v4, "spartan"

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v5, v5, v6

    iget-object v5, v5, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_97

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModPolice;->SPARTAN_CAPITAL_WAVE:[I

    .line 660
    :cond_97
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModPolice;->active:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    array-length v5, v3

    invoke-static {v4, v5}, Lfr/testudo/spacecorsair/mod/ModPolice;->room(II)I

    move-result v9

    .line 661
    const/4 v4, 0x0

    .line 662
    const/4 v5, 0x0

    :goto_a4
    if-ge v5, v9, :cond_f4

    .line 663
    aget v10, v3, v5

    invoke-static {v6, v10, v7}, Lfr/testudo/spacecorsair/mod/ModPolice;->build(III)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v10

    .line 664
    if-nez v10, :cond_b1

    .line 662
    :goto_ae
    add-int/lit8 v5, v5, 0x1

    goto :goto_a4

    .line 665
    :cond_b1
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

    .line 666
    invoke-virtual {v10}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 667
    invoke-virtual {v10}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    .line 668
    invoke-virtual {v10}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initChasePlayer()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 669
    sget-object v11, Lfr/testudo/spacecorsair/mod/ModPolice;->active:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    sget-object v11, Lfr/testudo/spacecorsair/mod/ModPolice;->boosted:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    add-int/lit8 v4, v4, 0x1

    goto :goto_ae

    .line 673
    :cond_f4
    if-lez v4, :cond_f8

    sput v2, Lfr/testudo/spacecorsair/mod/ModPolice;->lastTop:I

    .line 674
    :cond_f8
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

    .line 675
    if-lez v4, :cond_6

    .line 676
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

    .line 677
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
    .line 232
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
