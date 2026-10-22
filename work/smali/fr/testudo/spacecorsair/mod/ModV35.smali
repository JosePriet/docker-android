.class public Lfr/testudo/spacecorsair/mod/ModV35;
.super Ljava/lang/Object;
.source "ModV35.java"


# static fields
.field public static final AGGRO:I = 0x1

.field private static final ART:Ljava/util/HashMap;
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

.field private static final AVG:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[F>;"
        }
    .end annotation
.end field

.field public static final CORE_CHANCE:F = 0.4f

.field static final CORE_POOL:[[Ljava/lang/String;

.field public static final COST_STEP:F = 0.08f

.field public static final EDGE:F = 0.15f

.field static final FINALE:[[Ljava/lang/Object;

.field public static final FLEE:I = -0x2

.field public static final GEAR_MIN:[F

.field public static final HOLD:I = 0x0

.field static final HUNT_COOLDOWN_MS:J = 0x5265c00L

.field public static final KITE:I = -0x1

.field public static final PICK_STEP:F = 0.03f

.field public static final REFIT_MAX:I = 0xa

.field private static final RESOLVED:Ljava/util/HashMap;
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

.field private static final SKINS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lfr/testudo/spacecorsair/display/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public static final STAGES:I = 0x5

.field static final STAT_EN:[Ljava/lang/String;

.field public static final S_AGILITY:I = 0x9

.field public static final S_CARGO:I = 0x5

.field public static final S_DMG:I = 0x0

.field public static final S_HULL:I = 0x7

.field public static final S_MISSILE:I = 0x4

.field public static final S_RELOAD:I = 0x1

.field public static final S_REPAIR:I = 0x6

.field public static final S_SHCAP:I = 0x2

.field public static final S_SHREGEN:I = 0x3

.field public static final S_SPEED:I = 0x8

.field public static final TRAIT_STEP:F = 0.02f

.field private static final ai:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lfr/testudo/spacecorsair/business/ennemis/Ennemis;",
            "[F>;"
        }
    .end annotation
.end field

.field private static drawing:Lfr/testudo/spacecorsair/business/Element;

.field private static final enemyStage:Ljava/util/WeakHashMap;
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

.field private static priced:Z

.field public static tagB:F

.field public static tagG:F

.field public static tagR:F


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 36
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Laser damage"

    aput-object v1, v0, v4

    const-string v1, "Laser reload"

    aput-object v1, v0, v5

    const-string v1, "Shield capacity"

    aput-object v1, v0, v6

    const-string v1, "Shield regeneration"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "Missile reload"

    aput-object v2, v0, v1

    const-string v1, "Cargo hold"

    aput-object v1, v0, v8

    const/4 v1, 0x6

    const-string v2, "Hull repair"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Hull points"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Speed"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Agility"

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV35;->STAT_EN:[Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV35;->AVG:Ljava/util/HashMap;

    .line 169
    new-array v0, v7, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "reaver"

    aput-object v2, v1, v4

    const-string v2, "helion"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "spartan"

    aput-object v2, v1, v4

    const-string v2, "warden"

    aput-object v2, v1, v5

    const-string v2, "ironclad"

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "kretari"

    aput-object v2, v1, v4

    const-string v2, "varn"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV35;->CORE_POOL:[[Ljava/lang/String;

    .line 429
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV35;->ART:Ljava/util/HashMap;

    .line 430
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV35;->SKINS:Ljava/util/HashMap;

    .line 431
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV35;->RESOLVED:Ljava/util/HashMap;

    .line 468
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV35;->enemyStage:Ljava/util/WeakHashMap;

    .line 530
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lfr/testudo/spacecorsair/mod/ModV35;->tagR:F

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lfr/testudo/spacecorsair/mod/ModV35;->tagG:F

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lfr/testudo/spacecorsair/mod/ModV35;->tagB:F

    .line 644
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV35;->ai:Ljava/util/WeakHashMap;

    .line 721
    new-array v0, v7, [[Ljava/lang/Object;

    const/16 v1, 0x11

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "kretari"

    aput-object v2, v1, v4

    const/4 v2, 0x4

    .line 722
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "The Last Harvest"

    aput-object v2, v1, v6

    const-string v2, "KILL_ENEMY_TYPE"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "THE_HIVE"

    aput-object v3, v1, v2

    const-string v2, "THE_HIVE"

    aput-object v2, v1, v8

    const/4 v2, 0x6

    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "The Varn Syndicate has brought its whole harvest fleet to the Hive. Every Brood-Voice is calling for help. Break the outer harvest lines before they reach the nest."

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "Destroy 12 Syndicate ships in The Hive."

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "The outer harvest lines are broken. The Syndicate pulls back to its relay."

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "The harvest lines hold. The Brood retreats deeper below the crust."

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const v3, 0xdbba0

    .line 724
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "modDisintegratorL15"

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    const/16 v1, 0x11

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "kretari"

    aput-object v2, v1, v4

    .line 725
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "Silence the Relay"

    aput-object v2, v1, v6

    const-string v2, "DESTROY_STATION"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "THE_HIVE"

    aput-object v3, v1, v2

    const-string v2, "THE_HIVE"

    aput-object v2, v1, v8

    const/4 v2, 0x6

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "Syndicate Harvest Relay"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "The harvesters answer to one relay station anchored above the Hive. Destroy it and the Syndicate fleet goes deaf."

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "Destroy the Syndicate Harvest Relay and its guards."

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "The relay is gone. The harvest fleet scatters without orders."

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "The relay still stands. The harvest fleet regroups around it."

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const v3, 0x124f80

    .line 727
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "modArcProjectorL15"

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/16 v1, 0x11

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "kretari"

    aput-object v2, v1, v4

    const/4 v2, 0x6

    .line 728
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "Harvester Prime"

    aput-object v2, v1, v6

    const-string v2, "BOUNTY"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "THE_HIVE"

    aput-object v3, v1, v2

    const-string v2, "THE_HIVE"

    aput-object v2, v1, v8

    const/4 v2, 0x6

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "Harvester Prime"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "The Syndicate\'s flagship harvester has come for the nest itself. This is the last fight for the Hive. End it."

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "Hunt down Harvester Prime."

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "Harvester Prime is destroyed. The Hive will remember the pilot who ended the last harvest."

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "Harvester Prime escaped. The Brood will need another champion."

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const v3, 0x1e8480

    .line 730
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "modRailgunL15"

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV35;->FINALE:[[Ljava/lang/Object;

    .line 740
    new-array v0, v8, [F

    fill-array-data v0, :array_1f0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV35;->GEAR_MIN:[F

    return-void

    :array_1f0
    .array-data 4
        0x41000000    # 8.0f
        0x41000000    # 8.0f
        0x41a00000    # 20.0f
        0x42700000    # 60.0f
        0x43160000    # 150.0f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addCore(Ljava/lang/String;Lfr/testudo/spacecorsair/business/Element;)V
    .registers 6

    .prologue
    .line 194
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_8

    if-nez p0, :cond_9

    .line 204
    :cond_8
    :goto_8
    return-void

    .line 196
    :cond_9
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v35_core_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV35;->cores(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 198
    if-eqz p1, :cond_81

    :try_start_2f
    invoke-static {p1}, Lfr/testudo/spacecorsair/engine/GameThread;->isElementVisible(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 199
    :goto_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV35;->coreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f400000    # 0.75f

    const v3, 0x3e99999a    # 0.3f

    invoke-static {p1, v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Faction core recovered: "

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV35;->coreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    goto :goto_8

    .line 201
    :catch_7f
    move-exception v0

    goto :goto_8

    .line 198
    :cond_81
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object p1, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_85} :catch_7f

    goto :goto_35
.end method

.method static addParts(ILfr/testudo/spacecorsair/business/Element;)V
    .registers 6

    .prologue
    .line 156
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_8

    if-gtz p0, :cond_9

    .line 165
    :cond_8
    :goto_8
    return-void

    .line 158
    :cond_9
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "v35_parts"

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->parts()I

    move-result v2

    add-int/2addr v2, p0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 160
    if-eqz p1, :cond_54

    :try_start_1d
    invoke-static {p1}, Lfr/testudo/spacecorsair/engine/GameThread;->isElementVisible(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 161
    :goto_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "RARE PART"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    const v2, 0x3f0ccccd    # 0.55f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    goto :goto_8

    .line 162
    :catch_52
    move-exception v0

    goto :goto_8

    .line 160
    :cond_54
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object p1, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_58} :catch_52

    goto :goto_23
.end method

.method public static ai(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;J)V
    .registers 15

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 653
    :try_start_5
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    .line 654
    sget-object v5, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v7, v5, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 655
    if-eqz v0, :cond_27

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v0, :cond_27

    if-eqz v7, :cond_27

    iget-boolean v0, v7, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v0, :cond_27

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v0, :cond_27

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV35;->still(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 690
    :cond_27
    :goto_27
    return-void

    .line 656
    :cond_28
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV35;->ai:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 657
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 658
    if-nez v0, :cond_4b

    .line 659
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v5, 0x0

    iget v6, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->desengagementDistance:F

    aput v6, v0, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v0, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput v6, v0, v5

    .line 660
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModV35;->ai:Ljava/util/WeakHashMap;

    invoke-virtual {v5, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4b
    move-object v6, v0

    .line 662
    const/4 v0, 0x2

    aget v0, v6, v0

    float-to-long v10, v0

    cmp-long v0, v8, v10

    if-ltz v0, :cond_90

    .line 663
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->isBoss(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-nez v0, :cond_60

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->kindOf(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v0

    if-ltz v0, :cond_c3

    :cond_60
    move v5, v1

    .line 664
    :goto_61
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_c5

    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    iget v10, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    div-float/2addr v0, v10

    .line 665
    :goto_6c
    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-static {p0, v7, v11}, Lfr/testudo/spacecorsair/mod/ModV35;->score(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;Lfr/testudo/spacecorsair/business/player/PlayerShip;Z)F

    move-result v11

    invoke-static {v11, v0, v5}, Lfr/testudo/spacecorsair/mod/ModV35;->mode(FFZ)I

    move-result v0

    int-to-float v0, v0

    aput v0, v6, v10

    .line 666
    const/4 v0, 0x2

    const-wide/16 v10, 0x1f4

    add-long/2addr v8, v10

    long-to-float v5, v8

    aput v5, v6, v0

    .line 667
    const/4 v0, 0x0

    aget v5, v6, v0

    const/4 v0, 0x1

    aget v0, v6, v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_c7

    const v0, 0x3fcccccd    # 1.6f

    :goto_8d
    mul-float/2addr v0, v5

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->desengagementDistance:F

    .line 669
    :cond_90
    const/4 v0, 0x1

    aget v0, v6, v0

    float-to-int v0, v0

    .line 670
    if-eqz v0, :cond_27

    .line 671
    iget-object v4, v7, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v4, v5

    iget-object v5, v7, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v6, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v5, v6

    .line 672
    mul-float v6, v4, v4

    mul-float v7, v5, v5

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 673
    if-ne v0, v1, :cond_c9

    .line 674
    const/high16 v0, 0x435c0000    # 220.0f

    cmpl-float v0, v6, v0

    if-lez v0, :cond_27

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->isPousee:Z

    goto/16 :goto_27

    .line 687
    :catch_c0
    move-exception v0

    goto/16 :goto_27

    :cond_c3
    move v5, v2

    .line 663
    goto :goto_61

    :cond_c5
    move v0, v4

    .line 664
    goto :goto_6c

    :cond_c7
    move v0, v4

    .line 667
    goto :goto_8d

    .line 677
    :cond_c9
    const/high16 v7, 0x43960000    # 300.0f

    iget v8, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->distanceShoot:F

    const v9, 0x3f4ccccd    # 0.8f

    mul-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 678
    const/4 v8, -0x2

    if-eq v0, v8, :cond_dc

    cmpg-float v0, v6, v7

    if-gez v0, :cond_120

    .line 680
    :cond_dc
    neg-float v0, v5

    float-to-double v6, v0

    neg-float v0, v4

    float-to-double v4, v0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v0, v4

    const/high16 v4, 0x42b40000    # 90.0f

    add-float/2addr v0, v4

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->norm(F)F

    move-result v0

    .line 681
    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->spin:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->norm(F)F

    move-result v4

    .line 682
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v5, 0x40800000    # 4.0f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_113

    move v0, v3

    :goto_102
    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->spinSpeed:F

    .line 683
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_11e

    move v0, v1

    :goto_10f
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->isPousee:Z

    goto/16 :goto_27

    .line 682
    :cond_113
    cmpl-float v0, v4, v3

    if-lez v0, :cond_11a

    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxTurnFactor:F

    goto :goto_102

    :cond_11a
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxTurnFactor:F

    neg-float v0, v0

    goto :goto_102

    :cond_11e
    move v0, v2

    .line 683
    goto :goto_10f

    .line 684
    :cond_120
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->distanceShoot:F

    cmpg-float v0, v6, v0

    if-gez v0, :cond_27

    .line 685
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->isPousee:Z
    :try_end_129
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_129} :catch_c0

    goto/16 :goto_27
.end method

.method public static apply(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/mod/ModShips$Hull;Z)V
    .registers 10

    .prologue
    const/4 v0, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 312
    :try_start_3
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->currentShip()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    .line 313
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-static {v1, p1, v2}, Lfr/testudo/spacecorsair/mod/ModV35;->mults(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/mod/ModShips$Hull;Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)[F

    move-result-object v1

    .line 314
    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    .line 315
    cmpl-float v4, v2, v6

    if-nez v4, :cond_1b

    cmpl-float v4, v3, v6

    if-eqz v4, :cond_51

    .line 316
    :cond_1b
    iget v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->bulletDamage:F

    mul-float/2addr v4, v2

    iput v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->bulletDamage:F

    .line 317
    iget-wide v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->milleSecBetweenShots:J

    long-to-float v4, v4

    div-float/2addr v4, v3

    float-to-long v4, v4

    iput-wide v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->milleSecBetweenShots:J

    .line 318
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    if-eqz v4, :cond_51

    :goto_2b
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    array-length v4, v4

    if-ge v0, v4, :cond_51

    .line 319
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v4, v4, v0

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v5, v5, v0

    iget v5, v5, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->shootDamage:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    iput v5, v4, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->shootDamage:I

    .line 320
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v4, v4, v0

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v5, v5, v0

    iget v5, v5, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->timeBewteenShootInMilli:I

    int-to-float v5, v5

    div-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, v4, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->timeBewteenShootInMilli:I

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 323
    :cond_51
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    if-eqz v0, :cond_7d

    .line 324
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v2, v0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    const/4 v3, 0x2

    aget v3, v1, v3

    mul-float/2addr v2, v3

    iput v2, v0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    .line 325
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v2, v0, Lfr/testudo/spacecorsair/business/player/Shield;->reloadUnitBySec:F

    const/4 v3, 0x3

    aget v3, v1, v3

    mul-float/2addr v2, v3

    iput v2, v0, Lfr/testudo/spacecorsair/business/player/Shield;->reloadUnitBySec:F

    .line 326
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_7d

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    iput v2, v0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    .line 328
    :cond_7d
    iget-wide v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->milleSecBetweenMissileShots:J

    long-to-float v0, v2

    const/4 v2, 0x4

    aget v2, v1, v2

    div-float/2addr v0, v2

    float-to-long v2, v0

    iput-wide v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->milleSecBetweenMissileShots:J

    .line 329
    const/4 v0, 0x7

    aget v0, v1, v0

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_a2

    .line 330
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    const/4 v2, 0x7

    aget v2, v1, v2

    mul-float/2addr v0, v2

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    .line 331
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    iget v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_a2

    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    .line 333
    :cond_a2
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxPouseeForce:F

    const/16 v2, 0x8

    aget v2, v1, v2

    mul-float/2addr v0, v2

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxPouseeForce:F

    .line 334
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxTurnFactor:F

    const/16 v2, 0x9

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxTurnFactor:F
    :try_end_b4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_b4} :catch_b5

    .line 338
    :goto_b4
    return-void

    .line 335
    :catch_b5
    move-exception v0

    goto :goto_b4
.end method

.method static art(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 434
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV35;->ART:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 435
    if-nez v0, :cond_26

    .line 436
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModArt;->hasArt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModArt;->lazyTex(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    :goto_17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 437
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModArt;->listed()Z

    move-result v1

    if-eqz v1, :cond_26

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModV35;->ART:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    :cond_26
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 436
    :cond_2b
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static bossCore(IDD)Ljava/lang/String;
    .registers 10

    .prologue
    .line 208
    if-ltz p0, :cond_10

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV35;->CORE_POOL:[[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_10

    const-wide v0, 0x3fd99999a0000000L    # 0.4000000059604645

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_12

    :cond_10
    const/4 v0, 0x0

    .line 210
    :goto_11
    return-object v0

    .line 209
    :cond_12
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV35;->CORE_POOL:[[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 210
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    array-length v2, v0

    int-to-double v2, v2

    mul-double/2addr v2, p3

    double-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_11
.end method

.method public static bossCores(I)V
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 216
    :try_start_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    invoke-static {p0, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModV35;->bossCore(IDD)Ljava/lang/String;

    move-result-object v1

    .line 217
    if-eqz v1, :cond_13

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModV35;->addCore(Ljava/lang/String;Lfr/testudo/spacecorsair/business/Element;)V

    .line 218
    :cond_13
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x3fd99999a0000000L    # 0.4000000059604645

    cmpg-double v1, v2, v4

    if-gez v1, :cond_26

    const-string v1, "neutral"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModV35;->addCore(Ljava/lang/String;Lfr/testudo/spacecorsair/business/Element;)V

    .line 219
    :cond_26
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->currentShip()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    .line 220
    if-nez v1, :cond_3f

    move-object v1, v0

    .line 221
    :goto_2d
    if-eqz v1, :cond_3e

    const-string v0, "neutral"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModRep;->rank(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_49

    .line 231
    :cond_3e
    :goto_3e
    return-void

    .line 220
    :cond_3f
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModShips;->hull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->coreKey(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_2d

    .line 222
    :cond_49
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV35;->CORE_POOL:[[Ljava/lang/String;

    aget-object v2, v0, p0

    array-length v3, v2

    const/4 v0, 0x0

    :goto_4f
    if-ge v0, v3, :cond_3e

    aget-object v4, v2, v0

    .line 223
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV35;->huntLeft(Ljava/lang/String;)J

    move-result-wide v6

    .line 224
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a7

    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-lez v4, :cond_a7

    .line 225
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV35;->coreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "the renegade hunt at the faction\'s HQ guarantees one, ready again in "

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/32 v8, 0x36ee80

    div-long v8, v6, v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "h "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/32 v8, 0xea60

    div-long/2addr v6, v8

    const-wide/16 v8, 0x3c

    rem-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "m."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V
    :try_end_a7
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a7} :catch_aa

    .line 222
    :cond_a7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    .line 228
    :catch_aa
    move-exception v0

    goto :goto_3e
.end method

.method public static buy()Ljava/lang/String;
    .registers 13

    .prologue
    const/16 v12, 0xa

    const/4 v0, 0x0

    .line 403
    :try_start_3
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 404
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->currentShip()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v3

    .line 405
    if-eqz v3, :cond_f

    if-nez v2, :cond_10

    .line 424
    :cond_f
    :goto_f
    return-object v0

    .line 406
    :cond_10
    iget-boolean v1, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-nez v1, :cond_1b

    const-string v1, "Dock at a station to refit."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 407
    :cond_1b
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModV35;->level(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v4

    .line 408
    if-lt v4, v12, :cond_28

    const-string v1, "This hull is fully refitted."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 409
    :cond_28
    add-int/lit8 v1, v4, 0x1

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModV35;->hullPrice(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v5

    invoke-static {v1, v5}, Lfr/testudo/spacecorsair/mod/ModV35;->cost(II)I

    move-result v5

    add-int/lit8 v1, v4, 0x1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV35;->partsFor(I)I

    move-result v6

    .line 410
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v7, v1, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    .line 411
    invoke-virtual {v7}, Lfr/testudo/spacecorsair/business/player/Inventory;->getCredit()J

    move-result-wide v8

    int-to-long v10, v5

    cmp-long v1, v8, v10

    if-gez v1, :cond_4e

    const-string v1, "Not enough credits for the refit."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 412
    :cond_4e
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->parts()I

    move-result v1

    if-ge v1, v6, :cond_5b

    const-string v1, "Not enough rare parts (elites, bosses, rare salvage)."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 413
    :cond_5b
    add-int/lit8 v1, v4, 0x1

    if-ne v1, v12, :cond_97

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModShips;->hull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV35;->coreKey(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Ljava/lang/String;

    move-result-object v1

    .line 414
    :goto_67
    if-eqz v1, :cond_99

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV35;->cores(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-ge v8, v9, :cond_99

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The last refit needs a "

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV35;->coreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (stock bosses, renegade hunts, rival flagships)."

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    :cond_97
    move-object v1, v0

    .line 413
    goto :goto_67

    .line 415
    :cond_99
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v8

    .line 416
    if-eqz v8, :cond_f

    .line 417
    invoke-virtual {v7, v5}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeCredit(I)V

    .line 418
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "v35_refit_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v7, v4, 0x1

    invoke-interface {v5, v3, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "v35_parts"

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->parts()I

    move-result v7

    sub-int v6, v7, v6

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 419
    if-eqz v1, :cond_ed

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "v35_core_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV35;->cores(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v3, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 420
    :cond_ed
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 421
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->applyGear()V

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refit complete: level "

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v4, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_11d
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_11d} :catch_120

    move-result-object v0

    goto/16 :goto_f

    .line 423
    :catch_120
    move-exception v1

    goto/16 :goto_f
.end method

.method public static cargo(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)F
    .registers 3

    .prologue
    .line 355
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 356
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->currentShip()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    if-nez v0, :cond_13

    const/4 v0, 0x0

    :goto_b
    invoke-static {v1, p0, v0}, Lfr/testudo/spacecorsair/mod/ModV35;->mults(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/mod/ModShips$Hull;Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)[F

    move-result-object v0

    const/4 v1, 0x5

    aget v0, v0, v1

    .line 358
    :goto_12
    return v0

    .line 356
    :cond_13
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_b

    .line 357
    :catch_16
    move-exception v0

    .line 358
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_12
.end method

.method static clamp(FFF)F
    .registers 4

    .prologue
    .line 587
    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method static classAverage(I)[F
    .registers 12

    .prologue
    const/4 v10, 0x3

    const/4 v2, 0x0

    .line 102
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV35;->AVG:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 103
    if-eqz v0, :cond_11

    .line 115
    :goto_10
    return-object v0

    .line 104
    :cond_11
    new-array v1, v10, [F

    .line 106
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    array-length v5, v4

    move v3, v2

    move v0, v2

    :goto_18
    if-ge v3, v5, :cond_4f

    aget-object v6, v4, v3

    .line 107
    if-eqz v6, :cond_2a

    iget-boolean v7, v6, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dev:Z

    if-nez v7, :cond_2a

    iget v7, v6, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    if-ne v7, p0, :cond_2a

    iget-object v7, v6, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-nez v7, :cond_2d

    .line 106
    :cond_2a
    :goto_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 108
    :cond_2d
    aget v7, v1, v2

    iget-object v8, v6, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v8, v8, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lifeBooster:F

    add-float/2addr v7, v8

    aput v7, v1, v2

    .line 109
    const/4 v7, 0x1

    aget v8, v1, v7

    iget-object v9, v6, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v9, v9, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxSpeedInformational:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v1, v7

    .line 110
    const/4 v7, 0x2

    aget v8, v1, v7

    iget-object v6, v6, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v6, v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->agilityInformational:I

    int-to-float v6, v6

    add-float/2addr v6, v8

    aput v6, v1, v7

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 113
    :cond_4f
    if-lez v0, :cond_5c

    :goto_51
    if-ge v2, v10, :cond_5c

    aget v3, v1, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    .line 114
    :cond_5c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV35;->AVG:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 115
    goto :goto_10
.end method

.method static coreKey(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 175
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->factionKey(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c

    const-string v0, "neutral"

    :cond_c
    return-object v0
.end method

.method static coreName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 180
    const-string v0, "neutral"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "Neutral core"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    :goto_e
    return-object v0

    .line 182
    :cond_f
    :try_start_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "core"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_35} :catch_37

    move-result-object v0

    goto :goto_e

    .line 183
    :catch_37
    move-exception v0

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "core"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public static cores(Ljava/lang/String;)I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 189
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 190
    if-nez v1, :cond_8

    :goto_7
    return v0

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "v35_core_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_7
.end method

.method public static cost(II)I
    .registers 4

    .prologue
    .line 40
    const v0, 0x3da3d70a    # 0.08f

    int-to-float v1, p0

    mul-float/2addr v0, v1

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method static currentShip()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;
    .registers 1

    .prologue
    .line 137
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b

    .line 139
    :goto_a
    return-object v0

    .line 138
    :catch_b
    move-exception v0

    .line 139
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static damage(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)F
    .registers 5

    .prologue
    .line 703
    if-eqz p2, :cond_15

    :try_start_2
    iget-object v0, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_15

    iget-object v0, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v0, :cond_15

    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_16

    .line 711
    :cond_15
    :goto_15
    return p1

    .line 704
    :cond_16
    check-cast p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 705
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->elite:Z

    if-nez v0, :cond_15

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->isBoss(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->kindOf(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v0

    if-gez v0, :cond_15

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v0

    if-nez v0, :cond_15

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTitan;->isTitanClass(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 706
    iget-object v0, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    check-cast v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 707
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->factionOf(Lfr/testudo/spacecorsair/business/Element;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV34;->factionOf(Lfr/testudo/spacecorsair/business/Element;)Ljava/lang/String;

    move-result-object v0

    .line 708
    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModV35;->wheel(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 709
    neg-int v0, v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->ttkFactor(I)F
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_4e} :catch_51

    move-result v0

    mul-float/2addr p1, v0

    goto :goto_15

    .line 710
    :catch_51
    move-exception v0

    goto :goto_15
.end method

.method static enemyClass(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)I
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 601
    :try_start_1
    instance-of v1, p0, Lfr/testudo/spacecorsair/mod/ModFleet$Fighter;

    if-nez v1, :cond_1d

    instance-of v1, p0, Lfr/testudo/spacecorsair/mod/ModFleet$Raider;

    if-nez v1, :cond_1d

    instance-of v1, p0, Lfr/testudo/spacecorsair/mod/ModFleet$Gunship;

    if-nez v1, :cond_1d

    instance-of v1, p0, Lfr/testudo/spacecorsair/mod/ModFleet$Cruiser;

    if-nez v1, :cond_1d

    instance-of v1, p0, Lfr/testudo/spacecorsair/mod/ModFleet$Skirmisher;

    if-nez v1, :cond_1d

    instance-of v1, p0, Lfr/testudo/spacecorsair/mod/ModFleet$BeamShip;

    if-nez v1, :cond_1d

    instance-of v1, p0, Lfr/testudo/spacecorsair/mod/ModFleet$Mothership;

    if-eqz v1, :cond_2e

    .line 603
    :cond_1d
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_23} :catch_4f

    const v2, 0x3f333333    # 0.7f

    div-float/2addr v1, v2

    .line 604
    const/high16 v2, 0x42c80000    # 100.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_2f

    const/4 v0, 0x0

    .line 609
    :cond_2e
    :goto_2e
    return v0

    .line 604
    :cond_2f
    const/high16 v2, 0x43480000    # 200.0f

    cmpg-float v2, v1, v2

    if-lez v2, :cond_2e

    const/high16 v0, 0x43a00000    # 320.0f

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_3d

    const/4 v0, 0x2

    goto :goto_2e

    :cond_3d
    const/high16 v0, 0x43d20000    # 420.0f

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_45

    const/4 v0, 0x3

    goto :goto_2e

    :cond_45
    const/high16 v0, 0x44160000    # 600.0f

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_4d

    const/4 v0, 0x4

    goto :goto_2e

    :cond_4d
    const/4 v0, 0x5

    goto :goto_2e

    .line 606
    :catch_4f
    move-exception v1

    goto :goto_2e
.end method

.method public static enemyStage(Lfr/testudo/spacecorsair/business/Element;)I
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 481
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV35;->enemyStage:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 482
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->tier(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v3

    .line 483
    if-eqz v0, :cond_24

    invoke-static {v3, v2}, Lfr/testudo/spacecorsair/mod/ModV35;->stageOfTier(IZ)I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gt v4, v5, :cond_24

    invoke-static {v3, v1}, Lfr/testudo/spacecorsair/mod/ModV35;->stageOfTier(IZ)I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v4, v5, :cond_3c

    .line 484
    :cond_24
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v4, v6

    if-gez v0, :cond_41

    move v0, v1

    :goto_2f
    invoke-static {v3, v0}, Lfr/testudo/spacecorsair/mod/ModV35;->stageOfTier(IZ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 485
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModV35;->enemyStage:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    :cond_3c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_41
    move v0, v2

    .line 484
    goto :goto_2f
.end method

.method public static finale(I)Z
    .registers 2

    .prologue
    .line 735
    const/4 v0, 0x4

    if-lt p0, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method static flagshipCore(Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 264
    :try_start_1
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV35;->rivalCores(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 265
    array-length v1, v4

    if-nez v1, :cond_9

    .line 274
    :goto_8
    return-void

    .line 266
    :cond_9
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->currentShip()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    .line 267
    if-nez v1, :cond_2b

    move-object v3, v0

    .line 268
    :goto_10
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    array-length v2, v4

    int-to-double v6, v2

    mul-double/2addr v0, v6

    double-to-int v0, v0

    aget-object v1, v4, v0

    .line 269
    array-length v5, v4

    const/4 v0, 0x0

    move v2, v0

    :goto_1d
    if-ge v2, v5, :cond_35

    aget-object v0, v4, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    :goto_27
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_1d

    .line 267
    :cond_2b
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModShips;->hull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->coreKey(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_10

    .line 270
    :cond_35
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModV35;->addCore(Ljava/lang/String;Lfr/testudo/spacecorsair/business/Element;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_39} :catch_3a

    goto :goto_8

    .line 271
    :catch_3a
    move-exception v0

    goto :goto_8

    :cond_3c
    move-object v0, v1

    goto :goto_27
.end method

.method public static gearPrice(II)I
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 749
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV35;->GEAR_MIN:[F

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModV35;->GEAR_MIN:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aget v0, v0, v1

    .line 750
    const/16 v1, 0x28

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 751
    const/16 v2, 0x64

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v0, v3

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV35;->income(I)F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static hostileCap(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enemy_cap_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 527
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->art(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    :goto_19
    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method static hullPrice(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I
    .registers 3

    .prologue
    .line 287
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->hull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    .line 288
    if-eqz v0, :cond_9

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->price:I

    .line 292
    :goto_8
    return v0

    .line 290
    :cond_9
    const/16 v0, 0x3e8

    :try_start_b
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getObjectPrice()Lfr/testudo/spacecorsair/business/economy/Price;

    move-result-object v1

    iget v1, v1, Lfr/testudo/spacecorsair/business/economy/Price;->max:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_14} :catch_16

    move-result v0

    goto :goto_8

    .line 291
    :catch_16
    move-exception v0

    .line 292
    const/16 v0, 0x2710

    goto :goto_8
.end method

.method static huntDone(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModV35;->addCore(Ljava/lang/String;Lfr/testudo/spacecorsair/business/Element;)V

    .line 244
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 245
    if-nez v0, :cond_b

    .line 252
    :goto_a
    return-void

    .line 246
    :cond_b
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "v35_hunt_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 247
    const-string v2, "v35_hunt_note"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_42

    .line 248
    const-string v0, "v35_hunt_note"

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 249
    const-string v0, "Renegade hunts can be taken once a day per faction. Stock bosses and rival flagships also drop faction cores."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 251
    :cond_42
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_a
.end method

.method public static huntLeft(Ljava/lang/String;)J
    .registers 7

    .prologue
    const-wide/16 v0, 0x0

    .line 235
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 236
    if-nez v2, :cond_9

    .line 238
    :goto_8
    return-wide v0

    .line 237
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "v35_hunt_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 238
    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_8
.end method

.method public static income(I)F
    .registers 3

    .prologue
    .line 744
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->bounty(I)F

    move-result v0

    const v1, 0x42a03334    # 80.100006f

    mul-float/2addr v0, v1

    return v0
.end method

.method public static level(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 146
    if-eqz v1, :cond_9

    if-nez p0, :cond_a

    .line 147
    :cond_9
    :goto_9
    return v0

    :cond_a
    const/16 v2, 0xa

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "v35_refit_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_9
.end method

.method public static lootMult()F
    .registers 4

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 343
    :try_start_2
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->currentShip()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v2

    .line 344
    if-nez v2, :cond_17

    const/4 v1, 0x0

    .line 345
    :goto_9
    if-eqz v1, :cond_16

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModShips;->factionKey(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV35;->trait(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_1c

    .line 348
    :cond_16
    :goto_16
    return v0

    .line 344
    :cond_17
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModShips;->hull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v1

    goto :goto_9

    .line 346
    :cond_1c
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV35;->level(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV35;->traitMult(I)F
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_23} :catch_25

    move-result v0

    goto :goto_16

    .line 347
    :catch_25
    move-exception v1

    goto :goto_16
.end method

.method public static missionCredits(II)I
    .registers 5

    .prologue
    const/high16 v2, 0x40400000    # 3.0f

    .line 787
    if-gtz p0, :cond_5

    .line 789
    :goto_4
    return p0

    .line 788
    :cond_5
    int-to-float v0, p0

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModV35;->clamp(FFF)F

    move-result v0

    .line 789
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModV34;->bounty(I)F

    move-result v1

    mul-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_4
.end method

.method public static missionStanding(ZI)F
    .registers 3

    .prologue
    .line 794
    if-eqz p0, :cond_5

    const/high16 v0, 0x41000000    # 8.0f

    .line 795
    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x3

    if-eq p1, v0, :cond_b

    const/4 v0, 0x6

    if-ne p1, v0, :cond_e

    :cond_b
    const/high16 v0, 0x41a00000    # 20.0f

    goto :goto_4

    :cond_e
    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_4
.end method

.method public static mode(FFZ)I
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 632
    if-eqz p2, :cond_4

    .line 635
    :cond_3
    :goto_3
    return v0

    .line 633
    :cond_4
    const v1, 0x3e19999a    # 0.15f

    cmpl-float v1, p0, v1

    if-gez v1, :cond_3

    .line 634
    const v0, -0x41e66666    # -0.15f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_1d

    const v0, 0x3e99999a    # 0.3f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1b

    const/4 v0, -0x2

    goto :goto_3

    :cond_1b
    const/4 v0, -0x1

    goto :goto_3

    .line 635
    :cond_1d
    const/4 v0, 0x0

    goto :goto_3
.end method

.method static mults(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/mod/ModShips$Hull;Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)[F
    .registers 11

    .prologue
    .line 298
    const/16 v0, 0xa

    new-array v0, v0, [F

    .line 299
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 300
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV35;->level(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v2

    .line 301
    if-lez v2, :cond_11

    if-nez p0, :cond_12

    .line 306
    :cond_11
    :goto_11
    return-object v0

    .line 302
    :cond_12
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->cls(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v1

    .line 303
    invoke-static {p1, p2, v1}, Lfr/testudo/spacecorsair/mod/ModV35;->scores(Lfr/testudo/spacecorsair/mod/ModShips$Hull;Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;I)[F

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV35;->picks([F)[I

    move-result-object v3

    .line 304
    array-length v4, v3

    const/4 v1, 0x0

    :goto_20
    if-ge v1, v4, :cond_32

    aget v5, v3, v1

    if-ltz v5, :cond_2f

    aget v6, v0, v5

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV35;->pickMult(I)F

    move-result v7

    mul-float/2addr v6, v7

    aput v6, v0, v5

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 305
    :cond_32
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModShips;->factionKey(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV35;->trait(Ljava/lang/String;)I

    move-result v1

    aget v3, v0, v1

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV35;->traitMult(I)F

    move-result v2

    mul-float/2addr v2, v3

    aput v2, v0, v1

    goto :goto_11
.end method

.method static norm(F)F
    .registers 4

    .prologue
    const/high16 v2, 0x43b40000    # 360.0f

    .line 694
    rem-float v0, p0, v2

    .line 695
    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_b

    sub-float/2addr v0, v2

    .line 696
    :cond_b
    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_12

    add-float/2addr v0, v2

    .line 697
    :cond_12
    return v0
.end method

.method public static parts()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 151
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 152
    if-nez v1, :cond_8

    :goto_7
    return v0

    :cond_8
    const-string v2, "v35_parts"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_7
.end method

.method public static partsFor(I)I
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x6

    if-lt p0, v0, :cond_6

    add-int/lit8 v0, p0, -0x5

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static partsFromKill(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V
    .registers 5

    .prologue
    .line 279
    :try_start_0
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->isBoss(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-nez v0, :cond_c

    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->xp:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_11

    :cond_c
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lfr/testudo/spacecorsair/mod/ModV35;->addParts(ILfr/testudo/spacecorsair/business/Element;)V

    .line 284
    :cond_10
    :goto_10
    return-void

    .line 280
    :cond_11
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->elite:Z

    if-eqz v0, :cond_10

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3fc3333333333333L    # 0.15

    cmpg-double v0, v0, v2

    if-gez v0, :cond_10

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lfr/testudo/spacecorsair/mod/ModV35;->addParts(ILfr/testudo/spacecorsair/business/Element;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_26} :catch_27

    goto :goto_10

    .line 281
    :catch_27
    move-exception v0

    goto :goto_10
.end method

.method public static pickMult(I)F
    .registers 5

    .prologue
    .line 55
    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3cf5c28f    # 0.03f

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static picks([F)[I
    .registers 11

    .prologue
    const/4 v9, 0x2

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 120
    move v0, v1

    move v2, v3

    move v4, v3

    .line 121
    :goto_6
    array-length v5, p0

    if-ge v0, v5, :cond_31

    .line 122
    aget v5, p0, v0

    const v6, 0x3f800347    # 1.0001f

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_17

    move v5, v4

    .line 121
    :goto_13
    add-int/lit8 v0, v0, 0x1

    move v4, v5

    goto :goto_6

    .line 123
    :cond_17
    if-ltz v4, :cond_21

    aget v5, p0, v0

    aget v6, p0, v4

    cmpl-float v5, v5, v6

    if-lez v5, :cond_24

    :cond_21
    move v2, v4

    move v5, v0

    goto :goto_13

    .line 124
    :cond_24
    if-ltz v2, :cond_2e

    aget v5, p0, v0

    aget v6, p0, v2

    cmpl-float v5, v5, v6

    if-lez v5, :cond_64

    :cond_2e
    move v2, v0

    move v5, v4

    goto :goto_13

    :cond_31
    move v6, v1

    move v5, v2

    .line 127
    :goto_33
    if-ge v6, v9, :cond_5c

    if-ltz v4, :cond_39

    if-gez v5, :cond_5c

    .line 129
    :cond_39
    const/4 v2, 0x7

    move v0, v3

    :goto_3b
    const/16 v7, 0x9

    if-gt v2, v7, :cond_51

    if-eq v2, v4, :cond_4e

    if-eq v2, v5, :cond_4e

    if-ltz v0, :cond_4d

    aget v7, p0, v2

    aget v8, p0, v0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4e

    :cond_4d
    move v0, v2

    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 130
    :cond_51
    if-gez v4, :cond_5a

    move v2, v5

    move v4, v0

    .line 127
    :goto_55
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v5, v2

    goto :goto_33

    :cond_5a
    move v2, v0

    .line 130
    goto :goto_55

    .line 132
    :cond_5c
    new-array v0, v9, [I

    aput v4, v0, v1

    const/4 v1, 0x1

    aput v5, v0, v1

    return-object v0

    :cond_64
    move v5, v4

    goto :goto_13
.end method

.method public static playerArt(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Lfr/testudo/spacecorsair/display/Drawable;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 457
    :try_start_1
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModShips;->hullFor(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v1

    .line 458
    if-nez v1, :cond_a

    .line 464
    :cond_9
    :goto_9
    return-object v0

    .line 459
    :cond_a
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->currentShip()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV35;->level(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV35;->stage(I)I

    move-result v2

    .line 460
    if-lez v2, :cond_9

    .line 461
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_stage"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 462
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV35;->art(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModV35;->skin(Ljava/lang/String;Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/display/Drawable;
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_3c} :catch_3e

    move-result-object v0

    goto :goto_9

    .line 463
    :catch_3e
    move-exception v1

    goto :goto_9
.end method

.method static playerSide()[I
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 614
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    .line 615
    iget-object v0, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 616
    if-nez v3, :cond_24

    const/4 v0, -0x1

    .line 617
    :goto_e
    const/4 v4, 0x3

    new-array v4, v4, [I

    const/4 v5, 0x0

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    aput v2, v4, v5

    if-ltz v0, :cond_1b

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1c

    :cond_1b
    move v0, v1

    :cond_1c
    aput v0, v4, v1

    const/4 v0, 0x2

    if-nez v3, :cond_29

    :goto_21
    aput v1, v4, v0

    return-object v4

    .line 616
    :cond_24
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModShips;->cls(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    goto :goto_e

    .line 617
    :cond_29
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModShips;->tech(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_21
.end method

.method public static prices()V
    .registers 10

    .prologue
    const/4 v1, 0x1

    .line 758
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModV35;->priced:Z

    if-eqz v0, :cond_6

    .line 779
    :cond_5
    :goto_5
    return-void

    .line 759
    :cond_6
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModV35;->priced:Z

    .line 761
    :try_start_8
    const-class v0, Lfr/testudo/spacecorsair/business/economy/Price;

    const-string v1, "min"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 762
    const-class v0, Lfr/testudo/spacecorsair/business/economy/Price;

    const-string v2, "max"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 763
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 764
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 765
    invoke-static {}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->values()[Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_26
    if-ge v0, v4, :cond_5

    aget-object v5, v3, v0

    .line 766
    invoke-virtual {v5}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v6

    .line 767
    invoke-virtual {v5}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getObjectPrice()Lfr/testudo/spacecorsair/business/economy/Price;

    move-result-object v7

    .line 768
    if-eqz v6, :cond_42

    if-eqz v7, :cond_42

    iget-boolean v8, v7, Lfr/testudo/spacecorsair/business/economy/Price;->inapp:Z

    if-nez v8, :cond_42

    iget-boolean v8, v7, Lfr/testudo/spacecorsair/business/economy/Price;->fixed:Z

    if-eqz v8, :cond_42

    instance-of v8, v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-eqz v8, :cond_45

    .line 765
    :cond_42
    :goto_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 769
    :cond_45
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModWeapons;->label(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_42

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModRep;->secretIndex(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v8

    if-gez v8, :cond_42

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModDev;->isDev(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v8

    if-nez v8, :cond_42

    .line 770
    invoke-virtual {v5}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v8

    invoke-virtual {v8}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->ordinal()I

    move-result v8

    if-eqz v8, :cond_42

    iget v8, v7, Lfr/testudo/spacecorsair/business/economy/Price;->min:I

    const/16 v9, 0xa

    if-le v8, v9, :cond_42

    .line 771
    invoke-virtual {v5}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v5

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->ordinal()I

    move-result v5

    iget v6, v6, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->level:I

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v6

    invoke-static {v5, v6}, Lfr/testudo/spacecorsair/mod/ModV35;->gearPrice(II)I

    move-result v5

    .line 772
    invoke-virtual {v1, v7, v5}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 773
    invoke-virtual {v2, v7, v5}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 774
    int-to-float v5, v5

    iput v5, v7, Lfr/testudo/spacecorsair/business/economy/Price;->current:F
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_82} :catch_83

    goto :goto_42

    .line 776
    :catch_83
    move-exception v0

    goto :goto_5
.end method

.method public static regen(FZFI)F
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 379
    if-eqz p1, :cond_a

    cmpg-float v1, p0, v0

    if-gtz v1, :cond_a

    const p0, 0x3ba3d70a    # 0.005f

    .line 380
    :cond_a
    cmpg-float v1, p0, v0

    if-gtz v1, :cond_f

    .line 382
    :goto_e
    return v0

    .line 381
    :cond_f
    const/4 v0, 0x2

    if-lt p3, v0, :cond_23

    const/4 v0, 0x6

    if-gt p3, v0, :cond_23

    const v0, 0x3c23d70a    # 0.01f

    .line 382
    :goto_18
    mul-float v1, p0, p2

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_e

    .line 381
    :cond_23
    const v0, 0x3be56042    # 0.007f

    goto :goto_18
.end method

.method public static repair(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)F
    .registers 5

    .prologue
    const/4 v3, 0x6

    .line 364
    if-nez p0, :cond_28

    const/4 v0, 0x0

    .line 366
    :goto_4
    :try_start_4
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 367
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->currentShip()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v2

    if-nez v1, :cond_2b

    const/4 v1, 0x0

    :goto_f
    invoke-static {v2, p0, v1}, Lfr/testudo/spacecorsair/mod/ModV35;->mults(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/mod/ModShips$Hull;Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)[F

    move-result-object v1

    const/4 v2, 0x6

    aget v2, v1, v2

    .line 368
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->factionKey(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV35;->trait(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_2e

    const/4 v1, 0x1

    :goto_21
    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    invoke-static {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModV35;->regen(FZFI)F
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_26} :catch_30

    move-result v0

    .line 370
    :goto_27
    return v0

    .line 364
    :cond_28
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->hullRegen:F

    goto :goto_4

    .line 367
    :cond_2b
    :try_start_2b
    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2d} :catch_30

    goto :goto_f

    .line 368
    :cond_2e
    const/4 v1, 0x0

    goto :goto_21

    .line 369
    :catch_30
    move-exception v1

    goto :goto_27
.end method

.method public static rivalCores(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 256
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 257
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCounterData;->WHEEL:[[Ljava/lang/String;

    array-length v4, v3

    move v0, v1

    :goto_a
    if-ge v0, v4, :cond_1f

    aget-object v5, v3, v0

    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    aget-object v5, v5, v1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 258
    :cond_1f
    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static score(IIIIIIIFF)F
    .registers 14

    .prologue
    .line 578
    const v0, 0x3e99999a    # 0.3f

    sub-int v1, p0, p1

    int-to-float v1, v1

    const/high16 v2, 0x40a00000    # 5.0f

    div-float/2addr v1, v2

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModV35;->clamp(FFF)F

    move-result v1

    mul-float/2addr v0, v1

    .line 579
    const v1, 0x3e19999a    # 0.15f

    sub-int v2, p2, p3

    int-to-float v2, v2

    const/high16 v3, -0x40000000    # -2.0f

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v4}, Lfr/testudo/spacecorsair/mod/ModV35;->clamp(FFF)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 580
    const v1, 0x3dcccccd    # 0.1f

    sub-int v2, p4, p5

    int-to-float v2, v2

    const/high16 v3, -0x40000000    # -2.0f

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v4}, Lfr/testudo/spacecorsair/mod/ModV35;->clamp(FFF)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 581
    const v1, 0x3e99999a    # 0.3f

    int-to-float v2, p6

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 582
    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p7, v2, v3}, Lfr/testudo/spacecorsair/mod/ModV35;->clamp(FFF)F

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p8, v3, v4}, Lfr/testudo/spacecorsair/mod/ModV35;->clamp(FFF)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 583
    return v0
.end method

.method static score(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;Lfr/testudo/spacecorsair/business/player/PlayerShip;Z)F
    .registers 14

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    .line 622
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->playerSide()[I

    move-result-object v5

    .line 623
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->factionOf(Lfr/testudo/spacecorsair/business/Element;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModV34;->factionOf(Lfr/testudo/spacecorsair/business/Element;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModV35;->wheel(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 624
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4c

    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    div-float/2addr v0, v2

    move v7, v0

    :goto_21
    iget v0, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4e

    iget v0, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    iget v1, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    div-float v1, v0, v1

    move v8, v1

    .line 625
    :goto_2e
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getLevel()I

    move-result v0

    const/4 v1, 0x0

    aget v1, v5, v1

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV35;->enemyClass(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)I

    move-result v2

    const/4 v3, 0x1

    aget v3, v5, v3

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->tier(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v4

    const/4 v10, 0x2

    aget v5, v5, v10

    if-eqz p2, :cond_50

    :goto_45
    if-eqz p2, :cond_52

    :goto_47
    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModV35;->score(IIIIIIIFF)F

    move-result v0

    return v0

    :cond_4c
    move v7, v1

    .line 624
    goto :goto_21

    :cond_4e
    move v8, v1

    goto :goto_2e

    :cond_50
    move v7, v9

    .line 625
    goto :goto_45

    :cond_52
    move v8, v9

    goto :goto_47
.end method

.method static scores(Lfr/testudo/spacecorsair/mod/ModShips$Hull;Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;I)[F
    .registers 12

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 79
    const/16 v0, 0xa

    new-array v3, v0, [F

    .line 80
    if-eqz p0, :cond_54

    .line 81
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dmg:F

    aput v0, v3, v6

    .line 82
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->reload:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_89

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->reload:F

    div-float v0, v1, v0

    :goto_1a
    aput v0, v3, v7

    .line 83
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldCap:F

    aput v0, v3, v8

    .line 84
    const/4 v4, 0x3

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldRegen:F

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldDelay:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_8b

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldDelay:F

    div-float v0, v1, v0

    :goto_2d
    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, v3, v4

    .line 85
    const/4 v4, 0x4

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->missileReload:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_8d

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->missileReload:F

    div-float v0, v1, v0

    :goto_3e
    aput v0, v3, v4

    .line 86
    const/4 v0, 0x5

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cargo:F

    aput v4, v3, v0

    .line 87
    const/4 v4, 0x6

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->hullRegen:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_8f

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->hullRegen:F

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float/2addr v0, v5

    add-float/2addr v0, v1

    :goto_52
    aput v0, v3, v4

    .line 89
    :cond_54
    if-eqz p1, :cond_88

    .line 90
    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModV35;->classAverage(I)[F

    move-result-object v4

    .line 91
    const/4 v5, 0x7

    aget v0, v4, v6

    cmpl-float v0, v0, v2

    if-lez v0, :cond_91

    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lifeBooster:F

    aget v6, v4, v6

    div-float/2addr v0, v6

    :goto_66
    aput v0, v3, v5

    .line 92
    const/16 v5, 0x8

    aget v0, v4, v7

    cmpl-float v0, v0, v2

    if-lez v0, :cond_93

    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxSpeedInformational:I

    int-to-float v0, v0

    aget v6, v4, v7

    div-float/2addr v0, v6

    :goto_76
    aput v0, v3, v5

    .line 93
    const/16 v0, 0x9

    aget v5, v4, v8

    cmpl-float v2, v5, v2

    if-lez v2, :cond_86

    iget v1, p1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->agilityInformational:I

    int-to-float v1, v1

    aget v2, v4, v8

    div-float/2addr v1, v2

    :cond_86
    aput v1, v3, v0

    .line 95
    :cond_88
    return-object v3

    :cond_89
    move v0, v1

    .line 82
    goto :goto_1a

    :cond_8b
    move v0, v1

    .line 84
    goto :goto_2d

    :cond_8d
    move v0, v1

    .line 85
    goto :goto_3e

    :cond_8f
    move v0, v2

    .line 87
    goto :goto_52

    :cond_91
    move v0, v1

    .line 91
    goto :goto_66

    :cond_93
    move v0, v1

    .line 92
    goto :goto_76
.end method

.method public static skin(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/display/Drawable;)Lfr/testudo/spacecorsair/display/Drawable;
    .registers 8

    .prologue
    const/4 v5, 0x5

    const/4 v1, 0x1

    .line 498
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModV35;->drawing:Lfr/testudo/spacecorsair/business/Element;

    .line 500
    if-eqz p1, :cond_14

    :try_start_6
    iget-object v0, p1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v0, :cond_14

    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_14

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 520
    :cond_14
    :goto_14
    return-object p1

    .line 501
    :cond_15
    iget-object v0, p1, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->artOf(Lfr/testudo/spacecorsair/display/Texture;)Ljava/lang/String;

    move-result-object v3

    .line 502
    if-eqz v3, :cond_14

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModArt;->listed()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 503
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV35;->RESOLVED:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 504
    if-nez v0, :cond_99

    .line 506
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    move v2, v1

    .line 507
    :goto_31
    if-gt v2, v5, :cond_94

    .line 508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enemy_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_stage"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 509
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV35;->art(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_stage"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 510
    :cond_6d
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV35;->art(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_86

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enemy_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 511
    :cond_86
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV35;->art(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_92

    :goto_8c
    aput-object v1, v0, v2

    .line 507
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_31

    .line 511
    :cond_92
    const/4 v1, 0x0

    goto :goto_8c

    .line 513
    :cond_94
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModV35;->RESOLVED:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    :cond_99
    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV35;->enemyStage(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    aget-object v0, v0, v1

    .line 516
    if-eqz v0, :cond_14

    .line 517
    iget-object v1, p1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModV35;->skin(Ljava/lang/String;Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/display/Drawable;
    :try_end_b0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b0} :catch_b6

    move-result-object v0

    .line 518
    if-eqz v0, :cond_14

    move-object p1, v0

    goto/16 :goto_14

    .line 519
    :catch_b6
    move-exception v0

    goto/16 :goto_14
.end method

.method static skin(Ljava/lang/String;Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/display/Drawable;
    .registers 8

    .prologue
    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 444
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV35;->SKINS:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/display/Drawable;

    .line 445
    if-nez v0, :cond_38

    .line 446
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModArt;->lazyTex(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    .line 447
    if-nez v2, :cond_39

    const/4 v0, 0x0

    .line 451
    :cond_38
    :goto_38
    return-object v0

    .line 448
    :cond_39
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModArt$Art;

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v5, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-direct {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    const/4 v4, 0x0

    invoke-direct {v0, v3, v2, v4}, Lfr/testudo/spacecorsair/mod/ModArt$Art;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;Z)V

    .line 449
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModV35;->SKINS:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38
.end method

.method public static stage(I)I
    .registers 3

    .prologue
    .line 50
    if-gtz p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x5

    add-int/lit8 v1, p0, 0x1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_3
.end method

.method public static stageOfTier(IZ)I
    .registers 3

    .prologue
    .line 472
    packed-switch p0, :pswitch_data_10

    .line 476
    const/4 v0, 0x5

    :goto_4
    return v0

    .line 473
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 474
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 475
    :pswitch_9
    if-eqz p1, :cond_d

    const/4 v0, 0x4

    goto :goto_4

    :cond_d
    const/4 v0, 0x3

    goto :goto_4

    .line 472
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method static standing(Lfr/testudo/spacecorsair/business/Element;)I
    .registers 7

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 553
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_13

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    :goto_f
    move v2, v0

    .line 567
    :cond_10
    :goto_10
    return v2

    :cond_11
    move v0, v2

    .line 553
    goto :goto_f

    .line 554
    :cond_13
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v0, :cond_33

    .line 555
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v0

    .line 556
    if-eqz v0, :cond_33

    .line 557
    check-cast p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLive;->titanHostile(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 558
    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModRep;->rank(Ljava/lang/String;)I

    move-result v0

    if-lt v0, v5, :cond_31

    :goto_2f
    move v2, v1

    goto :goto_10

    :cond_31
    move v1, v3

    goto :goto_2f

    .line 561
    :cond_33
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_56

    move-object v0, p0

    .line 562
    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    .line 563
    if-eqz v0, :cond_42

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v0, :cond_10

    .line 564
    :cond_42
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModSector;->factionOf(Lfr/testudo/spacecorsair/business/Element;)Ljava/lang/String;

    move-result-object v0

    .line 565
    if-eqz v0, :cond_56

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_56

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModRep;->rank(Ljava/lang/String;)I

    move-result v0

    if-lt v0, v5, :cond_56

    move v2, v1

    goto :goto_10

    :cond_56
    move v2, v3

    .line 567
    goto :goto_10
.end method

.method private static still(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)Z
    .registers 3

    .prologue
    .line 647
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    if-nez v0, :cond_13

    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;

    if-nez v0, :cond_13

    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;

    if-nez v0, :cond_13

    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxTurnFactor:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_15

    :cond_13
    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static summary()[Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v0, 0x0

    const/16 v10, 0xa

    const/4 v1, 0x0

    .line 387
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->currentShip()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v3

    .line 388
    if-nez v3, :cond_b

    .line 396
    :goto_a
    return-object v0

    .line 389
    :cond_b
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModShips;->hull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v4

    .line 390
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 391
    if-nez v2, :cond_56

    :goto_15
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModShips;->cls(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v2

    invoke-static {v4, v0, v2}, Lfr/testudo/spacecorsair/mod/ModV35;->scores(Lfr/testudo/spacecorsair/mod/ModShips$Hull;Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;I)[F

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->picks([F)[I

    move-result-object v2

    .line 392
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModV35;->level(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v5

    .line 393
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 394
    array-length v7, v2

    move v0, v1

    :goto_2c
    if-ge v0, v7, :cond_59

    aget v8, v2, v0

    if-ltz v8, :cond_53

    sget-object v9, Lfr/testudo/spacecorsair/mod/ModV35;->STAT_EN:[Ljava/lang/String;

    aget-object v8, v9, v8

    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " +"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/high16 v9, 0x40400000    # 3.0f

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 391
    :cond_56
    iget-object v0, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    goto :goto_15

    .line 395
    :cond_59
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV35;->STAT_EN:[Ljava/lang/String;

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModShips;->factionKey(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV35;->trait(Ljava/lang/String;)I

    move-result v2

    aget-object v0, v0, v2

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " +"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "% "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "(faction)"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v0, 0x1

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModV35;->stage(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v0

    const/4 v7, 0x2

    if-lt v5, v10, :cond_e1

    const-string v0, ""

    :goto_a6
    aput-object v0, v2, v7

    const/4 v3, 0x3

    .line 397
    if-lt v5, v10, :cond_f0

    move v0, v1

    :goto_ac
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x4

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->parts()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x5

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x6

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModV35;->coreKey(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV35;->coreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x7

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModV35;->coreKey(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV35;->cores(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    move-object v0, v2

    .line 396
    goto/16 :goto_a

    :cond_e1
    add-int/lit8 v0, v5, 0x1

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModV35;->hullPrice(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v3

    invoke-static {v0, v3}, Lfr/testudo/spacecorsair/mod/ModV35;->cost(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a6

    .line 397
    :cond_f0
    add-int/lit8 v0, v5, 0x1

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->partsFor(I)I

    move-result v0

    goto :goto_ac
.end method

.method public static tag(Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 538
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModV35;->drawing:Lfr/testudo/spacecorsair/business/Element;

    .line 539
    if-eqz p0, :cond_b

    if-eqz v1, :cond_b

    iget-object v2, v1, Lfr/testudo/spacecorsair/business/Element;->specificName:Ljava/lang/String;

    if-eq p0, v2, :cond_c

    .line 547
    :cond_b
    :goto_b
    return v0

    .line 541
    :cond_c
    :try_start_c
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV35;->standing(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v1

    .line 542
    if-gez v1, :cond_21

    const/high16 v1, 0x3f800000    # 1.0f

    sput v1, Lfr/testudo/spacecorsair/mod/ModV35;->tagR:F

    const v1, 0x3ea3d70a    # 0.32f

    sput v1, Lfr/testudo/spacecorsair/mod/ModV35;->tagG:F

    const/high16 v1, 0x3e800000    # 0.25f

    sput v1, Lfr/testudo/spacecorsair/mod/ModV35;->tagB:F

    .line 545
    :goto_1f
    const/4 v0, 0x1

    goto :goto_b

    .line 543
    :cond_21
    if-lez v1, :cond_34

    const v1, 0x3eb33333    # 0.35f

    sput v1, Lfr/testudo/spacecorsair/mod/ModV35;->tagR:F

    const v1, 0x3f266666    # 0.65f

    sput v1, Lfr/testudo/spacecorsair/mod/ModV35;->tagG:F

    const/high16 v1, 0x3f800000    # 1.0f

    sput v1, Lfr/testudo/spacecorsair/mod/ModV35;->tagB:F

    goto :goto_1f

    .line 546
    :catch_32
    move-exception v1

    goto :goto_b

    .line 544
    :cond_34
    const/high16 v1, 0x3f800000    # 1.0f

    sput v1, Lfr/testudo/spacecorsair/mod/ModV35;->tagR:F

    const/high16 v1, 0x3f800000    # 1.0f

    sput v1, Lfr/testudo/spacecorsair/mod/ModV35;->tagG:F

    const/high16 v1, 0x3f800000    # 1.0f

    sput v1, Lfr/testudo/spacecorsair/mod/ModV35;->tagB:F
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_40} :catch_32

    goto :goto_1f
.end method

.method public static trait(Ljava/lang/String;)I
    .registers 3

    .prologue
    const/4 v0, 0x7

    .line 64
    const-string v1, "spartan"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x2

    .line 71
    :cond_a
    :goto_a
    return v0

    .line 65
    :cond_b
    const-string v1, "reaver"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v0, 0x0

    goto :goto_a

    .line 66
    :cond_15
    const-string v1, "kretari"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v0, 0x6

    goto :goto_a

    .line 67
    :cond_1f
    const-string v1, "warden"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    const/4 v0, 0x1

    goto :goto_a

    .line 68
    :cond_29
    const-string v1, "varn"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    const/4 v0, 0x5

    goto :goto_a

    .line 69
    :cond_33
    const-string v1, "ironclad"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 70
    const-string v1, "helion"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v0, 0x8

    goto :goto_a
.end method

.method public static traitMult(I)F
    .registers 5

    .prologue
    .line 59
    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3ca3d70a    # 0.02f

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static ttkFactor(I)F
    .registers 2

    .prologue
    .line 640
    if-lez p0, :cond_5

    const/high16 v0, 0x40200000    # 2.5f

    :goto_4
    return v0

    :cond_5
    if-gez p0, :cond_a

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_4

    :cond_a
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_4
.end method

.method static wheel(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 592
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 595
    :cond_13
    :goto_13
    return v0

    .line 593
    :cond_14
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModCounterData;->beats(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v0, 0x1

    goto :goto_13

    .line 594
    :cond_1c
    invoke-static {p1, p0}, Lfr/testudo/spacecorsair/mod/ModCounterData;->beats(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v0, -0x1

    goto :goto_13
.end method
