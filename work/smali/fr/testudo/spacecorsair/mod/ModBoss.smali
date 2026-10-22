.class public Lfr/testudo/spacecorsair/mod/ModBoss;
.super Lfr/testudo/spacecorsair/business/mission/MissionListener;
.source "ModBoss.java"


# static fields
.field static final CLOUD_R:F = 950.0f

.field private static final DESC:[Ljava/lang/String;

.field private static final DONE:Ljava/lang/String;

.field public static final EMPRESS:I = 0x2

.field public static final GUARDIAN:I = 0x1

.field static final ID:[Ljava/lang/String;

.field private static final INTRO:[[Ljava/lang/String;

.field public static final MATRIARCH:I = 0x0

.field private static final MISSION_NAMES:[Ljava/lang/String;

.field private static final NAMES:[Ljava/lang/String;

.field private static final REWARD:[[Ljava/lang/String;

.field public static final TEXT_BASE:I = 0x7f7f0000

.field private static distKind:I

.field private static distM:I

.field private static distText:Ljava/lang/String;

.field static final illusions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/business/ennemis/Ennemis;",
            ">;"
        }
    .end annotation
.end field

.field private static final pos:Lfr/testudo/spacecorsair/engine/Vector2;


# instance fields
.field private baseReload:J

.field private boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

.field private final brood:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/business/ennemis/Ennemis;",
            ">;"
        }
    .end annotation
.end field

.field private canonReload:[I

.field private canons:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

.field private final cloud:Lfr/testudo/spacecorsair/engine/Vector2;

.field private cloudMs:I

.field private completed:Z

.field private enraged:Z

.field private final hub:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field private inHub:Z

.field private inZone:Z

.field private instr:Ljava/lang/String;

.field private instrDist:I

.field private instrInv:Z

.field private instrPct:I

.field private introDone:Z

.field private invulnTimer:I

.field private final kind:I

.field private final level:I

.field private overdriveMs:I

.field private shield33:Z

.field private shield66:Z

.field private skillMs:I

.field private final spawn:Lfr/testudo/spacecorsair/engine/Vector2;

.field private final station:Ljava/lang/String;

.field private timerA:I

.field private timerB:I

.field private timerC:I

.field private final tmp:Lfr/testudo/spacecorsair/engine/Vector2;

.field private final well:Lfr/testudo/spacecorsair/engine/Vector2;

.field private final zone:Lfr/testudo/spacecorsair/game/levels/LevelId;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "Banshee Matriarch"

    aput-object v1, v0, v3

    const-string v1, "Guardian Prime"

    aput-object v1, v0, v4

    const-string v1, "Hive Empress"

    aput-object v1, v0, v5

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModBoss;->NAMES:[Ljava/lang/String;

    .line 36
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "The Matriarch"

    aput-object v1, v0, v3

    const-string v1, "Rogue Cruiser"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "Queen of the Hive"

    aput-object v1, v0, v5

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModBoss;->MISSION_NAMES:[Ljava/lang/String;

    .line 37
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "Long-range scanners picked up an enormous Banshee UFO hunting convoys in the <b>Hermes</b> sector. Pilots call her the Matriarch.<br><br><b>Known behaviour</b>: she blinks next to her prey every few seconds, and below a third of her hull she calls Arwing escorts, burns twice as hard and blinks more often.<br><br><b>Reward</b>: Banshee Beam Lev. 5 and Arwing Plasma Bolt Lev. 5."

    .line 38
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "A Guardian-class cruiser has stopped answering SPARTAN command codes and is shelling traffic in the <b>Solar Field</b>. SPARTAN wants it gone before the press hears about it.<br><br><b>Known behaviour</b>: repulsion shockwaves that also burn your hull if you get within 450, heavy missile salvos, and at two thirds and one third of its hull it raises an invulnerable SPARTAN shield for 6 seconds and launches two Defensor escorts.<br><br><b>Reward</b>: Megatron Heavy Battery Lev. 10 and Megatron Salvo Missile Lev. 10."

    .line 42
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "The alien hive has crowned an Empress. Her command ship sits deep in <b>The Hive</b>, spawning broods without end.<br><br><b>Known behaviour</b>: everything a Regent does, plus volleys of three rooting shots every 8 seconds, a venom aura that burns anything within 500, and once she drops under 30% she regenerates 20% of her hull and releases two Banshees.<br><br><b>Reward</b>: Regent Venom Beam Lev. 15 and Regent Hive Bay Lev. 15."

    .line 47
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModBoss;->DESC:[Ljava/lang/String;

    .line 52
    const-string v0, "Target destroyed. The reward has been transferred to your hold."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModBoss;->DONE:Ljava/lang/String;

    .line 55
    new-array v0, v6, [[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "Long-range scanners picked up an enormous Banshee UFO hunting convoys in the <b>Hermes</b> sector. Pilots call her the Matriarch."

    aput-object v2, v1, v3

    const-string v2, "Los esc\u00e1neres de largo alcance detectaron un enorme OVNI Banshee cazando convoyes en el sector <b>Hermes</b>. Los pilotos la llaman la Matriarca."

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "A Guardian-class cruiser has stopped answering SPARTAN command codes and is shelling traffic in the <b>Solar Field</b>. Between volleys it still raises its invulnerable SPARTAN shield and calls Defensor escorts."

    aput-object v2, v1, v3

    const-string v2, "Un crucero clase Guardian dej\u00f3 de responder a los c\u00f3digos de mando SPARTAN y bombardea el tr\u00e1fico en <b>Solar Field</b>. Entre andanadas a\u00fan levanta su escudo SPARTAN invulnerable y llama escoltas Defensor."

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "The alien hive has crowned an Empress. Her command ship sits deep in <b>The Hive</b>, spawning broods without end. Her venom aura burns anything that gets close."

    aput-object v2, v1, v3

    const-string v2, "La colmena alien\u00edgena coron\u00f3 a una Emperatriz. Su nave de mando est\u00e1 en lo profundo de <b>The Hive</b>, generando cr\u00edas sin fin. Su aura de veneno quema todo lo que se acerca."

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModBoss;->INTRO:[[Ljava/lang/String;

    .line 62
    new-array v0, v6, [[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "Banshee Beam Lev. 5 and Arwing Plasma Bolt Lev. 5"

    aput-object v2, v1, v3

    const-string v2, "Rayo Banshee Niv. 5 y Proyectil de plasma Arwing Niv. 5"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "Megatron Heavy Battery Lev. 10 and Megatron Salvo Missile Lev. 10"

    aput-object v2, v1, v3

    const-string v2, "Bater\u00eda pesada Megatron Niv. 10 y Misil salva Megatron Niv. 10"

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "Regent Venom Beam Lev. 15 and Regent Hive Bay Lev. 15"

    aput-object v2, v1, v3

    const-string v2, "Rayo de veneno Regent Niv. 15 y Bah\u00eda colmena Regent Niv. 15"

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModBoss;->REWARD:[[Ljava/lang/String;

    .line 140
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModBoss;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 142
    sput v7, Lfr/testudo/spacecorsair/mod/ModBoss;->distKind:I

    sput v7, Lfr/testudo/spacecorsair/mod/ModBoss;->distM:I

    .line 237
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "matriarch"

    aput-object v1, v0, v3

    const-string v1, "guardian"

    aput-object v1, v0, v4

    const-string v1, "empress"

    aput-object v1, v0, v5

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModBoss;->ID:[Ljava/lang/String;

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModBoss;->illusions:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(IILfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 223
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;-><init>()V

    .line 181
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x45abe000    # 5500.0f

    const v2, 0x44bb8000    # 1500.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->spawn:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 182
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->tmp:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 220
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->well:Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->cloud:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->brood:Ljava/util/ArrayList;

    .line 224
    iput p1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    .line 225
    iput p2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->level:I

    .line 226
    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 227
    iput-object p4, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->hub:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 228
    iput-object p5, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->station:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public static addMissions(Ljava/lang/String;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/mission/Mission;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    if-nez p1, :cond_3

    .line 122
    :cond_2
    :goto_2
    return-void

    .line 107
    :cond_3
    :try_start_3
    const-string v0, "VENTOHIGH"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 108
    const-string v0, "VENTOHIGH_MOD_BOSS_MATRIARCH"

    const/4 v1, 0x0

    const/4 v2, 0x7

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->HERMES:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/LevelId;->VENTOHIGH:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v5, "ventohigh Command Center"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "alienBeamLaserL5"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "arwingBoltLaserL5"

    aput-object v8, v6, v7

    const/16 v7, 0xbb8

    const/16 v8, 0x61a8

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModBoss;->make(Ljava/lang/String;IILfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;[Ljava/lang/String;II)Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 119
    :catch_2e
    move-exception v0

    goto :goto_2

    .line 111
    :cond_30
    const-string v0, "SPARTAN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 112
    const-string v0, "SPARTAN_MOD_BOSS_GUARDIAN"

    const/4 v1, 0x1

    const/16 v2, 0xa

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->SOLAR_FIELD:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/LevelId;->SPARTAN_HQ:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v5, "spartan headquarters"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "megatronBatteryL10"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "megatronSalvoL10"

    aput-object v8, v6, v7

    const/16 v7, 0x1770

    const v8, 0xea60

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModBoss;->make(Ljava/lang/String;IILfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;[Ljava/lang/String;II)Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 114
    :cond_5d
    const-string v0, "OMICRON"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    const-string v0, "OMICRON_MOD_BOSS_EMPRESS"

    const/4 v1, 0x2

    const/16 v2, 0xe

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->THE_HIVE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/LevelId;->OMICRON_PRIME:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v5, "omicron spaceport"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "regentBeamLaserL15"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "regentHiveBayL15"

    aput-object v8, v6, v7

    const/16 v7, 0x2ee0

    const v8, 0x249f0

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModBoss;->make(Ljava/lang/String;IILfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;[Ljava/lang/String;II)Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_89} :catch_2e

    goto/16 :goto_2
.end method

.method private static beamOf(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;
    .registers 3

    .prologue
    .line 603
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "fakeProjectile"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 604
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 605
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 607
    :goto_14
    return-object v0

    .line 606
    :catch_15
    move-exception v0

    .line 607
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private bossPhysic(J)V
    .registers 16

    .prologue
    .line 387
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 388
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v0, :cond_14

    if-eqz v3, :cond_14

    iget-boolean v0, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-eqz v0, :cond_15

    .line 557
    :cond_14
    :goto_14
    return-void

    .line 389
    :cond_15
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->heavy()V

    .line 390
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v4

    .line 391
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v1, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    div-float v5, v0, v1

    .line 392
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->introDone:Z

    if-nez v0, :cond_74

    const v0, 0x451c4000    # 2500.0f

    cmpg-float v0, v4, v0

    if-gez v0, :cond_74

    .line 393
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->introDone:Z

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModBoss;->displayName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->spanish()Z

    move-result v0

    if-eqz v0, :cond_11d

    const-string v0, " EN COMBATE"

    :goto_55
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x3f59999a    # 0.85f

    const v2, 0x3ee66666    # 0.45f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v3, v0, v1, v2, v6}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 395
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playDanger()V

    .line 396
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-virtual {v0, v3}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initAttackTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 398
    :cond_74
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->introDone:Z

    if-eqz v0, :cond_14

    .line 399
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerA:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerA:I

    .line 400
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerB:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerB:I

    .line 401
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerC:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerC:I

    .line 403
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    if-nez v0, :cond_24e

    .line 405
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->enraged:Z

    if-nez v0, :cond_121

    const v0, 0x3eb33333    # 0.35f

    cmpg-float v0, v5, v0

    if-gez v0, :cond_121

    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->enraged:Z

    .line 407
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->callout()V

    .line 408
    const/4 v0, 0x0

    :goto_a3
    const/4 v1, 0x2

    if-ge v0, v1, :cond_121

    .line 409
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v1, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->level:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newUfo(I)Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;

    move-result-object v1

    .line 410
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    .line 411
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v5, v5, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    const-wide v10, 0x4080400000000000L    # 520.0

    mul-double/2addr v8, v10

    double-to-float v5, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide v8, 0x4080400000000000L    # 520.0

    mul-double/2addr v6, v8

    double-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 412
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 413
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 414
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 415
    const/4 v2, 0x0

    iput v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    .line 416
    const/4 v2, 0x0

    iput v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->xp:I

    .line 417
    const/4 v2, 0x0

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 418
    const-string v2, ""

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->levelStr:Ljava/lang/String;

    .line 419
    invoke-virtual {v1, v3}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initAttackTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 420
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    .line 421
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModBoss;->beamOf(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    move-result-object v2

    .line 422
    if-eqz v2, :cond_105

    const/4 v5, 0x0

    iput v5, v2, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->damage:F

    .line 423
    :cond_105
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModBoss;->illusions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    iget-object v1, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const v2, 0x3f333333    # 0.7f

    const v5, 0x3e4ccccd    # 0.2f

    const v6, 0x3f666666    # 0.9f

    const/high16 v7, 0x43c80000    # 400.0f

    invoke-static {v1, v2, v5, v6, v7}, Lfr/testudo/spacecorsair/mod/ModBoss;->wave(Lfr/testudo/spacecorsair/engine/Vector2;FFFF)V

    .line 408
    add-int/lit8 v0, v0, 0x1

    goto :goto_a3

    .line 394
    :cond_11d
    const-string v0, " ENGAGED"

    goto/16 :goto_55

    .line 428
    :cond_121
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerA:I

    if-gtz v0, :cond_19d

    const v0, 0x453b8000    # 3000.0f

    cmpg-float v0, v4, v0

    if-gez v0, :cond_19d

    .line 429
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x3f333333    # 0.7f

    const v2, 0x3e4ccccd    # 0.2f

    const v5, 0x3f666666    # 0.9f

    const/high16 v6, 0x43c80000    # 400.0f

    invoke-static {v0, v1, v2, v5, v6}, Lfr/testudo/spacecorsair/mod/ModBoss;->wave(Lfr/testudo/spacecorsair/engine/Vector2;FFFF)V

    .line 430
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v6

    .line 431
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v5, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    const-wide v8, 0x4080400000000000L    # 520.0

    mul-double/2addr v6, v8

    double-to-float v5, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide v6, 0x4080400000000000L    # 520.0

    mul-double/2addr v0, v6

    double-to-float v0, v0

    invoke-virtual {v2, v5, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 432
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 433
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 434
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x3f333333    # 0.7f

    const v2, 0x3e4ccccd    # 0.2f

    const v5, 0x3f666666    # 0.9f

    const/high16 v6, 0x43c80000    # 400.0f

    invoke-static {v0, v1, v2, v5, v6}, Lfr/testudo/spacecorsair/mod/ModBoss;->wave(Lfr/testudo/spacecorsair/engine/Vector2;FFFF)V

    .line 435
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playGateZap()V

    .line 436
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->enraged:Z

    if-eqz v0, :cond_24a

    const/16 v0, 0x1388

    :goto_19b
    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerA:I

    .line 439
    :cond_19d
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerC:I

    if-gtz v0, :cond_1e0

    const v0, 0x45228000    # 2600.0f

    cmpg-float v0, v4, v0

    if-gez v0, :cond_1e0

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->skillMs:I

    if-gtz v0, :cond_1e0

    .line 440
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->well:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->divide(F)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 441
    const/16 v0, 0xfa0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->skillMs:I

    .line 442
    const/16 v0, 0x2af8

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerC:I

    .line 443
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModBoss;->data(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3f400000    # 0.75f

    const v2, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v0, v1, v2, v4}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 445
    :cond_1e0
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->skillMs:I

    if-lez v0, :cond_22a

    .line 446
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->skillMs:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->skillMs:I

    .line 447
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->well:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v1, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->well:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v2, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v1, v2

    .line 448
    const/high16 v2, 0x42700000    # 60.0f

    mul-float v4, v0, v0

    mul-float v5, v1, v1

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 449
    const v4, 0x3b9374bc    # 0.0045f

    long-to-float v5, p1

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x442f0000    # 700.0f

    div-float/2addr v6, v2

    const v7, 0x3eb33333    # 0.35f

    add-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    mul-float/2addr v4, v5

    .line 450
    iget-object v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    div-float/2addr v0, v2

    mul-float/2addr v0, v4

    div-float/2addr v1, v2

    mul-float/2addr v1, v4

    invoke-virtual {v3, v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 452
    :cond_22a
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModBoss;->illusions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_233
    if-ltz v1, :cond_14

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModBoss;->illusions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-eqz v0, :cond_246

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModBoss;->illusions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_246
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_233

    .line 436
    :cond_24a
    const/16 v0, 0x1d4c

    goto/16 :goto_19b

    .line 453
    :cond_24e
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_399

    .line 455
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->invulnTimer:I

    if-lez v0, :cond_34c

    .line 456
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->invulnTimer:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->invulnTimer:I

    .line 457
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerB:I

    if-gtz v0, :cond_277

    .line 458
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3f19999a    # 0.6f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x43fa0000    # 500.0f

    invoke-static {v0, v1, v2, v6, v7}, Lfr/testudo/spacecorsair/mod/ModBoss;->wave(Lfr/testudo/spacecorsair/engine/Vector2;FFFF)V

    .line 459
    const/16 v0, 0x1f4

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerB:I

    .line 461
    :cond_277
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->invulnTimer:I

    if-gtz v0, :cond_293

    .line 462
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->invincible:Z

    .line 463
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    const-string v1, "SHIELD DOWN"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x3ecccccd    # 0.4f

    const v6, 0x3f4ccccd    # 0.8f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v6, v7}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 474
    :cond_293
    :goto_293
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerA:I

    if-gtz v0, :cond_2cb

    .line 475
    const/high16 v0, 0x43e10000    # 450.0f

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    cmpg-float v0, v4, v0

    if-gez v0, :cond_2c7

    .line 476
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    const/16 v1, 0x12c

    const/16 v2, 0x3e8

    const/16 v6, 0x320

    invoke-static {v0, v1, v2, v6}, Lfr/testudo/spacecorsair/business/Util;->applyShockWaveOnPlayer(Lfr/testudo/spacecorsair/business/Element;III)V

    .line 477
    iget v0, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    const v1, 0x3d23d70a    # 0.04f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    const/4 v2, 0x0

    invoke-virtual {v3, v0, v1, v2}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 478
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playShockWave()V

    .line 480
    :cond_2c7
    const/16 v0, 0x5dc

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerA:I

    .line 483
    :cond_2cb
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerC:I

    if-gtz v0, :cond_2e6

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->skillMs:I

    if-gtz v0, :cond_2e6

    const v0, 0x45098000    # 2200.0f

    cmpg-float v0, v4, v0

    if-gez v0, :cond_2e6

    .line 484
    const/16 v0, 0x5dc

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->skillMs:I

    .line 485
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->overdriveMs:I

    if-lez v0, :cond_395

    const/16 v0, 0x1388

    :goto_2e4
    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerC:I

    .line 487
    :cond_2e6
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->skillMs:I

    if-lez v0, :cond_303

    .line 488
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->skillMs:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->skillMs:I

    .line 489
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->skillMs:I

    if-gtz v0, :cond_303

    const/4 v0, 0x7

    const/high16 v1, 0x40e00000    # 7.0f

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v2, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    const v4, 0x3fcccccd    # 1.6f

    mul-float/2addr v2, v4

    invoke-direct {p0, v3, v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModBoss;->volley(Lfr/testudo/spacecorsair/business/player/PlayerShip;IFF)V

    .line 492
    :cond_303
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->enraged:Z

    if-nez v0, :cond_330

    const v0, 0x3e99999a    # 0.3f

    cmpg-float v0, v5, v0

    if-gez v0, :cond_330

    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->enraged:Z

    .line 494
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->callout()V

    .line 495
    const/16 v0, 0x2710

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->overdriveMs:I

    .line 496
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    const-wide/16 v2, 0x3c

    iget-wide v4, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->baseReload:J

    long-to-float v1, v4

    const v4, 0x3eb33333    # 0.35f

    mul-float/2addr v1, v4

    float-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->milleSecBetweenShots:J

    .line 497
    const v0, 0x3eb33333    # 0.35f

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/mod/ModBoss;->canonRate(F)V

    .line 499
    :cond_330
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->overdriveMs:I

    if-lez v0, :cond_14

    .line 500
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->overdriveMs:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->overdriveMs:I

    .line 501
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->overdriveMs:I

    if-gtz v0, :cond_14

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->baseReload:J

    iput-wide v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->milleSecBetweenShots:J

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/mod/ModBoss;->canonRate(F)V

    goto/16 :goto_14

    .line 465
    :cond_34c
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->shield66:Z

    if-nez v0, :cond_357

    const v0, 0x3f28f5c3    # 0.66f

    cmpg-float v0, v5, v0

    if-ltz v0, :cond_362

    :cond_357
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->shield33:Z

    if-nez v0, :cond_293

    const v0, 0x3ea8f5c3    # 0.33f

    cmpg-float v0, v5, v0

    if-gez v0, :cond_293

    .line 466
    :cond_362
    const v0, 0x3ea8f5c3    # 0.33f

    cmpg-float v0, v5, v0

    if-gez v0, :cond_36c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->shield33:Z

    .line 467
    :cond_36c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->shield66:Z

    .line 468
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->invincible:Z

    .line 469
    const/16 v0, 0x1770

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->invulnTimer:I

    .line 470
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerB:I

    .line 471
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModBoss;->escort(II)V

    .line 472
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    const-string v1, "SPARTAN SHIELD UP"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x3ecccccd    # 0.4f

    const v6, 0x3f4ccccd    # 0.8f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v6, v7}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    goto/16 :goto_293

    .line 485
    :cond_395
    const/16 v0, 0x2328

    goto/16 :goto_2e4

    .line 505
    :cond_399
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerC:I

    if-gtz v0, :cond_3bd

    .line 506
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/mod/ModBoss;->escortBrood(I)V

    .line 507
    const/16 v0, 0x36b0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerC:I

    .line 508
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModBoss;->data(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-static {v0, v1, v2, v6, v7}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 510
    :cond_3bd
    const/4 v1, 0x0

    .line 511
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->brood:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_3c7
    if-ltz v2, :cond_3e2

    .line 512
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->brood:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-eqz v0, :cond_3df

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->brood:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    .line 511
    :goto_3db
    add-int/lit8 v2, v2, -0x1

    move v1, v0

    goto :goto_3c7

    .line 513
    :cond_3df
    add-int/lit8 v0, v1, 0x1

    goto :goto_3db

    .line 515
    :cond_3e2
    if-lez v1, :cond_422

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v2, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_422

    .line 516
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v2, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iget-object v6, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v6, v6, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v7, v7, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    const v8, 0x3ac49ba6    # 0.0015f

    mul-float/2addr v7, v8

    int-to-float v1, v1

    mul-float/2addr v1, v7

    long-to-float v7, p1

    mul-float/2addr v1, v7

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v1, v7

    add-float/2addr v1, v6

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setNewLife(F)V

    .line 517
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    if-eqz v0, :cond_422

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v1, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeInPourc:F

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 519
    :cond_422
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerA:I

    if-gtz v0, :cond_4b1

    const v0, 0x45098000    # 2200.0f

    cmpg-float v0, v4, v0

    if-gez v0, :cond_4b1

    .line 520
    const/4 v0, -0x1

    :goto_42e
    const/4 v1, 0x1

    if-gt v0, v1, :cond_4a6

    .line 521
    new-instance v1, Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;)V

    iget-object v2, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v6

    const/high16 v6, 0x41200000    # 10.0f

    div-float/2addr v2, v6

    iget-object v6, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v7

    const/high16 v7, 0x41200000    # 10.0f

    div-float/2addr v6, v7

    invoke-virtual {v1, v2, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    .line 522
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    const-wide v8, 0x4056800000000000L    # 90.0

    sub-double/2addr v6, v8

    mul-int/lit8 v1, v0, 0xf

    int-to-double v8, v1

    add-double/2addr v6, v8

    .line 523
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newElectricBullet()Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v2, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v2, v8

    const/16 v8, 0x8

    iget-object v9, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecsBuilder;->root100_4sec:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-virtual {v1, v2, v8, v9, v10}, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->init(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    move-result-object v1

    .line 524
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v8, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v8, v8, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v8}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 525
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v8, 0x0

    const/high16 v9, -0x3ed00000    # -11.0f

    invoke-virtual {v2, v8, v9}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 526
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 527
    double-to-float v2, v6

    iput v2, v1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->spin:F

    .line 528
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    add-int/lit8 v0, v0, 0x1

    goto :goto_42e

    .line 530
    :cond_4a6
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playAlienRatLaser()V

    .line 531
    const/16 v0, 0x1f40

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerA:I

    .line 533
    :cond_4b1
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerB:I

    if-gtz v0, :cond_4ec

    .line 534
    const/high16 v0, 0x43fa0000    # 500.0f

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    cmpg-float v0, v4, v0

    if-gez v0, :cond_4d7

    .line 535
    iget v0, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    const v1, 0x3cf5c28f    # 0.03f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    const/4 v2, 0x0

    invoke-virtual {v3, v0, v1, v2}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 536
    const/4 v0, 0x3

    invoke-static {v3, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addGreen(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 538
    :cond_4d7
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x3e99999a    # 0.3f

    const/high16 v2, 0x3f800000    # 1.0f

    const v4, 0x3e99999a    # 0.3f

    const/high16 v6, 0x44480000    # 800.0f

    invoke-static {v0, v1, v2, v4, v6}, Lfr/testudo/spacecorsair/mod/ModBoss;->wave(Lfr/testudo/spacecorsair/engine/Vector2;FFFF)V

    .line 539
    const/16 v0, 0x7d0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerB:I

    .line 542
    :cond_4ec
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->enraged:Z

    if-nez v0, :cond_50a

    const v0, 0x3e99999a    # 0.3f

    cmpg-float v0, v5, v0

    if-gez v0, :cond_50a

    .line 543
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->enraged:Z

    .line 544
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->callout()V

    .line 545
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->cloud:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 546
    const/16 v0, 0x36b0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->cloudMs:I

    .line 548
    :cond_50a
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->cloudMs:I

    if-lez v0, :cond_14

    .line 549
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->cloudMs:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->cloudMs:I

    .line 550
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->cloud:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->cloud:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v1, v2

    const v2, 0x3b03126f    # 0.002f

    mul-float/2addr v1, v2

    long-to-float v2, p1

    mul-float/2addr v1, v2

    const/high16 v2, 0x41800000    # 16.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->cloud:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, v4

    const v4, 0x3b03126f    # 0.002f

    mul-float/2addr v2, v4

    long-to-float v4, p1

    mul-float/2addr v2, v4

    const/high16 v4, 0x41800000    # 16.0f

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 551
    iget-object v0, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->cloud:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const v1, 0x446d8000    # 950.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_14

    iget-object v0, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    if-eqz v0, :cond_14

    iget-object v0, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_14

    .line 552
    iget-object v0, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    const/4 v1, 0x0

    iget-object v2, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    iget-object v4, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v4, v4, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    const v5, 0x3d8f5c29    # 0.07f

    mul-float/2addr v4, v5

    long-to-float v5, p1

    mul-float/2addr v4, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    sub-float/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    .line 553
    iget-object v0, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget-object v1, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v3, v3, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    div-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/player/Shield;->valueInPourc:F

    goto/16 :goto_14
.end method

.method private static briefing(I)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 72
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->spanish()Z

    move-result v3

    .line 73
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->data(I)[Ljava/lang/String;

    move-result-object v4

    .line 74
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModBoss;->INTRO:[[Ljava/lang/String;

    aget-object v6, v0, p0

    if-eqz v3, :cond_41

    move v0, v1

    :goto_13
    aget-object v0, v6, v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    if-eqz v3, :cond_43

    const-string v0, "<br><br><b>Habilidades</b>:"

    :goto_1c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const/4 v0, 0x4

    :goto_20
    add-int/lit8 v6, v0, 0x1

    array-length v7, v4

    if-ge v6, v7, :cond_46

    const-string v6, "<br>- <b>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</b>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v0, 0x1

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x2

    goto :goto_20

    :cond_41
    move v0, v2

    .line 74
    goto :goto_13

    .line 75
    :cond_43
    const-string v0, "<br><br><b>Skills</b>:"

    goto :goto_1c

    .line 77
    :cond_46
    if-eqz v3, :cond_8b

    const-string v0, "<br>- <b>Furia (una vez)</b>: "

    :goto_4a
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v6, v4, v1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ". "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v6, 0x2

    aget-object v6, v4, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v6, 0x3

    aget-object v4, v4, v6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    if-eqz v3, :cond_8e

    const-string v0, "<br><br><b>Recompensa</b>: "

    :goto_71
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModBoss;->REWARD:[[Ljava/lang/String;

    aget-object v4, v4, p0

    if-eqz v3, :cond_91

    :goto_7b
    aget-object v1, v4, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 77
    :cond_8b
    const-string v0, "<br>- <b>Enrage (once)</b>: "

    goto :goto_4a

    .line 78
    :cond_8e
    const-string v0, "<br><br><b>Reward</b>: "

    goto :goto_71

    :cond_91
    move v1, v2

    goto :goto_7b
.end method

.method private callout()V
    .registers 10

    .prologue
    const v8, 0x3f59999a    # 0.85f

    const v7, 0x3f0ccccd    # 0.55f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 360
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModBoss;->data(I)[Ljava/lang/String;

    move-result-object v0

    .line 361
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 362
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const v4, 0x3eb33333    # 0.35f

    const v5, 0x3f666666    # 0.9f

    invoke-static {v2, v3, v6, v4, v5}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 363
    if-eqz v1, :cond_32

    .line 364
    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-static {v1, v2, v8, v7, v6}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 365
    const/4 v2, 0x3

    aget-object v0, v0, v2

    invoke-static {v1, v0, v8, v7, v6}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 367
    :cond_32
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playDanger()V

    .line 368
    return-void
.end method

.method private canonRate(F)V
    .registers 6

    .prologue
    .line 205
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->canons:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    if-nez v0, :cond_5

    .line 207
    :cond_4
    return-void

    .line 206
    :cond_5
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->canons:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->canons:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    aget-object v1, v1, v0

    const/16 v2, 0x50

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->canonReload:[I

    aget v3, v3, v0

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->timeBewteenShootInMilli:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method static damageIn(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)F
    .registers 3

    .prologue
    .line 268
    return p1
.end method

.method static data(I)[Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->spanish()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV30Data;->BOSS_ES:[[Ljava/lang/String;

    aget-object v0, v0, p0

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV30Data;->BOSS_EN:[[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_a
.end method

.method static displayName(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 263
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->data(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static draw(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 19

    .prologue
    .line 146
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-nez v2, :cond_7

    .line 172
    :cond_6
    :goto_6
    return-void

    .line 147
    :cond_7
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v11, v2, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    .line 148
    instance-of v2, v11, Lfr/testudo/spacecorsair/mod/ModBoss;

    if-eqz v2, :cond_6

    .line 149
    :try_start_11
    move-object v0, v11

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModBoss;

    move-object v2, v0

    invoke-direct {v2}, Lfr/testudo/spacecorsair/mod/ModBoss;->drawSkills()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_18} :catch_14a

    :goto_18
    move-object v2, v11

    .line 150
    check-cast v2, Lfr/testudo/spacecorsair/mod/ModBoss;

    iget-object v12, v2, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 151
    if-eqz v12, :cond_6

    iget-boolean v2, v12, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v2, :cond_6

    .line 152
    invoke-static {v12}, Lfr/testudo/spacecorsair/engine/GameThread;->isElementVisible(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 153
    sget-object v2, Lfr/testudo/spacecorsair/display/Fleche;->MAIN_TEXTURE:Lfr/testudo/spacecorsair/display/Texture;

    .line 154
    if-eqz v2, :cond_6

    .line 155
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    .line 156
    const/high16 v4, 0x43020000    # 130.0f

    const v5, 0x3da3d70a    # 0.08f

    mul-float/2addr v5, v3

    add-float v13, v4, v5

    .line 157
    invoke-static {v2, v13}, Lfr/testudo/spacecorsair/mod/ModFx;->arrow(Lfr/testudo/spacecorsair/display/Texture;F)Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v5

    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, v12, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v2, v6

    const/high16 v4, 0x43b40000    # 360.0f

    rem-float/2addr v2, v4

    const/high16 v4, 0x42b40000    # 90.0f

    add-float/2addr v2, v4

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/Element;->normalizeSpin(F)F

    move-result v6

    .line 159
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-eqz v2, :cond_146

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v2, v2, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSizeOfShield:I

    :goto_6a
    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    const/high16 v4, 0x42b40000    # 90.0f

    add-float/2addr v2, v4

    const v4, 0x3df5c28f    # 0.12f

    mul-float/2addr v3, v4

    add-float v14, v2, v3

    .line 160
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModBoss;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x0

    neg-float v4, v14

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 161
    const v2, 0x3f19999a    # 0.6f

    const v3, 0x3ecccccd    # 0.4f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    long-to-double v8, v8

    const-wide v16, 0x406f400000000000L    # 250.0

    div-double v8, v8, v16

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    double-to-float v4, v8

    mul-float/2addr v3, v4

    add-float v7, v2, v3

    .line 162
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModBoss;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v4, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3e19999a    # 0.15f

    const v10, 0x3e19999a    # 0.15f

    invoke-virtual/range {v2 .. v10}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 163
    check-cast v11, Lfr/testudo/spacecorsair/mod/ModBoss;

    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    iget-object v3, v12, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v3

    float-to-int v3, v3

    .line 164
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModBoss;->distText:Ljava/lang/String;

    if-eqz v4, :cond_da

    sget v4, Lfr/testudo/spacecorsair/mod/ModBoss;->distKind:I

    if-ne v2, v4, :cond_da

    sget v4, Lfr/testudo/spacecorsair/mod/ModBoss;->distM:I

    if-eq v3, v4, :cond_101

    .line 165
    :cond_da
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModBoss;->NAMES:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "m"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lfr/testudo/spacecorsair/mod/ModBoss;->distText:Ljava/lang/String;

    .line 166
    sput v2, Lfr/testudo/spacecorsair/mod/ModBoss;->distKind:I

    .line 167
    sput v3, Lfr/testudo/spacecorsair/mod/ModBoss;->distM:I

    .line 169
    :cond_101
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModBoss;->distText:Ljava/lang/String;

    .line 170
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModBoss;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x0

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v4, v13

    add-float/2addr v4, v14

    neg-float v4, v4

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    const/high16 v4, 0x40e00000    # 7.0f

    mul-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 171
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModBoss;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v4, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3e99999a    # 0.3f

    const v8, 0x3e99999a    # 0.3f

    const/high16 v9, 0x3f800000    # 1.0f

    sget-object v10, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v2 .. v10}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    goto/16 :goto_6

    .line 159
    :cond_146
    const/16 v2, 0xc8

    goto/16 :goto_6a

    .line 149
    :catch_14a
    move-exception v2

    goto/16 :goto_18
.end method

.method private drawSkills()V
    .registers 16

    .prologue
    .line 576
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-eqz v0, :cond_b

    .line 599
    :cond_a
    :goto_a
    return-void

    .line 577
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 578
    const/high16 v0, 0x43480000    # 200.0f

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 579
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b2

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->skillMs:I

    if-lez v0, :cond_b2

    .line 581
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->skillMs:I

    int-to-float v1, v1

    const v2, 0x44bb8000    # 1500.0f

    div-float/2addr v1, v2

    sub-float v12, v0, v1

    .line 582
    const-string v0, "fx_glow"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v3, 0x3f99999a    # 1.2f

    add-float/2addr v3, v12

    mul-float/2addr v3, v14

    const v4, 0x3f99999a    # 1.2f

    add-float/2addr v4, v12

    mul-float/2addr v4, v14

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f0ccccd    # 0.55f

    const v8, 0x3e4ccccd    # 0.2f

    const/high16 v9, 0x3e800000    # 0.25f

    const v10, 0x3f19999a    # 0.6f

    mul-float/2addr v10, v12

    add-float/2addr v9, v10

    const/4 v10, 0x1

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 583
    const/4 v0, 0x0

    move v11, v0

    :goto_5f
    const/4 v0, 0x3

    if-ge v11, v0, :cond_a

    .line 584
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->tmp:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    add-int/lit8 v2, v11, -0x1

    int-to-float v2, v2

    mul-float/2addr v2, v14

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v1, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->spin:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 585
    const-string v0, "fx_core"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->tmp:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->tmp:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x42f00000    # 120.0f

    mul-float/2addr v4, v12

    add-float/2addr v3, v4

    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v5, 0x42f00000    # 120.0f

    mul-float/2addr v5, v12

    add-float/2addr v4, v5

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f333333    # 0.7f

    const v8, 0x3e99999a    # 0.3f

    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v10, v12

    add-float/2addr v9, v10

    const/4 v10, 0x1

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 583
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_5f

    .line 587
    :cond_b2
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    if-nez v0, :cond_114

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->skillMs:I

    if-lez v0, :cond_114

    .line 588
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->skillMs:I

    int-to-float v1, v1

    const/high16 v2, 0x44160000    # 600.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 589
    const-string v0, "vfx_doomsday_charge"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->well:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->well:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x44610000    # 900.0f

    const/high16 v4, 0x44610000    # 900.0f

    long-to-float v5, v12

    const/high16 v6, 0x41000000    # 8.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x43b40000    # 360.0f

    rem-float/2addr v5, v6

    const v6, 0x3f333333    # 0.7f

    const v7, 0x3eb33333    # 0.35f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f400000    # 0.75f

    mul-float/2addr v9, v11

    const/4 v10, 0x1

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 590
    const-string v0, "fx_shock"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->well:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->well:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v3, 0x44a28000    # 1300.0f

    const v4, 0x44a28000    # 1300.0f

    long-to-float v5, v12

    const/high16 v6, 0x41400000    # 12.0f

    div-float/2addr v5, v6

    neg-float v5, v5

    const/high16 v6, 0x43b40000    # 360.0f

    rem-float/2addr v5, v6

    const v6, 0x3f19999a    # 0.6f

    const v7, 0x3e99999a    # 0.3f

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3eb33333    # 0.35f

    mul-float/2addr v9, v11

    const/4 v10, 0x1

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    goto/16 :goto_a

    .line 591
    :cond_114
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->cloudMs:I

    if-lez v0, :cond_a

    .line 592
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->cloudMs:I

    int-to-float v1, v1

    const v2, 0x44bb8000    # 1500.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 593
    const-string v0, "fx_glow"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->cloud:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->cloud:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v3, 0x4502a000    # 2090.0f

    const v4, 0x4502a000    # 2090.0f

    const/4 v5, 0x0

    const v6, 0x3eb33333    # 0.35f

    const v7, 0x3f666666    # 0.9f

    const v8, 0x3eb33333    # 0.35f

    const v10, 0x3e99999a    # 0.3f

    mul-float/2addr v9, v10

    const/4 v10, 0x1

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 594
    const-wide/16 v0, 0x104

    div-long v0, v12, v0

    const-wide/16 v2, 0x2

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-gez v0, :cond_a

    .line 595
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x408db00000000000L    # 950.0

    mul-double v4, v0, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v6, v0, v2

    .line 596
    const-string v0, "fx_spore_sheet"

    const/4 v1, 0x4

    const/16 v2, 0x10

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->cloud:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v4

    double-to-float v8, v8

    add-float/2addr v3, v8

    iget-object v8, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->cloud:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    add-float/2addr v4, v8

    const/high16 v5, 0x43960000    # 300.0f

    const-wide/16 v6, 0x578

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3ee66666    # 0.45f

    const/4 v11, 0x1

    invoke-static/range {v0 .. v11}, Lfr/testudo/spacecorsair/mod/ModLive;->fx(Ljava/lang/String;IIFFFJFFFZ)V

    goto/16 :goto_a
.end method

.method private static engine()Lfr/testudo/spacecorsair/mod/ModBoss;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 242
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-nez v0, :cond_8

    .line 244
    :goto_7
    return-object v1

    .line 243
    :cond_8
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    .line 244
    instance-of v2, v0, Lfr/testudo/spacecorsair/mod/ModBoss;

    if-eqz v2, :cond_16

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModBoss;

    :goto_14
    move-object v1, v0

    goto :goto_7

    :cond_16
    move-object v0, v1

    goto :goto_14
.end method

.method static enragedOf(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 2

    .prologue
    .line 258
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModBoss;->engine()Lfr/testudo/spacecorsair/mod/ModBoss;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_12

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/mod/ModBoss;->enraged:Z

    if-eqz v0, :cond_12

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->kindOf(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v0

    if-ltz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private escort(II)V
    .registers 15

    .prologue
    const-wide/high16 v10, 0x4079000000000000L    # 400.0

    const-wide/high16 v8, 0x4069000000000000L    # 200.0

    .line 344
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 345
    const/4 v0, 0x0

    move v1, v0

    :goto_a
    if-ge v1, p2, :cond_54

    .line 347
    if-nez p1, :cond_43

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->level:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlienRat(I)Lfr/testudo/spacecorsair/business/ennemis/AlienRat;

    move-result-object v0

    .line 350
    :goto_14
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->tmp:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v4, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v10

    sub-double/2addr v4, v8

    double-to-float v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v10

    sub-double/2addr v6, v8

    double-to-float v5, v6

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 351
    iget-object v3, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->tmp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 352
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 353
    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initAttackTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 354
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    .line 345
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 348
    :cond_43
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4d

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->level:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newDefensor(I)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v0

    goto :goto_14

    .line 349
    :cond_4d
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->level:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newUfo(I)Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;

    move-result-object v0

    goto :goto_14

    .line 356
    :cond_54
    return-void
.end method

.method private escortBrood(I)V
    .registers 14

    .prologue
    const-wide v10, 0x407f400000000000L    # 500.0

    const-wide v8, 0x406f400000000000L    # 250.0

    .line 562
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 563
    const/4 v0, 0x0

    :goto_f
    if-ge v0, p1, :cond_4a

    .line 564
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->level:I

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlienRat(I)Lfr/testudo/spacecorsair/business/ennemis/AlienRat;

    move-result-object v2

    .line 565
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->tmp:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v4, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v10

    sub-double/2addr v4, v8

    double-to-float v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v10

    sub-double/2addr v6, v8

    double-to-float v5, v6

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 566
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->tmp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 567
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 568
    invoke-virtual {v2, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initAttackTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 569
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    .line 570
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->brood:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 572
    :cond_4a
    return-void
.end method

.method private heavy()V
    .registers 6

    .prologue
    const/16 v4, 0x3e8

    const/16 v3, 0x1f4

    const/high16 v2, 0x3f400000    # 0.75f

    const v1, 0x3f333333    # 0.7f

    .line 211
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->alterationSnareValue:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1f

    .line 212
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->alterationSnareValue:F

    .line 213
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->alterationSnareDuree:I

    if-ge v0, v3, :cond_1f

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iput v4, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->alterationSnareDuree:I

    .line 215
    :cond_1f
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->alterationAgilityValue:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_35

    .line 216
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->alterationAgilityValue:F

    .line 217
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->alterationAgilityDuree:I

    if-ge v0, v3, :cond_35

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iput v4, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->alterationAgilityDuree:I

    .line 219
    :cond_35
    return-void
.end method

.method private instruction()Ljava/lang/String;
    .registers 10

    .prologue
    const/16 v8, 0xa

    const/4 v2, 0x0

    .line 696
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->completed:Z

    if-eqz v0, :cond_4b

    .line 697
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->inHub:Z

    if-eqz v0, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dock at "

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->station:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to claim your reward"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 726
    :goto_2e
    return-object v0

    .line 697
    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Return to "

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->hub:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    .line 699
    :cond_4b
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->inZone:Z

    if-nez v0, :cond_7b

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Go to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and hunt the "

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModBoss;->NAMES:[Ljava/lang/String;

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    .line 702
    :cond_7b
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 703
    if-eqz v1, :cond_83

    iget-boolean v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-eqz v0, :cond_a1

    .line 704
    :cond_83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Destroy the "

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModBoss;->NAMES:[Ljava/lang/String;

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    .line 706
    :cond_a1
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 707
    const/high16 v0, 0x42c80000    # 100.0f

    iget v4, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    mul-float/2addr v0, v4

    iget v4, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    div-float/2addr v0, v4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 708
    if-eqz v3, :cond_d3

    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v5, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    float-to-int v0, v0

    .line 709
    :goto_be
    iget-boolean v5, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->invincible:Z

    .line 711
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->instr:Ljava/lang/String;

    .line 712
    if-eqz v1, :cond_d6

    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->instrPct:I

    if-ne v4, v6, :cond_d6

    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->instrDist:I

    if-ne v0, v6, :cond_d6

    iget-boolean v6, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->instrInv:Z

    if-ne v5, v6, :cond_d6

    move-object v0, v1

    goto/16 :goto_2e

    .line 708
    :cond_d3
    const/high16 v0, -0x80000000

    goto :goto_be

    .line 713
    :cond_d6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 714
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModBoss;->NAMES:[Ljava/lang/String;

    iget v7, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    aget-object v1, v1, v7

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "  HP "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "%  "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    div-int/lit8 v1, v4, 0xa

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 716
    :goto_102
    if-ge v2, v8, :cond_112

    if-ge v2, v7, :cond_10f

    const/16 v1, 0x7c

    :goto_108
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_102

    :cond_10f
    const/16 v1, 0x2e

    goto :goto_108

    .line 717
    :cond_112
    if-eqz v3, :cond_123

    .line 718
    const-string v1, "  "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    :cond_123
    if-eqz v5, :cond_12a

    const-string v1, "  [SHIELDED]"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    :cond_12a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 722
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->instrPct:I

    .line 723
    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->instrDist:I

    .line 724
    iput-boolean v5, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->instrInv:Z

    .line 725
    iput-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->instr:Ljava/lang/String;

    move-object v0, v1

    .line 726
    goto/16 :goto_2e
.end method

.method public static isBoss(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 232
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-nez v0, :cond_8

    .line 234
    :goto_7
    return v1

    .line 233
    :cond_8
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    .line 234
    instance-of v2, v0, Lfr/testudo/spacecorsair/mod/ModBoss;

    if-eqz v2, :cond_1d

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModBoss;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-ne v0, p0, :cond_1d

    if-eqz p0, :cond_1d

    const/4 v0, 0x1

    :goto_1b
    move v1, v0

    goto :goto_7

    :cond_1d
    move v0, v1

    goto :goto_1b
.end method

.method static kindOf(Lfr/testudo/spacecorsair/business/Element;)I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 249
    if-nez p0, :cond_5

    move v0, v1

    .line 254
    :goto_4
    return v0

    .line 250
    :cond_5
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModBoss;->engine()Lfr/testudo/spacecorsair/mod/ModBoss;

    move-result-object v2

    .line 251
    if-nez v2, :cond_d

    move v0, v1

    goto :goto_4

    .line 252
    :cond_d
    iget-object v0, v2, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-ne v0, p0, :cond_14

    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    goto :goto_4

    .line 253
    :cond_14
    const/4 v0, 0x0

    :goto_15
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModBoss;->illusions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2b

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModBoss;->illusions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_28

    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    goto :goto_4

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_2b
    move v0, v1

    .line 254
    goto :goto_4
.end method

.method private static make(Ljava/lang/String;IILfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;[Ljava/lang/String;II)Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 22

    .prologue
    .line 125
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 126
    move-object/from16 v0, p6

    array-length v3, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v3, :cond_1b

    aget-object v4, p6, v2

    .line 127
    invoke-static {v4}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v4

    invoke-static {v4}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 129
    :cond_1b
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModBoss;

    move v3, p1

    move v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lfr/testudo/spacecorsair/mod/ModBoss;-><init>(IILfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;)V

    .line 130
    new-instance v3, Lfr/testudo/spacecorsair/business/mission/Mission;

    const v5, 0x7f070136

    const/high16 v4, 0x7f7f0000

    add-int v6, v4, p1

    const v4, 0x7f7f000a

    add-int v7, v4, p1

    const/4 v8, 0x0

    .line 131
    move/from16 v0, p7

    move/from16 v1, p8

    invoke-static {v9, v0, v1}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withObject(Ljava/util/List;II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v11

    const/4 v12, 0x0

    move-object v4, p0

    move v9, p2

    move-object v10, v2

    invoke-direct/range {v3 .. v12}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 132
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModBoss;->MISSION_NAMES:[Ljava/lang/String;

    aget-object v2, v2, p1

    iput-object v2, v3, Lfr/testudo/spacecorsair/business/mission/Mission;->localizedName:Ljava/lang/String;

    .line 133
    return-object v3
.end method

.method private markGates(Z)V
    .registers 4

    .prologue
    .line 613
    :try_start_0
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->completed:Z

    if-nez v0, :cond_21

    .line 614
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->inZone:Z

    if-nez v0, :cond_20

    .line 615
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 616
    if-eqz v0, :cond_20

    .line 617
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 618
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 638
    :cond_20
    :goto_20
    return-void

    .line 622
    :cond_21
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->inHub:Z

    if-eqz v0, :cond_39

    .line 623
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->station:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 624
    if-eqz v0, :cond_39

    .line 625
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->isMissionObjective:Z

    .line 626
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 629
    :cond_39
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->hub:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 630
    if-eqz v0, :cond_20

    .line 631
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 632
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_51} :catch_52

    goto :goto_20

    .line 635
    :catch_52
    move-exception v0

    goto :goto_20
.end method

.method private onBossDead()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 641
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->completed:Z

    if-eqz v0, :cond_6

    .line 649
    :goto_5
    return-void

    .line 642
    :cond_6
    iput-boolean v7, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->completed:Z

    .line 643
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModBoss;->illusions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v2, :cond_e

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const v3, 0x3f333333    # 0.7f

    const v4, 0x3e4ccccd    # 0.2f

    const v5, 0x3f666666    # 0.9f

    const/high16 v6, 0x43960000    # 300.0f

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/mod/ModBoss;->wave(Lfr/testudo/spacecorsair/engine/Vector2;FFFF)V

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->remove()V

    goto :goto_e

    .line 644
    :cond_32
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModBoss;->illusions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 645
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 646
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702c1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModBoss;->NAMES:[Ljava/lang/String;

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " destroyed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLoot;->bossBonus(I)V

    .line 648
    invoke-direct {p0, v7}, Lfr/testudo/spacecorsair/mod/ModBoss;->markGates(Z)V

    goto :goto_5
.end method

.method private spawnBoss()V
    .registers 12

    .prologue
    const/high16 v10, 0x42c80000    # 100.0f

    const v9, 0x3fcccccd    # 1.6f

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 272
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->level:I

    add-int/lit8 v1, v1, 0x2

    .line 275
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    if-nez v2, :cond_b4

    .line 276
    invoke-static {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newUfo(I)Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;

    move-result-object v1

    .line 277
    const v0, 0x3fd55555

    .line 285
    :goto_18
    invoke-virtual {v1, v8}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite(Z)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 286
    iput-boolean v4, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->elite:Z

    .line 287
    const/4 v2, 0x0

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    .line 288
    const-string v2, ""

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->levelStr:Ljava/lang/String;

    .line 289
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV34;->boss(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V

    .line 290
    iget v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    mul-float/2addr v0, v2

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 291
    iget v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 292
    iput v10, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeInPourc:F

    .line 294
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_c4

    const/high16 v0, 0x3f000000    # 0.5f

    move v2, v0

    .line 295
    :goto_3a
    iget v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    mul-float/2addr v0, v2

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    .line 296
    iget-wide v6, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->milleSecBetweenShots:J

    long-to-float v0, v6

    mul-float/2addr v0, v9

    float-to-long v6, v0

    iput-wide v6, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->milleSecBetweenShots:J

    .line 297
    iget v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->pouseeForce:F

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v0, v3

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->pouseeForce:F

    .line 298
    iget v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxTurnFactor:F

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v0, v3

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxTurnFactor:F

    .line 300
    instance-of v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    if-eqz v0, :cond_ca

    const/4 v0, 0x3

    new-array v3, v0, [Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    move-object v0, v1

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    aput-object v0, v3, v4

    move-object v0, v1

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    aput-object v0, v3, v8

    const/4 v5, 0x2

    move-object v0, v1

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    aput-object v0, v3, v5

    move-object v0, v3

    .line 302
    :goto_73
    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->canons:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    .line 303
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->canons:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    if-eqz v0, :cond_cc

    .line 304
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->canons:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->canonReload:[I

    move v0, v4

    .line 305
    :goto_81
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->canons:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    array-length v3, v3

    if-ge v0, v3, :cond_cc

    .line 306
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->canons:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    aget-object v3, v3, v0

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->canons:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    aget-object v5, v5, v0

    iget v5, v5, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->shootDamage:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->shootDamage:I

    .line 307
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->canons:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    aget-object v3, v3, v0

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->canons:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    aget-object v5, v5, v0

    iget v5, v5, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->timeBewteenShootInMilli:I

    int-to-float v5, v5

    mul-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->timeBewteenShootInMilli:I

    .line 308
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->canonReload:[I

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->canons:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    aget-object v5, v5, v0

    iget v5, v5, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->timeBewteenShootInMilli:I

    aput v5, v3, v0

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_81

    .line 278
    :cond_b4
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    if-ne v2, v8, :cond_be

    .line 279
    invoke-static {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlbatros(I)Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    move-result-object v1

    goto/16 :goto_18

    .line 282
    :cond_be
    invoke-static {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlienBlatte(I)Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;

    move-result-object v1

    goto/16 :goto_18

    .line 294
    :cond_c4
    const v0, 0x3f8ccccd    # 1.1f

    move v2, v0

    goto/16 :goto_3a

    .line 302
    :cond_ca
    const/4 v0, 0x0

    goto :goto_73

    .line 311
    :cond_cc
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModBoss;->beamOf(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    move-result-object v0

    .line 312
    if-eqz v0, :cond_d7

    iget v3, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->damage:F

    mul-float/2addr v2, v3

    iput v2, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->damage:F

    .line 313
    :cond_d7
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModBoss;->illusions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 314
    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    if-eqz v0, :cond_e5

    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v0, v10}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 315
    :cond_e5
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->spawn:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    .line 316
    iput-boolean v8, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->isMissionObjective:Z

    .line 317
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 318
    const v0, 0x469c4000    # 20000.0f

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->desengagementDistance:F

    .line 319
    iget v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->radarPointSize:F

    const/high16 v2, 0x40800000    # 4.0f

    add-float/2addr v0, v2

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->radarPointSize:F

    .line 320
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    iput-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 322
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->enraged:Z

    .line 323
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->shield66:Z

    .line 324
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->shield33:Z

    .line 325
    const/16 v0, 0xfa0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerA:I

    .line 326
    const/16 v0, 0x1770

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerB:I

    .line 327
    const/16 v0, 0x2328

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerC:I

    .line 328
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->invulnTimer:I

    .line 329
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->skillMs:I

    .line 330
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->overdriveMs:I

    .line 331
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->cloudMs:I

    .line 332
    iget-wide v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->milleSecBetweenShots:J

    iput-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->baseReload:J

    .line 333
    return-void
.end method

.method public static text(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 83
    const/high16 v0, 0x7f7f0000

    sub-int v0, p0, v0

    .line 84
    if-ltz v0, :cond_e

    const/4 v1, 0x3

    if-ge v0, v1, :cond_e

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModBoss;->briefing(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    :cond_d
    :goto_d
    return-object v0

    .line 85
    :cond_e
    const/16 v1, 0xa

    if-lt v0, v1, :cond_40

    const/16 v1, 0xd

    if-ge v0, v1, :cond_40

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModBoss;->NAMES:[Ljava/lang/String;

    add-int/lit8 v0, v0, -0xa

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</b> destroyed.<br><br>"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModBoss;->DONE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 86
    :cond_40
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->text(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    if-nez v0, :cond_d

    .line 91
    :try_start_46
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    .line 92
    if-eqz v0, :cond_50

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    if-nez v0, :cond_89

    .line 93
    :cond_50
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->appString(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    const-string v1, "corsair_titans"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "ModText"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "early lookup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_82} :catch_83

    goto :goto_d

    .line 97
    :catch_83
    move-exception v0

    .line 98
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->appString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 100
    :cond_89
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 3

    .prologue
    .line 138
    return-void
.end method

.method private volley(Lfr/testudo/spacecorsair/business/player/PlayerShip;IFF)V
    .registers 15

    .prologue
    const/high16 v4, 0x447a0000    # 1000.0f

    const/high16 v3, 0x41200000    # 10.0f

    .line 372
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;)V

    iget-object v1, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float/2addr v1, v4

    div-float/2addr v1, v3

    iget-object v2, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float/2addr v2, v4

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    .line 373
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L    # 90.0

    sub-double v2, v0, v2

    .line 374
    const/4 v0, 0x0

    :goto_2f
    if-ge v0, p2, :cond_75

    .line 375
    int-to-double v4, v0

    add-int/lit8 v1, p2, -0x1

    int-to-double v6, v1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    sub-double/2addr v4, v6

    float-to-double v6, p3

    mul-double/2addr v4, v6

    add-double/2addr v4, v2

    .line 376
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newElectricBullet()Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;

    move-result-object v1

    const/16 v6, 0x9

    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    sget-object v8, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->DEFAULT:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-virtual {v1, p4, v6, v7, v8}, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->init(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    move-result-object v1

    .line 377
    iget-object v6, v1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v7, v7, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 378
    iget-object v6, v1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v7, 0x0

    const/high16 v8, -0x3ee00000    # -10.0f

    invoke-virtual {v6, v7, v8}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 379
    iget-object v6, v1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 380
    double-to-float v4, v4

    iput v4, v1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->spin:F

    .line 381
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v4, v4, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v4, v4, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 383
    :cond_75
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playShockWave()V

    .line 384
    return-void
.end method

.method private static wave(Lfr/testudo/spacecorsair/engine/Vector2;FFFF)V
    .registers 8

    .prologue
    .line 336
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newShockWave()Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v0

    const/high16 v1, 0x42480000    # 50.0f

    const/high16 v2, 0x44160000    # 600.0f

    invoke-virtual {v0, p0, v1, p4, v2}, Lfr/testudo/spacecorsair/display/ShockWave;->init(Lfr/testudo/spacecorsair/engine/Vector2;FFF)Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v0

    .line 337
    iput p1, v0, Lfr/testudo/spacecorsair/display/ShockWave;->r:F

    .line 338
    iput p2, v0, Lfr/testudo/spacecorsair/display/ShockWave;->g:F

    .line 339
    iput p3, v0, Lfr/testudo/spacecorsair/display/ShockWave;->b:F

    .line 340
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    return-void
.end method


# virtual methods
.method public getCurrentInstruction()Ljava/lang/String;
    .registers 2

    .prologue
    .line 687
    :try_start_0
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->instruction()Ljava/lang/String;

    move-result-object v0

    .line 688
    if-eqz v0, :cond_7

    .line 691
    :cond_6
    :goto_6
    return-object v0

    .line 688
    :cond_7
    const-string v0, ""
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_6

    .line 689
    :catch_a
    move-exception v0

    .line 690
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->instr:Ljava/lang/String;

    .line 691
    if-nez v0, :cond_6

    const-string v0, ""

    goto :goto_6
.end method

.method public giveUp()V
    .registers 2

    .prologue
    .line 748
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v0, :cond_f

    .line 749
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->remove()V

    .line 751
    :cond_f
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->terminate()V

    .line 752
    return-void
.end method

.method public init()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 735
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->completed:Z

    .line 736
    iput-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 737
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->introDone:Z

    .line 738
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModBoss;->onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    return-void
.end method

.method public isCompleted()Z
    .registers 2

    .prologue
    .line 743
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->completed:Z

    return v0
.end method

.method public onDoPhysic(J)V
    .registers 4

    .prologue
    .line 675
    invoke-direct {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModBoss;->bossPhysic(J)V

    .line 676
    return-void
.end method

.method public onElementDestroyed(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 3

    .prologue
    .line 665
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-ne p1, v0, :cond_b

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->onBossDead()V

    .line 666
    :cond_b
    return-void
.end method

.method public onElementDestroyedByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 3

    .prologue
    .line 670
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-ne p1, v0, :cond_b

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->onBossDead()V

    .line 671
    :cond_b
    return-void
.end method

.method public onPlayerDeath()V
    .registers 1

    .prologue
    .line 680
    return-void
.end method

.method public onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 653
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 654
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->introDone:Z

    .line 655
    if-eqz p1, :cond_34

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    move v0, v1

    :goto_14
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->inZone:Z

    .line 656
    if-eqz p1, :cond_23

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->hub:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    move v2, v1

    :cond_23
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->inHub:Z

    .line 657
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->inZone:Z

    if-eqz v0, :cond_30

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->completed:Z

    if-nez v0, :cond_30

    .line 658
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->spawnBoss()V

    .line 660
    :cond_30
    invoke-direct {p0, v1}, Lfr/testudo/spacecorsair/mod/ModBoss;->markGates(Z)V

    .line 661
    return-void

    :cond_34
    move v0, v2

    .line 655
    goto :goto_14
.end method

.method public restoreState()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 763
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->completed:Z

    .line 764
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 765
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->introDone:Z

    .line 766
    return-void
.end method

.method public saveState()V
    .registers 1

    .prologue
    .line 770
    return-void
.end method

.method public terminate()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 756
    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/mod/ModBoss;->markGates(Z)V

    .line 757
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->completed:Z

    .line 758
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 759
    return-void
.end method
