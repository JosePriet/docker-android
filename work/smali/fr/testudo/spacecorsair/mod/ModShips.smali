.class public Lfr/testudo/spacecorsair/mod/ModShips;
.super Ljava/lang/Object;
.source "ModShips.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/mod/ModShips$Hull;
    }
.end annotation


# static fields
.field public static final BATTLECRUISER:I = 0x3

.field public static final BATTLESHIP:I = 0x4

.field public static final CAPITAL:I = 0x5

.field public static final CLASS_NAMES:[Ljava/lang/String;

.field private static final CLASS_RANK:[I

.field public static final CRUISER:I = 0x2

.field public static final DESTROYER:I = 0x1

.field public static final FRIGATE:I = 0x0

.field public static final HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

.field public static final INDUSTRIAL:I = 0x7

.field private static final ORIGINAL:[[Ljava/lang/String;

.field private static final TECH:[Ljava/lang/String;

.field public static final TITAN:I = 0x6

.field private static doomsdayTimer:I

.field private static lance:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

.field private static final lanceEnd:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static lanceFlash:I

.field private static volatile lastHull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

.field private static final tmp:Lfr/testudo/spacecorsair/engine/Vector2;


# direct methods
.method static constructor <clinit>()V
    .registers 17

    .prologue
    .line 24
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Frigate"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Destroyer"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Cruiser"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Battlecruiser"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Battleship"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Capital"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Titan"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Industrial"

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModShips;->CLASS_NAMES:[Ljava/lang/String;

    .line 25
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1304

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModShips;->CLASS_RANK:[I

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Tech I"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Tech II"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Tech III"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModShips;->TECH:[Ljava/lang/String;

    .line 50
    const/16 v0, 0x2f

    new-array v0, v0, [Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    .line 52
    const/16 v0, 0x9

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "defaultPlayerShip"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "Generalist"

    .line 53
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "condorPlayerShip"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "2"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "Gunship"

    .line 54
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "alienRat"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "3"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "Alien interceptor"

    .line 55
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "hullBreaker"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "2"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "Rammer"

    .line 56
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "alienUfo"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "3"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "Alien beam skirmisher"

    .line 57
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "policeShip"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "2"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "3"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "Pursuit cruiser"

    .line 58
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "corvette"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "3"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "Line battlecruiser"

    .line 59
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "megatronShip"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "4"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "3"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "SPARTAN battleship"

    .line 60
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "alienBlatte"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "5"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "3"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "Alien carrier"

    .line 61
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModShips;->ORIGINAL:[[Ljava/lang/String;

    .line 65
    const/4 v13, 0x0

    .line 68
    sget-object v14, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/4 v15, 0x1

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullViper"

    const-string v2, "Viper"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "Assault frigate"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "viper"

    const/16 v7, 0x50

    const/4 v8, 0x1

    const/16 v9, 0x2710

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Assault frigate</b>: +15% laser damage."

    .line 69
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "A knife-fast frigate for captains who share the spoils and settle betrayal up close."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v14, v13

    .line 70
    const v1, 0x3f933333    # 1.15f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dmg:F

    .line 71
    const v1, 0x3f1eb852    # 0.62f

    const v2, 0x3f81cac1    # 1.014f

    const v3, 0x404ccccd    # 3.2f

    const v4, 0x3f933333    # 1.15f

    const/16 v5, 0xe6

    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModShips;->small(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFI)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 72
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/4 v14, 0x2

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullShade"

    const-string v2, "Shade"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "Interceptor"

    const-string v6, "shade"

    const/16 v7, 0x46

    const/4 v8, 0x3

    const/16 v9, 0x7530

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Interceptor</b>: fastest hull in its class, very agile, -10% laser reload time. Thin armour."

    .line 73
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Built for one job: get there first."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v13, v15

    .line 74
    const v1, 0x3f666666    # 0.9f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->reload:F

    .line 75
    const v1, 0x3f51eb85    # 0.82f

    const v2, 0x3f820c4a    # 1.016f

    const v3, 0x40866666    # 4.2f

    const v4, 0x3f59999a    # 0.85f

    const/16 v5, 0xc8

    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModShips;->small(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFI)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 77
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/4 v15, 0x3

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullBastion"

    const-string v2, "Bastion"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string v5, "Defender"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "bastion"

    const/16 v7, 0x82

    const/4 v8, 0x4

    const v9, 0x9c40

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Defender</b>: +20% shield capacity, one rotating cannon."

    .line 78
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "A shield-first destroyer built to hold one safe lane while Republic crews move civilians clear."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v13, v14

    .line 79
    const v1, 0x3f99999a    # 1.2f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldCap:F

    .line 80
    const v1, 0x3ecccccd    # 0.4f

    const v2, 0x3f8147ae    # 1.01f

    const v3, 0x3fe66666    # 1.8f

    const v4, 0x3fcccccd    # 1.6f

    const/16 v5, 0x190

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_1318

    const v8, 0x3fe66666    # 1.8f

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModShips;->turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 81
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/4 v14, 0x4

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullHornet"

    const-string v2, "Hornet"

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-string v5, "Shield tank"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "hornet"

    const/16 v7, 0xc8

    const/4 v8, 0x6

    const v9, 0x13880

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Shield tank</b>: +50% shield regeneration and 30% shorter shield recovery delay. Two rotating cannons."

    .line 82
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Frelon-pattern hull refitted by SPARTAN shield engineers."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v13, v15

    .line 83
    const/high16 v1, 0x3fc00000    # 1.5f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldRegen:F

    .line 84
    const v1, 0x3f333333    # 0.7f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldDelay:F

    .line 85
    const v1, 0x3ec28f5c    # 0.38f

    const v2, 0x3f810625    # 1.008f

    const/high16 v3, 0x3fc00000    # 1.5f

    const v4, 0x3fd9999a    # 1.7f

    const/16 v5, 0x1f4

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const/4 v7, 0x4

    new-array v7, v7, [F

    fill-array-data v7, :array_1320

    const v8, 0x3fe66666    # 1.8f

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModShips;->turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 87
    const/4 v0, 0x6

    new-array v13, v0, [F

    fill-array-data v13, :array_132c

    .line 88
    sget-object v15, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v16, 0x5

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullAlbatros"

    const-string v2, "Albatros"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "Line cruiser"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "albatros"

    const/16 v7, 0x12c

    const/16 v8, 0x8

    const v9, 0x249f0

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Line cruiser</b>: three rotating heavy turrets and twin missile tubes. Good at everything, best at nothing."

    .line 89
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "A patched Reaver cruiser: never the best ship in the fight, but always the last one still charging."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v15, v14

    .line 90
    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3f80e560    # 1.007f

    const v3, 0x3f666666    # 0.9f

    const v4, 0x40266666    # 2.6f

    const/16 v5, 0x384

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE_TRIPLE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const v8, 0x3fb33333    # 1.4f

    move-object v7, v13

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModShips;->turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 91
    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    const/high16 v1, 0x42340000    # 45.0f

    const/high16 v2, -0x3d240000    # -110.0f

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModShips;->twinMissiles(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;FF)V

    .line 92
    sget-object v14, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/4 v15, 0x6

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullRaptor"

    const-string v2, "Raptor"

    const/4 v3, 0x2

    const/4 v4, 0x2

    const-string v5, "Assault cruiser"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "raptor"

    const/16 v7, 0x12c

    const/16 v8, 0xa

    const v9, 0x445c0

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Assault cruiser</b>: +30% laser damage and 10% faster laser reload."

    .line 93
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Albatros hull stripped of everything that does not shoot."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v14, v16

    .line 94
    const v1, 0x3fa66666    # 1.3f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dmg:F

    .line 95
    const v1, 0x3f666666    # 0.9f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->reload:F

    .line 96
    const v1, 0x3e9eb852    # 0.31f

    const v2, 0x3f80e560    # 1.007f

    const v3, 0x3f733333    # 0.95f

    const v4, 0x4019999a    # 2.4f

    const/16 v5, 0x384

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE_TRIPLE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const/high16 v8, 0x3fc00000    # 1.5f

    move-object v7, v13

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModShips;->turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 97
    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    const/high16 v1, 0x42340000    # 45.0f

    const/high16 v2, -0x3d240000    # -110.0f

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModShips;->twinMissiles(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;FF)V

    .line 98
    sget-object v14, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v16, 0x7

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullSanctum"

    const-string v2, "Sanctum"

    const/4 v3, 0x2

    const/4 v4, 0x2

    const-string v5, "Logistics cruiser"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sanctum"

    const/16 v7, 0x12c

    const/16 v8, 0xa

    const v9, 0x3f7a0

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Logistics cruiser</b>: repairs 1% of its hull every second and +40% shield regeneration."

    .line 99
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Nanite repair bays fill the space where missile racks used to be."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v14, v15

    .line 100
    const v1, 0x3c23d70a    # 0.01f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->hullRegen:F

    .line 101
    const v1, 0x3fb33333    # 1.4f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldRegen:F

    .line 102
    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3f80e560    # 1.007f

    const v3, 0x3f666666    # 0.9f

    const v4, 0x40333333    # 2.8f

    const/16 v5, 0x384

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE_TRIPLE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const v8, 0x3fb33333    # 1.4f

    move-object v7, v13

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModShips;->turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 104
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v14, 0x8

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullMule"

    const-string v2, "Mule"

    const/4 v3, 0x7

    const/4 v4, 0x1

    const-string v5, "Hauler"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mule"

    const/16 v7, 0x8c

    const/4 v8, 0x4

    const v9, 0x88b8

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Hauler</b>: cargo hold x2."

    .line 105
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "A long-range hauler that carries rescue gear as readily as ore; the Authority never asks what a stranded crew needs twice."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v13, v16

    .line 106
    const/high16 v1, 0x40000000    # 2.0f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cargo:F

    .line 107
    const v1, 0x3eb33333    # 0.35f

    const v2, 0x3f8147ae    # 1.01f

    const v3, 0x3fcccccd    # 1.6f

    const v4, 0x3fb33333    # 1.4f

    const/16 v5, 0x1f4

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_133c

    const/high16 v8, 0x3fc00000    # 1.5f

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModShips;->turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 108
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v15, 0x9

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullTortoise"

    const-string v2, "Tortoise"

    const/4 v3, 0x7

    const/4 v4, 0x2

    const-string v5, "Armoured hauler"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "tortoise"

    const/16 v7, 0x104

    const/4 v8, 0x7

    const v9, 0x1adb0

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Armoured hauler</b>: cargo hold x1.6 and a hull three times thicker than a frigate\'s."

    .line 109
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Ironclad crews built this armored hauler so vital cargo can reach home through a shooting war."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v13, v14

    .line 110
    const v1, 0x3fcccccd    # 1.6f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cargo:F

    .line 111
    const v1, 0x3e851eb8    # 0.26f

    const v2, 0x3f8126e9    # 1.009f

    const v3, 0x3f666666    # 0.9f

    const/high16 v4, 0x40400000    # 3.0f

    const/16 v5, 0x4b0

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_1344

    const v8, 0x3fb33333    # 1.4f

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModShips;->turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 112
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v14, 0xa

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullBulwark"

    const-string v2, "Bulwark"

    const/4 v3, 0x7

    const/4 v4, 0x2

    const-string v5, "Deep-space freighter"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "bulwark"

    const/16 v7, 0x12c

    const/16 v8, 0x9

    const v9, 0x30d40

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Freighter</b>: cargo hold x3.5, two rotating cannons."

    .line 113
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "The biggest hold a pilot can legally own."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v13, v15

    .line 114
    const/high16 v1, 0x40600000    # 3.5f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cargo:F

    .line 115
    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3f8126e9    # 1.009f

    const v3, 0x3f4ccccd    # 0.8f

    const v4, 0x40266666    # 2.6f

    const/16 v5, 0x5dc

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const/4 v7, 0x4

    new-array v7, v7, [F

    fill-array-data v7, :array_134c

    const v8, 0x3fb33333    # 1.4f

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModShips;->turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 117
    const/4 v0, 0x6

    new-array v13, v0, [F

    fill-array-data v13, :array_1358

    .line 118
    sget-object v15, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v16, 0xb

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullWarlord"

    const-string v2, "Warlord"

    const/4 v3, 0x3

    const/4 v4, 0x2

    const-string v5, "Brawler"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "warlord"

    const/16 v7, 0x190

    const/16 v8, 0xc

    const v9, 0x7a120

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Brawler</b>: +15% laser damage and +20% shield capacity."

    .line 119
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "A Cosmowarrior with the armour plates welded twice."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v15, v14

    .line 120
    const v1, 0x3f933333    # 1.15f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dmg:F

    .line 121
    const v1, 0x3f99999a    # 1.2f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldCap:F

    .line 122
    const v1, 0x3e4ccccd    # 0.2f

    const v2, 0x3f80e560    # 1.007f

    const v3, 0x3ee66666    # 0.45f

    const/high16 v4, 0x40900000    # 4.5f

    const/16 v5, 0x79e

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE_TRIPLE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const v8, 0x3fa66666    # 1.3f

    move-object v7, v13

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModShips;->turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 123
    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v2, 0x42dc0000    # 110.0f

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModShips;->twinMissiles(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;FF)V

    .line 124
    sget-object v14, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v15, 0xc

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullHarbinger"

    const-string v2, "Harbinger"

    const/4 v3, 0x3

    const/4 v4, 0x2

    const-string v5, "Missile boat"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "harbinger"

    const/16 v7, 0x1a4

    const/16 v8, 0xc

    const v9, 0x7ef40

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Missile boat</b>: four missile tubes and 40% faster missile reload."

    .line 125
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Two Frelon launcher pods bolted to a battlecruiser spine."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v14, v16

    .line 126
    const v1, 0x3f19999a    # 0.6f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->missileReload:F

    .line 127
    const v1, 0x3e428f5c    # 0.19f

    const v2, 0x3f80e560    # 1.007f

    const v3, 0x3ed70a3d    # 0.42f

    const/high16 v4, 0x40800000    # 4.0f

    const/16 v5, 0x7d0

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE_TRIPLE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const v8, 0x3fa66666    # 1.3f

    move-object v7, v13

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModShips;->turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 128
    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    const/4 v2, 0x4

    iput v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->missileCount:I

    .line 129
    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    const/4 v1, 0x4

    new-array v1, v1, [Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v4, -0x3cea0000    # -150.0f

    const/high16 v5, 0x42700000    # 60.0f

    invoke-direct {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v4, 0x43160000    # 150.0f

    const/high16 v5, 0x42700000    # 60.0f

    invoke-direct {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/high16 v5, 0x42dc0000    # 110.0f

    invoke-direct {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v5, 0x42dc0000    # 110.0f

    invoke-direct {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v3, v1, v2

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->missileExitPoint:[Lfr/testudo/spacecorsair/engine/Vector2;

    .line 131
    const/4 v0, 0x6

    new-array v13, v0, [F

    fill-array-data v13, :array_1368

    .line 132
    sget-object v14, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v16, 0xd

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullMonolith"

    const-string v2, "Monolith"

    const/4 v3, 0x4

    const/4 v4, 0x1

    const-string v5, "Line battleship"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "monolith"

    const/16 v7, 0x258

    const/16 v8, 0xf

    const v9, 0x10c8e0

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Line battleship</b>: +30% shield capacity and an enormous hull."

    .line 133
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "A Republic line battleship whose layered hull gives escort crews time to regroup behind its spine."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v14, v15

    .line 134
    const v1, 0x3fa66666    # 1.3f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldCap:F

    .line 135
    const v1, 0x3e2e147b    # 0.17f

    const v2, 0x3f80c49c    # 1.006f

    const v3, 0x3e99999a    # 0.3f

    const/high16 v4, 0x40d00000    # 6.5f

    const/16 v5, 0xfa0

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE_TRIPLE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const v8, 0x3f99999a    # 1.2f

    move-object v7, v13

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModShips;->turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 136
    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    const/high16 v1, 0x42b40000    # 90.0f

    const/high16 v2, -0x3cae0000    # -210.0f

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModShips;->twinMissiles(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;FF)V

    .line 137
    sget-object v14, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v15, 0xe

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullTempest"

    const-string v2, "Tempest"

    const/4 v3, 0x4

    const/4 v4, 0x2

    const-string v5, "Artillery battleship"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "tempest"

    const/16 v7, 0x258

    const/16 v8, 0x11

    const v9, 0x1cfde0

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Artillery</b>: +45% laser damage but 10% slower reload."

    .line 138
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Gold-plated, slow and absolutely devastating at range."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v14, v16

    .line 139
    const v1, 0x3fb9999a    # 1.45f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dmg:F

    .line 140
    const v1, 0x3f8ccccd    # 1.1f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->reload:F

    .line 141
    const v1, 0x3e23d70a    # 0.16f

    const v2, 0x3f80c49c    # 1.006f

    const v3, 0x3e8f5c29    # 0.28f

    const/high16 v4, 0x40c00000    # 6.0f

    const/16 v5, 0x1068

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE_TRIPLE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const v8, 0x3f99999a    # 1.2f

    move-object v7, v13

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModShips;->turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 142
    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    const/high16 v1, 0x42b40000    # 90.0f

    const/high16 v2, -0x3cae0000    # -210.0f

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModShips;->twinMissiles(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;FF)V

    .line 144
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v14, 0xf

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullLeviathan"

    const-string v2, "Leviathan"

    const/4 v3, 0x6

    const/4 v4, 0x3

    const-string v5, "Titan"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "leviathan"

    const/16 v7, 0x3e8

    const/16 v8, 0x11

    const v9, 0x6acfc0

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Titan</b>: +25% laser damage, +50% shield capacity, six heavy turrets (2.5x damage per shot), four siege-missile tubes (1.9x damage, 55% wider blast, slower reload).<br><b>Doomsday Lance</b> (DOOMSDAY button): 2.5 s charge, then a 4 s lance straight ahead (2800 range, 60% as wide as the hull) that wipes everything in its path; mission bosses lose ~8% of their hull per lance and titan-class capitals ~2.5% (they take dozens). The titan cannot move, turn or fire while it charges and fires. 90 s cooldown."

    .line 145
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "The Leviathan anchors a Republic defense line; its lance waits until every civilian convoy is clear."

    .line 148
    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v13, v15

    .line 149
    const/high16 v1, 0x3fa00000    # 1.25f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dmg:F

    .line 150
    const/high16 v1, 0x3fc00000    # 1.5f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldCap:F

    .line 151
    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->doomsday:Z

    .line 153
    const v1, 0x3df5c28f    # 0.12f

    const v2, 0x3f80a3d7    # 1.005f

    const v3, 0x3e3851ec    # 0.18f

    const/high16 v4, 0x41600000    # 14.0f

    const/16 v5, 0x4e20

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE_TRIPLE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const/16 v7, 0xc

    new-array v7, v7, [F

    fill-array-data v7, :array_1378

    const v8, 0x3f8ccccd    # 1.1f

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModShips;->turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 155
    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    const/4 v2, 0x4

    iput v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->missileCount:I

    .line 156
    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    const/4 v1, 0x4

    new-array v1, v1, [Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v4, -0x3d900000    # -60.0f

    const/high16 v5, 0x43160000    # 150.0f

    invoke-direct {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v4, 0x42700000    # 60.0f

    const/high16 v5, 0x43160000    # 150.0f

    invoke-direct {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v4, -0x3d240000    # -110.0f

    const/high16 v5, -0x3cb80000    # -200.0f

    invoke-direct {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v4, 0x42dc0000    # 110.0f

    const/high16 v5, -0x3cb80000    # -200.0f

    invoke-direct {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v3, v1, v2

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->missileExitPoint:[Lfr/testudo/spacecorsair/engine/Vector2;

    .line 159
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v15, 0x10

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullComet"

    const-string v2, "Comet"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "Racer"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "comet"

    const/16 v7, 0x5a

    const/4 v8, 0x2

    const/16 v9, 0x4e20

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Racer</b>: the fastest Tech I hull in the game."

    .line 160
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "A Helion racer made to turn a clear route into a record; its light frame rewards speed over a fair duel."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->hel(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    aput-object v0, v13, v14

    .line 161
    const v1, 0x3f428f5c    # 0.76f

    const v2, 0x3f81eb85    # 1.015f

    const v3, 0x40666666    # 3.6f

    const v4, 0x3f666666    # 0.9f

    const/16 v5, 0xdc

    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModShips;->small(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFI)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 162
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v14, 0x11

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullKite"

    const-string v2, "Kite"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "Escort"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "kite"

    const/16 v7, 0x5a

    const/4 v8, 0x1

    const/16 v9, 0x2ee0

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Escort</b>: +15% shield capacity."

    .line 163
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "A compact patrol frigate sold on one promise: help will find you before the route closes."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->hel(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    aput-object v0, v13, v15

    .line 164
    const v1, 0x3f933333    # 1.15f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldCap:F

    .line 165
    const v1, 0x3f19999a    # 0.6f

    const v2, 0x3f81eb85    # 1.015f

    const v3, 0x40466666    # 3.1f

    const v4, 0x3f866666    # 1.05f

    const/16 v5, 0xf0

    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModShips;->small(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFI)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 166
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v15, 0x12

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullTalon"

    const-string v2, "Talon"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "Interceptor"

    const-string v6, "talon"

    const/16 v7, 0x55

    const/4 v8, 0x5

    const v9, 0xc350

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Interceptor</b>: +10% laser damage, extreme agility."

    .line 167
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Swept-wing interceptor, banned from three racing circuits."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->hel(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    aput-object v0, v13, v14

    .line 168
    const v1, 0x3f8ccccd    # 1.1f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dmg:F

    .line 169
    const v1, 0x3f59999a    # 0.85f

    const v2, 0x3f820c4a    # 1.016f

    const/high16 v3, 0x40900000    # 4.5f

    const v4, 0x3f666666    # 0.9f

    const/16 v5, 0xc8

    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModShips;->small(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFI)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 170
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v14, 0x13

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullNightjar"

    const-string v2, "Nightjar"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "Strike craft"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "nightjar"

    const/16 v7, 0x5f

    const/4 v8, 0x6

    const v9, 0xfde8

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Strike craft</b>: +30% laser damage, -25% hull."

    .line 171
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Black hull, red eyes. Helion denies building it."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->hel(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    aput-object v0, v13, v15

    .line 172
    const v1, 0x3fa66666    # 1.3f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dmg:F

    .line 173
    const v1, 0x3f3851ec    # 0.72f

    const v2, 0x3f81eb85    # 1.015f

    const v3, 0x40733333    # 3.8f

    const/high16 v4, 0x3f400000    # 0.75f

    const/16 v5, 0xd2

    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModShips;->small(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFI)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 174
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v15, 0x14

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullSeraph"

    const-string v2, "Seraph"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string v5, "Escort destroyer"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "seraph"

    const/16 v7, 0x8c

    const/4 v8, 0x5

    const v9, 0xcb20

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Escort destroyer</b>: +15% shield capacity, one rotating cannon."

    .line 175
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "The Authority sends Seraphs ahead of its convoys, where a bright beacon can matter as much as a gun."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->hel(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    aput-object v0, v13, v14

    .line 176
    const v1, 0x3f933333    # 1.15f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldCap:F

    .line 177
    const v1, 0x3ee66666    # 0.45f

    const v2, 0x3f816873    # 1.011f

    const v3, 0x400ccccd    # 2.2f

    const/high16 v4, 0x3fc00000    # 1.5f

    const/16 v5, 0x17c

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_1394

    const v8, 0x3fe66666    # 1.8f

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModShips;->turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 178
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v14, 0x15

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullAurora"

    const-string v2, "Aurora"

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-string v5, "Shield destroyer"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "aurora"

    const/16 v7, 0x96

    const/4 v8, 0x7

    const v9, 0x17318

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Shield destroyer</b>: +40% shield capacity and +20% shield regeneration."

    .line 179
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Helion\'s prestige destroyer: more shield emitter than hull."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->hel(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    aput-object v0, v13, v15

    .line 180
    const v1, 0x3fb33333    # 1.4f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldCap:F

    .line 181
    const v1, 0x3f99999a    # 1.2f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldRegen:F

    .line 182
    const v1, 0x3edc28f6    # 0.43f

    const v2, 0x3f816873    # 1.011f

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x3fc00000    # 1.5f

    const/16 v5, 0x190

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_139c

    const v8, 0x3fe66666    # 1.8f

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModShips;->turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 183
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v15, 0x16

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullRaven"

    const-string v2, "Raven"

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-string v5, "Bomber"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "raven"

    const/16 v7, 0x96

    const/16 v8, 0x8

    const v9, 0x1d4c0

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Bomber</b>: twin missile tubes and 35% faster missile reload."

    .line 184
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Stealth-coated bomber with two internal launch bays."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->hel(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    aput-object v0, v13, v14

    .line 185
    const v1, 0x3f266666    # 0.65f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->missileReload:F

    .line 186
    const v1, 0x3ef5c28f    # 0.48f

    const v2, 0x3f818937    # 1.012f

    const v3, 0x4019999a    # 2.4f

    const v4, 0x3fb33333    # 1.4f

    const/16 v5, 0x1a4

    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModShips;->small(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFI)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 187
    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    const/high16 v1, 0x420c0000    # 35.0f

    const/high16 v2, -0x3de00000    # -40.0f

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModShips;->twinMissiles(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;FF)V

    .line 189
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v14, 0x17

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullBulldog"

    const-string v2, "Bulldog"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string v5, "Brawler"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "bulldog"

    const/16 v7, 0x96

    const/4 v8, 0x5

    const v9, 0xbb80

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Brawler</b>: double hull plating and two rotating cannons."

    .line 190
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "A Reaver brawler with room for two cannons and no patience for a captain who breaks crew trust."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->iron(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    aput-object v0, v13, v15

    .line 191
    const v1, 0x3ec28f5c    # 0.38f

    const v2, 0x3f8147ae    # 1.01f

    const v3, 0x3fd9999a    # 1.7f

    const/high16 v4, 0x40000000    # 2.0f

    const/16 v5, 0x208

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const/4 v7, 0x4

    new-array v7, v7, [F

    fill-array-data v7, :array_13a4

    const v8, 0x3fcccccd    # 1.6f

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModShips;->turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 192
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v15, 0x18

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullIronside"

    const-string v2, "Ironside"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "Gun cruiser"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ironside"

    const/16 v7, 0x140

    const/16 v8, 0x9

    const v9, 0x2bf20

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Gun cruiser</b>: three cannon turrets, +10% laser damage, heavy armour."

    .line 193
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Three patrol hulls became one Ironclad cruiser, reinforced wherever the miners said the first one failed."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->iron(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    aput-object v0, v13, v14

    .line 194
    const v1, 0x3f8ccccd    # 1.1f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dmg:F

    .line 195
    const v1, 0x3e8f5c29    # 0.28f

    const v2, 0x3f810625    # 1.008f

    const v3, 0x3f59999a    # 0.85f

    const/high16 v4, 0x40400000    # 3.0f

    const/16 v5, 0x44c

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE_TRIPLE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const/4 v7, 0x6

    new-array v7, v7, [F

    fill-array-data v7, :array_13b0

    const v8, 0x3fa66666    # 1.3f

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModShips;->turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 196
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v14, 0x19

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullFoundry"

    const-string v2, "Foundry"

    const/4 v3, 0x7

    const/4 v4, 0x2

    const-string v5, "Industrial foundry"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "foundry"

    const/16 v7, 0x12c

    const/16 v8, 0xa

    const v9, 0x3a980

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Foundry</b>: cargo hold x2.5 and on-board repair works (0.5% hull per second)."

    .line 197
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Mobile refinery and repair yard in one ugly hull."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->iron(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    aput-object v0, v13, v15

    .line 198
    const/high16 v1, 0x40200000    # 2.5f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cargo:F

    .line 199
    const v1, 0x3ba3d70a    # 0.005f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->hullRegen:F

    .line 200
    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3f8126e9    # 1.009f

    const v3, 0x3f4ccccd    # 0.8f

    const v4, 0x404ccccd    # 3.2f

    const/16 v5, 0x5dc

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const/4 v7, 0x4

    new-array v7, v7, [F

    fill-array-data v7, :array_13c0

    const v8, 0x3fb33333    # 1.4f

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModShips;->turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 202
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v15, 0x1a

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullTidewarden"

    const-string v2, "Tidewarden"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string v5, "Picket"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "tidewarden"

    const/16 v7, 0x82

    const/4 v8, 0x4

    const v9, 0x9470

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Picket</b>: 8% faster laser reload, one rotating cannon."

    .line 203
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "A Frontier picket watches the public lane and holds its mark until a rescue signal answers."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->varn(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    aput-object v0, v13, v14

    .line 204
    const v1, 0x3f6b851f    # 0.92f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->reload:F

    .line 205
    const v1, 0x3eeb851f    # 0.46f

    const v2, 0x3f816873    # 1.011f

    const v3, 0x400ccccd    # 2.2f

    const v4, 0x3fb9999a    # 1.45f

    const/16 v5, 0x168

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_13cc

    const v8, 0x3ff33333    # 1.9f

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModShips;->turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 206
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v14, 0x1b

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullCobalt"

    const-string v2, "Cobalt"

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-string v5, "Gunboat"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "cobalt"

    const/16 v7, 0xbe

    const/4 v8, 0x7

    const v9, 0x186a0

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Gunboat</b>: +20% laser damage, two wing turrets."

    .line 207
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Wide-hulled gunboat with a turret on each wing."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->varn(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    aput-object v0, v13, v15

    .line 208
    const v1, 0x3f99999a    # 1.2f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dmg:F

    .line 209
    const v1, 0x3ed70a3d    # 0.42f

    const v2, 0x3f8147ae    # 1.01f

    const v3, 0x3ff33333    # 1.9f

    const v4, 0x3fd9999a    # 1.7f

    const/16 v5, 0x1c2

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const/4 v7, 0x4

    new-array v7, v7, [F

    fill-array-data v7, :array_13d4

    const v8, 0x3fe66666    # 1.8f

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModShips;->turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 210
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v15, 0x1c

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullMantis"

    const-string v2, "Mantis"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "Strike cruiser"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mantis"

    const/16 v7, 0x12c

    const/16 v8, 0x8

    const v9, 0x27100

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Strike cruiser</b>: +5% damage, 5% faster reload, three laser turrets."

    .line 211
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "A Republic strike cruiser that leaves formation only when a fast response can protect the whole patrol."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->varn(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    aput-object v0, v13, v14

    .line 212
    const v1, 0x3f866666    # 1.05f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dmg:F

    .line 213
    const v1, 0x3f733333    # 0.95f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->reload:F

    .line 214
    const v1, 0x3ea3d70a    # 0.32f

    const v2, 0x3f80e560    # 1.007f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x40200000    # 2.5f

    const/16 v5, 0x352

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE_TRIPLE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const/4 v7, 0x6

    new-array v7, v7, [F

    fill-array-data v7, :array_13e0

    const/high16 v8, 0x3fc00000    # 1.5f

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModShips;->turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 215
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v14, 0x1d

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullHydra"

    const-string v2, "Hydra"

    const/4 v3, 0x2

    const/4 v4, 0x2

    const-string v5, "Support cruiser"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "hydra"

    const/16 v7, 0x12c

    const/16 v8, 0xa

    const v9, 0x41eb0

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Support cruiser</b>: repairs 0.8% hull per second and +30% shield regeneration."

    .line 216
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Field-repair cruiser of the Syndicate\'s long-range fleets."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->varn(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    aput-object v0, v13, v15

    .line 217
    const v1, 0x3c03126f    # 0.008f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->hullRegen:F

    .line 218
    const v1, 0x3fa66666    # 1.3f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldRegen:F

    .line 219
    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3f80e560    # 1.007f

    const v3, 0x3f733333    # 0.95f

    const v4, 0x402ccccd    # 2.7f

    const/16 v5, 0x384

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE_TRIPLE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const/4 v7, 0x6

    new-array v7, v7, [F

    fill-array-data v7, :array_13f0

    const v8, 0x3fb33333    # 1.4f

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModShips;->turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 220
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v15, 0x1e

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullCardinal"

    const-string v2, "Cardinal"

    const/4 v3, 0x2

    const/4 v4, 0x2

    const-string v5, "Heavy assault cruiser"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "cardinal"

    const/16 v7, 0x140

    const/16 v8, 0xb

    const v9, 0x4e200

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Heavy assault</b>: +35% laser damage."

    .line 221
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Crimson-plated assault cruiser, the Syndicate\'s enforcer."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->varn(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    aput-object v0, v13, v14

    .line 222
    const v1, 0x3faccccd    # 1.35f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dmg:F

    .line 223
    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3f80e560    # 1.007f

    const v3, 0x3f733333    # 0.95f

    const v4, 0x40266666    # 2.6f

    const/16 v5, 0x3b6

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE_TRIPLE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const/4 v7, 0x6

    new-array v7, v7, [F

    fill-array-data v7, :array_1400

    const/high16 v8, 0x3fc00000    # 1.5f

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModShips;->turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 224
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v14, 0x1f

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullVerdant"

    const-string v2, "Verdant"

    const/4 v3, 0x3

    const/4 v4, 0x1

    const-string v5, "Line battlecruiser"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "verdant"

    const/16 v7, 0x1a4

    const/16 v8, 0xb

    const v9, 0x668a0

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Line battlecruiser</b>: +15% shield, +5% damage, twin missile tubes."

    .line 225
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Built to bridge escort and battleship duties, Verdant carries a Republic line forward without leaving it exposed."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->varn(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    aput-object v0, v13, v15

    .line 226
    const v1, 0x3f933333    # 1.15f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldCap:F

    .line 227
    const v1, 0x3f866666    # 1.05f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dmg:F

    .line 228
    const v1, 0x3e570a3d    # 0.21f

    const v2, 0x3f80e560    # 1.007f

    const/high16 v3, 0x3f000000    # 0.5f

    const v4, 0x40866666    # 4.2f

    const/16 v5, 0x708

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE_TRIPLE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const/4 v7, 0x6

    new-array v7, v7, [F

    fill-array-data v7, :array_1410

    const v8, 0x3fa66666    # 1.3f

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModShips;->turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 229
    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    const/high16 v1, 0x42700000    # 60.0f

    const/high16 v2, -0x3d100000    # -120.0f

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModShips;->twinMissiles(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;FF)V

    .line 230
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v15, 0x20

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullSovereign"

    const-string v2, "Sovereign"

    const/4 v3, 0x3

    const/4 v4, 0x2

    const-string v5, "Command battlecruiser"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sovereign"

    const/16 v7, 0x1b8

    const/16 v8, 0xd

    const v9, 0x927c0

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Command ship</b>: +35% shield capacity and +30% shield regeneration."

    .line 231
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Gold-trimmed flagship of Syndicate fleet commanders."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->varn(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    aput-object v0, v13, v14

    .line 232
    const v1, 0x3faccccd    # 1.35f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldCap:F

    .line 233
    const v1, 0x3fa66666    # 1.3f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldRegen:F

    .line 234
    const v1, 0x3e4ccccd    # 0.2f

    const v2, 0x3f80e560    # 1.007f

    const v3, 0x3ee66666    # 0.45f

    const/high16 v4, 0x40900000    # 4.5f

    const/16 v5, 0x7d0

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE_TRIPLE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const/4 v7, 0x6

    new-array v7, v7, [F

    fill-array-data v7, :array_1420

    const v8, 0x3fa66666    # 1.3f

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModShips;->turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 235
    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    const/high16 v1, 0x428c0000    # 70.0f

    const/high16 v2, -0x3cfe0000    # -130.0f

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModShips;->twinMissiles(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;FF)V

    .line 236
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v14, 0x21

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullSunlance"

    const-string v2, "Sunlance"

    const/4 v3, 0x3

    const/4 v4, 0x2

    const-string v5, "Artillery battlecruiser"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sunlance"

    const/16 v7, 0x1cc

    const/16 v8, 0xd

    const v9, 0x9c400

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Artillery</b>: +40% laser damage, 10% slower reload."

    .line 237
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "A spine-mounted gun with a battlecruiser wrapped around it."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->varn(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    aput-object v0, v13, v15

    .line 238
    const v1, 0x3fb33333    # 1.4f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dmg:F

    .line 239
    const v1, 0x3f8ccccd    # 1.1f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->reload:F

    .line 240
    const v1, 0x3e4ccccd    # 0.2f

    const v2, 0x3f80e560    # 1.007f

    const v3, 0x3ed70a3d    # 0.42f

    const v4, 0x4079999a    # 3.9f

    const/16 v5, 0x7d0

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE_TRIPLE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const/4 v7, 0x6

    new-array v7, v7, [F

    fill-array-data v7, :array_1430

    const v8, 0x3f99999a    # 1.2f

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModShips;->turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 241
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v15, 0x22

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullGraywall"

    const-string v2, "Graywall"

    const/4 v3, 0x7

    const/4 v4, 0x2

    const-string v5, "Bulk freighter"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "graywall"

    const/16 v7, 0x154

    const/16 v8, 0xc

    const v9, 0x61a80

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Bulk freighter</b>: cargo hold x5."

    .line 242
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "The largest hold in the Syndicate. Mostly empty space and paperwork."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->varn(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    aput-object v0, v13, v14

    .line 243
    const/high16 v1, 0x40a00000    # 5.0f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cargo:F

    .line 244
    const v1, 0x3e6147ae    # 0.22f

    const v2, 0x3f8126e9    # 1.009f

    const v3, 0x3f333333    # 0.7f

    const/high16 v4, 0x40800000    # 4.0f

    const/16 v5, 0x898

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const/4 v7, 0x4

    new-array v7, v7, [F

    fill-array-data v7, :array_1440

    const v8, 0x3fb33333    # 1.4f

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModShips;->turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 245
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v14, 0x23

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullImperator"

    const-string v2, "Imperator"

    const/4 v3, 0x4

    const/4 v4, 0x1

    const-string v5, "Line battleship"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "imperator"

    const/16 v7, 0x280

    const/16 v8, 0xf

    const v9, 0x124f80

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Line battleship</b>: +20% shield capacity and an enormous hull. Twin missile tubes."

    .line 246
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "An Ironclad battleship made to hold ground long enough for settlement crews to evacuate behind its armor."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->varn(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    aput-object v0, v13, v15

    .line 247
    const v1, 0x3f99999a    # 1.2f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldCap:F

    .line 248
    const v1, 0x3e2e147b    # 0.17f

    const v2, 0x3f80c49c    # 1.006f

    const v3, 0x3e99999a    # 0.3f

    const/high16 v4, 0x40f00000    # 7.5f

    const/16 v5, 0x1068

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE_TRIPLE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const/4 v7, 0x6

    new-array v7, v7, [F

    fill-array-data v7, :array_144c

    const v8, 0x3f99999a    # 1.2f

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModShips;->turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 249
    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v2, -0x3cb80000    # -200.0f

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModShips;->twinMissiles(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;FF)V

    .line 250
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v15, 0x24

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullWraith"

    const-string v2, "Wraith"

    const/4 v3, 0x4

    const/4 v4, 0x2

    const-string v5, "Strike battleship"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "wraith"

    const/16 v7, 0x258

    const/16 v8, 0x11

    const v9, 0x1e8480

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Strike battleship</b>: +35% laser damage and 10% faster reload."

    .line 251
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Violet-hulled battleship built to end fights quickly."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->varn(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    aput-object v0, v13, v14

    .line 252
    const v1, 0x3faccccd    # 1.35f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dmg:F

    .line 253
    const v1, 0x3f666666    # 0.9f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->reload:F

    .line 254
    const v1, 0x3e3851ec    # 0.18f

    const v2, 0x3f80c49c    # 1.006f

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x40c66666    # 6.2f

    const/16 v5, 0xfa0

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE_TRIPLE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const/4 v7, 0x6

    new-array v7, v7, [F

    fill-array-data v7, :array_145c

    const/high16 v8, 0x3fa00000    # 1.25f

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModShips;->turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 255
    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    const/high16 v1, 0x42b40000    # 90.0f

    const/high16 v2, -0x3cc20000    # -190.0f

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModShips;->twinMissiles(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;FF)V

    .line 256
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v14, 0x25

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullBastille"

    const-string v2, "Bastille"

    const/4 v3, 0x4

    const/4 v4, 0x2

    const-string v5, "Siege fortress"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "bastille"

    const/16 v7, 0x294

    const/16 v8, 0x10

    const v9, 0x1b7740

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Siege fortress</b>: +60% shield capacity, +40% shield regeneration, the thickest battleship hull."

    .line 257
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "When the Syndicate wants to stay somewhere, it parks a Bastille there."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->varn(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    aput-object v0, v13, v15

    .line 258
    const v1, 0x3fcccccd    # 1.6f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldCap:F

    .line 259
    const v1, 0x3fb33333    # 1.4f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldRegen:F

    .line 260
    const v1, 0x3e19999a    # 0.15f

    const v2, 0x3f80c49c    # 1.006f

    const v3, 0x3e851eb8    # 0.26f

    const/high16 v4, 0x41000000    # 8.0f

    const/16 v5, 0x11f8

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE_TRIPLE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const/4 v7, 0x6

    new-array v7, v7, [F

    fill-array-data v7, :array_146c

    const v8, 0x3f933333    # 1.15f

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModShips;->turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 261
    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    const/high16 v1, 0x42dc0000    # 110.0f

    const/high16 v2, -0x3cb80000    # -200.0f

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModShips;->twinMissiles(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;FF)V

    .line 262
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v15, 0x26

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullMoth"

    const-string v2, "Nebula Moth"

    const/4 v3, 0x5

    const/4 v4, 0x2

    const-string v5, "Carrier"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "moth"

    const/16 v7, 0x320

    const/16 v8, 0x11

    const v9, 0x3567e0

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Carrier</b>: can mount any Regent Hive Bay and its drones deal +30% damage. Huge hull, +25% shield capacity."

    .line 263
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "A Syndicate carrier: wings of hangars around a fragile spine."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->varn(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    aput-object v0, v13, v14

    .line 264
    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->carrier:Z

    .line 265
    const/high16 v1, 0x3fa00000    # 1.25f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldCap:F

    .line 266
    const v1, 0x3e051eb8    # 0.13f

    const v2, 0x3f80c49c    # 1.006f

    const v3, 0x3e6147ae    # 0.22f

    const/high16 v4, 0x41100000    # 9.0f

    const/16 v5, 0x2328

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE_TRIPLE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const/4 v7, 0x6

    new-array v7, v7, [F

    fill-array-data v7, :array_147c

    const v8, 0x3f8ccccd    # 1.1f

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModShips;->turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 267
    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    const/high16 v1, 0x43480000    # 200.0f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModShips;->twinMissiles(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;FF)V

    .line 269
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v14, 0x27

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullThrone"

    const-string v2, "Crimson Throne"

    const/4 v3, 0x6

    const/4 v4, 0x3

    const-string v5, "Raider titan"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "crimson_throne"

    const/16 v7, 0x3e8

    const/16 v8, 0x11

    const v9, 0x5b8d80

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Raider titan</b>: +45% laser damage, 10% faster reload, six heavy plasma cannons (2.5x damage per shot), four siege-missile tubes (1.9x damage, 55% wider blast, slower reload).<br><b>Furnace Nova</b> (DOOMSDAY button): 2 s charge, then a 3.5 s ring of fire that grows to 1400 around the hull and burns everything inside. The titan cannot move, turn or fire while it charges and burns. 75 s cooldown.<br><b>Furnace core</b>: the hull slowly repairs itself in combat (0.4% per second)."

    .line 270
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "The Reavers\' throne-ship. A furnace with a hull bolted around it, and a crew that likes it that way."

    .line 274
    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v13, v15

    .line 275
    const-string v1, "Crimson Reavers"

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->faction:Ljava/lang/String;

    .line 276
    const v1, 0x3fb9999a    # 1.45f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dmg:F

    .line 277
    const v1, 0x3f666666    # 0.9f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->reload:F

    .line 278
    const v1, 0x3f4ccccd    # 0.8f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->missileReload:F

    .line 279
    const v1, 0x3f666666    # 0.9f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldCap:F

    .line 280
    const v1, 0x3b83126f    # 0.004f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->hullRegen:F

    .line 281
    const-string v1, "turret_cannon"

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->turretArt:Ljava/lang/String;

    .line 282
    const v1, 0x3e051eb8    # 0.13f

    const v2, 0x3f80a3d7    # 1.005f

    const v3, 0x3e428f5c    # 0.19f

    const/high16 v4, 0x41480000    # 12.5f

    const/16 v5, 0x4650

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE_TRIPLE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const/16 v7, 0xc

    new-array v7, v7, [F

    fill-array-data v7, :array_148c

    const v8, 0x3f933333    # 1.15f

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModShips;->turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 284
    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    const/4 v2, 0x4

    iput v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->missileCount:I

    .line 285
    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    const/4 v1, 0x4

    new-array v1, v1, [Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v4, -0x3d600000    # -80.0f

    const/high16 v5, 0x42f00000    # 120.0f

    invoke-direct {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v4, 0x42a00000    # 80.0f

    const/high16 v5, 0x42f00000    # 120.0f

    invoke-direct {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v4, -0x3d100000    # -120.0f

    const/high16 v5, -0x3cea0000    # -150.0f

    invoke-direct {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v4, 0x42f00000    # 120.0f

    const/high16 v5, -0x3cea0000    # -150.0f

    invoke-direct {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v3, v1, v2

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->missileExitPoint:[Lfr/testudo/spacecorsair/engine/Vector2;

    .line 287
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v15, 0x28

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullDev"

    const-string v2, "DEV Prototype X-0"

    const/4 v3, 0x6

    const/4 v4, 0x3

    const-string v5, "Test prototype"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "dev_prototype"

    const/16 v7, 0x3e8

    const/4 v8, 0x1

    const v9, 0x3b9ac9ff

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>DEV ONLY</b> (gift code): 3x laser damage, half reload time, 4x shield, 2.5x missile reload speed, 10x cargo.<br><b>Doomsday Lance</b> (DOOMSDAY button, 12 s test cooldown) and <b>carrier bays</b>.<br><b>Phase Pulse</b>: every 6 seconds a green shockwave hits enemies within range.<br><b>Self-repair</b>: 2% hull per second."

    .line 288
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "A test bed bolted together by the mod\'s developers. It should not exist, and nobody will sell you one."

    .line 292
    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v13, v14

    .line 293
    const-string v1, "Developers"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->faction:Ljava/lang/String;

    .line 294
    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dev:Z

    .line 295
    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->doomsday:Z

    .line 296
    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->carrier:Z

    .line 297
    const/high16 v1, 0x40400000    # 3.0f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dmg:F

    .line 298
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->reload:F

    .line 299
    const/high16 v1, 0x40800000    # 4.0f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldCap:F

    .line 300
    const/high16 v1, 0x40800000    # 4.0f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldRegen:F

    .line 301
    const v1, 0x3ecccccd    # 0.4f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->missileReload:F

    .line 302
    const/high16 v1, 0x41200000    # 10.0f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cargo:F

    .line 303
    const v1, 0x3ca3d70a    # 0.02f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->hullRegen:F

    .line 304
    const-string v1, "turret_dev"

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->turretArt:Ljava/lang/String;

    .line 306
    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3f8147ae    # 1.01f

    const v3, 0x3ee66666    # 0.45f

    const/high16 v4, 0x41600000    # 14.0f

    const/16 v5, 0x4650

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE_TRIPLE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const/16 v7, 0xc

    new-array v7, v7, [F

    fill-array-data v7, :array_14a8

    const v8, 0x3f99999a    # 1.2f

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModShips;->turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 308
    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    const/4 v2, 0x4

    iput v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->missileCount:I

    .line 309
    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    const/4 v1, 0x4

    new-array v1, v1, [Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v4, -0x3ca40000    # -220.0f

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v4, 0x435c0000    # 220.0f

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v4, -0x3c380000    # -400.0f

    const/high16 v5, 0x41900000    # 18.0f

    invoke-direct {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v4, 0x43c80000    # 400.0f

    const/high16 v5, 0x41900000    # 18.0f

    invoke-direct {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v3, v1, v2

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->missileExitPoint:[Lfr/testudo/spacecorsair/engine/Vector2;

    .line 311
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v14, 0x29

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullSecretSpartan"

    const-string v2, "SRS Resolute"

    const/4 v3, 0x3

    const/4 v4, 0x3

    const-string v5, "Fleet escort"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "secret_spartan"

    const/16 v7, 0x1cc

    const/16 v8, 0xe

    const v9, 0x186a00

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Fleet escort</b> (Honored with the Spartan Republic): +60% shield capacity, +40% shield regeneration, +10% laser damage."

    .line 312
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "The Resolute takes the first strike in a mixed patrol and holds position until every Republic vessel can withdraw."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v13, v15

    .line 313
    const-string v1, "Spartan Republic"

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->faction:Ljava/lang/String;

    .line 314
    const-string v1, "spartan"

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->secret:Ljava/lang/String;

    .line 315
    const v1, 0x3fcccccd    # 1.6f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldCap:F

    .line 316
    const v1, 0x3fb33333    # 1.4f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldRegen:F

    .line 317
    const v1, 0x3f8ccccd    # 1.1f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dmg:F

    .line 318
    const v1, 0x3e6147ae    # 0.22f

    const v2, 0x3f80e560    # 1.007f

    const/high16 v3, 0x3f000000    # 0.5f

    const v4, 0x4099999a    # 4.8f

    const/16 v5, 0x7d0

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE_TRIPLE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const/16 v7, 0xa

    new-array v7, v7, [F

    fill-array-data v7, :array_14c4

    const v8, 0x3fa66666    # 1.3f

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModShips;->turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 319
    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    const/high16 v1, 0x428c0000    # 70.0f

    const/high16 v2, -0x3cea0000    # -150.0f

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModShips;->twinMissiles(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;FF)V

    .line 320
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v15, 0x2a

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullSecretReaver"

    const-string v2, "Pillager\'s Due"

    const/4 v3, 0x4

    const/4 v4, 0x3

    const-string v5, "Close-range raider"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "secret_reaver"

    const/16 v7, 0x280

    const/16 v8, 0x10

    const v9, 0x30d400

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Close-range raider</b> (Honored with the Crimson Reavers): +50% laser damage, 10% faster reload, slow hull self-repair."

    .line 321
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Crews earn the Due by surviving a season aboard it; its mismatched armor is a record of every ship that failed to take it."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v13, v14

    .line 322
    const-string v1, "Crimson Reavers"

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->faction:Ljava/lang/String;

    .line 323
    const-string v1, "reaver"

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->secret:Ljava/lang/String;

    .line 324
    const/high16 v1, 0x3fc00000    # 1.5f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dmg:F

    .line 325
    const v1, 0x3f666666    # 0.9f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->reload:F

    .line 326
    const v1, 0x3ba3d70a    # 0.005f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->hullRegen:F

    .line 327
    const v1, 0x3e428f5c    # 0.19f

    const v2, 0x3f80c49c    # 1.006f

    const v3, 0x3eb851ec    # 0.36f

    const v4, 0x40d33333    # 6.6f

    const/16 v5, 0xfa0

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE_TRIPLE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const/16 v7, 0xc

    new-array v7, v7, [F

    fill-array-data v7, :array_14dc

    const v8, 0x3fa66666    # 1.3f

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModShips;->turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 328
    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    const/high16 v1, 0x42b40000    # 90.0f

    const/high16 v2, -0x3cb80000    # -200.0f

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModShips;->twinMissiles(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;FF)V

    .line 329
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v14, 0x2b

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullSecretKretari"

    const-string v2, "Cradle of Echoes"

    const/4 v3, 0x2

    const/4 v4, 0x3

    const-string v5, "Brood courier"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "secret_kretari"

    const/16 v7, 0x14a

    const/16 v8, 0xc

    const v9, 0xdbba0

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Brood courier</b> (Honored with the Kre\'tari Brood): repairs 1.5% of its hull every second, +30% shield regeneration, can mount any Regent Hive Bay (+30% drone damage)."

    .line 330
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "The Cradle carries memory keepers between nests, its paired pods pulsing with the shared history of every broodling aboard."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v13, v15

    .line 331
    const-string v1, "Kre\'tari Brood"

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->faction:Ljava/lang/String;

    .line 332
    const-string v1, "kretari"

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->secret:Ljava/lang/String;

    .line 333
    const v1, 0x3c75c28f    # 0.015f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->hullRegen:F

    .line 334
    const v1, 0x3fa66666    # 1.3f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldRegen:F

    .line 335
    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->carrier:Z

    .line 336
    const v1, 0x3eae147b    # 0.34f

    const v2, 0x3f80e560    # 1.007f

    const v3, 0x3f866666    # 1.05f

    const v4, 0x4039999a    # 2.9f

    const/16 v5, 0x3b6

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE_TRIPLE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const/16 v7, 0x8

    new-array v7, v7, [F

    fill-array-data v7, :array_14f8

    const v8, 0x3fa66666    # 1.3f

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModShips;->turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 337
    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    const/high16 v1, 0x42700000    # 60.0f

    const/high16 v2, -0x3d240000    # -110.0f

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModShips;->twinMissiles(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;FF)V

    .line 338
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v15, 0x2c

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullSecretVarn"

    const-string v2, "Indemnity Crown"

    const/4 v3, 0x3

    const/4 v4, 0x3

    const-string v5, "Convoy interdiction"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "secret_varn"

    const/16 v7, 0x1cc

    const/16 v8, 0xe

    const v9, 0x186a00

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Convoy interdiction</b> (Honored with the Varn Syndicate): cargo hold x3, +25% laser damage, +30% shield capacity."

    .line 339
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "The ship appears on the ledger as a secure transfer vessel; its protected core ensures the Syndicate\'s most important cargo arrives intact."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v13, v14

    .line 340
    const-string v1, "Varn Syndicate"

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->faction:Ljava/lang/String;

    .line 341
    const-string v1, "varn"

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->secret:Ljava/lang/String;

    .line 342
    const/high16 v1, 0x40400000    # 3.0f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cargo:F

    .line 343
    const/high16 v1, 0x3fa00000    # 1.25f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dmg:F

    .line 344
    const v1, 0x3fa66666    # 1.3f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldCap:F

    .line 345
    const v1, 0x3e570a3d    # 0.21f

    const v2, 0x3f80e560    # 1.007f

    const/high16 v3, 0x3f000000    # 0.5f

    const v4, 0x4099999a    # 4.8f

    const/16 v5, 0x7d0

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE_TRIPLE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const/16 v7, 0xa

    new-array v7, v7, [F

    fill-array-data v7, :array_150c

    const v8, 0x3fa66666    # 1.3f

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModShips;->turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 346
    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    const/high16 v1, 0x428c0000    # 70.0f

    const/high16 v2, -0x3cea0000    # -150.0f

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModShips;->twinMissiles(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;FF)V

    .line 347
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v14, 0x2d

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullSecretIronclad"

    const-string v2, "Foundry Sentinel"

    const/4 v3, 0x4

    const/4 v4, 0x3

    const-string v5, "Settlement defender"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "secret_ironclad"

    const/16 v7, 0x280

    const/16 v8, 0x10

    const v9, 0x2dc6c0

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Settlement defender</b> (Honored with the Ironclad Militia): repairs 1.5% of its hull every second, +40% shield capacity, +10% laser damage."

    .line 348
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "The Sentinel is assembled from workshop-standard plates, so a settlement can mend it even when the nearest shipyard is weeks away."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v13, v15

    .line 349
    const-string v1, "Ironclad Militia"

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->faction:Ljava/lang/String;

    .line 350
    const-string v1, "ironclad"

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->secret:Ljava/lang/String;

    .line 351
    const v1, 0x3c75c28f    # 0.015f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->hullRegen:F

    .line 352
    const v1, 0x3fb33333    # 1.4f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldCap:F

    .line 353
    const v1, 0x3f8ccccd    # 1.1f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dmg:F

    .line 354
    const v1, 0x3e3851ec    # 0.18f

    const v2, 0x3f80c49c    # 1.006f

    const v3, 0x3ea8f5c3    # 0.33f

    const/high16 v4, 0x40e00000    # 7.0f

    const/16 v5, 0x1068

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE_TRIPLE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const/16 v7, 0xc

    new-array v7, v7, [F

    fill-array-data v7, :array_1524

    const v8, 0x3fa66666    # 1.3f

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModShips;->turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 355
    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v2, -0x3cb80000    # -200.0f

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModShips;->twinMissiles(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;FF)V

    .line 356
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const/16 v15, 0x2e

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullSecretHelion"

    const-string v2, "Far Meridian"

    const/4 v3, 0x3

    const/4 v4, 0x3

    const-string v5, "Long-range route runner"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "secret_helion"

    const/16 v7, 0x1cc

    const/16 v8, 0xe

    const v9, 0x186a00

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Long-range route runner</b> (Honored with the Helion Combine): the fastest battlecruiser, +20% laser damage, 10% faster reload."

    .line 357
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "The Far Meridian keeps a convoy moving across distant systems, with collectors shaped to work far from a friendly station."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v13, v14

    .line 358
    const-string v1, "Helion Combine"

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->faction:Ljava/lang/String;

    .line 359
    const-string v1, "helion"

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->secret:Ljava/lang/String;

    .line 360
    const v1, 0x3f99999a    # 1.2f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dmg:F

    .line 361
    const v1, 0x3f666666    # 0.9f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->reload:F

    .line 362
    const v1, 0x3e947ae1    # 0.29f

    const v2, 0x3f80e560    # 1.007f

    const v3, 0x3f1eb852    # 0.62f

    const v4, 0x40866666    # 4.2f

    const/16 v5, 0x6a4

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE_TRIPLE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const/4 v7, 0x6

    new-array v7, v7, [F

    fill-array-data v7, :array_1540

    const v8, 0x3fa66666    # 1.3f

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModShips;->turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 363
    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    const/high16 v1, 0x428c0000    # 70.0f

    const/high16 v2, -0x3cea0000    # -150.0f

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModShips;->twinMissiles(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;FF)V

    .line 364
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    const-string v1, "hullSecretWarden"

    const-string v2, "Wayfarer Prime"

    const/4 v3, 0x2

    const/4 v4, 0x3

    const-string v5, "Deep-range patrol"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "secret_warden"

    const/16 v7, 0x14a

    const/16 v8, 0xc

    const v9, 0xdbba0

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const-string v11, "<b>Deep-range patrol</b> (Honored with the Frontier Authority): +30% shield capacity, +25% laser damage, very fast for a cruiser."

    .line 365
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "The Wayfarer Prime works beyond reliable comms, leaving a clear route marker wherever it finds a stranded crew."

    invoke-static {v12}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lfr/testudo/spacecorsair/mod/ModShips$Hull;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v13, v15

    .line 366
    const-string v1, "Frontier Authority"

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->faction:Ljava/lang/String;

    .line 367
    const-string v1, "warden"

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->secret:Ljava/lang/String;

    .line 368
    const v1, 0x3fa66666    # 1.3f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldCap:F

    .line 369
    const/high16 v1, 0x3fa00000    # 1.25f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dmg:F

    .line 370
    const v1, 0x3eb851ec    # 0.36f

    const v2, 0x3f80e560    # 1.007f

    const v3, 0x3f8ccccd    # 1.1f

    const v4, 0x40333333    # 2.8f

    const/16 v5, 0x384

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE_TRIPLE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const/16 v7, 0x8

    new-array v7, v7, [F

    fill-array-data v7, :array_1550

    const v8, 0x3fa66666    # 1.3f

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModShips;->turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 371
    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    const/high16 v1, 0x425c0000    # 55.0f

    const/high16 v2, -0x3d100000    # -120.0f

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModShips;->twinMissiles(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;FF)V

    .line 372
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModShips;->applyHardpoints()V

    .line 775
    const/16 v0, 0x7530

    sput v0, Lfr/testudo/spacecorsair/mod/ModShips;->doomsdayTimer:I

    .line 776
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModShips;->lanceEnd:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 777
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModShips;->lanceFlash:I

    .line 794
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModShips;->tmp:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void

    .line 25
    nop

    :array_1304
    .array-data 4
        0x0
        0x1
        0x2
        0x4
        0x5
        0x6
        0x7
        0x3
    .end array-data

    .line 80
    :array_1318
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 85
    :array_1320
    .array-data 4
        0x0
        -0x3de00000    # -40.0f
        0x0
        0x42340000    # 45.0f
    .end array-data

    .line 87
    :array_132c
    .array-data 4
        0x0
        -0x3d560000    # -85.0f
        0x0
        0x40a00000    # 5.0f
        0x0
        0x42b40000    # 90.0f
    .end array-data

    .line 107
    :array_133c
    .array-data 4
        0x0
        0x41700000    # 15.0f
    .end array-data

    .line 111
    :array_1344
    .array-data 4
        0x0
        0x41a00000    # 20.0f
    .end array-data

    .line 115
    :array_134c
    .array-data 4
        0x0
        -0x3dcc0000    # -45.0f
        0x0
        0x42700000    # 60.0f
    .end array-data

    .line 117
    :array_1358
    .array-data 4
        0x0
        0x42b40000    # 90.0f
        0x0
        0x41c80000    # 25.0f
        0x0
        -0x3de00000    # -40.0f
    .end array-data

    .line 131
    :array_1368
    .array-data 4
        0x0
        0x41000000    # 8.0f
        0x0
        -0x3cf90000    # -135.0f
        0x0
        0x43070000    # 135.0f
    .end array-data

    .line 153
    :array_1378
    .array-data 4
        -0x3d1c0000    # -114.0f
        0x43000000    # 128.0f
        0x42e40000    # 114.0f
        0x43000000    # 128.0f
        -0x3d140000    # -118.0f
        -0x3d800000    # -64.0f
        0x42ec0000    # 118.0f
        -0x3d800000    # -64.0f
        -0x3d1c0000    # -114.0f
        -0x3c7f8000    # -257.0f
        0x42e40000    # 114.0f
        -0x3c7f8000    # -257.0f
    .end array-data

    .line 177
    :array_1394
    .array-data 4
        0x0
        0x41700000    # 15.0f
    .end array-data

    .line 182
    :array_139c
    .array-data 4
        0x0
        0x41700000    # 15.0f
    .end array-data

    .line 191
    :array_13a4
    .array-data 4
        0x0
        -0x3e100000    # -30.0f
        0x0
        0x42000000    # 32.0f
    .end array-data

    .line 195
    :array_13b0
    .array-data 4
        0x0
        -0x3d420000    # -95.0f
        0x0
        0x0
        0x0
        0x42b40000    # 90.0f
    .end array-data

    .line 200
    :array_13c0
    .array-data 4
        0x0
        -0x3d900000    # -60.0f
        0x0
        0x428c0000    # 70.0f
    .end array-data

    .line 205
    :array_13cc
    .array-data 4
        0x0
        0x40a00000    # 5.0f
    .end array-data

    .line 209
    :array_13d4
    .array-data 4
        -0x3db80000    # -50.0f
        0x40a00000    # 5.0f
        0x42480000    # 50.0f
        0x40a00000    # 5.0f
    .end array-data

    .line 214
    :array_13e0
    .array-data 4
        0x0
        -0x3d600000    # -80.0f
        0x0
        0x0
        0x0
        0x42a00000    # 80.0f
    .end array-data

    .line 219
    :array_13f0
    .array-data 4
        0x0
        -0x3d600000    # -80.0f
        0x0
        0x0
        0x0
        0x42a00000    # 80.0f
    .end array-data

    .line 223
    :array_1400
    .array-data 4
        0x0
        -0x3d560000    # -85.0f
        0x0
        0x0
        0x0
        0x42aa0000    # 85.0f
    .end array-data

    .line 228
    :array_1410
    .array-data 4
        0x0
        -0x3d240000    # -110.0f
        -0x3d900000    # -60.0f
        0x42200000    # 40.0f
        0x42700000    # 60.0f
        0x42200000    # 40.0f
    .end array-data

    .line 234
    :array_1420
    .array-data 4
        0x0
        -0x3d100000    # -120.0f
        -0x3d740000    # -70.0f
        0x42480000    # 50.0f
        0x428c0000    # 70.0f
        0x42480000    # 50.0f
    .end array-data

    .line 240
    :array_1430
    .array-data 4
        0x0
        -0x3de00000    # -40.0f
        -0x3d100000    # -120.0f
        0x41a00000    # 20.0f
        0x42f00000    # 120.0f
        0x41a00000    # 20.0f
    .end array-data

    .line 244
    :array_1440
    .array-data 4
        -0x3d900000    # -60.0f
        0x0
        0x42700000    # 60.0f
        0x0
    .end array-data

    .line 248
    :array_144c
    .array-data 4
        0x0
        -0x3cd60000    # -170.0f
        -0x3d240000    # -110.0f
        0x42200000    # 40.0f
        0x42dc0000    # 110.0f
        0x42200000    # 40.0f
    .end array-data

    .line 254
    :array_145c
    .array-data 4
        0x0
        -0x3cea0000    # -150.0f
        -0x3d380000    # -100.0f
        0x42700000    # 60.0f
        0x42c80000    # 100.0f
        0x42700000    # 60.0f
    .end array-data

    .line 260
    :array_146c
    .array-data 4
        0x0
        -0x3ce00000    # -160.0f
        -0x3d100000    # -120.0f
        0x42480000    # 50.0f
        0x42f00000    # 120.0f
        0x42480000    # 50.0f
    .end array-data

    .line 266
    :array_147c
    .array-data 4
        0x0
        -0x3d900000    # -60.0f
        -0x3c7e0000    # -260.0f
        0x42200000    # 40.0f
        0x43820000    # 260.0f
        0x42200000    # 40.0f
    .end array-data

    .line 282
    :array_148c
    .array-data 4
        -0x3dc40000    # -47.0f
        0x43610000    # 225.0f
        0x423c0000    # 47.0f
        0x43610000    # 225.0f
        -0x3da80000    # -54.0f
        -0x3c980000    # -232.0f
        0x42580000    # 54.0f
        -0x3c980000    # -232.0f
        -0x3d1c0000    # -114.0f
        -0x3c7d8000    # -261.0f
        0x42e40000    # 114.0f
        -0x3c7d8000    # -261.0f
    .end array-data

    .line 306
    :array_14a8
    .array-data 4
        -0x3d100000    # -120.0f
        0x42700000    # 60.0f
        0x42f00000    # 120.0f
        0x42700000    # 60.0f
        -0x3d100000    # -120.0f
        -0x3d900000    # -60.0f
        0x42f00000    # 120.0f
        -0x3d900000    # -60.0f
        -0x3c6a0000    # -300.0f
        0x41000000    # 8.0f
        0x43960000    # 300.0f
        0x41000000    # 8.0f
    .end array-data

    .line 318
    :array_14c4
    .array-data 4
        -0x3db80000    # -50.0f
        -0x3d900000    # -60.0f
        0x42480000    # 50.0f
        -0x3d900000    # -60.0f
        -0x3d8c0000    # -61.0f
        0x428a0000    # 69.0f
        0x42740000    # 61.0f
        0x428a0000    # 69.0f
        0x0
        0x42b60000    # 91.0f
    .end array-data

    .line 327
    :array_14dc
    .array-data 4
        -0x3d780000    # -68.0f
        -0x3d560000    # -85.0f
        0x42880000    # 68.0f
        -0x3d580000    # -84.0f
        -0x3d780000    # -68.0f
        0x40400000    # 3.0f
        0x42880000    # 68.0f
        0x40800000    # 4.0f
        -0x3d780000    # -68.0f
        0x42d20000    # 105.0f
        0x42880000    # 68.0f
        0x42d40000    # 106.0f
    .end array-data

    .line 336
    :array_14f8
    .array-data 4
        -0x3df00000    # -36.0f
        -0x3dd00000    # -44.0f
        0x420c0000    # 35.0f
        -0x3dd00000    # -44.0f
        -0x3dec0000    # -37.0f
        0x41f80000    # 31.0f
        0x42100000    # 36.0f
        0x41f80000    # 31.0f
    .end array-data

    .line 345
    :array_150c
    .array-data 4
        0x0
        -0x3d120000    # -119.0f
        -0x3dd40000    # -43.0f
        -0x3db00000    # -52.0f
        0x422c0000    # 43.0f
        -0x3db00000    # -52.0f
        0x422c0000    # 43.0f
        0x428e0000    # 71.0f
        -0x3dd40000    # -43.0f
        0x428e0000    # 71.0f
    .end array-data

    .line 354
    :array_1524
    .array-data 4
        -0x3cfc0000    # -132.0f
        -0x3d980000    # -58.0f
        0x43030000    # 131.0f
        -0x3d980000    # -58.0f
        -0x3cfc0000    # -132.0f
        0x42280000    # 42.0f
        0x43030000    # 131.0f
        0x42280000    # 42.0f
        -0x3cfc0000    # -132.0f
        0x430c0000    # 140.0f
        0x43030000    # 131.0f
        0x430c0000    # 140.0f
    .end array-data

    .line 362
    :array_1540
    .array-data 4
        -0x3d9c0000    # -57.0f
        -0x3d880000    # -62.0f
        0x42640000    # 57.0f
        -0x3d880000    # -62.0f
        0x0
        0x42a00000    # 80.0f
    .end array-data

    .line 370
    :array_1550
    .array-data 4
        -0x3e100000    # -30.0f
        -0x3e100000    # -30.0f
        0x41f00000    # 30.0f
        -0x3e100000    # -30.0f
        -0x3e100000    # -30.0f
        0x42080000    # 34.0f
        0x41f00000    # 30.0f
        0x42080000    # 34.0f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 9

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 745
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->hullFor(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v3

    .line 746
    if-nez v3, :cond_b

    .line 773
    :goto_a
    return-void

    .line 747
    :cond_b
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->offFaction(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 748
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->offFactionRate(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 752
    :goto_14
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->offFaction(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z

    move-result v4

    .line 753
    if-eqz v4, :cond_6d

    iget v0, v3, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dmg:F

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move v2, v0

    :goto_21
    if-eqz v4, :cond_71

    iget v0, v3, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->reload:F

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move v1, v0

    .line 754
    :goto_2a
    cmpl-float v0, v2, v5

    if-nez v0, :cond_32

    cmpl-float v0, v1, v5

    if-eqz v0, :cond_75

    .line 755
    :cond_32
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->bulletDamage:F

    mul-float/2addr v0, v2

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->bulletDamage:F

    .line 756
    iget-wide v6, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->milleSecBetweenShots:J

    long-to-float v0, v6

    mul-float/2addr v0, v1

    float-to-long v6, v0

    iput-wide v6, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->milleSecBetweenShots:J

    .line 757
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    if-eqz v0, :cond_75

    .line 758
    const/4 v0, 0x0

    :goto_43
    iget-object v5, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    array-length v5, v5

    if-ge v0, v5, :cond_75

    .line 759
    iget-object v5, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v5, v5, v0

    iget-object v6, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v6, v6, v0

    iget v6, v6, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->shootDamage:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v6, v6

    iput v6, v5, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->shootDamage:I

    .line 760
    iget-object v5, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v5, v5, v0

    iget-object v6, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v6, v6, v0

    iget v6, v6, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->timeBewteenShootInMilli:I

    int-to-float v6, v6

    mul-float/2addr v6, v1

    float-to-int v6, v6

    iput v6, v5, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->timeBewteenShootInMilli:I

    .line 758
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 750
    :cond_69
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->railReload(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    goto :goto_14

    .line 753
    :cond_6d
    iget v0, v3, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dmg:F

    move v2, v0

    goto :goto_21

    :cond_71
    iget v0, v3, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->reload:F

    move v1, v0

    goto :goto_2a

    .line 764
    :cond_75
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    if-eqz v0, :cond_a8

    .line 765
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v1, v0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    iget v2, v3, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldCap:F

    mul-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    .line 766
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v1, v0, Lfr/testudo/spacecorsair/business/player/Shield;->reloadUnitBySec:F

    iget v2, v3, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldRegen:F

    mul-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/player/Shield;->reloadUnitBySec:F

    .line 767
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v1, v0, Lfr/testudo/spacecorsair/business/player/Shield;->reloadTime:F

    iget v2, v3, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldDelay:F

    mul-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/player/Shield;->reloadTime:F

    .line 768
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a8

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    iput v1, v0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    .line 770
    :cond_a8
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->milleSecBetweenMissileShots:J

    long-to-float v0, v0

    iget v1, v3, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->missileReload:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->milleSecBetweenMissileShots:J

    .line 771
    invoke-static {p0, v3, v4}, Lfr/testudo/spacecorsair/mod/ModV35;->apply(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/mod/ModShips$Hull;Z)V

    .line 772
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTitan;->apply(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    goto/16 :goto_a
.end method

.method private static applyHardpoints()V
    .registers 15

    .prologue
    const/16 v14, 0x8

    const/4 v12, 0x7

    const/4 v13, 0x2

    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 378
    new-array v3, v14, [[Ljava/lang/String;

    new-array v0, v13, [Ljava/lang/String;

    const-string v2, "shade"

    aput-object v2, v0, v1

    const-string v2, "Frontier Authority"

    aput-object v2, v0, v11

    aput-object v0, v3, v1

    new-array v0, v13, [Ljava/lang/String;

    const-string v2, "hornet"

    aput-object v2, v0, v1

    const-string v2, "Spartan Republic"

    aput-object v2, v0, v11

    aput-object v0, v3, v11

    new-array v0, v13, [Ljava/lang/String;

    const-string v2, "raptor"

    aput-object v2, v0, v1

    const-string v2, "Crimson Reavers"

    aput-object v2, v0, v11

    aput-object v0, v3, v13

    const/4 v0, 0x3

    new-array v2, v13, [Ljava/lang/String;

    const-string v4, "sanctum"

    aput-object v4, v2, v1

    const-string v4, "Ironclad Militia"

    aput-object v4, v2, v11

    aput-object v2, v3, v0

    const/4 v0, 0x4

    new-array v2, v13, [Ljava/lang/String;

    const-string v4, "bulwark"

    aput-object v4, v2, v1

    const-string v4, "Frontier Authority"

    aput-object v4, v2, v11

    aput-object v2, v3, v0

    const/4 v0, 0x5

    new-array v2, v13, [Ljava/lang/String;

    const-string v4, "warlord"

    aput-object v4, v2, v1

    const-string v4, "Crimson Reavers"

    aput-object v4, v2, v11

    aput-object v2, v3, v0

    const/4 v0, 0x6

    new-array v2, v13, [Ljava/lang/String;

    const-string v4, "harbinger"

    aput-object v4, v2, v1

    const-string v4, "Kre\'tari Brood"

    aput-object v4, v2, v11

    aput-object v2, v3, v0

    new-array v0, v13, [Ljava/lang/String;

    const-string v2, "tempest"

    aput-object v2, v0, v1

    const-string v2, "Ironclad Militia"

    aput-object v2, v0, v11

    aput-object v0, v3, v12

    .line 380
    array-length v4, v3

    move v2, v1

    :goto_6e
    if-ge v2, v4, :cond_99

    aget-object v5, v3, v2

    .line 381
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    array-length v7, v6

    move v0, v1

    :goto_76
    if-ge v0, v7, :cond_95

    aget-object v8, v6, v0

    if-eqz v8, :cond_92

    iget-object v9, v8, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    aget-object v10, v5, v1

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_92

    iget-object v9, v8, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->faction:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_92

    aget-object v9, v5, v11

    iput-object v9, v8, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->faction:Ljava/lang/String;

    :cond_92
    add-int/lit8 v0, v0, 0x1

    goto :goto_76

    .line 380
    :cond_95
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6e

    .line 385
    :cond_99
    const/16 v0, 0x10

    new-array v3, v0, [[Ljava/lang/String;

    new-array v0, v13, [Ljava/lang/String;

    const-string v2, "hullBastion"

    aput-object v2, v0, v1

    const-string v2, "Spartan Republic"

    aput-object v2, v0, v11

    aput-object v0, v3, v1

    new-array v0, v13, [Ljava/lang/String;

    const-string v2, "hullMantis"

    aput-object v2, v0, v1

    const-string v2, "Spartan Republic"

    aput-object v2, v0, v11

    aput-object v0, v3, v11

    new-array v0, v13, [Ljava/lang/String;

    const-string v2, "hullVerdant"

    aput-object v2, v0, v1

    const-string v2, "Spartan Republic"

    aput-object v2, v0, v11

    aput-object v0, v3, v13

    const/4 v0, 0x3

    new-array v2, v13, [Ljava/lang/String;

    const-string v4, "hullMonolith"

    aput-object v4, v2, v1

    const-string v4, "Spartan Republic"

    aput-object v4, v2, v11

    aput-object v2, v3, v0

    const/4 v0, 0x4

    new-array v2, v13, [Ljava/lang/String;

    const-string v4, "hullLeviathan"

    aput-object v4, v2, v1

    const-string v4, "Spartan Republic"

    aput-object v4, v2, v11

    aput-object v2, v3, v0

    const/4 v0, 0x5

    new-array v2, v13, [Ljava/lang/String;

    const-string v4, "hullViper"

    aput-object v4, v2, v1

    const-string v4, "Crimson Reavers"

    aput-object v4, v2, v11

    aput-object v2, v3, v0

    const/4 v0, 0x6

    new-array v2, v13, [Ljava/lang/String;

    const-string v4, "hullAlbatros"

    aput-object v4, v2, v1

    const-string v4, "Crimson Reavers"

    aput-object v4, v2, v11

    aput-object v2, v3, v0

    new-array v0, v13, [Ljava/lang/String;

    const-string v2, "hullBulldog"

    aput-object v2, v0, v1

    const-string v2, "Crimson Reavers"

    aput-object v2, v0, v11

    aput-object v0, v3, v12

    new-array v0, v13, [Ljava/lang/String;

    const-string v2, "hullTidewarden"

    aput-object v2, v0, v1

    const-string v2, "Frontier Authority"

    aput-object v2, v0, v11

    aput-object v0, v3, v14

    const/16 v0, 0x9

    new-array v2, v13, [Ljava/lang/String;

    const-string v4, "hullSeraph"

    aput-object v4, v2, v1

    const-string v4, "Frontier Authority"

    aput-object v4, v2, v11

    aput-object v2, v3, v0

    const/16 v0, 0xa

    new-array v2, v13, [Ljava/lang/String;

    const-string v4, "hullKite"

    aput-object v4, v2, v1

    const-string v4, "Frontier Authority"

    aput-object v4, v2, v11

    aput-object v2, v3, v0

    const/16 v0, 0xb

    new-array v2, v13, [Ljava/lang/String;

    const-string v4, "hullMule"

    aput-object v4, v2, v1

    const-string v4, "Frontier Authority"

    aput-object v4, v2, v11

    aput-object v2, v3, v0

    const/16 v0, 0xc

    new-array v2, v13, [Ljava/lang/String;

    const-string v4, "hullIronside"

    aput-object v4, v2, v1

    const-string v4, "Ironclad Militia"

    aput-object v4, v2, v11

    aput-object v2, v3, v0

    const/16 v0, 0xd

    new-array v2, v13, [Ljava/lang/String;

    const-string v4, "hullTortoise"

    aput-object v4, v2, v1

    const-string v4, "Ironclad Militia"

    aput-object v4, v2, v11

    aput-object v2, v3, v0

    const/16 v0, 0xe

    new-array v2, v13, [Ljava/lang/String;

    const-string v4, "hullImperator"

    aput-object v4, v2, v1

    const-string v4, "Ironclad Militia"

    aput-object v4, v2, v11

    aput-object v2, v3, v0

    const/16 v0, 0xf

    new-array v2, v13, [Ljava/lang/String;

    const-string v4, "hullComet"

    aput-object v4, v2, v1

    const-string v4, "Helion Combine"

    aput-object v4, v2, v11

    aput-object v2, v3, v0

    .line 392
    array-length v4, v3

    move v2, v1

    :goto_171
    if-ge v2, v4, :cond_194

    aget-object v5, v3, v2

    .line 393
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    array-length v7, v6

    move v0, v1

    :goto_179
    if-ge v0, v7, :cond_190

    aget-object v8, v6, v0

    if-eqz v8, :cond_18d

    iget-object v9, v8, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->id:Ljava/lang/String;

    aget-object v10, v5, v1

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18d

    aget-object v9, v5, v11

    iput-object v9, v8, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->faction:Ljava/lang/String;

    :cond_18d
    add-int/lit8 v0, v0, 0x1

    goto :goto_179

    .line 392
    :cond_190
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_171

    .line 396
    :cond_194
    new-array v2, v14, [F

    fill-array-data v2, :array_236

    .line 397
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    array-length v4, v3

    move v0, v1

    :goto_19d
    if-ge v0, v4, :cond_1b3

    aget-object v5, v3, v0

    if-eqz v5, :cond_1b0

    iget v6, v5, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    if-eq v6, v12, :cond_1b0

    iget v6, v5, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cargo:F

    iget v7, v5, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    aget v7, v2, v7

    mul-float/2addr v6, v7

    iput v6, v5, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cargo:F

    :cond_1b0
    add-int/lit8 v0, v0, 0x1

    goto :goto_19d

    :cond_1b3
    move v2, v1

    .line 398
    :goto_1b4
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModHardpoints;->ARTS:[Ljava/lang/String;

    array-length v0, v0

    if-ge v2, v0, :cond_235

    .line 399
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    array-length v5, v4

    move v3, v1

    :goto_1bd
    if-ge v3, v5, :cond_231

    aget-object v6, v4, v3

    .line 400
    if-eqz v6, :cond_1d3

    iget-object v0, v6, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModHardpoints;->ARTS:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d3

    iget-object v0, v6, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-nez v0, :cond_1d7

    .line 399
    :cond_1d3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1bd

    .line 401
    :cond_1d7
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModHardpoints;->TURRETS:[[F

    aget-object v7, v0, v2

    move v0, v1

    .line 402
    :goto_1dc
    add-int/lit8 v8, v0, 0x1

    array-length v9, v7

    if-ge v8, v9, :cond_1ff

    div-int/lit8 v8, v0, 0x2

    iget-object v9, v6, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v9, v9, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonCount:I

    if-ge v8, v9, :cond_1ff

    iget-object v8, v6, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget-object v8, v8, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonPos:[Lfr/testudo/spacecorsair/engine/Vector2;

    div-int/lit8 v9, v0, 0x2

    new-instance v10, Lfr/testudo/spacecorsair/engine/Vector2;

    aget v11, v7, v0

    add-int/lit8 v12, v0, 0x1

    aget v12, v7, v12

    invoke-direct {v10, v11, v12}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v10, v8, v9

    add-int/lit8 v0, v0, 0x2

    goto :goto_1dc

    .line 403
    :cond_1ff
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModHardpoints;->MISSILES:[[F

    aget-object v7, v0, v2

    .line 404
    array-length v0, v7

    if-lt v0, v13, :cond_1d3

    iget-object v0, v6, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->missileExitPoint:[Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v0, :cond_1d3

    move v0, v1

    .line 405
    :goto_20d
    add-int/lit8 v8, v0, 0x1

    array-length v9, v7

    if-ge v8, v9, :cond_1d3

    div-int/lit8 v8, v0, 0x2

    iget-object v9, v6, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget-object v9, v9, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->missileExitPoint:[Lfr/testudo/spacecorsair/engine/Vector2;

    array-length v9, v9

    if-ge v8, v9, :cond_1d3

    iget-object v8, v6, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget-object v8, v8, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->missileExitPoint:[Lfr/testudo/spacecorsair/engine/Vector2;

    div-int/lit8 v9, v0, 0x2

    new-instance v10, Lfr/testudo/spacecorsair/engine/Vector2;

    aget v11, v7, v0

    add-int/lit8 v12, v0, 0x1

    aget v12, v7, v12

    invoke-direct {v10, v11, v12}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v10, v8, v9

    add-int/lit8 v0, v0, 0x2

    goto :goto_20d

    .line 398
    :cond_231
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1b4

    .line 409
    :cond_235
    return-void

    .line 396
    :array_236
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
        0x3fc00000    # 1.5f
        0x3fe66666    # 1.8f
        0x400ccccd    # 2.2f
        0x40266666    # 2.6f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static base(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFI)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;
    .registers 11

    .prologue
    const/4 v3, 0x1

    const/16 v4, 0x64

    .line 445
    new-instance v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;-><init>()V

    .line 446
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->level:I

    iput v0, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->level:I

    .line 447
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->image(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    move-result-object v0

    iput-object v0, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->image:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    .line 448
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->rarity:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v0, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 449
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->size:I

    iput v0, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSize:I

    .line 450
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->size:I

    int-to-float v0, v0

    const v2, 0x3fa66666    # 1.3f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSizeOfShield:I

    .line 451
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->size:I

    int-to-float v0, v0

    const v2, 0x3f1eb852    # 0.62f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->physicSizeWithoutShield:I

    .line 452
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->size:I

    int-to-float v0, v0

    const v2, 0x3f933333    # 1.15f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->physicSizeWithShield:I

    .line 453
    iput p5, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->mass:I

    .line 454
    iput p1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxPouseeForce:F

    .line 455
    iput p2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->deperditionFactor:F

    .line 456
    iput p3, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxTurnFactor:F

    .line 457
    iput p4, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lifeBooster:F

    .line 458
    sget-object v0, Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;->simpleGaz:Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

    iput-object v0, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->gazDrawable:Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

    .line 459
    iput-boolean v3, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->gazBehindImage:Z

    .line 460
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->size:I

    int-to-float v0, v0

    const v2, 0x3eeb851f    # 0.46f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->gazDecal:I

    .line 461
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->size:I

    int-to-float v0, v0

    const v2, 0x3f0ccccd    # 0.55f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSizeOfGaz:I

    .line 462
    const/16 v0, 0x32

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->size:I

    div-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lootDistance:I

    .line 463
    iput-boolean v3, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->tirGroupe:Z

    .line 464
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->size:I

    if-ge v0, v4, :cond_c4

    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;->SMALL:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    :goto_70
    iput-object v0, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->sizeInformational:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    .line 465
    const v0, 0x3e23d70a    # 0.16f

    mul-float/2addr v0, p1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, p2, v2

    const v3, 0x3f8ccccd    # 1.1f

    mul-float/2addr v2, v3

    div-float/2addr v0, v2

    .line 466
    const/high16 v2, 0x40e00000    # 7.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxSpeedInformational:I

    .line 467
    const/high16 v0, 0x41c80000    # 25.0f

    mul-float/2addr v0, p3

    float-to-int v0, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->agilityInformational:I

    .line 468
    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v0, p4

    float-to-int v0, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->armorInformational:I

    .line 469
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->size:I

    int-to-float v0, v0

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v2

    const/high16 v2, 0x41f00000    # 30.0f

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->playerNameDecalY:I

    .line 470
    const/16 v0, -0x41

    iput v0, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->playerLifeBarDecalY:I

    .line 471
    const/16 v0, 0x12c

    const/16 v2, 0x5a

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->size:I

    div-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->playerLifeBarWidth:I

    .line 472
    const/4 v0, 0x7

    iput v0, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->playerLifeBarHeight:I

    .line 473
    return-object v1

    .line 464
    :cond_c4
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->size:I

    const/16 v2, 0xfa

    if-ge v0, v2, :cond_cd

    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;->MIDDLE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    goto :goto_70

    :cond_cd
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->size:I

    const/16 v2, 0x1f4

    if-ge v0, v2, :cond_d6

    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;->LARGE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    goto :goto_70

    :cond_d6
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;->VERY_LARGE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    goto :goto_70
.end method

.method public static canBuy(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 706
    :try_start_2
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->hull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v2

    .line 707
    if-nez v2, :cond_9

    .line 727
    :cond_8
    :goto_8
    return v0

    .line 708
    :cond_9
    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_10

    move v0, v1

    goto :goto_8

    .line 709
    :cond_10
    iget-boolean v2, v2, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dev:Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_62

    if-eqz v2, :cond_2a

    .line 711
    :try_start_14
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    const-string v2, "DEV ONLY: this hull comes from a gift code."

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_28} :catch_64

    :goto_28
    move v0, v1

    .line 715
    goto :goto_8

    .line 717
    :cond_2a
    :try_start_2a
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->licenceOk(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_62

    move-result v0

    .line 718
    if-nez v0, :cond_8

    .line 720
    :try_start_30
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hull licence needed: "

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->licenceText(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_5f} :catch_60

    goto :goto_8

    .line 721
    :catch_60
    move-exception v1

    goto :goto_8

    .line 726
    :catch_62
    move-exception v1

    goto :goto_8

    .line 712
    :catch_64
    move-exception v0

    goto :goto_28
.end method

.method public static cargoMult()F
    .registers 3

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 735
    :try_start_2
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 736
    if-nez v1, :cond_c

    const/4 v1, 0x0

    .line 737
    :goto_9
    if-nez v1, :cond_13

    .line 739
    :goto_b
    return v0

    .line 736
    :cond_c
    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModShips;->hullFor(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v1

    goto :goto_9

    .line 737
    :cond_13
    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cargo:F

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV35;->cargo(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)F
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_18} :catch_1b

    move-result v0

    mul-float/2addr v0, v2

    goto :goto_b

    .line 738
    :catch_1b
    move-exception v1

    goto :goto_b
.end method

.method public static classLine(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 608
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->cls(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v1

    .line 609
    if-gez v1, :cond_8

    const/4 v0, 0x0

    .line 613
    :goto_7
    return-object v0

    .line 610
    :cond_8
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->licenceText(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v2

    .line 611
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->hull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    .line 612
    if-eqz v0, :cond_a1

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->faction:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<br><font color=\'#c8c8c8\'>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->faction:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "</font>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 613
    :goto_35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<font color=\'#6ad0ff\'><b>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModShips;->CLASS_NAMES:[Ljava/lang/String;

    aget-object v1, v4, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModShips;->TECH:[Ljava/lang/String;

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->tech(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->role(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</b></font>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 614
    if-eqz v2, :cond_a4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<br><font color=\'#ffd93f\'>Hull licence: "

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</font>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_91
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<br><br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    .line 612
    :cond_a1
    const-string v0, ""

    goto :goto_35

    .line 614
    :cond_a4
    const-string v0, ""

    goto :goto_91
.end method

.method public static className(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 700
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->cls(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    if-gez v0, :cond_d

    const-string v0, "Other"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModShips;->CLASS_NAMES:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_c
.end method

.method public static cls(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 574
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->hull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    .line 575
    if-eqz v0, :cond_a

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    .line 579
    :goto_9
    return v0

    .line 576
    :cond_a
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShips;->ORIGINAL:[[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_e
    if-ge v0, v3, :cond_29

    aget-object v4, v2, v0

    .line 577
    aget-object v5, v4, v1

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    const/4 v0, 0x1

    aget-object v0, v4, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_9

    .line 576
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 579
    :cond_29
    const/4 v0, -0x1

    goto :goto_9
.end method

.method public static desc(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 623
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->hull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v1

    .line 624
    if-nez v1, :cond_8

    const/4 v0, 0x0

    .line 626
    :goto_7
    return-object v0

    .line 625
    :cond_8
    iget-object v0, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->id:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShipFlavour;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 626
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_36

    :goto_15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<br><br><font color=\'#d21aff\'><b>SPECIAL SKILL</b></font><br>"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->skill:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModShips;->statBlock(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_36
    iget-object v0, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->lore:Ljava/lang/String;

    goto :goto_15
.end method

.method public static draw(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 15

    .prologue
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/high16 v12, 0x404e000000000000L    # 60.0

    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    .line 797
    sget v0, Lfr/testudo/spacecorsair/mod/ModShips;->lanceFlash:I

    if-gtz v0, :cond_c

    .line 802
    :cond_b
    return-void

    :cond_c
    move v8, v3

    .line 798
    :goto_d
    const/4 v0, 0x6

    if-ge v8, v0, :cond_b

    .line 799
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModShips;->tmp:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModShips;->lanceEnd:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v12

    sub-double/2addr v6, v10

    double-to-float v1, v6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v12

    sub-double/2addr v6, v10

    double-to-float v2, v6

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 800
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModShips;->tmp:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const v6, 0x3f59999a    # 0.85f

    const v7, 0x3e99999a    # 0.3f

    move v5, v4

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFF)V

    .line 798
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_d
.end method

.method public static factionKey(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 524
    if-nez p0, :cond_8

    const/4 v0, 0x0

    :goto_3
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->factionKey(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->hullFor(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    goto :goto_3
.end method

.method static factionKey(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 528
    if-eqz p0, :cond_e

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->faction:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->faction:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_11

    :cond_e
    const-string v0, ""

    .line 530
    :goto_10
    return-object v0

    .line 529
    :cond_11
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_15
    if-ge v0, v2, :cond_33

    aget-object v3, v1, v0

    iget-object v4, v3, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->faction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    iget-object v4, v3, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->faction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    :cond_2d
    iget-object v0, v3, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    goto :goto_10

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 530
    :cond_33
    const-string v0, ""

    goto :goto_10
.end method

.method public static heavyTurret(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)Z
    .registers 3

    .prologue
    .line 806
    const-string v0, "turret_heavy"

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->turretArt(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static hel(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;
    .registers 2

    .prologue
    .line 412
    const-string v0, "Helion Combine"

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->faction:Ljava/lang/String;

    .line 413
    return-object p0
.end method

.method public static hull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 514
    if-nez p0, :cond_4

    .line 519
    :cond_3
    :goto_3
    return-object v0

    .line 515
    :cond_4
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v3

    .line 516
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    array-length v5, v4

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    if-ge v2, v5, :cond_3

    aget-object v1, v4, v2

    .line 517
    if-eqz v1, :cond_1d

    iget-object v6, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->id:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    move-object v0, v1

    goto :goto_3

    .line 516
    :cond_1d
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_d
.end method

.method public static hullFor(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;
    .registers 6

    .prologue
    .line 536
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModShips;->lastHull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    .line 537
    if-eqz p0, :cond_b

    if-eqz v0, :cond_b

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-ne v1, p0, :cond_b

    .line 544
    :cond_a
    :goto_a
    return-object v0

    .line 538
    :cond_b
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_10
    if-ge v1, v3, :cond_23

    aget-object v0, v2, v1

    .line 539
    if-eqz v0, :cond_1f

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-ne v4, p0, :cond_1f

    .line 540
    if-eqz p0, :cond_a

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModShips;->lastHull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    goto :goto_a

    .line 538
    :cond_1f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 544
    :cond_23
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static image(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;
    .registers 3

    .prologue
    .line 502
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MOD_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1e

    move-result-object v0

    .line 504
    :goto_1d
    return-object v0

    .line 503
    :catch_1e
    move-exception v0

    .line 504
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->DEFAULT:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    goto :goto_1d
.end method

.method private static iron(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;
    .registers 2

    .prologue
    .line 417
    const-string v0, "Ironclad Militia"

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->faction:Ljava/lang/String;

    .line 418
    const-string v0, "turret_cannon"

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->turretArt:Ljava/lang/String;

    .line 419
    return-object p0
.end method

.method public static isCarrier(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)Z
    .registers 2

    .prologue
    .line 429
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->hullFor(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    .line 430
    if-eqz v0, :cond_c

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->carrier:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static label(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 618
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->hull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    .line 619
    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->name:Ljava/lang/String;

    goto :goto_7
.end method

.method public static licenceOk(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z
    .registers 8

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x5

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 686
    :try_start_4
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->hull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v2

    .line 687
    if-nez v2, :cond_b

    .line 695
    :cond_a
    :goto_a
    return v0

    .line 688
    :cond_b
    iget-object v3, v2, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->secret:Ljava/lang/String;

    if-eqz v3, :cond_19

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->secret:Ljava/lang/String;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModRep;->rank(Ljava/lang/String;)I

    move-result v2

    if-ge v2, v5, :cond_a

    move v0, v1

    goto :goto_a

    .line 689
    :cond_19
    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_22

    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    if-ne v3, v5, :cond_2a

    :cond_22
    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModShips;->ownsClass(III)Z

    move-result v0

    goto :goto_a

    .line 690
    :cond_2a
    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    if-ne v3, v6, :cond_42

    iget v1, v2, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->tech:I

    if-ne v1, v0, :cond_3a

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModShips;->ownsClass(III)Z

    move-result v0

    goto :goto_a

    :cond_3a
    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModShips;->ownsClass(III)Z

    move-result v0

    goto :goto_a

    .line 691
    :cond_42
    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->tech:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_61

    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModShips;->ownsClass(III)Z

    move-result v3

    if-nez v3, :cond_5e

    iget v2, v2, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    if-nez v2, :cond_5f

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lfr/testudo/spacecorsair/mod/ModShips;->ownsClass(III)Z

    move-result v2

    if-eqz v2, :cond_5f

    :cond_5e
    move v1, v0

    :cond_5f
    move v0, v1

    goto :goto_a

    .line 692
    :cond_61
    iget v1, v2, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    if-eqz v1, :cond_a

    .line 693
    iget v1, v2, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModShips;->prevClass(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModShips;->ownsClass(III)Z
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_70} :catch_72

    move-result v0

    goto :goto_a

    .line 694
    :catch_72
    move-exception v1

    goto :goto_a
.end method

.method private static licenceText(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 661
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->hull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v1

    .line 662
    if-nez v1, :cond_8

    .line 669
    :cond_7
    :goto_7
    return-object v0

    .line 663
    :cond_8
    iget-boolean v2, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dev:Z

    if-eqz v2, :cond_13

    const-string v0, "gift code only"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 664
    :cond_13
    iget-object v2, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->secret:Ljava/lang/String;

    if-eqz v2, :cond_3b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Honored with the "

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->secret:Ljava/lang/String;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v1

    aget-object v1, v2, v1

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 665
    :cond_3b
    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_45

    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4c

    :cond_45
    const-string v0, "own any Battleship"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 666
    :cond_4c
    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_64

    iget v0, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->tech:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5d

    const-string v0, "own any Destroyer"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_5d
    const-string v0, "own a Tech I Industrial"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 667
    :cond_64
    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->tech:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_87

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "own a Tech I "

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShips;->CLASS_NAMES:[Ljava/lang/String;

    iget v1, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 668
    :cond_87
    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    if-eqz v2, :cond_7

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "own any "

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShips;->CLASS_NAMES:[Ljava/lang/String;

    iget v1, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModShips;->prevClass(I)I

    move-result v1

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7
.end method

.method public static licenceTextOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 699
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->licenceText(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static maxModTech(I)I
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 549
    .line 550
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    array-length v4, v3

    move v1, v2

    move v0, v2

    :goto_6
    if-ge v1, v4, :cond_1d

    aget-object v2, v3, v1

    if-eqz v2, :cond_1a

    iget v5, v2, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    if-ne v5, p0, :cond_1a

    iget-boolean v5, v2, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dev:Z

    if-nez v5, :cond_1a

    iget v2, v2, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->tech:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 551
    :cond_1d
    return v0
.end method

.method public static originalClass(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)I
    .registers 2

    .prologue
    .line 563
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->typeOf(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    .line 564
    if-nez v0, :cond_8

    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->cls(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    goto :goto_7
.end method

.method public static originalTech(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)I
    .registers 2

    .prologue
    .line 568
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->typeOf(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    .line 569
    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->tech(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    goto :goto_7
.end method

.method private static ownsClass(III)Z
    .registers 6

    .prologue
    .line 650
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    .line 651
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 652
    if-eqz v0, :cond_c

    .line 653
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->cls(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v2

    if-ne v2, p0, :cond_c

    .line 654
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->tech(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    .line 655
    if-lez p2, :cond_2a

    if-ne v0, p2, :cond_c

    :goto_28
    const/4 v0, 0x1

    .line 657
    :goto_29
    return v0

    .line 655
    :cond_2a
    if-lt v0, p1, :cond_c

    goto :goto_28

    .line 657
    :cond_2d
    const/4 v0, 0x0

    goto :goto_29
.end method

.method private static prevClass(I)I
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 673
    packed-switch p0, :pswitch_data_e

    .line 679
    :goto_4
    :pswitch_4
    return v0

    .line 675
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 676
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 677
    :pswitch_9
    const/4 v0, 0x3

    goto :goto_4

    .line 678
    :pswitch_b
    const/4 v0, 0x4

    goto :goto_4

    .line 673
    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method

.method public static rank(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I
    .registers 3

    .prologue
    .line 602
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->cls(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    .line 603
    if-gez v0, :cond_10

    const/16 v0, 0x63

    .line 604
    :goto_8
    mul-int/lit8 v0, v0, 0xa

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->tech(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 603
    :cond_10
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModShips;->CLASS_RANK:[I

    aget v0, v1, v0

    goto :goto_8
.end method

.method static role(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 592
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->hull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    .line 593
    if-eqz v0, :cond_a

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->role:Ljava/lang/String;

    .line 597
    :goto_9
    return-object v0

    .line 594
    :cond_a
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShips;->ORIGINAL:[[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_e
    if-ge v0, v3, :cond_25

    aget-object v4, v2, v0

    .line 595
    aget-object v5, v4, v1

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    const/4 v0, 0x3

    aget-object v0, v4, v0

    goto :goto_9

    .line 594
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 597
    :cond_25
    const-string v0, ""

    goto :goto_9
.end method

.method private static small(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFI)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;
    .registers 8

    .prologue
    .line 477
    invoke-static/range {p0 .. p5}, Lfr/testudo/spacecorsair/mod/ModShips;->base(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFI)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v0

    .line 478
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->FIXED:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserType:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    .line 479
    const/4 v1, 0x2

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserCount:I

    .line 480
    return-object v0
.end method

.method public static spec(I)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;
    .registers 2

    .prologue
    .line 510
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    aget-object v0, v0, p0

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    return-object v0
.end method

.method static statBlock(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Ljava/lang/String;
    .registers 7

    .prologue
    const/high16 v5, 0x42c80000    # 100.0f

    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "<br><br><font color=\'#6ad0ff\'><b>STATS</b></font>"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 632
    const-string v0, "<br>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Class"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShips;->CLASS_NAMES:[Ljava/lang/String;

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->tech:I

    if-lez v0, :cond_44

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShips;->TECH:[Ljava/lang/String;

    const/4 v3, 0x3

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->tech:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    :cond_44
    const-string v0, "<br>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Faction"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->faction:Ljava/lang/String;

    if-eqz v0, :cond_66

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->faction:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_158

    :cond_66
    const-string v0, "Neutral"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    const-string v0, "<br>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Slot size"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModV34;->SLOT_NAMES:[Ljava/lang/String;

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModV34;->slotOf(I)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 637
    if-eqz v0, :cond_131

    .line 638
    const-string v2, "<br>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Hull"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lifeBooster:F

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 639
    const-string v2, "<br>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Speed"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxSpeedInformational:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / 100"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    const-string v2, "<br>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Agility"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->agilityInformational:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / 100"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    const-string v2, "<br>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Turrets"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u00b7 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Missiles"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->missileCount:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 643
    :cond_131
    const-string v0, "<br>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Cargo"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cargo:F

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 644
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 634
    :cond_158
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->faction:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6c
.end method

.method public static tech(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 583
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->hull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    .line 584
    if-eqz v0, :cond_a

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->tech:I

    .line 588
    :goto_9
    return v0

    .line 585
    :cond_a
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShips;->ORIGINAL:[[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_e
    if-ge v0, v3, :cond_29

    aget-object v4, v2, v0

    .line 586
    aget-object v5, v4, v1

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    const/4 v0, 0x2

    aget-object v0, v4, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_9

    .line 585
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 588
    :cond_29
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public static techName(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 701
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModShips;->TECH:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->tech(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 8

    .prologue
    .line 782
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->hullFor(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v1

    .line 783
    if-eqz v1, :cond_29

    iget-boolean v0, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dev:Z

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    :goto_d
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModArt;->devActive:Z

    .line 784
    sget v0, Lfr/testudo/spacecorsair/mod/ModShips;->lanceFlash:I

    if-lez v0, :cond_1a

    sget v0, Lfr/testudo/spacecorsair/mod/ModShips;->lanceFlash:I

    int-to-long v2, v0

    sub-long/2addr v2, p1

    long-to-int v0, v2

    sput v0, Lfr/testudo/spacecorsair/mod/ModShips;->lanceFlash:I

    .line 785
    :cond_1a
    if-eqz v1, :cond_28

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v0, :cond_28

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-eqz v0, :cond_2b

    .line 792
    :cond_28
    :goto_28
    return-void

    .line 783
    :cond_29
    const/4 v0, 0x0

    goto :goto_d

    .line 786
    :cond_2b
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV35;->repair(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)F

    move-result v0

    .line 787
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_47

    iget v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    iget v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_47

    .line 788
    iget v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    mul-float/2addr v0, v2

    long-to-float v2, p1

    mul-float/2addr v0, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->addLife(F)V

    .line 790
    :cond_47
    iget-boolean v0, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dev:Z

    if-eqz v0, :cond_28

    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModDev;->tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    goto :goto_28
.end method

.method private static turret(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFILfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;[FF)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;
    .registers 15

    .prologue
    .line 484
    invoke-static/range {p0 .. p5}, Lfr/testudo/spacecorsair/mod/ModShips;->base(Lfr/testudo/spacecorsair/mod/ModShips$Hull;FFFFI)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v1

    .line 485
    iput-object p6, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserType:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    .line 486
    array-length v0, p7

    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonCount:I

    .line 487
    iget v0, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonCount:I

    iput v0, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserCount:I

    .line 488
    const/4 v0, 0x0

    :goto_10
    iget v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonCount:I

    if-ge v0, v2, :cond_2a

    .line 489
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonPos:[Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    mul-int/lit8 v4, v0, 0x2

    aget v4, p7, v4

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v5, p7, v5

    invoke-direct {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v3, v2, v0

    .line 488
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 491
    :cond_2a
    iput p8, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonSpeed:F

    .line 492
    return-object v1
.end method

.method public static turretArt(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 435
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->hullFor(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v1

    .line 436
    if-nez v1, :cond_8

    .line 439
    :cond_7
    :goto_7
    return-object v0

    .line 437
    :cond_8
    iget-object v2, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->hwTurret:Ljava/lang/String;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->turret(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v2

    if-eqz v2, :cond_13

    iget-object v0, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->hwTurret:Ljava/lang/String;

    goto :goto_7

    .line 438
    :cond_13
    iget-object v2, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->turretArt:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v0, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->turretArt:Ljava/lang/String;

    goto :goto_7

    .line 439
    :cond_1a
    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_29

    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_29

    iget v1, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    :cond_29
    const-string v0, "turret_heavy"

    goto :goto_7
.end method

.method private static twinMissiles(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;FF)V
    .registers 7

    .prologue
    const/4 v0, 0x2

    .line 496
    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->missileCount:I

    .line 497
    new-array v0, v0, [Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    neg-float v3, p1

    invoke-direct {v2, v3, p2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, p1, p2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->missileExitPoint:[Lfr/testudo/spacecorsair/engine/Vector2;

    .line 498
    return-void
.end method

.method private static typeOf(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;
    .registers 4

    .prologue
    .line 555
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_SHIPS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 556
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v2

    if-ne v2, p0, :cond_6

    .line 558
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private static varn(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;
    .registers 2

    .prologue
    .line 423
    const-string v0, "Varn Syndicate"

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->faction:Ljava/lang/String;

    .line 424
    const-string v0, "turret_laser"

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->turretArt:Ljava/lang/String;

    .line 425
    return-object p0
.end method
