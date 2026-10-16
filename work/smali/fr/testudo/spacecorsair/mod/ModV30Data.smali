.class final Lfr/testudo/spacecorsair/mod/ModV30Data;
.super Ljava/lang/Object;
.source "ModV30Data.java"


# static fields
.field static final BOSS_EN:[[Ljava/lang/String;

.field static final BOSS_ES:[[Ljava/lang/String;

.field static final SITE_COUNTS:[[I

.field static final SITE_ENTRY_LINE:[[Ljava/lang/String;

.field static final SITE_EVENT:[[Ljava/lang/String;

.field static final SITE_HISTORY:[[Ljava/lang/String;

.field static final SITE_HULLS:[[Ljava/lang/String;

.field static final SITE_SCAN_TEXT:[[Ljava/lang/String;

.field static final SITE_SECTOR:[Ljava/lang/String;

.field static final TITAN_EN:[[Ljava/lang/String;

.field static final TITAN_ES:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 8
    new-array v0, v8, [[Ljava/lang/String;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Banshee Matriarch"

    aput-object v2, v1, v6

    const-string v2, "Threefold Mirage"

    aput-object v2, v1, v7

    const-string v2, "The Matriarch splits into three forms."

    aput-object v2, v1, v5

    const-string v2, "Only one target is real."

    aput-object v2, v1, v8

    const-string v2, "Phase Blink"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "Blinks a short distance to evade fire."

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Gravity Well"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Pulls your ship off course."

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Guardian Prime"

    aput-object v2, v1, v6

    const-string v2, "Overdrive"

    aput-object v2, v1, v7

    const-string v2, "Guardian Prime enters overdrive."

    aput-object v2, v1, v5

    const-string v2, "Its guns reload faster for 10 seconds."

    aput-object v2, v1, v8

    const-string v2, "Telegraphed Broadside"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "Turrets glow for 1.5 seconds before a heavy volley."

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Hive Empress"

    aput-object v2, v1, v6

    const-string v2, "Spore Cloud"

    aput-object v2, v1, v7

    const-string v2, "The Empress releases a spore cloud."

    aput-object v2, v1, v5

    const-string v2, "Your shields drain slowly inside it."

    aput-object v2, v1, v8

    const-string v2, "Brood Wave"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "Calls another wave of brood drones."

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Brood Sustenance"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Regenerates while brood drones remain alive."

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV30Data;->BOSS_EN:[[Ljava/lang/String;

    .line 12
    new-array v0, v8, [[Ljava/lang/String;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Banshee Matriarch"

    aput-object v2, v1, v6

    const-string v2, "Espejismo triple"

    aput-object v2, v1, v7

    const-string v2, "La Matriarca se divide en tres formas."

    aput-object v2, v1, v5

    const-string v2, "Solo un objetivo es real."

    aput-object v2, v1, v8

    const-string v2, "Salto de fase"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "Se teletransporta una distancia corta para esquivar el fuego."

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Pozo gravitatorio"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Arrastra tu nave fuera de rumbo."

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Guardian Prime"

    aput-object v2, v1, v6

    const-string v2, "Sobremarcha"

    aput-object v2, v1, v7

    const-string v2, "Guardian Prime entra en sobremarcha."

    aput-object v2, v1, v5

    const-string v2, "Sus ca\u00f1ones recargan m\u00e1s r\u00e1pido durante 10 segundos."

    aput-object v2, v1, v8

    const-string v2, "Andanada anunciada"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "Las torretas brillan durante 1.5 segundos antes de una descarga pesada."

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Hive Empress"

    aput-object v2, v1, v6

    const-string v2, "Nube de esporas"

    aput-object v2, v1, v7

    const-string v2, "La Emperatriz libera una nube de esporas."

    aput-object v2, v1, v5

    const-string v2, "Tus escudos se agotan lentamente dentro de ella."

    aput-object v2, v1, v8

    const-string v2, "Oleada de cr\u00edas"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "Convoca otra oleada de drones de la colmena."

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Sustento de la colmena"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Se regenera mientras sigan vivos los drones de la colmena."

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV30Data;->BOSS_ES:[[Ljava/lang/String;

    .line 16
    const/4 v0, 0x7

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "SRS Aegis"

    aput-object v2, v1, v6

    const-string v2, "Guardian Dome"

    aput-object v2, v1, v7

    const-string v2, "Aegis projects a shield dome."

    aput-object v2, v1, v5

    const-string v2, "Allied ships shelter beneath it."

    aput-object v2, v1, v8

    const-string v2, "Frontal Shield Wall"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "Blocks shots arriving from ahead."

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Bloodforge"

    aput-object v2, v1, v6

    const-string v2, "Furnace Overload"

    aput-object v2, v1, v7

    const-string v2, "Bloodforge overloads its furnace."

    aput-object v2, v1, v5

    const-string v2, "A burning trail follows its next ram charge."

    aput-object v2, v1, v8

    const-string v2, "Harpoons"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "Drags its target into close range."

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Furnace Ram"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Charges forward in a furnace-powered ram."

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Brood-Mother"

    aput-object v2, v1, v6

    const-string v2, "Mirror Swarm"

    aput-object v2, v1, v7

    const-string v2, "The Brood-Mother calls a mirror swarm."

    aput-object v2, v1, v5

    const-string v2, "Decoy brood copy your movement."

    aput-object v2, v1, v8

    const-string v2, "Hive Pulse"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "Scrambles radar and HUD for a few seconds."

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Syndicate Crown"

    aput-object v2, v1, v6

    const-string v2, "Liquidation"

    aput-object v2, v1, v7

    const-string v2, "A ring of contract mines closes in."

    aput-object v2, v1, v5

    const-string v2, "The Crown accelerates in a sudden burst."

    aput-object v2, v1, v8

    const-string v2, "Contract Mines"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "Lays mines across the approach."

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Short Cloak"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Briefly conceals the Crown."

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "IMS Bastion"

    aput-object v2, v1, v6

    const-string v2, "Last Stand"

    aput-object v2, v1, v7

    const-string v2, "Bastion holds its last position."

    aput-object v2, v1, v5

    const-string v2, "Its armour plates regrow once."

    aput-object v2, v1, v8

    const-string v2, "Directional Armour"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "Armour plates must be shot off to expose the hull."

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Telegraphed Artillery"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Marks its artillery strike before firing."

    aput-object v3, v1, v2

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Sunspire"

    aput-object v3, v2, v6

    const-string v3, "Supernova"

    aput-object v3, v2, v7

    const-string v3, "Sunspire ignites a sweeping ring of fire."

    aput-object v3, v2, v5

    const-string v3, "The ring sweeps across the battlefield."

    aput-object v3, v2, v8

    const-string v3, "Solar Lance"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Sweeps the field with a solar lance."

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Boost Dash"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Dashes across the field at speed."

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "FAV Warden"

    aput-object v3, v2, v6

    const-string v3, "Lockdown"

    aput-object v3, v2, v7

    const-string v3, "Warden initiates lockdown."

    aput-object v3, v2, v5

    const-string v3, "Boost and missiles are disabled for 6 seconds."

    aput-object v3, v2, v8

    const-string v3, "Tractor Beam"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Pulls its target out of position."

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Boost Disruptor"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Interrupts the target\u2019s boost."

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Rail Snipe"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "Lines up a long-range rail shot."

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV30Data;->TITAN_EN:[[Ljava/lang/String;

    .line 24
    const/4 v0, 0x7

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "SRS Aegis"

    aput-object v2, v1, v6

    const-string v2, "C\u00fapula guardiana"

    aput-object v2, v1, v7

    const-string v2, "Aegis proyecta una c\u00fapula de escudo."

    aput-object v2, v1, v5

    const-string v2, "Las naves aliadas quedan protegidas bajo ella."

    aput-object v2, v1, v8

    const-string v2, "Muro de escudos frontal"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "Bloquea los disparos que llegan de frente."

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Bloodforge"

    aput-object v2, v1, v6

    const-string v2, "Sobrecarga del horno"

    aput-object v2, v1, v7

    const-string v2, "Bloodforge sobrecarga su horno."

    aput-object v2, v1, v5

    const-string v2, "Una estela ardiente sigue su pr\u00f3xima embestida."

    aput-object v2, v1, v8

    const-string v2, "Arpones"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "Arrastra a su objetivo a corta distancia."

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Embestida de horno"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Carga hacia delante en una embestida impulsada por el horno."

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Brood-Mother"

    aput-object v2, v1, v6

    const-string v2, "Enjambre espejo"

    aput-object v2, v1, v7

    const-string v2, "Brood-Mother convoca un enjambre espejo."

    aput-object v2, v1, v5

    const-string v2, "Las cr\u00edas se\u00f1uelo copian tus movimientos."

    aput-object v2, v1, v8

    const-string v2, "Pulso de colmena"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "Altera el radar y la interfaz durante unos segundos."

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Syndicate Crown"

    aput-object v2, v1, v6

    const-string v2, "Liquidaci\u00f3n"

    aput-object v2, v1, v7

    const-string v2, "Se cierra un anillo de minas de contrato."

    aput-object v2, v1, v5

    const-string v2, "Syndicate Crown acelera de golpe."

    aput-object v2, v1, v8

    const-string v2, "Minas de contrato"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "Coloca minas en la ruta de aproximaci\u00f3n."

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Camuflaje breve"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Oculta brevemente a Syndicate Crown."

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "IMS Bastion"

    aput-object v2, v1, v6

    const-string v2, "\u00daltima resistencia"

    aput-object v2, v1, v7

    const-string v2, "Bastion mantiene su \u00faltima posici\u00f3n."

    aput-object v2, v1, v5

    const-string v2, "Sus placas de blindaje vuelven a crecer una vez."

    aput-object v2, v1, v8

    const-string v2, "Blindaje direccional"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "Hay que desprender las placas a tiros para exponer el casco."

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Artiller\u00eda anunciada"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Marca el impacto de artiller\u00eda antes de disparar."

    aput-object v3, v1, v2

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Sunspire"

    aput-object v3, v2, v6

    const-string v3, "Supernova"

    aput-object v3, v2, v7

    const-string v3, "Sunspire enciende un anillo de fuego."

    aput-object v3, v2, v5

    const-string v3, "El anillo barre el campo de batalla."

    aput-object v3, v2, v8

    const-string v3, "Lanza solar"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Barre el campo con una lanza solar."

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Impulso veloz"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Cruza el campo a gran velocidad."

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "FAV Warden"

    aput-object v3, v2, v6

    const-string v3, "Bloqueo total"

    aput-object v3, v2, v7

    const-string v3, "Warden inicia el bloqueo."

    aput-object v3, v2, v5

    const-string v3, "El impulso y los misiles se desactivan durante 6 segundos."

    aput-object v3, v2, v8

    const-string v3, "Rayo tractor"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Saca a su objetivo de posici\u00f3n."

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Disruptor de impulso"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Interrumpe el impulso del objetivo."

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Disparo de riel"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "Apunta un disparo de riel a larga distancia."

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV30Data;->TITAN_ES:[[Ljava/lang/String;

    .line 32
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "THOR_PASSING"

    aput-object v1, v0, v6

    const-string v1, "HERMES"

    aput-object v1, v0, v7

    const-string v1, "GREEN_BORDER"

    aput-object v1, v0, v5

    const-string v1, "SOLAR_FIELD"

    aput-object v1, v0, v8

    const-string v1, "ORION"

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const-string v2, "THE_VAULT"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ORE_BELT"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DELTA_NODE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "PIRATE_BAY"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "HELIOSTAT"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "THE_HIVE"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "SPARTAN_HQ"

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV30Data;->SITE_SECTOR:[Ljava/lang/String;

    .line 33
    new-array v0, v5, [[Ljava/lang/String;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Halcyon Convoy Remains"

    aput-object v2, v1, v6

    const-string v2, "Aegis Line Skirmish"

    aput-object v2, v1, v7

    const-string v2, "Repeater War"

    aput-object v2, v1, v5

    const-string v2, "Brood-Beacon Theft"

    aput-object v2, v1, v8

    const-string v2, "Ledger War Graveyard"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "The Split Guardian"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Ore Belt Collapse"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Stranded Patrol"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "Captain\'s Share"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "Heliostat Calibration Fire"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "Abandoned Nursery"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "Founders\' Escort"

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Restos del convoy Halcyon"

    aput-object v2, v1, v6

    const-string v2, "Escaramuza de la l\u00ednea Aegis"

    aput-object v2, v1, v7

    const-string v2, "Guerra de repetidores"

    aput-object v2, v1, v5

    const-string v2, "Robo de la baliza de cr\u00edas"

    aput-object v2, v1, v8

    const-string v2, "Cementerio de la Guerra del Libro Mayor"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "El Guardian dividido"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Derrumbe de Ore Belt"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Patrulla varada"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "La parte del capit\u00e1n"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "Incendio de calibraci\u00f3n Heliostat"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "Criadero abandonado"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "Escolta fundadora"

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV30Data;->SITE_EVENT:[[Ljava/lang/String;

    .line 36
    new-array v0, v5, [[Ljava/lang/String;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "The Halcyon convoy tried to cross Thor Passing after its escort went silent. Survivors abandoned the cargo ships in the debris field and marked their last safe route for rescuers."

    aput-object v2, v1, v6

    const-string v2, "A Spartan patrol held the Hermes approach while raiders probed the Aegis defence line. The line held, but shattered escorts remained where the last volley crossed the lane."

    aput-object v2, v1, v7

    const-string v2, "Frontier Authority rangers fought to keep the Green Border repeaters open to every ship. The wrecks are from the final attempt to seal the route behind a private toll."

    aput-object v2, v1, v5

    const-string v2, "A stolen brood beacon drew Kre\'tari pursuers into Solar Field. Both the thieves and the pursuing living ships fell before anyone could recover the signal core."

    aput-object v2, v1, v8

    const-string v2, "Varn captains fought over erased debt ledgers and the routes they controlled. After the Ledger War, neither side claimed the wrecks; the contracts had outlived the crews."

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "A Guardian cruiser tried to hold The Vault against a boarding force. Its central spine broke in two, leaving sealed compartments on both halves and no surviving command log."

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Ironclad crews cut open an unstable ore seam to rescue trapped miners. The wall collapsed before the tugs cleared the shaft, burying their work lights in metal and dust."

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "A Frontier Authority patrol stayed at Delta Node to guide civilians through a relay failure. Its ships ran out of power after the last convoy passed, too far from support to tow home."

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "Reaver captains settled a dispute over salvage in Pirate Bay with a running gunfight. Their crews later stripped the useful parts but left the broken hulls as a warning about divided spoils."

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "Helion engineers tested a new route beacon during a solar flare. An emergency burn saved the station, but two escort ships lost guidance and struck its abandoned service ring."

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "The Kre\'tari Brood moved its young away from a failing nursery chamber. The remaining living hulls shed their outer shells and died guarding the last escape route."

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "During the Republic\'s first defence, a small escort group drew raiders away from civilian transports near Spartan HQ. The passage survived; the escorts never returned to formation."

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "El convoy Halcyon intent\u00f3 cruzar Thor Passing despu\u00e9s de perder contacto con su escolta. Los sobrevivientes abandonaron los cargueros y marcaron su \u00faltima ruta segura para los rescatistas."

    aput-object v2, v1, v6

    const-string v2, "Una patrulla Spartan defendi\u00f3 el acceso a Hermes mientras los asaltantes probaron la l\u00ednea Aegis. La l\u00ednea resisti\u00f3, pero las escoltas destruidas quedaron donde cruz\u00f3 la \u00faltima descarga."

    aput-object v2, v1, v7

    const-string v2, "Los guardabosques de Frontier Authority lucharon para mantener abiertos los repetidores de Green Border. Los restos pertenecen al \u00faltimo intento de cerrar la ruta tras un peaje privado."

    aput-object v2, v1, v5

    const-string v2, "Una baliza de cr\u00edas robada atrajo perseguidores Kre\'tari a Solar Field. Tanto los ladrones como las naves vivientes cayeron antes de recuperar el n\u00facleo de se\u00f1al."

    aput-object v2, v1, v8

    const-string v2, "Capitanes Varn lucharon por libros de deuda borrados y las rutas que controlaban. Tras la Guerra del Libro Mayor, nadie reclam\u00f3 los restos; los contratos sobrevivieron a las tripulaciones."

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "Un crucero Guardian intent\u00f3 defender The Vault de un abordaje. Su espina central se parti\u00f3 en dos y dej\u00f3 compartimentos sellados en ambas mitades, sin registro de mando."

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Cuadrillas Ironclad abrieron una veta inestable para rescatar mineros atrapados. La pared cedi\u00f3 antes de sacar los remolcadores y enterr\u00f3 sus luces de trabajo en polvo y metal."

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Una patrulla de Frontier Authority se qued\u00f3 en Delta Node para guiar civiles durante una falla del rel\u00e9. Sus naves agotaron la energ\u00eda tras pasar el \u00faltimo convoy, demasiado lejos para remolcarlas."

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "Capitanes Reaver resolvieron una disputa por chatarra en Pirate Bay con un combate. Sus tripulaciones recuperaron piezas \u00fatiles y dejaron los cascos rotos como advertencia por un bot\u00edn dividido."

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "Ingenieros Helion probaron una baliza de ruta durante una llamarada solar. Una maniobra de emergencia salv\u00f3 la estaci\u00f3n, pero dos escoltas perdieron gu\u00eda y chocaron con su anillo de servicio."

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "Kre\'tari Brood traslad\u00f3 a sus cr\u00edas lejos de una c\u00e1mara de crianza que fallaba. Las naves vivientes restantes mudaron sus caparazones y murieron protegiendo la \u00faltima salida."

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "Durante la primera defensa de la Rep\u00fablica, una escolta desvi\u00f3 a los asaltantes de transportes civiles cerca de Spartan HQ. El paso sobrevivi\u00f3; las escoltas nunca volvieron a la formaci\u00f3n."

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV30Data;->SITE_HISTORY:[[Ljava/lang/String;

    .line 39
    new-array v0, v5, [[Ljava/lang/String;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Cargo seals bear the Halcyon registry. One escort beacon still points toward the rescue lane."

    aput-object v2, v1, v6

    const-string v2, "Republic formation codes are fused into a burned escort panel. Reaver harpoon scars cross the other hull."

    aput-object v2, v1, v7

    const-string v2, "The repeater log ends with an open-route order. Its last signal was never encrypted."

    aput-object v2, v1, v5

    const-string v2, "A cracked beacon chamber pulses beside organic debris. The theft route ends here."

    aput-object v2, v1, v8

    const-string v2, "Serials are filed away, but the contract numbers were cut from every plate."

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "The Guardian bridge is gone. The two halves still answer the same old authentication pulse."

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Cutting marks face inward. These crews were opening an escape, not mining a claim."

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "The patrol log ends with a headcount: all civilian transponders cleared the node."

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "Crew marks were burned off. The salvage claim stamps remain under the soot."

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "The flight computer still holds a clean beacon test followed by one burst of solar noise."

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "The husks hold empty brood chambers. Their final signal points away from the nest."

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "The last order is a civilian departure vector, repeated until the transmitter failed."

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Los sellos de carga llevan el registro Halcyon. Una baliza de escolta a\u00fan se\u00f1ala la ruta de rescate."

    aput-object v2, v1, v6

    const-string v2, "Un panel quemado conserva c\u00f3digos de formaci\u00f3n Spartan. El otro casco tiene marcas de arpones Reaver."

    aput-object v2, v1, v7

    const-string v2, "El registro termina con una orden de ruta abierta. Su \u00faltima se\u00f1al nunca fue cifrada."

    aput-object v2, v1, v5

    const-string v2, "Una c\u00e1mara de baliza agrietada pulsa junto a restos org\u00e1nicos. La ruta del robo termina aqu\u00ed."

    aput-object v2, v1, v8

    const-string v2, "Los n\u00fameros de serie siguen archivados, pero quitaron los n\u00fameros de contrato de cada placa."

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "El puente del Guardian desapareci\u00f3. Ambas mitades a\u00fan responden al mismo pulso de autenticaci\u00f3n."

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Las marcas de corte apuntan hacia dentro. Abr\u00edan una salida, no explotaban una veta."

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "El registro termina con un conteo: todos los transpondedores civiles salieron del nodo."

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "Borraron las marcas de tripulaci\u00f3n. Los sellos de reclamo siguen bajo el holl\u00edn."

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "La computadora conserva una prueba limpia de la baliza y luego un estallido de ruido solar."

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "Los restos conservan c\u00e1maras de cr\u00eda vac\u00edas. Su se\u00f1al final apunta lejos del nido."

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "La \u00faltima orden repite el rumbo de salida civil hasta que falla el transmisor."

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV30Data;->SITE_SCAN_TEXT:[[Ljava/lang/String;

    .line 42
    new-array v0, v5, [[Ljava/lang/String;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Halcyon hulls drift across the passage, their distress lights long extinguished."

    aput-object v2, v1, v6

    const-string v2, "The Aegis line held here. Its broken escorts still mark the approach."

    aput-object v2, v1, v7

    const-string v2, "Old repeater buoys blink between the wrecks of a fight over free passage."

    aput-object v2, v1, v5

    const-string v2, "A dead brood signal hums under the solar glare."

    aput-object v2, v1, v8

    const-string v2, "The Ledger War left a neat graveyard that no claimant will acknowledge."

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "A split Guardian cruiser hangs beside the sealed Vault lanes."

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "The collapsed seam still hides the last Ironclad rescue tug."

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Silent patrol craft keep their place beside the dead relay."

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "Reaver wrecks crowd the bay where a share dispute became a battle."

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "A ruined service ring glints beyond the Heliostat beacon."

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "Living hulls became husks along the nursery escape route."

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "A memorial beacon marks the escorts that held the founding passage."

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Los cascos de Halcyon flotan en el paso; sus luces de auxilio ya se apagaron."

    aput-object v2, v1, v6

    const-string v2, "La l\u00ednea Aegis resisti\u00f3 aqu\u00ed. Sus escoltas rotas a\u00fan marcan el acceso."

    aput-object v2, v1, v7

    const-string v2, "Viejas balizas parpadean entre los restos de una lucha por el paso libre."

    aput-object v2, v1, v5

    const-string v2, "Una se\u00f1al de cr\u00edas apagada zumba bajo el resplandor solar."

    aput-object v2, v1, v8

    const-string v2, "La Guerra del Libro Mayor dej\u00f3 un cementerio que nadie quiere reconocer."

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "Un crucero Guardian partido flota junto a las rutas selladas de The Vault."

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "La veta colapsada a\u00fan oculta el \u00faltimo remolcador de rescate Ironclad."

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Naves de patrulla silenciosas permanecen junto al rel\u00e9 apagado."

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "Restos Reaver llenan la bah\u00eda donde una disputa por el bot\u00edn acab\u00f3 en batalla."

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "Un anillo de servicio arruinado brilla m\u00e1s all\u00e1 de la baliza Heliostat."

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "Las naves vivientes quedaron como caparazones en la ruta de escape."

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "Una baliza recuerda a las escoltas que defendieron el paso fundador."

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV30Data;->SITE_ENTRY_LINE:[[Ljava/lang/String;

    .line 45
    const/16 v0, 0xc

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "tortoise"

    aput-object v2, v1, v6

    const-string v2, "albatros"

    aput-object v2, v1, v7

    const-string v2, "orig_player_ship_corvette"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "hornet"

    aput-object v2, v1, v6

    const-string v2, "warlord"

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "nightjar"

    aput-object v2, v1, v6

    const-string v2, "orig_police"

    aput-object v2, v1, v7

    const-string v2, "sovereign"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "harbinger"

    aput-object v2, v1, v6

    const-string v2, "orig_alien_rat0"

    aput-object v2, v1, v7

    const-string v2, "sunlance"

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "sovereign"

    aput-object v2, v1, v6

    const-string v2, "imperator"

    aput-object v2, v1, v7

    const-string v2, "cobalt"

    aput-object v2, v1, v5

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "orig_croiseur_gentil"

    aput-object v3, v2, v6

    const-string v3, "raptor"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "tortoise"

    aput-object v3, v2, v6

    const-string v3, "foundry"

    aput-object v3, v2, v7

    const-string v3, "bulwark"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "nightjar"

    aput-object v3, v2, v6

    const-string v3, "orig_police"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "warlord"

    aput-object v3, v2, v6

    const-string v3, "orig_player_ship_hullbreaker"

    aput-object v3, v2, v7

    const-string v3, "crimson_throne"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "sunlance"

    aput-object v3, v2, v6

    const-string v3, "aurora"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "harbinger"

    aput-object v3, v2, v6

    const-string v3, "orig_alien_blatte"

    aput-object v3, v2, v7

    const-string v3, "orig_alien_rat0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "hornet"

    aput-object v3, v2, v6

    const-string v3, "sanctum"

    aput-object v3, v2, v7

    const-string v3, "orig_player_ship_corvette"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV30Data;->SITE_HULLS:[[Ljava/lang/String;

    .line 46
    const/16 v0, 0xc

    new-array v0, v0, [[I

    new-array v1, v8, [I

    fill-array-data v1, :array_6a6

    aput-object v1, v0, v6

    new-array v1, v5, [I

    fill-array-data v1, :array_6b0

    aput-object v1, v0, v7

    new-array v1, v8, [I

    fill-array-data v1, :array_6b8

    aput-object v1, v0, v5

    new-array v1, v8, [I

    fill-array-data v1, :array_6c2

    aput-object v1, v0, v8

    new-array v1, v8, [I

    fill-array-data v1, :array_6cc

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-array v2, v5, [I

    fill-array-data v2, :array_6d6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v8, [I

    fill-array-data v2, :array_6de

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v5, [I

    fill-array-data v2, :array_6e8

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v8, [I

    fill-array-data v2, :array_6f0

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v5, [I

    fill-array-data v2, :array_6fa

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v8, [I

    fill-array-data v2, :array_702

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v8, [I

    fill-array-data v2, :array_70c

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV30Data;->SITE_COUNTS:[[I

    return-void

    nop

    :array_6a6
    .array-data 4
        0x2
        0x1
        0x1
    .end array-data

    :array_6b0
    .array-data 4
        0x2
        0x1
    .end array-data

    :array_6b8
    .array-data 4
        0x2
        0x1
        0x1
    .end array-data

    :array_6c2
    .array-data 4
        0x1
        0x2
        0x1
    .end array-data

    :array_6cc
    .array-data 4
        0x2
        0x1
        0x2
    .end array-data

    :array_6d6
    .array-data 4
        0x1
        0x2
    .end array-data

    :array_6de
    .array-data 4
        0x2
        0x1
        0x1
    .end array-data

    :array_6e8
    .array-data 4
        0x2
        0x1
    .end array-data

    :array_6f0
    .array-data 4
        0x1
        0x2
        0x1
    .end array-data

    :array_6fa
    .array-data 4
        0x1
        0x2
    .end array-data

    :array_702
    .array-data 4
        0x1
        0x2
        0x2
    .end array-data

    :array_70c
    .array-data 4
        0x2
        0x1
        0x1
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
