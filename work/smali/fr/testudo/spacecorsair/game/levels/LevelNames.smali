.class public Lfr/testudo/spacecorsair/game/levels/LevelNames;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AERIA_PASSING:Ljava/lang/String; = "aeria passing"

.field public static final ARENA_NEXT_GATE:Ljava/lang/String;

.field public static final COMING_SOON_PORTAL:Ljava/lang/String; = "COMING SOON"

.field public static final CONSTELLATION:Ljava/lang/String; = "constellation"

.field public static final DELTA_NODE:Ljava/lang/String; = "delta node"

.field public static final DISABLED_PORTAL:Ljava/lang/String; = "DISABLED"

.field public static final ETERNITY:Ljava/lang/String; = "eternity"

.field public static final EXIT_MULTIPLAYER:Ljava/lang/String; = "> Exit <"

.field public static final GALACTIC_ARENA:Ljava/lang/String; = "galactic arena"

.field public static final GATE_PREFIX:Ljava/lang/String; = "> "

.field public static final GATE_SUFIX:Ljava/lang/String; = " <"

.field public static final GATE_TO_AERIA_PASSING:Ljava/lang/String; = "> aeria passing <"

.field public static final GATE_TO_ARENA:Ljava/lang/String; = "> galactic arena <"

.field public static final GATE_TO_CONSTELLATION:Ljava/lang/String; = "> constellation <"

.field public static final GATE_TO_DELTA_NODE:Ljava/lang/String; = "> delta node <"

.field public static final GATE_TO_ETERNITY:Ljava/lang/String; = "> eternity <"

.field public static final GATE_TO_GENESIS:Ljava/lang/String; = "> genesis <"

.field public static final GATE_TO_GREEN_BORDER:Ljava/lang/String; = "> green border <"

.field public static final GATE_TO_HELIOSTAT:Ljava/lang/String; = "> heliostat <"

.field public static final GATE_TO_HERMES:Ljava/lang/String; = "> hermes <"

.field public static final GATE_TO_HIGHWAY:Ljava/lang/String; = "> highway <"

.field public static final GATE_TO_HUGO_WISDOM:Ljava/lang/String; = "> hugo wisdom <"

.field public static final GATE_TO_HYPERION:Ljava/lang/String; = "> hyperion <"

.field public static final GATE_TO_LOST_PARADISE:Ljava/lang/String; = "> lost paradise <"

.field public static final GATE_TO_OMICRON_PRIME:Ljava/lang/String; = "> omicron prime <"

.field public static final GATE_TO_ORE_BELT:Ljava/lang/String; = "> ore belt <"

.field public static final GATE_TO_ORION:Ljava/lang/String; = "> orion <"

.field public static final GATE_TO_PIRATE_BAY:Ljava/lang/String; = "> pirate bay <"

.field public static final GATE_TO_PLANCK_PRIDE:Ljava/lang/String; = "> planck Pride <"

.field public static final GATE_TO_SOLAR_FIELD:Ljava/lang/String; = "> solar field <"

.field public static final GATE_TO_SPARTAN_HQ:Ljava/lang/String; = "> spartan headquarters <"

.field public static final GATE_TO_THEOGONIA:Ljava/lang/String; = "> theogonia <"

.field public static final GATE_TO_THE_HIVE:Ljava/lang/String; = "> the hive <"

.field public static final GATE_TO_THE_VAULT:Ljava/lang/String; = "> the vault <"

.field public static final GATE_TO_THE_WAVE:Ljava/lang/String; = "> the wave <"

.field public static final GATE_TO_THOR:Ljava/lang/String; = "> thor passing <"

.field public static final GATE_TO_TUTORIAL:Ljava/lang/String; = "> tutorial <"

.field public static final GATE_TO_TWIN_STARS:Ljava/lang/String; = "> twin stars <"

.field public static final GATE_TO_UNKNOWN_SECTOR:Ljava/lang/String; = "> unknown sector <"

.field public static final GATE_TO_VENTOHIGH:Ljava/lang/String; = "> ventohigh <"

.field public static final GENESIS:Ljava/lang/String; = "genesis"

.field public static final GREEN_BORDER:Ljava/lang/String; = "green border"

.field public static final HELIOSTAT:Ljava/lang/String; = "heliostat"

.field public static final HERMES:Ljava/lang/String; = "hermes"

.field public static final HIGHWAY:Ljava/lang/String; = "highway"

.field public static final HUGO_WISDOM:Ljava/lang/String; = "hugo wisdom"

.field public static final HYPERION:Ljava/lang/String; = "hyperion"

.field public static final LOST_PARADISE:Ljava/lang/String; = "lost paradise"

.field public static final OMICRON_PRIME:Ljava/lang/String; = "omicron prime"

.field public static final ORE_BELT:Ljava/lang/String; = "ore belt"

.field public static final ORION:Ljava/lang/String; = "orion"

.field public static final PIRATE_BAY:Ljava/lang/String; = "pirate bay"

.field public static final PLANCK_PRIDE:Ljava/lang/String; = "planck Pride"

.field public static final PLAYER_BAY:Ljava/lang/String; = "player bay"

.field public static final SOLAR_FIELD:Ljava/lang/String; = "solar field"

.field public static final SPARTAN_HQ:Ljava/lang/String; = "spartan headquarters"

.field public static final THEOGONIA_LEVEL:Ljava/lang/String; = "theogonia"

.field public static final THE_HIVE:Ljava/lang/String; = "the hive"

.field public static final THE_VAULT:Ljava/lang/String; = "the vault"

.field public static final THE_WAVE:Ljava/lang/String; = "the wave"

.field public static final THOR_LEVEL:Ljava/lang/String; = "thor passing"

.field public static final TUTORIAL:Ljava/lang/String; = "tutorial"

.field public static final TWIN_STARS:Ljava/lang/String; = "twin stars"

.field public static final UNKNOWN_SECTOR:Ljava/lang/String; = "unknown sector"

.field public static final VECTOR00_GATE:Ljava/lang/String; = "VECTOR00_GATE"

.field public static final VENTOHIGH:Ljava/lang/String; = "ventohigh"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v2, 0x7f070327

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/LevelNames;->ARENA_NEXT_GATE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method
