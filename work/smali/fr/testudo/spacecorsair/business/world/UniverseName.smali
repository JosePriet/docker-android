.class public Lfr/testudo/spacecorsair/business/world/UniverseName;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTIF_AGILITY_MESSAGE:Ljava/lang/String;

.field public static final ACTIF_POISONED_MESSAGE:Ljava/lang/String;

.field public static final ACTIF_RELOAD_MESSAGE:Ljava/lang/String;

.field public static final ACTIF_ROOTED_MESSAGE:Ljava/lang/String;

.field public static final ACTIF_SNARED_MESSAGE:Ljava/lang/String;

.field public static final CAPTAIN_THOMAS_DAVIS:Ljava/lang/String; = "Captain Thomas Davis"

.field public static final CIVIL:Ljava/lang/String; = "civil"

.field public static final GALACTIC_JAIL:Ljava/lang/String; = "galactic jail"

.field public static final GUARDIAN_SHIP_NAME:Ljava/lang/String;

.field public static final KEG_DANA_MOONSHIP:Ljava/lang/String; = "Keg Dana Moonship"

.field public static final MISC_STATION_NAME:Ljava/lang/String;

.field public static final PATHFINDER_LOCALIZED:Ljava/lang/String;

.field public static final PLAYER_HYPERDRIVE_LOADING:Ljava/lang/String;

.field public static final POLICE:Ljava/lang/String; = "POLICE"

.field public static final RED_PETER_BLACKMAN:Ljava/lang/String; = "Red Peter Blackman"

.field public static final ROB_THOMAS:Ljava/lang/String; = "Rob Thomas"

.field public static final SHIELD_FACTORY_LOCALISED:Ljava/lang/String;

.field public static final SPARTAN_LASER_FACTORY:Ljava/lang/String;

.field public static final SPARTAN_MISSILE:Ljava/lang/String;

.field public static final SPARTAN_SHIELD_FACTORY:Ljava/lang/String;

.field public static final STATION_ARNEA_OFFICIAL:Ljava/lang/String; = "arena official station"

.field public static final STATION_GENESIS_COMMAND:Ljava/lang/String; = "genesis Command Center"

.field public static final STATION_HIGHWAY_STORE:Ljava/lang/String; = "general store"

.field public static final STATION_HYPERION_COMMAND:Ljava/lang/String; = "Hyperion Command Center"

.field public static final STATION_JIMBO:Ljava/lang/String;

.field public static final STATION_LOST_PARADISE_MISSILES:Ljava/lang/String; = "missile factory"

.field public static final STATION_MINING_CORP:Ljava/lang/String; = "mining Corp"

.field public static final STATION_OMICRON_PRIME_CASINO:Ljava/lang/String; = "omicron casino"

.field public static final STATION_OMICRON_PRIME_GOODS:Ljava/lang/String;

.field public static final STATION_OMICRON_PRIME_SPACEPORT:Ljava/lang/String; = "omicron spaceport"

.field public static final STATION_PILOT_LICENCE_NAME:Ljava/lang/String;

.field public static final STATION_REPLEX_INC:Ljava/lang/String; = "replex laser inc"

.field public static final STATION_SHIPYARD:Ljava/lang/String; = "shipyard"

.field public static final STATION_SPARTAN_COMMAND:Ljava/lang/String; = "spartan headquarters"

.field public static final STATION_VENTOHIGH:Ljava/lang/String; = "ventohigh"

.field public static final STATION_VENTOHIGH_COMMAND:Ljava/lang/String; = "ventohigh Command Center"

.field public static final STRAVOS:Ljava/lang/String; = "Stravos"

.field public static final TRANSPORTEUR_CHONOPAST:Ljava/lang/String; = "chronopast inc"

.field public static final TRANSPORTEUR_FLEX:Ljava/lang/String; = "flex corp"

.field public static final TRANSPORTEUR_GALEX:Ljava/lang/String; = "galaxy export"

.field public static final tranporteurs_name:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 25
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702e3

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/world/UniverseName;->STATION_JIMBO:Ljava/lang/String;

    .line 26
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702e2

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/world/UniverseName;->SPARTAN_MISSILE:Ljava/lang/String;

    .line 28
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702e4

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/world/UniverseName;->SPARTAN_SHIELD_FACTORY:Ljava/lang/String;

    .line 29
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f070380

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/world/UniverseName;->SPARTAN_LASER_FACTORY:Ljava/lang/String;

    .line 39
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f070311

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/world/UniverseName;->STATION_PILOT_LICENCE_NAME:Ljava/lang/String;

    .line 53
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f070377

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/world/UniverseName;->STATION_OMICRON_PRIME_GOODS:Ljava/lang/String;

    .line 58
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702e1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/world/UniverseName;->SHIELD_FACTORY_LOCALISED:Ljava/lang/String;

    .line 60
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702ce

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/world/UniverseName;->MISC_STATION_NAME:Ljava/lang/String;

    .line 62
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702dd

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/world/UniverseName;->PATHFINDER_LOCALIZED:Ljava/lang/String;

    .line 64
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702d7

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/world/UniverseName;->GUARDIAN_SHIP_NAME:Ljava/lang/String;

    .line 67
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702fe

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/world/UniverseName;->ACTIF_POISONED_MESSAGE:Ljava/lang/String;

    .line 68
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702ff

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/world/UniverseName;->ACTIF_SNARED_MESSAGE:Ljava/lang/String;

    .line 69
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f070300

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/world/UniverseName;->ACTIF_ROOTED_MESSAGE:Ljava/lang/String;

    .line 70
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f070301

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/world/UniverseName;->ACTIF_AGILITY_MESSAGE:Ljava/lang/String;

    .line 71
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f070302

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/world/UniverseName;->ACTIF_RELOAD_MESSAGE:Ljava/lang/String;

    .line 79
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "flex corp"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "galaxy export"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "chronopast inc"

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/business/world/UniverseName;->tranporteurs_name:[Ljava/lang/String;

    .line 87
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f070354

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/world/UniverseName;->PLAYER_HYPERDRIVE_LOADING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRandomTransporteurName()Ljava/lang/String;
    .registers 6

    .prologue
    .line 83
    sget-object v0, Lfr/testudo/spacecorsair/business/world/UniverseName;->tranporteurs_name:[Ljava/lang/String;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    sget-object v1, Lfr/testudo/spacecorsair/business/world/UniverseName;->tranporteurs_name:[Ljava/lang/String;

    array-length v1, v1

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method
