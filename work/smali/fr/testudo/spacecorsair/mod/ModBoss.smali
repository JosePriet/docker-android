.class public Lfr/testudo/spacecorsair/mod/ModBoss;
.super Lfr/testudo/spacecorsair/business/mission/MissionListener;
.source "ModBoss.java"


# static fields
.field static final CLOUD_R:F = 950.0f

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

.field private mission:Lfr/testudo/spacecorsair/business/mission/Mission;

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
    const-string v0, "Target destroyed. The reward has been transferred to your hold."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModBoss;->DONE:Ljava/lang/String;

    .line 40
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

    .line 47
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

    .line 128
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModBoss;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 130
    sput v7, Lfr/testudo/spacecorsair/mod/ModBoss;->distKind:I

    sput v7, Lfr/testudo/spacecorsair/mod/ModBoss;->distM:I

    .line 227
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "matriarch"

    aput-object v1, v0, v3

    const-string v1, "guardian"

    aput-object v1, v0, v4

    const-string v1, "empress"

    aput-object v1, v0, v5

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModBoss;->ID:[Ljava/lang/String;

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModBoss;->illusions:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(IILfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 213
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;-><init>()V

    .line 169
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x45abe000    # 5500.0f

    const v2, 0x44bb8000    # 1500.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->spawn:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 170
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->tmp:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 208
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->well:Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->cloud:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->brood:Ljava/util/ArrayList;

    .line 214
    iput p1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    .line 215
    iput p2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->level:I

    .line 216
    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 217
    iput-object p4, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->hub:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 218
    iput-object p5, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->station:Ljava/lang/String;

    .line 219
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
    .line 90
    if-nez p1, :cond_3

    .line 107
    :cond_2
    :goto_2
    return-void

    .line 92
    :cond_3
    :try_start_3
    const-string v0, "VENTOHIGH"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 93
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

    .line 104
    :catch_2e
    move-exception v0

    goto :goto_2

    .line 96
    :cond_30
    const-string v0, "SPARTAN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 97
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

    .line 99
    :cond_5d
    const-string v0, "OMICRON"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
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
    .line 588
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "fakeProjectile"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 589
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 590
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 592
    :goto_14
    return-object v0

    .line 591
    :catch_15
    move-exception v0

    .line 592
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private bossPhysic(J)V
    .registers 16

    .prologue
    .line 372
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 373
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v0, :cond_14

    if-eqz v3, :cond_14

    iget-boolean v0, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-eqz v0, :cond_15

    .line 542
    :cond_14
    :goto_14
    return-void

    .line 374
    :cond_15
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->heavy()V

    .line 375
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v4

    .line 376
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v1, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    div-float v5, v0, v1

    .line 377
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->introDone:Z

    if-nez v0, :cond_74

    const v0, 0x451c4000    # 2500.0f

    cmpg-float v0, v4, v0

    if-gez v0, :cond_74

    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->introDone:Z

    .line 379
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

    .line 380
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playDanger()V

    .line 381
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-virtual {v0, v3}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initAttackTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 383
    :cond_74
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->introDone:Z

    if-eqz v0, :cond_14

    .line 384
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerA:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerA:I

    .line 385
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerB:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerB:I

    .line 386
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerC:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerC:I

    .line 388
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    if-nez v0, :cond_24e

    .line 390
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->enraged:Z

    if-nez v0, :cond_121

    const v0, 0x3eb33333    # 0.35f

    cmpg-float v0, v5, v0

    if-gez v0, :cond_121

    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->enraged:Z

    .line 392
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->callout()V

    .line 393
    const/4 v0, 0x0

    :goto_a3
    const/4 v1, 0x2

    if-ge v0, v1, :cond_121

    .line 394
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v1, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->level:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newUfo(I)Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;

    move-result-object v1

    .line 395
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    .line 396
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

    .line 397
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 398
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 399
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 400
    const/4 v2, 0x0

    iput v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    .line 401
    const/4 v2, 0x0

    iput v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->xp:I

    .line 402
    const/4 v2, 0x0

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 403
    const-string v2, ""

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->levelStr:Ljava/lang/String;

    .line 404
    invoke-virtual {v1, v3}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initAttackTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 405
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    .line 406
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModBoss;->beamOf(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    move-result-object v2

    .line 407
    if-eqz v2, :cond_105

    const/4 v5, 0x0

    iput v5, v2, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->damage:F

    .line 408
    :cond_105
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModBoss;->illusions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    iget-object v1, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const v2, 0x3f333333    # 0.7f

    const v5, 0x3e4ccccd    # 0.2f

    const v6, 0x3f666666    # 0.9f

    const/high16 v7, 0x43c80000    # 400.0f

    invoke-static {v1, v2, v5, v6, v7}, Lfr/testudo/spacecorsair/mod/ModBoss;->wave(Lfr/testudo/spacecorsair/engine/Vector2;FFFF)V

    .line 393
    add-int/lit8 v0, v0, 0x1

    goto :goto_a3

    .line 379
    :cond_11d
    const-string v0, " ENGAGED"

    goto/16 :goto_55

    .line 413
    :cond_121
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerA:I

    if-gtz v0, :cond_19d

    const v0, 0x453b8000    # 3000.0f

    cmpg-float v0, v4, v0

    if-gez v0, :cond_19d

    .line 414
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x3f333333    # 0.7f

    const v2, 0x3e4ccccd    # 0.2f

    const v5, 0x3f666666    # 0.9f

    const/high16 v6, 0x43c80000    # 400.0f

    invoke-static {v0, v1, v2, v5, v6}, Lfr/testudo/spacecorsair/mod/ModBoss;->wave(Lfr/testudo/spacecorsair/engine/Vector2;FFFF)V

    .line 415
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v6

    .line 416
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

    .line 417
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 418
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 419
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x3f333333    # 0.7f

    const v2, 0x3e4ccccd    # 0.2f

    const v5, 0x3f666666    # 0.9f

    const/high16 v6, 0x43c80000    # 400.0f

    invoke-static {v0, v1, v2, v5, v6}, Lfr/testudo/spacecorsair/mod/ModBoss;->wave(Lfr/testudo/spacecorsair/engine/Vector2;FFFF)V

    .line 420
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playGateZap()V

    .line 421
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->enraged:Z

    if-eqz v0, :cond_24a

    const/16 v0, 0x1388

    :goto_19b
    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerA:I

    .line 424
    :cond_19d
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerC:I

    if-gtz v0, :cond_1e0

    const v0, 0x45228000    # 2600.0f

    cmpg-float v0, v4, v0

    if-gez v0, :cond_1e0

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->skillMs:I

    if-gtz v0, :cond_1e0

    .line 425
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

    .line 426
    const/16 v0, 0xfa0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->skillMs:I

    .line 427
    const/16 v0, 0x2af8

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerC:I

    .line 428
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

    .line 430
    :cond_1e0
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->skillMs:I

    if-lez v0, :cond_22a

    .line 431
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->skillMs:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->skillMs:I

    .line 432
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

    .line 433
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

    .line 434
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

    .line 435
    iget-object v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    div-float/2addr v0, v2

    mul-float/2addr v0, v4

    div-float/2addr v1, v2

    mul-float/2addr v1, v4

    invoke-virtual {v3, v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 437
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

    .line 421
    :cond_24a
    const/16 v0, 0x1d4c

    goto/16 :goto_19b

    .line 438
    :cond_24e
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_399

    .line 440
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->invulnTimer:I

    if-lez v0, :cond_34c

    .line 441
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->invulnTimer:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->invulnTimer:I

    .line 442
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerB:I

    if-gtz v0, :cond_277

    .line 443
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3f19999a    # 0.6f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x43fa0000    # 500.0f

    invoke-static {v0, v1, v2, v6, v7}, Lfr/testudo/spacecorsair/mod/ModBoss;->wave(Lfr/testudo/spacecorsair/engine/Vector2;FFFF)V

    .line 444
    const/16 v0, 0x1f4

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerB:I

    .line 446
    :cond_277
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->invulnTimer:I

    if-gtz v0, :cond_293

    .line 447
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->invincible:Z

    .line 448
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    const-string v1, "SHIELD DOWN"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x3ecccccd    # 0.4f

    const v6, 0x3f4ccccd    # 0.8f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v6, v7}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 459
    :cond_293
    :goto_293
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerA:I

    if-gtz v0, :cond_2cb

    .line 460
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

    .line 461
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    const/16 v1, 0x12c

    const/16 v2, 0x3e8

    const/16 v6, 0x320

    invoke-static {v0, v1, v2, v6}, Lfr/testudo/spacecorsair/business/Util;->applyShockWaveOnPlayer(Lfr/testudo/spacecorsair/business/Element;III)V

    .line 462
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v1, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    const v2, 0x3d23d70a    # 0.04f

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v3, v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModV34;->skillHit(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;FZ)V

    .line 463
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playShockWave()V

    .line 465
    :cond_2c7
    const/16 v0, 0x5dc

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerA:I

    .line 468
    :cond_2cb
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerC:I

    if-gtz v0, :cond_2e6

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->skillMs:I

    if-gtz v0, :cond_2e6

    const v0, 0x45098000    # 2200.0f

    cmpg-float v0, v4, v0

    if-gez v0, :cond_2e6

    .line 469
    const/16 v0, 0x5dc

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->skillMs:I

    .line 470
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->overdriveMs:I

    if-lez v0, :cond_395

    const/16 v0, 0x1388

    :goto_2e4
    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerC:I

    .line 472
    :cond_2e6
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->skillMs:I

    if-lez v0, :cond_303

    .line 473
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->skillMs:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->skillMs:I

    .line 474
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->skillMs:I

    if-gtz v0, :cond_303

    const/4 v0, 0x7

    const/high16 v1, 0x40e00000    # 7.0f

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v2, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    const v4, 0x3fcccccd    # 1.6f

    mul-float/2addr v2, v4

    invoke-direct {p0, v3, v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModBoss;->volley(Lfr/testudo/spacecorsair/business/player/PlayerShip;IFF)V

    .line 477
    :cond_303
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->enraged:Z

    if-nez v0, :cond_330

    const v0, 0x3e99999a    # 0.3f

    cmpg-float v0, v5, v0

    if-gez v0, :cond_330

    .line 478
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->enraged:Z

    .line 479
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->callout()V

    .line 480
    const/16 v0, 0x2710

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->overdriveMs:I

    .line 481
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

    .line 482
    const v0, 0x3eb33333    # 0.35f

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/mod/ModBoss;->canonRate(F)V

    .line 484
    :cond_330
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->overdriveMs:I

    if-lez v0, :cond_14

    .line 485
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->overdriveMs:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->overdriveMs:I

    .line 486
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->overdriveMs:I

    if-gtz v0, :cond_14

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->baseReload:J

    iput-wide v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->milleSecBetweenShots:J

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/mod/ModBoss;->canonRate(F)V

    goto/16 :goto_14

    .line 450
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

    .line 451
    :cond_362
    const v0, 0x3ea8f5c3    # 0.33f

    cmpg-float v0, v5, v0

    if-gez v0, :cond_36c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->shield33:Z

    .line 452
    :cond_36c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->shield66:Z

    .line 453
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->invincible:Z

    .line 454
    const/16 v0, 0x1770

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->invulnTimer:I

    .line 455
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerB:I

    .line 456
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModBoss;->escort(II)V

    .line 457
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    const-string v1, "SPARTAN SHIELD UP"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x3ecccccd    # 0.4f

    const v6, 0x3f4ccccd    # 0.8f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v6, v7}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    goto/16 :goto_293

    .line 470
    :cond_395
    const/16 v0, 0x2328

    goto/16 :goto_2e4

    .line 490
    :cond_399
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerC:I

    if-gtz v0, :cond_3bd

    .line 491
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/mod/ModBoss;->escortBrood(I)V

    .line 492
    const/16 v0, 0x36b0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerC:I

    .line 493
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

    .line 495
    :cond_3bd
    const/4 v1, 0x0

    .line 496
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->brood:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_3c7
    if-ltz v2, :cond_3e2

    .line 497
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->brood:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-eqz v0, :cond_3df

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->brood:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    .line 496
    :goto_3db
    add-int/lit8 v2, v2, -0x1

    move v1, v0

    goto :goto_3c7

    .line 498
    :cond_3df
    add-int/lit8 v0, v1, 0x1

    goto :goto_3db

    .line 500
    :cond_3e2
    if-lez v1, :cond_422

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v2, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_422

    .line 501
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

    .line 502
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    if-eqz v0, :cond_422

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v1, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeInPourc:F

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 504
    :cond_422
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerA:I

    if-gtz v0, :cond_4b1

    const v0, 0x45098000    # 2200.0f

    cmpg-float v0, v4, v0

    if-gez v0, :cond_4b1

    .line 505
    const/4 v0, -0x1

    :goto_42e
    const/4 v1, 0x1

    if-gt v0, v1, :cond_4a6

    .line 506
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

    .line 507
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

    .line 508
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

    .line 509
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v8, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v8, v8, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v8}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 510
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v8, 0x0

    const/high16 v9, -0x3ed00000    # -11.0f

    invoke-virtual {v2, v8, v9}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 511
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 512
    double-to-float v2, v6

    iput v2, v1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->spin:F

    .line 513
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    add-int/lit8 v0, v0, 0x1

    goto :goto_42e

    .line 515
    :cond_4a6
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playAlienRatLaser()V

    .line 516
    const/16 v0, 0x1f40

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerA:I

    .line 518
    :cond_4b1
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerB:I

    if-gtz v0, :cond_4ec

    .line 519
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

    .line 520
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v1, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    const v2, 0x3cf5c28f    # 0.03f

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v3, v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModV34;->skillHit(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;FZ)V

    .line 521
    const/4 v0, 0x3

    invoke-static {v3, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addGreen(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 523
    :cond_4d7
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x3e99999a    # 0.3f

    const/high16 v2, 0x3f800000    # 1.0f

    const v4, 0x3e99999a    # 0.3f

    const/high16 v6, 0x44480000    # 800.0f

    invoke-static {v0, v1, v2, v4, v6}, Lfr/testudo/spacecorsair/mod/ModBoss;->wave(Lfr/testudo/spacecorsair/engine/Vector2;FFFF)V

    .line 524
    const/16 v0, 0x7d0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerB:I

    .line 527
    :cond_4ec
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->enraged:Z

    if-nez v0, :cond_50a

    const v0, 0x3e99999a    # 0.3f

    cmpg-float v0, v5, v0

    if-gez v0, :cond_50a

    .line 528
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->enraged:Z

    .line 529
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->callout()V

    .line 530
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->cloud:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 531
    const/16 v0, 0x36b0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->cloudMs:I

    .line 533
    :cond_50a
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->cloudMs:I

    if-lez v0, :cond_14

    .line 534
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->cloudMs:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->cloudMs:I

    .line 535
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

    .line 536
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

    .line 537
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

    .line 538
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

    .line 57
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->spanish()Z

    move-result v3

    .line 58
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->data(I)[Ljava/lang/String;

    move-result-object v4

    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModBoss;->INTRO:[[Ljava/lang/String;

    aget-object v6, v0, p0

    if-eqz v3, :cond_41

    move v0, v1

    :goto_13
    aget-object v0, v6, v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    if-eqz v3, :cond_43

    const-string v0, "<br><br><b>Habilidades</b>:"

    :goto_1c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
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

    .line 59
    goto :goto_13

    .line 60
    :cond_43
    const-string v0, "<br><br><b>Skills</b>:"

    goto :goto_1c

    .line 62
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

    .line 63
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

    .line 64
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 62
    :cond_8b
    const-string v0, "<br>- <b>Enrage (once)</b>: "

    goto :goto_4a

    .line 63
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

    .line 345
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModBoss;->data(I)[Ljava/lang/String;

    move-result-object v0

    .line 346
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 347
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const v4, 0x3eb33333    # 0.35f

    const v5, 0x3f666666    # 0.9f

    invoke-static {v2, v3, v6, v4, v5}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 348
    if-eqz v1, :cond_32

    .line 349
    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-static {v1, v2, v8, v7, v6}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 350
    const/4 v2, 0x3

    aget-object v0, v0, v2

    invoke-static {v1, v0, v8, v7, v6}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 352
    :cond_32
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playDanger()V

    .line 353
    return-void
.end method

.method private canonRate(F)V
    .registers 6

    .prologue
    .line 193
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->canons:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    if-nez v0, :cond_5

    .line 195
    :cond_4
    return-void

    .line 194
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

.method static data(I)[Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
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
    .line 253
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->data(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static draw(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 19

    .prologue
    .line 134
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-nez v2, :cond_7

    .line 160
    :cond_6
    :goto_6
    return-void

    .line 135
    :cond_7
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v11, v2, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    .line 136
    instance-of v2, v11, Lfr/testudo/spacecorsair/mod/ModBoss;

    if-eqz v2, :cond_6

    .line 137
    :try_start_11
    move-object v0, v11

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModBoss;

    move-object v2, v0

    invoke-direct {v2}, Lfr/testudo/spacecorsair/mod/ModBoss;->drawSkills()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_18} :catch_14e

    :goto_18
    move-object v2, v11

    .line 138
    check-cast v2, Lfr/testudo/spacecorsair/mod/ModBoss;

    iget-object v12, v2, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 139
    if-eqz v12, :cond_6

    iget-boolean v2, v12, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v2, :cond_6

    .line 140
    invoke-static {v12}, Lfr/testudo/spacecorsair/engine/GameThread;->isElementVisible(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 141
    sget-object v2, Lfr/testudo/spacecorsair/display/Fleche;->MAIN_TEXTURE:Lfr/testudo/spacecorsair/display/Texture;

    .line 142
    if-eqz v2, :cond_6

    .line 143
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    .line 144
    const/high16 v4, 0x43020000    # 130.0f

    const v5, 0x3da3d70a    # 0.08f

    mul-float/2addr v5, v3

    add-float v13, v4, v5

    .line 145
    invoke-static {v2, v13}, Lfr/testudo/spacecorsair/mod/ModFx;->arrow(Lfr/testudo/spacecorsair/display/Texture;F)Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v5

    .line 146
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

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-eqz v2, :cond_14a

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

    .line 148
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

    .line 149
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

    .line 150
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModBoss;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v4, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3e19999a    # 0.15f

    const v10, 0x3e19999a    # 0.15f

    invoke-virtual/range {v2 .. v10}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 151
    check-cast v11, Lfr/testudo/spacecorsair/mod/ModBoss;

    iget v2, v11, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    iget-object v3, v12, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v3

    float-to-int v3, v3

    .line 152
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModBoss;->distText:Ljava/lang/String;

    if-eqz v4, :cond_da

    sget v4, Lfr/testudo/spacecorsair/mod/ModBoss;->distKind:I

    if-ne v2, v4, :cond_da

    sget v4, Lfr/testudo/spacecorsair/mod/ModBoss;->distM:I

    if-eq v3, v4, :cond_105

    .line 153
    :cond_da
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModBoss;->NAMES:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

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

    .line 154
    sput v2, Lfr/testudo/spacecorsair/mod/ModBoss;->distKind:I

    .line 155
    sput v3, Lfr/testudo/spacecorsair/mod/ModBoss;->distM:I

    .line 157
    :cond_105
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModBoss;->distText:Ljava/lang/String;

    .line 158
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

    .line 159
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

    .line 147
    :cond_14a
    const/16 v2, 0xc8

    goto/16 :goto_6a

    .line 137
    :catch_14e
    move-exception v2

    goto/16 :goto_18
.end method

.method private drawSkills()V
    .registers 16

    .prologue
    .line 561
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-eqz v0, :cond_b

    .line 584
    :cond_a
    :goto_a
    return-void

    .line 562
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 563
    const/high16 v0, 0x43480000    # 200.0f

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 564
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b2

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->skillMs:I

    if-lez v0, :cond_b2

    .line 566
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->skillMs:I

    int-to-float v1, v1

    const v2, 0x44bb8000    # 1500.0f

    div-float/2addr v1, v2

    sub-float v12, v0, v1

    .line 567
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

    .line 568
    const/4 v0, 0x0

    move v11, v0

    :goto_5f
    const/4 v0, 0x3

    if-ge v11, v0, :cond_a

    .line 569
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

    .line 570
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

    .line 568
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_5f

    .line 572
    :cond_b2
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    if-nez v0, :cond_114

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->skillMs:I

    if-lez v0, :cond_114

    .line 573
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->skillMs:I

    int-to-float v1, v1

    const/high16 v2, 0x44160000    # 600.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 574
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

    .line 575
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

    .line 576
    :cond_114
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->cloudMs:I

    if-lez v0, :cond_a

    .line 577
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->cloudMs:I

    int-to-float v1, v1

    const v2, 0x44bb8000    # 1500.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 578
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

    .line 579
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

    .line 580
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

    .line 581
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

    .line 232
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-nez v0, :cond_8

    .line 234
    :goto_7
    return-object v1

    .line 233
    :cond_8
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    .line 234
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
    .line 248
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModBoss;->engine()Lfr/testudo/spacecorsair/mod/ModBoss;

    move-result-object v0

    .line 249
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

    .line 329
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 330
    const/4 v0, 0x0

    move v1, v0

    :goto_a
    if-ge v1, p2, :cond_54

    .line 332
    if-nez p1, :cond_43

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->level:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlienRat(I)Lfr/testudo/spacecorsair/business/ennemis/AlienRat;

    move-result-object v0

    .line 335
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

    .line 336
    iget-object v3, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->tmp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 337
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 338
    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initAttackTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 339
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    .line 330
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 333
    :cond_43
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4d

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->level:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newDefensor(I)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v0

    goto :goto_14

    .line 334
    :cond_4d
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->level:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newUfo(I)Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;

    move-result-object v0

    goto :goto_14

    .line 341
    :cond_54
    return-void
.end method

.method private escortBrood(I)V
    .registers 14

    .prologue
    const-wide v10, 0x407f400000000000L    # 500.0

    const-wide v8, 0x406f400000000000L    # 250.0

    .line 547
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 548
    const/4 v0, 0x0

    :goto_f
    if-ge v0, p1, :cond_4a

    .line 549
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->level:I

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlienRat(I)Lfr/testudo/spacecorsair/business/ennemis/AlienRat;

    move-result-object v2

    .line 550
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

    .line 551
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->tmp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 552
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 553
    invoke-virtual {v2, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initAttackTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 554
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    .line 555
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->brood:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 557
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

    .line 199
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->alterationSnareValue:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1f

    .line 200
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->alterationSnareValue:F

    .line 201
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->alterationSnareDuree:I

    if-ge v0, v3, :cond_1f

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iput v4, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->alterationSnareDuree:I

    .line 203
    :cond_1f
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->alterationAgilityValue:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_35

    .line 204
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->alterationAgilityValue:F

    .line 205
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->alterationAgilityDuree:I

    if-ge v0, v3, :cond_35

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iput v4, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->alterationAgilityDuree:I

    .line 207
    :cond_35
    return-void
.end method

.method private instruction()Ljava/lang/String;
    .registers 10

    .prologue
    const/16 v8, 0xa

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 688
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->completed:Z

    if-eqz v0, :cond_4c

    .line 689
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->inHub:Z

    if-eqz v0, :cond_30

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

    .line 718
    :goto_2f
    return-object v0

    .line 689
    :cond_30
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

    goto :goto_2f

    .line 691
    :cond_4c
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->inZone:Z

    if-nez v0, :cond_6c

    .line 692
    const-string v0, "Go to {0} and hunt the {1}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    aput-object v3, v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModBoss;->NAMES:[Ljava/lang/String;

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    aget-object v2, v2, v3

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLang;->fmt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    .line 694
    :cond_6c
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 695
    if-eqz v1, :cond_74

    iget-boolean v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-eqz v0, :cond_89

    .line 696
    :cond_74
    const-string v0, "Destroy the {0}"

    new-array v1, v4, [Ljava/lang/Object;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModBoss;->NAMES:[Ljava/lang/String;

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    aget-object v3, v3, v4

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLang;->fmt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    .line 698
    :cond_89
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 699
    const/high16 v0, 0x42c80000    # 100.0f

    iget v4, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    mul-float/2addr v0, v4

    iget v4, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    div-float/2addr v0, v4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 700
    if-eqz v3, :cond_bb

    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v5, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    float-to-int v0, v0

    .line 701
    :goto_a6
    iget-boolean v5, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->invincible:Z

    .line 703
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->instr:Ljava/lang/String;

    .line 704
    if-eqz v1, :cond_be

    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->instrPct:I

    if-ne v4, v6, :cond_be

    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->instrDist:I

    if-ne v0, v6, :cond_be

    iget-boolean v6, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->instrInv:Z

    if-ne v5, v6, :cond_be

    move-object v0, v1

    goto/16 :goto_2f

    .line 700
    :cond_bb
    const/high16 v0, -0x80000000

    goto :goto_a6

    .line 705
    :cond_be
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 706
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModBoss;->NAMES:[Ljava/lang/String;

    iget v7, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    aget-object v1, v1, v7

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "  "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "HP"

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "%  "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    div-int/lit8 v1, v4, 0xa

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 708
    :goto_fe
    if-ge v2, v8, :cond_10e

    if-ge v2, v7, :cond_10b

    const/16 v1, 0x7c

    :goto_104
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_fe

    :cond_10b
    const/16 v1, 0x2e

    goto :goto_104

    .line 709
    :cond_10e
    if-eqz v3, :cond_11f

    .line 710
    const-string v1, "  "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    :cond_11f
    if-eqz v5, :cond_130

    const-string v1, "  "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[SHIELDED]"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    :cond_130
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 714
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->instrPct:I

    .line 715
    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->instrDist:I

    .line 716
    iput-boolean v5, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->instrInv:Z

    .line 717
    iput-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->instr:Ljava/lang/String;

    move-object v0, v1

    .line 718
    goto/16 :goto_2f
.end method

.method public static isBoss(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 222
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-nez v0, :cond_8

    .line 224
    :goto_7
    return v1

    .line 223
    :cond_8
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    .line 224
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

    .line 239
    if-nez p0, :cond_5

    move v0, v1

    .line 244
    :goto_4
    return v0

    .line 240
    :cond_5
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModBoss;->engine()Lfr/testudo/spacecorsair/mod/ModBoss;

    move-result-object v2

    .line 241
    if-nez v2, :cond_d

    move v0, v1

    goto :goto_4

    .line 242
    :cond_d
    iget-object v0, v2, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-ne v0, p0, :cond_14

    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    goto :goto_4

    .line 243
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

    .line 244
    goto :goto_4
.end method

.method private static make(Ljava/lang/String;IILfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;[Ljava/lang/String;II)Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 22

    .prologue
    .line 110
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 111
    const/4 v2, 0x0

    .line 113
    :try_start_6
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    invoke-virtual {v3, p0}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->hasDoneMission(Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_d} :catch_5e

    move-result v2

    .line 117
    :goto_e
    if-nez v2, :cond_26

    move-object/from16 v0, p6

    array-length v3, v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v3, :cond_26

    aget-object v4, p6, v2

    .line 118
    invoke-static {v4}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v4

    invoke-static {v4}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 120
    :cond_26
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModBoss;

    move v3, p1

    move v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lfr/testudo/spacecorsair/mod/ModBoss;-><init>(IILfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;)V

    .line 121
    new-instance v3, Lfr/testudo/spacecorsair/business/mission/Mission;

    const v5, 0x7f070136

    const/high16 v4, 0x7f7f0000

    add-int v6, v4, p1

    const v4, 0x7f7f000a

    add-int v7, v4, p1

    const/4 v8, 0x0

    .line 122
    move/from16 v0, p7

    move/from16 v1, p8

    invoke-static {v9, v0, v1}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withObject(Ljava/util/List;II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v11

    const/4 v12, 0x1

    move-object v4, p0

    move v9, p2

    move-object v10, v2

    invoke-direct/range {v3 .. v12}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 123
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModBoss;->MISSION_NAMES:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->re(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lfr/testudo/spacecorsair/business/mission/Mission;->localizedName:Ljava/lang/String;

    .line 124
    iput-object v3, v2, Lfr/testudo/spacecorsair/mod/ModBoss;->mission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 125
    return-object v3

    .line 114
    :catch_5e
    move-exception v3

    goto :goto_e
.end method

.method private markGates(Z)V
    .registers 4

    .prologue
    .line 598
    :try_start_0
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->completed:Z

    if-nez v0, :cond_21

    .line 599
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->inZone:Z

    if-nez v0, :cond_20

    .line 600
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 601
    if-eqz v0, :cond_20

    .line 602
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 603
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 623
    :cond_20
    :goto_20
    return-void

    .line 607
    :cond_21
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->inHub:Z

    if-eqz v0, :cond_39

    .line 608
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->station:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 609
    if-eqz v0, :cond_39

    .line 610
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->isMissionObjective:Z

    .line 611
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 614
    :cond_39
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->hub:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 615
    if-eqz v0, :cond_20

    .line 616
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 617
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_51} :catch_52

    goto :goto_20

    .line 620
    :catch_52
    move-exception v0

    goto :goto_20
.end method

.method private onBossDead()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 626
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->completed:Z

    if-eqz v0, :cond_7

    .line 641
    :cond_6
    :goto_6
    return-void

    .line 627
    :cond_7
    iput-boolean v7, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->completed:Z

    .line 628
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModBoss;->illusions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v2, :cond_f

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const v3, 0x3f333333    # 0.7f

    const v4, 0x3e4ccccd    # 0.2f

    const v5, 0x3f666666    # 0.9f

    const/high16 v6, 0x43960000    # 300.0f

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/mod/ModBoss;->wave(Lfr/testudo/spacecorsair/engine/Vector2;FFFF)V

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->remove()V

    goto :goto_f

    .line 629
    :cond_33
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModBoss;->illusions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 630
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 631
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702c1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{0} destroyed"

    new-array v2, v7, [Ljava/lang/Object;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModBoss;->NAMES:[Ljava/lang/String;

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    aget-object v3, v3, v4

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModLang;->fmt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const-string v0, "bossdead"

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModBoss;->NAMES:[Ljava/lang/String;

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLoot;->bossBonus(I)V

    .line 634
    invoke-direct {p0, v7}, Lfr/testudo/spacecorsair/mod/ModBoss;->markGates(Z)V

    .line 636
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->mission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-eqz v0, :cond_6

    .line 637
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->mission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 638
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->terminate()V

    .line 639
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModBoss;->MISSION_NAMES:[Ljava/lang/String;

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    aget-object v1, v1, v2

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->re(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{0} destroyed. The bounty has been paid."

    new-array v3, v7, [Ljava/lang/Object;

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModBoss;->NAMES:[Ljava/lang/String;

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    aget-object v4, v4, v5

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModLang;->fmt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModClaim;->payNow(Lfr/testudo/spacecorsair/business/mission/Mission;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6
.end method

.method private spawnBoss()V
    .registers 12

    .prologue
    const/high16 v10, 0x42c80000    # 100.0f

    const v9, 0x3fcccccd    # 1.6f

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 257
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->level:I

    add-int/lit8 v1, v1, 0x2

    .line 260
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    if-nez v2, :cond_b4

    .line 261
    invoke-static {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newUfo(I)Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;

    move-result-object v1

    .line 262
    const v0, 0x3fd55555

    .line 270
    :goto_18
    invoke-virtual {v1, v8}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite(Z)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 271
    iput-boolean v4, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->elite:Z

    .line 272
    const/4 v2, 0x0

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    .line 273
    const-string v2, ""

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->levelStr:Ljava/lang/String;

    .line 274
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV34;->boss(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V

    .line 275
    iget v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    mul-float/2addr v0, v2

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 276
    iget v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 277
    iput v10, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeInPourc:F

    .line 279
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_c4

    const/high16 v0, 0x3f000000    # 0.5f

    move v2, v0

    .line 280
    :goto_3a
    iget v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    mul-float/2addr v0, v2

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    .line 281
    iget-wide v6, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->milleSecBetweenShots:J

    long-to-float v0, v6

    mul-float/2addr v0, v9

    float-to-long v6, v0

    iput-wide v6, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->milleSecBetweenShots:J

    .line 282
    iget v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->pouseeForce:F

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v0, v3

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->pouseeForce:F

    .line 283
    iget v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxTurnFactor:F

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v0, v3

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxTurnFactor:F

    .line 285
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

    .line 287
    :goto_73
    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->canons:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    .line 288
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->canons:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    if-eqz v0, :cond_cc

    .line 289
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->canons:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->canonReload:[I

    move v0, v4

    .line 290
    :goto_81
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->canons:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    array-length v3, v3

    if-ge v0, v3, :cond_cc

    .line 291
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

    .line 292
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->canons:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    aget-object v3, v3, v0

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->canons:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    aget-object v5, v5, v0

    iget v5, v5, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->timeBewteenShootInMilli:I

    int-to-float v5, v5

    mul-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->timeBewteenShootInMilli:I

    .line 293
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->canonReload:[I

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->canons:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    aget-object v5, v5, v0

    iget v5, v5, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->timeBewteenShootInMilli:I

    aput v5, v3, v0

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_81

    .line 263
    :cond_b4
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->kind:I

    if-ne v2, v8, :cond_be

    .line 264
    invoke-static {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlbatros(I)Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    move-result-object v1

    goto/16 :goto_18

    .line 267
    :cond_be
    invoke-static {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlienBlatte(I)Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;

    move-result-object v1

    goto/16 :goto_18

    .line 279
    :cond_c4
    const v0, 0x3f8ccccd    # 1.1f

    move v2, v0

    goto/16 :goto_3a

    .line 287
    :cond_ca
    const/4 v0, 0x0

    goto :goto_73

    .line 296
    :cond_cc
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModBoss;->beamOf(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_d7

    iget v3, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->damage:F

    mul-float/2addr v2, v3

    iput v2, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->damage:F

    .line 298
    :cond_d7
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModBoss;->illusions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 299
    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    if-eqz v0, :cond_e5

    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v0, v10}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 300
    :cond_e5
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->spawn:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    .line 301
    iput-boolean v8, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->isMissionObjective:Z

    .line 302
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 303
    const v0, 0x469c4000    # 20000.0f

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->desengagementDistance:F

    .line 304
    iget v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->radarPointSize:F

    const/high16 v2, 0x40800000    # 4.0f

    add-float/2addr v0, v2

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->radarPointSize:F

    .line 305
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    iput-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 307
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->enraged:Z

    .line 308
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->shield66:Z

    .line 309
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->shield33:Z

    .line 310
    const/16 v0, 0xfa0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerA:I

    .line 311
    const/16 v0, 0x1770

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerB:I

    .line 312
    const/16 v0, 0x2328

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->timerC:I

    .line 313
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->invulnTimer:I

    .line 314
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->skillMs:I

    .line 315
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->overdriveMs:I

    .line 316
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->cloudMs:I

    .line 317
    iget-wide v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->milleSecBetweenShots:J

    iput-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->baseReload:J

    .line 318
    return-void
.end method

.method public static text(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 68
    const/high16 v0, 0x7f7f0000

    sub-int v0, p0, v0

    .line 69
    if-ltz v0, :cond_e

    const/4 v1, 0x3

    if-ge v0, v1, :cond_e

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModBoss;->briefing(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    :cond_d
    :goto_d
    return-object v0

    .line 70
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

    .line 71
    :cond_40
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->text(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    if-nez v0, :cond_d

    .line 76
    :try_start_46
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    .line 77
    if-eqz v0, :cond_50

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    if-nez v0, :cond_89

    .line 78
    :cond_50
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->appString(I)Ljava/lang/String;

    move-result-object v0

    .line 79
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

    .line 82
    :catch_83
    move-exception v0

    .line 83
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->appString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 85
    :cond_89
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private volley(Lfr/testudo/spacecorsair/business/player/PlayerShip;IFF)V
    .registers 15

    .prologue
    const/high16 v4, 0x447a0000    # 1000.0f

    const/high16 v3, 0x41200000    # 10.0f

    .line 357
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

    .line 358
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L    # 90.0

    sub-double v2, v0, v2

    .line 359
    const/4 v0, 0x0

    :goto_2f
    if-ge v0, p2, :cond_75

    .line 360
    int-to-double v4, v0

    add-int/lit8 v1, p2, -0x1

    int-to-double v6, v1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    sub-double/2addr v4, v6

    float-to-double v6, p3

    mul-double/2addr v4, v6

    add-double/2addr v4, v2

    .line 361
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newElectricBullet()Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;

    move-result-object v1

    const/16 v6, 0x9

    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    sget-object v8, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->DEFAULT:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-virtual {v1, p4, v6, v7, v8}, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->init(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    move-result-object v1

    .line 362
    iget-object v6, v1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v7, v7, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 363
    iget-object v6, v1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v7, 0x0

    const/high16 v8, -0x3ee00000    # -10.0f

    invoke-virtual {v6, v7, v8}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 364
    iget-object v6, v1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 365
    double-to-float v4, v4

    iput v4, v1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->spin:F

    .line 366
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v4, v4, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v4, v4, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 368
    :cond_75
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playShockWave()V

    .line 369
    return-void
.end method

.method private static wave(Lfr/testudo/spacecorsair/engine/Vector2;FFFF)V
    .registers 8

    .prologue
    .line 321
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newShockWave()Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v0

    const/high16 v1, 0x42480000    # 50.0f

    const/high16 v2, 0x44160000    # 600.0f

    invoke-virtual {v0, p0, v1, p4, v2}, Lfr/testudo/spacecorsair/display/ShockWave;->init(Lfr/testudo/spacecorsair/engine/Vector2;FFF)Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v0

    .line 322
    iput p1, v0, Lfr/testudo/spacecorsair/display/ShockWave;->r:F

    .line 323
    iput p2, v0, Lfr/testudo/spacecorsair/display/ShockWave;->g:F

    .line 324
    iput p3, v0, Lfr/testudo/spacecorsair/display/ShockWave;->b:F

    .line 325
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    return-void
.end method


# virtual methods
.method public getCurrentInstruction()Ljava/lang/String;
    .registers 2

    .prologue
    .line 679
    :try_start_0
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->instruction()Ljava/lang/String;

    move-result-object v0

    .line 680
    if-eqz v0, :cond_7

    .line 683
    :cond_6
    :goto_6
    return-object v0

    .line 680
    :cond_7
    const-string v0, ""
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_6

    .line 681
    :catch_a
    move-exception v0

    .line 682
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->instr:Ljava/lang/String;

    .line 683
    if-nez v0, :cond_6

    const-string v0, ""

    goto :goto_6
.end method

.method public giveUp()V
    .registers 2

    .prologue
    .line 747
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v0, :cond_f

    .line 748
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->remove()V

    .line 751
    :cond_f
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModBoss;->illusions:Ljava/util/ArrayList;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModWarpOut;->startAll(Ljava/util/List;)V

    .line 752
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->brood:Ljava/util/ArrayList;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModWarpOut;->startAll(Ljava/util/List;)V

    .line 753
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModBoss;->illusions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 754
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->brood:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 755
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->terminate()V

    .line 756
    return-void
.end method

.method public init()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 729
    :try_start_2
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->mission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->mission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->reward:Lfr/testudo/spacecorsair/business/mission/MissionReward;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->mission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->reward:Lfr/testudo/spacecorsair/business/mission/MissionReward;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/MissionReward;->rewardLoot:Ljava/util/List;

    if-eqz v0, :cond_2b

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->mission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    .line 730
    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->hasDoneMission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->mission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->reward:Lfr/testudo/spacecorsair/business/mission/MissionReward;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/MissionReward;->rewardLoot:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2b} :catch_3d

    .line 734
    :cond_2b
    :goto_2b
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->completed:Z

    .line 735
    iput-object v3, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 736
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->introDone:Z

    .line 737
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lfr/testudo/spacecorsair/mod/ModBoss;->onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    return-void

    .line 731
    :catch_3d
    move-exception v0

    goto :goto_2b
.end method

.method public isCompleted()Z
    .registers 2

    .prologue
    .line 742
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->completed:Z

    return v0
.end method

.method public onDoPhysic(J)V
    .registers 4

    .prologue
    .line 667
    invoke-direct {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModBoss;->bossPhysic(J)V

    .line 668
    return-void
.end method

.method public onElementDestroyed(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 3

    .prologue
    .line 657
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-ne p1, v0, :cond_b

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->onBossDead()V

    .line 658
    :cond_b
    return-void
.end method

.method public onElementDestroyedByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 3

    .prologue
    .line 662
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-ne p1, v0, :cond_b

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->onBossDead()V

    .line 663
    :cond_b
    return-void
.end method

.method public onPlayerDeath()V
    .registers 1

    .prologue
    .line 672
    return-void
.end method

.method public onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 645
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 646
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->introDone:Z

    .line 647
    if-eqz p1, :cond_34

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    move v0, v1

    :goto_14
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->inZone:Z

    .line 648
    if-eqz p1, :cond_23

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->hub:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    move v2, v1

    :cond_23
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->inHub:Z

    .line 649
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->inZone:Z

    if-eqz v0, :cond_30

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->completed:Z

    if-nez v0, :cond_30

    .line 650
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->spawnBoss()V

    .line 652
    :cond_30
    invoke-direct {p0, v1}, Lfr/testudo/spacecorsair/mod/ModBoss;->markGates(Z)V

    .line 653
    return-void

    :cond_34
    move v0, v2

    .line 647
    goto :goto_14
.end method

.method public restoreState()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 767
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->completed:Z

    .line 768
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 769
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->introDone:Z

    .line 770
    return-void
.end method

.method public saveState()V
    .registers 1

    .prologue
    .line 774
    return-void
.end method

.method public terminate()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 760
    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/mod/ModBoss;->markGates(Z)V

    .line 761
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->completed:Z

    .line 762
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModBoss;->boss:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 763
    return-void
.end method
