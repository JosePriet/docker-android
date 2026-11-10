.class public final Lfr/testudo/spacecorsair/mod/ModCapitals;
.super Ljava/lang/Object;
.source "ModCapitals.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;,
        Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;,
        Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;
    }
.end annotation


# static fields
.field static final FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

.field static final FLAGSHIP_OVER_PLAYER:I = 0x2

.field static final GUNS:[[Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;

.field static final HULL_MULT:[F

.field static final RESPAWN_MS:J = 0xa4cb80L

.field static final SHIELD_MULT:[F

.field static final SIZE:I = 0x5dc

.field static final SPEED_MULT:[F

.field private static final TURRET_ART:[F

.field private static final a:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static final aim:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static final b:Lfr/testudo/spacecorsair/engine/Vector2;

.field static final caps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;",
            "Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;",
            ">;"
        }
    .end annotation
.end field

.field private static hostileSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

.field private static hullSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

.field private static final mz:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static final phys:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static polSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

.field private static testSpawned:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .prologue
    .line 41
    const/4 v0, 0x7

    new-array v8, v0, [Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    const/4 v9, 0x0

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    const-string v1, "spartan"

    const-string v2, "Spartan Republic"

    const-string v3, "SRS Aegis"

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/LevelId;->SPARTAN_HQ:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const/high16 v5, 0x3f000000    # 0.5f

    const v6, 0x3f4ccccd    # 0.8f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v7}, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;FFF)V

    aput-object v0, v8, v9

    const/4 v9, 0x1

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    const-string v1, "reaver"

    const-string v2, "Crimson Reavers"

    const-string v3, "Bloodforge"

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/LevelId;->PIRATE_BAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3ee66666    # 0.45f

    const v7, 0x3e19999a    # 0.15f

    invoke-direct/range {v0 .. v7}, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;FFF)V

    aput-object v0, v8, v9

    const/4 v9, 0x2

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    const-string v1, "kretari"

    const-string v2, "Kre\'tari Brood"

    const-string v3, "Brood-Mother"

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/LevelId;->THE_HIVE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const v5, 0x3f4ccccd    # 0.8f

    const v6, 0x3ecccccd    # 0.4f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v7}, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;FFF)V

    aput-object v0, v8, v9

    const/4 v9, 0x3

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    const-string v1, "varn"

    const-string v2, "Varn Syndicate"

    const-string v3, "Syndicate Crown"

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/LevelId;->OMICRON_PRIME:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f400000    # 0.75f

    const v7, 0x3eb33333    # 0.35f

    invoke-direct/range {v0 .. v7}, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;FFF)V

    aput-object v0, v8, v9

    const/4 v9, 0x4

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    const-string v1, "ironclad"

    const-string v2, "Ironclad Militia"

    const-string v3, "IMS Bastion"

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/LevelId;->ORE_BELT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f4ccccd    # 0.8f

    const/high16 v7, 0x3e800000    # 0.25f

    invoke-direct/range {v0 .. v7}, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;FFF)V

    aput-object v0, v8, v9

    const/4 v9, 0x5

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    const-string v1, "helion"

    const-string v2, "Helion Combine"

    const-string v3, "Sunspire"

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/LevelId;->HELIOSTAT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f666666    # 0.9f

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v7}, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;FFF)V

    aput-object v0, v8, v9

    const/4 v9, 0x6

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    const-string v1, "warden"

    const-string v2, "Frontier Authority"

    const-string v3, "FAV Warden"

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/LevelId;->HIGHWAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const v5, 0x3ee66666    # 0.45f

    const v6, 0x3f266666    # 0.65f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v7}, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;FFF)V

    aput-object v0, v8, v9

    sput-object v8, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    .line 52
    const/4 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :array_220

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->HULL_MULT:[F

    .line 53
    const/4 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :array_232

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->SPEED_MULT:[F

    .line 56
    const/4 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :array_244

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->SHIELD_MULT:[F

    .line 88
    const/4 v0, 0x7

    new-array v12, v0, [[Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;

    const/4 v13, 0x0

    const/4 v0, 0x1

    new-array v14, v0, [Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;

    const/4 v15, 0x0

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;

    const/4 v1, 0x0

    const/high16 v2, 0x40400000    # 3.0f

    const/16 v3, 0xa28

    const/high16 v4, 0x41d00000    # 26.0f

    const/high16 v5, 0x452f0000    # 2800.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/high16 v8, 0x42700000    # 60.0f

    const v9, 0x3f0ccccd    # 0.55f

    const v10, 0x3f733333    # 0.95f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v11}, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;-><init>(IFIFFFIFFFF)V

    aput-object v0, v14, v15

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v0, 0x1

    new-array v14, v0, [Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;

    const/4 v15, 0x0

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;

    const/4 v1, 0x1

    const v2, 0x3e99999a    # 0.3f

    const/16 v3, 0xdc

    const/high16 v4, 0x41500000    # 13.0f

    const/high16 v5, 0x45160000    # 2400.0f

    const/high16 v6, 0x40e00000    # 7.0f

    const/4 v7, 0x1

    const/high16 v8, 0x42f00000    # 120.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3f19999a    # 0.6f

    const/high16 v11, 0x3e800000    # 0.25f

    invoke-direct/range {v0 .. v11}, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;-><init>(IFIFFFIFFFF)V

    aput-object v0, v14, v15

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/4 v0, 0x1

    new-array v14, v0, [Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;

    const/4 v15, 0x0

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;

    const/4 v1, 0x1

    const v2, 0x3f0ccccd    # 0.55f

    const/16 v3, 0x2ee

    const/high16 v4, 0x41400000    # 12.0f

    const v5, 0x45228000    # 2600.0f

    const/high16 v6, 0x41200000    # 10.0f

    const/4 v7, 0x3

    const/high16 v8, 0x42b40000    # 90.0f

    const v9, 0x3f333333    # 0.7f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3ee66666    # 0.45f

    invoke-direct/range {v0 .. v11}, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;-><init>(IFIFFFIFFFF)V

    aput-object v0, v14, v15

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const/4 v0, 0x1

    new-array v14, v0, [Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;

    const/4 v15, 0x0

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;

    const/4 v1, 0x4

    const v2, 0x3eb33333    # 0.35f

    const/16 v3, 0x12c

    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v5, 0x45160000    # 2400.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x1

    const/high16 v8, 0x42b40000    # 90.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3e99999a    # 0.3f

    const v11, 0x3eb33333    # 0.35f

    invoke-direct/range {v0 .. v11}, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;-><init>(IFIFFFIFFFF)V

    aput-object v0, v14, v15

    aput-object v14, v12, v13

    const/4 v13, 0x4

    const/4 v0, 0x1

    new-array v14, v0, [Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;

    const/4 v15, 0x0

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;

    const/4 v1, 0x2

    const/high16 v2, 0x40800000    # 4.0f

    const/16 v3, 0xd48

    const/high16 v4, 0x41300000    # 11.0f

    const v5, 0x456d8000    # 3800.0f

    const/high16 v6, 0x40400000    # 3.0f

    const/4 v7, 0x1

    const/high16 v8, 0x42200000    # 40.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3f19999a    # 0.6f

    const/high16 v11, 0x3e800000    # 0.25f

    invoke-direct/range {v0 .. v11}, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;-><init>(IFIFFFIFFFF)V

    aput-object v0, v14, v15

    aput-object v14, v12, v13

    const/4 v13, 0x5

    const/4 v0, 0x1

    new-array v14, v0, [Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;

    const/4 v15, 0x0

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;

    const/4 v1, 0x3

    const v2, 0x3f4ccccd    # 0.8f

    const/16 v3, 0x28a

    const/high16 v4, 0x41100000    # 9.0f

    const v5, 0x44ed8000    # 1900.0f

    const/high16 v6, 0x40800000    # 4.0f

    const/4 v7, 0x1

    const/high16 v8, 0x42c80000    # 100.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3f59999a    # 0.85f

    const v11, 0x3ee66666    # 0.45f

    invoke-direct/range {v0 .. v11}, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;-><init>(IFIFFFIFFFF)V

    aput-object v0, v14, v15

    aput-object v14, v12, v13

    const/4 v13, 0x6

    const/4 v0, 0x2

    new-array v14, v0, [Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;

    const/4 v15, 0x0

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;

    const/4 v1, 0x0

    const/high16 v2, 0x40400000    # 3.0f

    const/16 v3, 0xaf0

    const/high16 v4, 0x41d00000    # 26.0f

    const v5, 0x45834000    # 4200.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/high16 v8, 0x42700000    # 60.0f

    const v9, 0x3f0ccccd    # 0.55f

    const/high16 v10, 0x3f400000    # 0.75f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v11}, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;-><init>(IFIFFFIFFFF)V

    aput-object v0, v14, v15

    const/4 v15, 0x1

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;

    const/4 v1, 0x5

    const v2, 0x3f99999a    # 1.2f

    const/16 v3, 0x384

    const/high16 v4, 0x41600000    # 14.0f

    const v5, 0x45098000    # 2200.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x1

    const/high16 v8, 0x42b40000    # 90.0f

    const v9, 0x3f19999a    # 0.6f

    const v10, 0x3f4ccccd    # 0.8f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v11}, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;-><init>(IFIFFFIFFFF)V

    aput-object v0, v14, v15

    aput-object v14, v12, v13

    sput-object v12, Lfr/testudo/spacecorsair/mod/ModCapitals;->GUNS:[[Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;

    .line 99
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->caps:Ljava/util/Map;

    .line 101
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x444e4000    # 825.0f

    const v2, 0x444e4000    # 825.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->phys:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 102
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 464
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->aim:Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->mz:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 465
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v0, v0

    new-array v0, v0, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->TURRET_ART:[F

    return-void

    .line 52
    nop

    :array_220
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3fc00000    # 1.5f
        0x3f8ccccd    # 1.1f
        0x3f333333    # 0.7f
        0x3f99999a    # 1.2f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data

    .line 53
    :array_232
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f19999a    # 0.6f
        0x3fe66666    # 1.8f
        0x3f800000    # 1.0f
    .end array-data

    .line 56
    :array_244
    .array-data 4
        0x3fcccccd    # 1.6f
        0x3ecccccd    # 0.4f
        0x3f666666    # 0.9f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static build(IILfr/testudo/spacecorsair/mod/ModCapitals$Faction;Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;
    .registers 15

    .prologue
    .line 218
    if-eqz p2, :cond_1d9

    move-object v8, p2

    .line 219
    :goto_3
    invoke-static {p1}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newGuardianCivilShip(I)Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    move-result-object v9

    .line 220
    invoke-static {v9}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->forget(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;)V

    .line 221
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->a:F

    .line 222
    new-instance v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    invoke-direct {v10}, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;-><init>()V

    .line 223
    iput-object v8, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cap_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFxData;->index(Ljava/lang/String;)I

    move-result v0

    iput v0, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->data:I

    .line 225
    iget-object v0, v8, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCapitalData;->mounts(Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->mounts:[F

    .line 227
    new-instance v1, Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    .line 228
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 229
    const/4 v0, 0x0

    :goto_48
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_61

    .line 230
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lfr/testudo/spacecorsair/business/world/station/Station;

    if-eqz v3, :cond_1e0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 232
    :cond_61
    if-eqz p3, :cond_1e4

    iget-object v0, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->anchor:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p3}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 234
    :goto_68
    iget-object v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->anchor:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 235
    const/high16 v0, 0x42b40000    # 90.0f

    iput v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    .line 236
    const v0, 0x48f42400    # 500000.0f

    const v1, 0x46ea6000    # 30000.0f

    int-to-float v2, p1

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->HULL_MULT:[F

    aget v1, v1, p0

    mul-float/2addr v0, v1

    .line 237
    iput v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    .line 238
    iput v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->life:F

    .line 239
    const/16 v0, 0x1f4

    iget v1, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->xp:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1e

    iput v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->xp:I

    .line 240
    iget-object v0, v8, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModRep;->tolerance(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->amountOfDamageAllowedInRatioByPlayerBeforeRebelion:I

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->neverEscapeWhenInjured:Z

    .line 242
    const/4 v0, 0x0

    iput v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->pourLifeToEscape:I

    .line 243
    const v0, 0x3d4ccccd    # 0.05f

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->SPEED_MULT:[F

    aget v1, v1, p0

    mul-float/2addr v0, v1

    iput v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxPouseeForce:F

    .line 244
    const v0, 0x3d4ccccd    # 0.05f

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->SPEED_MULT:[F

    aget v1, v1, p0

    mul-float/2addr v0, v1

    iput v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->pouseeForce:F

    .line 245
    const v0, 0x456d8000    # 3800.0f

    iput v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->distanceShoot:F

    .line 246
    const/high16 v0, 0x42200000    # 40.0f

    iget v1, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->bulletDamage:F

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v2, v0

    .line 247
    const/high16 v0, 0x44160000    # 600.0f

    iget-wide v4, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->milleSecBetweenShots:J

    long-to-float v1, v4

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v1, v0

    .line 248
    iget-object v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    const/4 v3, 0x6

    const/high16 v4, 0x41700000    # 15.0f

    const v5, 0x3f4ccccd    # 0.8f

    const/4 v6, 0x4

    const/4 v7, 0x3

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->init(IIIFFII)Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    .line 249
    iget-object v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    const/4 v3, 0x6

    const/high16 v4, 0x41700000    # 15.0f

    const v5, 0x3f4ccccd    # 0.8f

    const/4 v6, 0x4

    const/4 v7, 0x3

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->init(IIIFFII)Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    .line 250
    iget-object v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    const/4 v3, 0x6

    const/high16 v4, 0x41700000    # 15.0f

    const v5, 0x3f4ccccd    # 0.8f

    const/4 v6, 0x4

    const/4 v7, 0x3

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->init(IIIFFII)Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    .line 251
    invoke-static {v9}, Lfr/testudo/spacecorsair/mod/ModCapitals;->silenceStock(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;)V

    .line 252
    int-to-float v0, v2

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModV34;->curve(I)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->shot:F

    .line 253
    iput p1, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->lvl:I

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v8, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " flagship: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->ship:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->specificName:Ljava/lang/String;

    .line 255
    const/4 v0, -0x1

    iput v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->specificNameDecalX:I

    .line 256
    const/high16 v0, 0x41400000    # 12.0f

    iput v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->radarPointSize:F

    .line 257
    iget v0, v8, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->r:F

    iput v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->radarColorR:F

    .line 258
    iget v0, v8, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->g:F

    iput v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->radarColorG:F

    .line 259
    iget v0, v8, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->b:F

    iput v0, v9, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->radarColorB:F

    .line 260
    const/4 v0, 0x4

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    const/4 v1, 0x0

    iget-object v2, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->anchor:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v3, 0x44af0000    # 1400.0f

    add-float/2addr v2, v3

    iget-object v3, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->anchor:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 261
    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(FF)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->anchor:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v3, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->anchor:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v4, 0x44af0000    # 1400.0f

    add-float/2addr v3, v4

    .line 262
    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(FF)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->anchor:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v3, 0x44af0000    # 1400.0f

    sub-float/2addr v2, v3

    iget-object v3, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->anchor:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 263
    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(FF)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->anchor:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v3, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->anchor:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v4, 0x44af0000    # 1400.0f

    sub-float/2addr v3, v4

    .line 264
    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(FF)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    .line 260
    invoke-virtual {v9, v0}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 266
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->caps:Ljava/util/Map;

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    if-eqz p2, :cond_1a4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pol_cap_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->lazyTex(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    .line 268
    :cond_1a4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_1f4

    const-string v0, "pol_cap_"

    :goto_1ad
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->prefetch(Ljava/lang/String;)V

    .line 269
    iget-object v0, v8, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->turretTex:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->prefetch(Ljava/lang/String;)V

    .line 270
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->titanClass:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    invoke-static {v9, p0, p1}, Lfr/testudo/spacecorsair/mod/ModCapitals;->giveShield(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;II)V

    .line 272
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    return-object v9

    .line 218
    :cond_1d9
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v0, v0, p0

    move-object v8, v0

    goto/16 :goto_3

    .line 229
    :cond_1e0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_48

    .line 233
    :cond_1e4
    iget-object v0, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->anchor:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    const v1, 0x45228000    # 2600.0f

    const/high16 v2, -0x3b1f0000    # -1800.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    goto/16 :goto_68

    .line 268
    :cond_1f4
    const-string v0, "cap_"

    goto :goto_1ad
.end method

.method static bullet(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;)Lfr/testudo/spacecorsair/display/Drawable;
    .registers 16

    .prologue
    .line 536
    :try_start_0
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v2

    .line 537
    if-nez v2, :cond_a

    const/4 v0, 0x0

    .line 551
    :goto_9
    return-object v0

    .line 538
    :cond_a
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModWeapons;->bullet(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;Z)Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v1

    .line 539
    iget-object v0, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->indexOf(Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;)I

    move-result v3

    .line 540
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->TURRET_ART:[F

    aget v0, v0, v3

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_41

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCapitals;->TURRET_ART:[F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "proj_cap_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v5, v5, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->lazyTex(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    if-eqz v0, :cond_93

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_3f
    aput v0, v4, v3

    .line 541
    :cond_41
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->TURRET_ART:[F

    aget v0, v0, v3

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_99

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "proj_cap_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    .line 543
    if-eqz v0, :cond_99

    .line 544
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModWeapons;->familyOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_96

    const/high16 v4, 0x42f00000    # 120.0f

    .line 545
    :goto_70
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    iget v5, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->spin:F

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v14}, Lfr/testudo/spacecorsair/mod/ModFx;->sprTex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    .line 546
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->EMPTY:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_91} :catch_9c

    goto/16 :goto_9

    .line 540
    :cond_93
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_3f

    .line 544
    :cond_96
    const/high16 v4, 0x42b40000    # 90.0f

    goto :goto_70

    :cond_99
    move-object v0, v1

    .line 549
    goto/16 :goto_9

    .line 550
    :catch_9c
    move-exception v0

    .line 551
    const/4 v0, 0x0

    goto/16 :goto_9
.end method

.method static cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;
    .registers 2

    .prologue
    .line 105
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v0, :cond_d

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->caps:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method static checkDestroyed()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 573
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->active:Z

    if-eqz v0, :cond_7

    .line 609
    :cond_6
    :goto_6
    return-void

    .line 574
    :cond_7
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->caps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 576
    :try_start_f
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->caps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 577
    :cond_19
    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 578
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 579
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 580
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    .line 581
    if-eqz v1, :cond_35

    if-nez v0, :cond_3b

    :cond_35
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_19

    .line 606
    :catch_39
    move-exception v0

    goto :goto_6

    .line 582
    :cond_3b
    iget-boolean v4, v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->removed:Z

    if-eqz v4, :cond_19

    .line 583
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 584
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModV34;->bigShield:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitan;->titanClass:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->forget(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;)V

    .line 587
    iget-boolean v4, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->police:Z

    if-eqz v4, :cond_60

    .line 588
    iget v0, v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->life:F

    cmpg-float v0, v0, v8

    if-gtz v0, :cond_5e

    const/4 v0, 0x1

    :goto_5a
    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->gone(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Z)V

    goto :goto_19

    :cond_5e
    move v0, v2

    goto :goto_5a

    .line 591
    :cond_60
    iget v4, v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->life:F

    cmpl-float v4, v4, v8

    if-gtz v4, :cond_19

    .line 592
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCapitals;->prefs()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 593
    if-eqz v4, :cond_92

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cap_dead_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v6, v6, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 594
    :cond_92
    iget v4, v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->damageRecievedByPlayer:I

    int-to-float v4, v4

    iget v5, v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    const v6, 0x3dcccccd    # 0.1f

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_a6

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v4, v4, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModRep;->flagshipDestroyed(Ljava/lang/String;)V

    .line 595
    :cond_a6
    iget v4, v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->damageRecievedByPlayer:I

    int-to-float v4, v4

    iget v1, v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    const v5, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v5

    cmpl-float v1, v4, v1

    if-lez v1, :cond_19

    .line 596
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    const v4, 0x1e8480

    invoke-virtual {v1, v4}, Lfr/testudo/spacecorsair/business/player/Inventory;->addCredit(I)V

    move v1, v2

    .line 597
    :goto_c0
    const/4 v4, 0x2

    if-ge v1, v4, :cond_e4

    .line 598
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    .line 599
    const/4 v5, 0x3

    invoke-static {v4, v5}, Lfr/testudo/spacecorsair/mod/ModWeapons;->typeName(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v4

    .line 600
    sget-object v5, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v5, v5, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v5, v5, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-static {v4}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v4

    invoke-virtual {v5, v4}, Lfr/testudo/spacecorsair/business/player/Inventory;->forceAddObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 597
    add-int/lit8 v1, v1, 0x1

    goto :goto_c0

    .line 602
    :cond_e4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v4, v4, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " flagship "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->ship:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " destroyed. Bounty: 2,000,000 credits and two Siege-tier weapons. The faction will field a new flagship in about 3 hours."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V
    :try_end_110
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_110} :catch_39

    goto/16 :goto_19
.end method

.method public static civilAttacked(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V
    .registers 7

    .prologue
    const/high16 v5, 0x457a0000    # 4000.0f

    .line 558
    :try_start_2
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 559
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->caps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 560
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 561
    if-eqz v0, :cond_10

    iget-boolean v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->removed:Z

    if-nez v3, :cond_10

    if-eq v0, p0, :cond_10

    .line 562
    iget-object v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v3

    cmpg-float v3, v3, v5

    if-ltz v3, :cond_44

    if-eqz v1, :cond_10

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_10

    .line 563
    :cond_44
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->attackPlayerIfItNotTheCaseAlready()V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_47} :catch_48

    goto :goto_10

    .line 566
    :catch_48
    move-exception v0

    .line 569
    :cond_49
    return-void
.end method

.method public static draw(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;)Z
    .registers 23

    .prologue
    .line 365
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v18

    .line 366
    if-nez v18, :cond_8

    const/4 v2, 0x0

    .line 453
    :goto_7
    return v2

    .line 368
    :cond_8
    :try_start_8
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->drawable(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;)Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v5

    .line 369
    if-eqz v5, :cond_2b

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->cameraRelative:Z

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->a:F

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual/range {v2 .. v10}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 370
    :cond_2b
    const v19, 0x44bb8000    # 1500.0f

    .line 371
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 373
    move-object/from16 v0, v18

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->data:I

    if-ltz v2, :cond_cd

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->isPousee:Z

    if-eqz v2, :cond_cd

    move-object/from16 v0, v18

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->police:Z

    if-eqz v2, :cond_50

    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->council(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_cd

    .line 374
    :cond_50
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFxData;->ENGINES:[[F

    move-object/from16 v0, v18

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->data:I

    aget-object v16, v2, v3

    .line 375
    const/4 v2, 0x0

    move v13, v2

    :goto_5a
    add-int/lit8 v2, v13, 0x2

    move-object/from16 v0, v16

    array-length v3, v0

    if-ge v2, v3, :cond_cd

    .line 376
    add-int/lit8 v2, v13, 0x2

    aget v2, v16, v2

    mul-float v2, v2, v19

    const v3, 0x3fa66666    # 1.3f

    mul-float/2addr v2, v3

    const v3, 0x3d4ccccd    # 0.05f

    mul-float v3, v3, v19

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 377
    const v2, 0x3e23d70a    # 0.16f

    const v3, 0x3d4ccccd    # 0.05f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    double-to-float v4, v6

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    mul-float v6, v19, v2

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    aget v4, v16, v13

    mul-float v4, v4, v19

    add-int/lit8 v7, v13, 0x1

    aget v7, v16, v7

    mul-float v7, v7, v19

    const v8, 0x3ee66666    # 0.45f

    mul-float/2addr v8, v6

    add-float/2addr v7, v8

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v4, v7, v8}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 379
    const-string v2, "fx_flame"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    move-object/from16 v0, v18

    iget-object v8, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v8, v8, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->r:F

    move-object/from16 v0, v18

    iget-object v9, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v9, v9, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->g:F

    move-object/from16 v0, v18

    iget-object v10, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v10, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->b:F

    const v11, 0x3f666666    # 0.9f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 375
    add-int/lit8 v2, v13, 0x3

    move v13, v2

    goto :goto_5a

    .line 383
    :cond_cd
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->mounts:[F

    if-eqz v2, :cond_177

    .line 384
    const v2, 0x3d8f5c29    # 0.07f

    mul-float v5, v19, v2

    .line 385
    const/4 v2, 0x0

    move v13, v2

    :goto_da
    add-int/lit8 v2, v13, 0x1

    move-object/from16 v0, v18

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->mounts:[F

    array-length v3, v3

    if-ge v2, v3, :cond_177

    .line 386
    div-int/lit8 v2, v13, 0x2

    .line 387
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    move-object/from16 v0, v18

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->mounts:[F

    aget v6, v6, v13

    mul-float v6, v6, v19

    move-object/from16 v0, v18

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->mounts:[F

    add-int/lit8 v8, v13, 0x1

    aget v7, v7, v8

    mul-float v7, v7, v19

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v3, v4, v6, v7, v8}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 388
    move-object/from16 v0, v18

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->tAng:[F

    if-eqz v3, :cond_172

    move-object/from16 v0, v18

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->tAng:[F

    array-length v3, v3

    if-ge v2, v3, :cond_172

    move-object/from16 v0, v18

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->tAng:[F

    aget v7, v3, v2

    .line 389
    :goto_117
    move-object/from16 v0, v18

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->tKick:[I

    if-eqz v3, :cond_152

    move-object/from16 v0, v18

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->tKick:[I

    array-length v3, v3

    if-ge v2, v3, :cond_152

    move-object/from16 v0, v18

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->tKick:[I

    aget v3, v3, v2

    if-lez v3, :cond_152

    .line 390
    const v3, 0x3e3851ec    # 0.18f

    mul-float/2addr v3, v5

    move-object/from16 v0, v18

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->tKick:[I

    aget v2, v4, v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    .line 391
    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    .line 392
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v4, v10

    neg-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v6, v8

    mul-float/2addr v2, v6

    invoke-virtual {v3, v4, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 394
    :cond_152
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->turretTex:Ljava/lang/String;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    move v6, v5

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 385
    add-int/lit8 v2, v13, 0x2

    move v13, v2

    goto/16 :goto_da

    .line 388
    :cond_172
    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    goto :goto_117

    .line 398
    :cond_177
    move-object/from16 v0, v18

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->data:I

    if-ltz v2, :cond_3f9

    .line 399
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFxData;->NAV:[[F

    move-object/from16 v0, v18

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->data:I

    aget-object v16, v2, v3

    .line 400
    const-wide/16 v2, 0x640

    rem-long v2, v14, v2

    const-wide/16 v4, 0xb4

    cmp-long v2, v2, v4

    if-gez v2, :cond_30b

    const/high16 v2, 0x3f800000    # 1.0f

    .line 401
    :goto_191
    move-object/from16 v0, v18

    iget-boolean v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->police:Z

    if-eqz v3, :cond_310

    move-object/from16 v0, v18

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v3, v3, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->council(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_310

    .line 402
    const v2, 0x3eb33333    # 0.35f

    const/high16 v3, 0x3e800000    # 0.25f

    long-to-double v4, v14

    const-wide v6, 0x4082c00000000000L    # 600.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    add-float v11, v2, v3

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    const/4 v4, 0x0

    aget v4, v16, v4

    mul-float v4, v4, v19

    const/4 v5, 0x1

    aget v5, v16, v5

    mul-float v5, v5, v19

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 404
    const-string v2, "fx_core"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x428c0000    # 70.0f

    const/high16 v6, 0x428c0000    # 70.0f

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    const v9, 0x3e4ccccd    # 0.2f

    const v10, 0x3f4ccccd    # 0.8f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    const/4 v4, 0x2

    aget v4, v16, v4

    mul-float v4, v4, v19

    const/4 v5, 0x3

    aget v5, v16, v5

    mul-float v5, v5, v19

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 406
    const-string v2, "fx_core"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x428c0000    # 70.0f

    const/high16 v6, 0x428c0000    # 70.0f

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    const v9, 0x3e4ccccd    # 0.2f

    const v10, 0x3f4ccccd    # 0.8f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 416
    :goto_21b
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3d3

    const/high16 v2, 0x3f800000    # 1.0f

    .line 417
    :goto_226
    const/high16 v3, 0x3e800000    # 0.25f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_3de

    const/4 v2, 0x3

    move/from16 v17, v2

    .line 418
    :goto_22f
    if-lez v17, :cond_3f9

    .line 419
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFxData;->DMG:[[F

    move-object/from16 v0, v18

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->data:I

    aget-object v20, v2, v3

    .line 420
    move-object/from16 v0, v20

    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v3, v17, 0x3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 421
    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_247
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_3f9

    .line 422
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    mul-int/lit8 v4, v16, 0x2

    aget v4, v20, v4

    mul-float v4, v4, v19

    mul-int/lit8 v5, v16, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v5, v20, v5

    mul-float v5, v5, v19

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 423
    const-string v2, "fx_scorch"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v5, 0x3df5c28f    # 0.12f

    mul-float v5, v5, v19

    const v6, 0x3df5c28f    # 0.12f

    mul-float v6, v6, v19

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    mul-int/lit8 v8, v16, 0x43

    int-to-float v8, v8

    add-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f59999a    # 0.85f

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 424
    const/4 v2, 0x2

    move/from16 v0, v17

    if-lt v0, v2, :cond_2d1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x3fb47ae147ae147bL    # 0.08

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2d1

    .line 425
    const-string v2, "fx_smoke"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, -0x3e600000    # -20.0f

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v5, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v5

    const/high16 v6, -0x3e600000    # -20.0f

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v6, v7}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v6

    const/high16 v7, 0x44e10000    # 1800.0f

    const/high16 v8, 0x42700000    # 60.0f

    const/high16 v9, 0x435c0000    # 220.0f

    const/high16 v10, 0x3e800000    # 0.25f

    const/high16 v11, 0x3e800000    # 0.25f

    const/high16 v12, 0x3e800000    # 0.25f

    const v13, 0x3f333333    # 0.7f

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 427
    :cond_2d1
    const/4 v2, 0x3

    move/from16 v0, v17

    if-ne v0, v2, :cond_305

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpg-double v2, v2, v4

    if-gez v2, :cond_305

    .line 428
    const-string v2, "fx_fire"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x43fa0000    # 500.0f

    const/high16 v8, 0x42700000    # 60.0f

    const/high16 v9, 0x43200000    # 160.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f0ccccd    # 0.55f

    const v12, 0x3e19999a    # 0.15f

    const v13, 0x3f666666    # 0.9f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 421
    :cond_305
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    goto/16 :goto_247

    .line 400
    :cond_30b
    const v2, 0x3e4ccccd    # 0.2f

    goto/16 :goto_191

    .line 408
    :cond_310
    move-object/from16 v0, v18

    iget-boolean v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->police:Z

    if-eqz v3, :cond_505

    const-wide/16 v2, 0x2bc

    rem-long v2, v14, v2

    const-wide/16 v4, 0x15e

    cmp-long v2, v2, v4

    if-gez v2, :cond_3a9

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_322
    const v3, 0x3f933333    # 1.15f

    sub-float/2addr v3, v2

    move v13, v3

    move v11, v2

    .line 409
    :goto_328
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    const/4 v4, 0x0

    aget v4, v16, v4

    mul-float v4, v4, v19

    const/4 v5, 0x1

    aget v5, v16, v5

    mul-float v5, v5, v19

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 410
    const-string v2, "fx_core"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x42700000    # 60.0f

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v6, v11

    mul-float/2addr v5, v6

    const/high16 v6, 0x42700000    # 60.0f

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v7, v11

    mul-float/2addr v6, v7

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3e19999a    # 0.15f

    const v10, 0x3dcccccd    # 0.1f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    const/4 v4, 0x2

    aget v4, v16, v4

    mul-float v4, v4, v19

    const/4 v5, 0x3

    aget v5, v16, v5

    mul-float v5, v5, v19

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 412
    move-object/from16 v0, v18

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->police:Z

    if-eqz v2, :cond_3ae

    const-string v2, "fx_core"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x428c0000    # 70.0f

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v6, v13

    mul-float/2addr v5, v6

    const/high16 v6, 0x428c0000    # 70.0f

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v7, v13

    mul-float/2addr v6, v7

    const/4 v7, 0x0

    const v8, 0x3e19999a    # 0.15f

    const v9, 0x3ecccccd    # 0.4f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    move v11, v13

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    goto/16 :goto_21b

    .line 450
    :catch_3a5
    move-exception v2

    .line 453
    :cond_3a6
    :goto_3a6
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 408
    :cond_3a9
    const v2, 0x3e19999a    # 0.15f

    goto/16 :goto_322

    .line 413
    :cond_3ae
    const-string v2, "fx_core"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x42700000    # 60.0f

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v6, v11

    mul-float/2addr v5, v6

    const/high16 v6, 0x42700000    # 60.0f

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v7, v11

    mul-float/2addr v6, v7

    const/4 v7, 0x0

    const v8, 0x3e19999a    # 0.15f

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3e99999a    # 0.3f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    goto/16 :goto_21b

    .line 416
    :cond_3d3
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->life:F

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    div-float/2addr v2, v3

    goto/16 :goto_226

    .line 417
    :cond_3de
    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_3e9

    const/4 v2, 0x2

    move/from16 v17, v2

    goto/16 :goto_22f

    :cond_3e9
    const/high16 v3, 0x3f400000    # 0.75f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3f4

    const/4 v2, 0x1

    move/from16 v17, v2

    goto/16 :goto_22f

    :cond_3f4
    const/4 v2, 0x0

    move/from16 v17, v2

    goto/16 :goto_22f

    .line 433
    :cond_3f9
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->draw(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;)V

    .line 435
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->specificName:Ljava/lang/String;

    if-eqz v2, :cond_465

    .line 436
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->specificNameDecalX:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_41f

    sget-object v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextMedium:Lfr/testudo/spacecorsair/textengine/GLText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->specificName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->specificNameDecalX:I

    .line 437
    :cond_41f
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->specificNameDecalX:I

    neg-int v3, v3

    int-to-float v3, v3

    const v4, 0x3ef5c28f    # 0.48f

    mul-float v4, v4, v19

    const/high16 v5, 0x42280000    # 42.0f

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v2, :cond_4ed

    const/high16 v6, 0x3f800000    # 1.0f

    :goto_442
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v2, :cond_4f5

    const v7, 0x3e99999a    # 0.3f

    :goto_44b
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v2, :cond_4fd

    const/high16 v8, 0x3e800000    # 0.25f

    .line 439
    :goto_453
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->specificName:Ljava/lang/String;

    const/high16 v9, 0x3f800000    # 1.0f

    sget-object v10, Lfr/testudo/spacecorsair/textengine/TextSize;->MEDIUM:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v2 .. v10}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 441
    :cond_465
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    const/high16 v3, 0x41700000    # 15.0f

    const v4, 0x3ef5c28f    # 0.48f

    mul-float v4, v4, v19

    const/high16 v5, 0x41200000    # 10.0f

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 442
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/hud/InfoBar;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v2, :cond_3a6

    move-object/from16 v0, v18

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->hostileAnnounced:Z

    if-nez v2, :cond_3a6

    .line 444
    const/4 v2, 0x1

    move-object/from16 v0, v18

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->hostileAnnounced:Z

    .line 445
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModRep;->flagshipProvoked(Ljava/lang/String;)V

    .line 446
    const-string v2, "flagship_horn"

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v6, 0xbb8

    invoke-static {v2, v3, v4, v6, v7}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v3, v3, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " flagship "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v3, v3, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->ship:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is now hostile."

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 448
    const-string v2, "warp_in"

    const v3, 0x3f19999a    # 0.6f

    const v4, 0x3f333333    # 0.7f

    const-wide/16 v6, 0x3e8

    invoke-static {v2, v3, v4, v6, v7}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    goto/16 :goto_3a6

    .line 438
    :cond_4ed
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v6, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->r:F

    goto/16 :goto_442

    :cond_4f5
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v7, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->g:F

    goto/16 :goto_44b

    :cond_4fd
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v8, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->b:F
    :try_end_503
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_503} :catch_3a5

    goto/16 :goto_453

    :cond_505
    move v13, v2

    move v11, v2

    goto/16 :goto_328
.end method

.method public static drawable(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;)Lfr/testudo/spacecorsair/display/Drawable;
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 303
    :try_start_1
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v1

    .line 304
    if-nez v1, :cond_8

    .line 325
    :cond_7
    :goto_7
    return-object v0

    .line 305
    :cond_8
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->hullSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    if-nez v2, :cond_13

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v2, v2

    new-array v2, v2, [Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->hullSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 306
    :cond_13
    iget-object v2, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModCapitals;->indexOf(Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;)I

    move-result v2

    .line 307
    iget-boolean v3, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->police:Z

    if-eqz v3, :cond_73

    .line 308
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->polSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    if-nez v3, :cond_28

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v3, v3

    new-array v3, v3, [Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    sput-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->polSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 309
    :cond_28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pol_cap_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v4, v4, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 310
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModArt;->lazyTex(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    .line 311
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCapitals;->polSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    aget-object v4, v4, v2

    if-nez v4, :cond_57

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCapitals;->polSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    const v5, 0x44bb8000    # 1500.0f

    const v6, 0x44bb8000    # 1500.0f

    const/4 v7, 0x0

    invoke-static {v3, v5, v6, v7}, Lfr/testudo/spacecorsair/mod/ModFx;->fixed(Ljava/lang/String;FFZ)Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    move-result-object v5

    aput-object v5, v4, v2

    .line 312
    :cond_57
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCapitals;->polSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    aget-object v4, v4, v2

    iget-object v4, v4, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    if-nez v4, :cond_66

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCapitals;->polSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    aget-object v4, v4, v2

    invoke-static {v4, v3}, Lfr/testudo/spacecorsair/mod/ModFx;->rebind(Lfr/testudo/spacecorsair/mod/ModFx$Sprite;Ljava/lang/String;)V

    .line 313
    :cond_66
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->polSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    aget-object v3, v3, v2

    iget-object v3, v3, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    if-eqz v3, :cond_73

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->polSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    aget-object v0, v1, v2

    goto :goto_7

    .line 315
    :cond_73
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->hullSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    aget-object v3, v3, v2

    if-nez v3, :cond_9f

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->hullSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cap_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v5, v5, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x44bb8000    # 1500.0f

    const v6, 0x44bb8000    # 1500.0f

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lfr/testudo/spacecorsair/mod/ModFx;->fixed(Ljava/lang/String;FFZ)Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    move-result-object v4

    aput-object v4, v3, v2

    .line 316
    :cond_9f
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->hullSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    aget-object v3, v3, v2

    iget-object v3, v3, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    if-nez v3, :cond_c5

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->hullSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    aget-object v3, v3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cap_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v5, v5, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModFx;->rebind(Lfr/testudo/spacecorsair/mod/ModFx$Sprite;Ljava/lang/String;)V

    .line 317
    :cond_c5
    iget-boolean v3, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->police:Z

    if-nez v3, :cond_144

    invoke-static {p0, v1}, Lfr/testudo/spacecorsair/mod/ModLive;->titanHostile(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;)Z

    move-result v3

    if-eqz v3, :cond_144

    iget-object v3, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v3, v3, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModV35;->hostileCap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_144

    .line 318
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->hostileSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    if-nez v3, :cond_e4

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v3, v3

    new-array v3, v3, [Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    sput-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->hostileSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 319
    :cond_e4
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->hostileSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    aget-object v3, v3, v2

    if-nez v3, :cond_110

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->hostileSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enemy_cap_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v5, v5, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x44bb8000    # 1500.0f

    const v6, 0x44bb8000    # 1500.0f

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lfr/testudo/spacecorsair/mod/ModFx;->fixed(Ljava/lang/String;FFZ)Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    move-result-object v4

    aput-object v4, v3, v2

    .line 320
    :cond_110
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->hostileSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    aget-object v3, v3, v2

    iget-object v3, v3, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    if-nez v3, :cond_136

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->hostileSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    aget-object v3, v3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enemy_cap_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lfr/testudo/spacecorsair/mod/ModFx;->rebind(Lfr/testudo/spacecorsair/mod/ModFx$Sprite;Ljava/lang/String;)V

    .line 321
    :cond_136
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->hostileSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    aget-object v1, v1, v2

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    if-eqz v1, :cond_144

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->hostileSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    aget-object v0, v1, v2

    goto/16 :goto_7

    .line 323
    :cond_144
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->hullSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    aget-object v1, v1, v2

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    if-eqz v1, :cond_7

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->hullSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    aget-object v0, v1, v2
    :try_end_150
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_150} :catch_152

    goto/16 :goto_7

    .line 324
    :catch_152
    move-exception v1

    goto/16 :goto_7
.end method

.method static ensure(Ljava/lang/String;Z)Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 280
    .line 281
    :try_start_1
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->caps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 282
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->police:Z

    if-nez v1, :cond_b

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->removed:Z

    if-nez v1, :cond_b

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 284
    :goto_41
    if-nez v0, :cond_61

    .line 285
    const/4 v1, 0x0

    :goto_44
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v3, v3

    if-ge v1, v3, :cond_61

    .line 286
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v3, v3, v1

    iget-object v3, v3, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->spawn(ILfr/testudo/spacecorsair/game/levels/LevelId;)Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    move-result-object v0

    .line 289
    :cond_61
    if-eqz v0, :cond_80

    if-eqz p1, :cond_80

    iget v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    const v3, 0x48c35000    # 400000.0f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_80

    .line 290
    iget v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v3

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    .line 291
    iget v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->life:F

    iget v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->life:F
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_80} :catch_84

    .line 295
    :cond_80
    :goto_80
    return-object v0

    .line 285
    :cond_81
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 294
    :catch_84
    move-exception v0

    move-object v0, v2

    .line 295
    goto :goto_80

    :cond_87
    move-object v0, v2

    goto :goto_41
.end method

.method private static fire(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;Lfr/testudo/spacecorsair/engine/Vector2;FF)V
    .registers 27

    .prologue
    .line 508
    move/from16 v0, p4

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 509
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v0, v4

    move/from16 v17, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    neg-float v0, v2

    move/from16 v18, v0

    .line 510
    move-object/from16 v0, p3

    iget v2, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const v3, 0x44bb8000    # 1500.0f

    mul-float v3, v3, v17

    const v4, 0x3d23d70a    # 0.04f

    mul-float/2addr v3, v4

    add-float v19, v2, v3

    move-object/from16 v0, p3

    iget v2, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v3, 0x44bb8000    # 1500.0f

    mul-float v3, v3, v18

    const v4, 0x3d23d70a    # 0.04f

    mul-float/2addr v3, v4

    add-float v20, v2, v3

    .line 511
    const/4 v2, 0x0

    move v11, v2

    :goto_36
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->shots:I

    if-ge v11, v2, :cond_de

    .line 512
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->shots:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_cc

    int-to-float v2, v11

    move-object/from16 v0, p2

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->shots:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, p2

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->spread:F

    mul-float/2addr v2, v3

    :goto_54
    add-float v12, p4, v2

    .line 513
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newEnnergyBullet()Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->shot:F

    move-object/from16 v0, p2

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->dmg:F

    mul-float/2addr v3, v4

    const/4 v4, 0x6

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p2

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->r:F

    move-object/from16 v0, p2

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->g:F

    move-object/from16 v0, p2

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->b:F

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModWeapons;->TAG:[Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    move-object/from16 v0, p2

    iget v10, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->fam:I

    aget-object v10, v5, v10

    move-object/from16 v5, p0

    .line 514
    invoke-virtual/range {v2 .. v10}, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->init(FILfr/testudo/spacecorsair/business/Element;FFFFLfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    move-result-object v2

    .line 515
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 516
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->speed:F

    neg-float v5, v5

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v3

    float-to-double v4, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 517
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 518
    iput v12, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->spin:F

    .line 519
    move-object/from16 v0, p2

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->range:F

    const v4, 0x3f933333    # 1.15f

    mul-float/2addr v3, v4

    move-object/from16 v0, p2

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->speed:F

    const v5, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, v5

    div-float/2addr v3, v4

    float-to-long v4, v3

    iput-wide v4, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->lifeTimeInMilli:J

    .line 520
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto/16 :goto_36

    .line 512
    :cond_cc
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v2, v4

    double-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    move-object/from16 v0, p2

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->spread:F

    mul-float/2addr v2, v3

    goto/16 :goto_54

    .line 523
    :cond_de
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->fam:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_18c

    const/high16 v9, 0x43820000    # 260.0f

    .line 524
    :goto_e7
    const-string v2, "fx_core"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x430c0000    # 140.0f

    const v3, 0x3e99999a    # 0.3f

    mul-float v8, v9, v3

    move-object/from16 v0, p2

    iget v10, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->r:F

    move-object/from16 v0, p2

    iget v11, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->g:F

    move-object/from16 v0, p2

    iget v12, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->b:F

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    const/4 v15, 0x1

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 525
    const-string v2, "fx_glow"

    const/high16 v3, 0x42200000    # 40.0f

    mul-float v5, v17, v3

    const/high16 v3, 0x42200000    # 40.0f

    mul-float v6, v18, v3

    const/high16 v7, 0x435c0000    # 220.0f

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v8, v9, v3

    const v3, 0x3fcccccd    # 1.6f

    mul-float/2addr v9, v3

    move-object/from16 v0, p2

    iget v10, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->r:F

    move-object/from16 v0, p2

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->g:F

    const v4, 0x3f666666    # 0.9f

    mul-float v11, v3, v4

    move-object/from16 v0, p2

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->b:F

    const v4, 0x3f4ccccd    # 0.8f

    mul-float v12, v3, v4

    const v13, 0x3f333333    # 0.7f

    const/4 v14, 0x1

    const/4 v15, 0x1

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 526
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->fam:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_19a

    .line 527
    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_149
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ge v0, v2, :cond_19a

    const-string v2, "fx_smoke"

    const/high16 v3, 0x42700000    # 60.0f

    mul-float v3, v3, v17

    const/high16 v4, -0x3e380000    # -25.0f

    const/high16 v5, 0x41c80000    # 25.0f

    invoke-static {v4, v5}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v4

    add-float v5, v3, v4

    const/high16 v3, 0x42700000    # 60.0f

    mul-float v3, v3, v18

    const/high16 v4, -0x3e380000    # -25.0f

    const/high16 v6, 0x41c80000    # 25.0f

    invoke-static {v4, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v4

    add-float v6, v3, v4

    const/high16 v7, 0x44960000    # 1200.0f

    const/high16 v8, 0x42700000    # 60.0f

    const/high16 v9, 0x43480000    # 200.0f

    const v10, 0x3ee66666    # 0.45f

    const v11, 0x3ed70a3d    # 0.42f

    const v12, 0x3ecccccd    # 0.4f

    const v13, 0x3f0ccccd    # 0.55f

    const/4 v14, 0x0

    const/4 v15, 0x1

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    goto :goto_149

    .line 523
    :cond_18c
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->fam:I

    if-nez v2, :cond_196

    const/high16 v9, 0x43480000    # 200.0f

    goto/16 :goto_e7

    :cond_196
    const/high16 v9, 0x42f00000    # 120.0f

    goto/16 :goto_e7

    .line 529
    :cond_19a
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x459c4000    # 5000.0f

    div-float v4, p5, v4

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 530
    const v3, 0x3d4ccccd    # 0.05f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1d3

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModWeapons;->SOUND:[Ljava/lang/String;

    move-object/from16 v0, p2

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->fam:I

    aget-object v3, v3, v4

    const v4, 0x3f666666    # 0.9f

    mul-float/2addr v2, v4

    const v4, 0x3f47ae14    # 0.78f

    const v5, 0x3f733333    # 0.95f

    const v6, 0x3f866666    # 1.05f

    invoke-static {v5, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v5

    mul-float/2addr v4, v5

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModWeapons;->GAP:[J

    move-object/from16 v0, p2

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->fam:I

    aget-wide v6, v5, v6

    invoke-static {v3, v2, v4, v6, v7}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 531
    :cond_1d3
    return-void
.end method

.method static giveShield(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;II)V
    .registers 7

    .prologue
    .line 208
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->bigShield:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const/4 v0, 0x6

    invoke-static {p2, p2, v0}, Lfr/testudo/spacecorsair/mod/ModV34;->shieldStats(III)[F

    move-result-object v0

    .line 210
    if-nez v0, :cond_d

    .line 215
    :goto_c
    return-void

    .line 211
    :cond_d
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModV34$Sh;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/mod/ModV34$Sh;-><init>()V

    .line 212
    const/4 v2, 0x0

    aget v2, v0, v2

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->SHIELD_MULT:[F

    aget v3, v3, p1

    mul-float/2addr v2, v3

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cur:F

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cap:F

    .line 213
    const/4 v2, 0x1

    aget v0, v0, v2

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->SHIELD_MULT:[F

    aget v2, v2, p1

    mul-float/2addr v0, v2

    iput v0, v1, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->rate:F

    .line 214
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->bigShield:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c
.end method

.method static guns(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 22

    .prologue
    .line 469
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->silenceStock(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;)V

    .line 470
    move-object/from16 v0, p1

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->mounts:[F

    if-nez v2, :cond_a

    .line 505
    :cond_9
    return-void

    .line 471
    :cond_a
    move-object/from16 v0, p1

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->mounts:[F

    array-length v2, v2

    div-int/lit8 v10, v2, 0x2

    .line 472
    move-object/from16 v0, p1

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->tAng:[F

    if-nez v2, :cond_41

    .line 473
    new-array v2, v10, [F

    move-object/from16 v0, p1

    iput-object v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->tAng:[F

    .line 474
    new-array v2, v10, [I

    move-object/from16 v0, p1

    iput-object v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->tReload:[I

    .line 475
    new-array v2, v10, [I

    move-object/from16 v0, p1

    iput-object v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->tKick:[I

    .line 476
    const/4 v2, 0x0

    :goto_2a
    if-ge v2, v10, :cond_41

    move-object/from16 v0, p1

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->tAng:[F

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    aput v4, v3, v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->tReload:[I

    mul-int/lit16 v4, v2, 0x12c

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 478
    :cond_41
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v2, :cond_161

    invoke-static/range {p0 .. p1}, Lfr/testudo/spacecorsair/mod/ModLive;->titanHostile(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;)Z

    move-result v2

    if-eqz v2, :cond_161

    const/4 v2, 0x1

    move v8, v2

    .line 479
    :goto_4f
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->GUNS:[[Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;

    move-object/from16 v0, p1

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModCapitals;->indexOf(Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;)I

    move-result v3

    aget-object v11, v2, v3

    .line 480
    const/4 v2, 0x0

    move v9, v2

    :goto_5d
    if-ge v9, v10, :cond_9

    .line 481
    array-length v2, v11

    rem-int v2, v9, v2

    aget-object v4, v11, v2

    .line 482
    move-object/from16 v0, p1

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->tReload:[I

    aget v2, v2, v9

    if-lez v2, :cond_78

    move-object/from16 v0, p1

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->tReload:[I

    aget v3, v2, v9

    int-to-long v6, v3

    sub-long v6, v6, p3

    long-to-int v3, v6

    aput v3, v2, v9

    .line 483
    :cond_78
    move-object/from16 v0, p1

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->tKick:[I

    aget v2, v2, v9

    if-lez v2, :cond_8c

    move-object/from16 v0, p1

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->tKick:[I

    aget v3, v2, v9

    int-to-long v6, v3

    sub-long v6, v6, p3

    long-to-int v3, v6

    aput v3, v2, v9

    .line 484
    :cond_8c
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    move-object/from16 v0, p1

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->mounts:[F

    mul-int/lit8 v6, v9, 0x2

    aget v5, v5, v6

    const v6, 0x44bb8000    # 1500.0f

    mul-float/2addr v5, v6

    move-object/from16 v0, p1

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->mounts:[F

    mul-int/lit8 v7, v9, 0x2

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    const v7, 0x44bb8000    # 1500.0f

    mul-float/2addr v6, v7

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModCapitals;->mz:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v5, v6, v7}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 485
    move-object/from16 v0, p2

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->mz:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v7

    .line 486
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    .line 487
    if-eqz v8, :cond_165

    iget v3, v4, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->range:F

    cmpg-float v3, v7, v3

    if-gez v3, :cond_165

    const/4 v3, 0x1

    .line 488
    :goto_ca
    if-eqz v3, :cond_11a

    .line 489
    iget v2, v4, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->speed:F

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v2, v5

    div-float v2, v7, v2

    .line 490
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModCapitals;->aim:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p2

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p2

    iget-object v12, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v12, v12, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v13, 0x42c80000    # 100.0f

    mul-float/2addr v12, v13

    mul-float/2addr v12, v2

    add-float/2addr v6, v12

    move-object/from16 v0, p2

    iget-object v12, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v12, v12, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, p2

    iget-object v13, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v13, v13, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float/2addr v13, v14

    mul-float/2addr v2, v13

    add-float/2addr v2, v12

    invoke-virtual {v5, v6, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 491
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->aim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModCapitals;->mz:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, v5

    float-to-double v12, v2

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->aim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModCapitals;->mz:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v2, v5

    float-to-double v14, v2

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    double-to-float v2, v12

    const/high16 v5, 0x42b40000    # 90.0f

    add-float/2addr v2, v5

    .line 493
    :cond_11a
    move-object/from16 v0, p1

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->tAng:[F

    aget v5, v5, v9

    sub-float/2addr v2, v5

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLive;->normDelta(F)F

    move-result v2

    .line 494
    iget v5, v4, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->turn:F

    move-wide/from16 v0, p3

    long-to-float v6, v0

    mul-float/2addr v5, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    .line 495
    move-object/from16 v0, p1

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->tAng:[F

    move-object/from16 v0, p1

    iget-object v12, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->tAng:[F

    aget v12, v12, v9

    neg-float v13, v5

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v13, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-float/2addr v5, v12

    invoke-static {v5}, Lfr/testudo/spacecorsair/business/Element;->normalizeSpin(F)F

    move-result v5

    aput v5, v6, v9

    .line 496
    if-eqz v3, :cond_15c

    move-object/from16 v0, p1

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->tReload:[I

    aget v3, v3, v9

    if-gtz v3, :cond_15c

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_168

    .line 480
    :cond_15c
    :goto_15c
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto/16 :goto_5d

    .line 478
    :cond_161
    const/4 v2, 0x0

    move v8, v2

    goto/16 :goto_4f

    .line 487
    :cond_165
    const/4 v3, 0x0

    goto/16 :goto_ca

    .line 497
    :cond_168
    move-object/from16 v0, p1

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->tReload:[I

    iget v3, v4, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->reload:I

    int-to-float v3, v3

    const v5, 0x3f666666    # 0.9f

    const v6, 0x3e4ccccd    # 0.2f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    double-to-float v12, v12

    mul-float/2addr v6, v12

    add-float/2addr v5, v6

    mul-float/2addr v3, v5

    move-object/from16 v0, p1

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->rate:F

    div-float/2addr v3, v5

    float-to-int v3, v3

    aput v3, v2, v9

    .line 498
    move-object/from16 v0, p1

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->tKick:[I

    const/16 v3, 0xa0

    aput v3, v2, v9

    .line 499
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModCapitals;->mz:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p1

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->tAng:[F

    aget v6, v2, v9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-static/range {v2 .. v7}, Lfr/testudo/spacecorsair/mod/ModCapitals;->fire(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;Lfr/testudo/spacecorsair/engine/Vector2;FF)V

    .line 500
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->fireLogged:Z

    if-nez v2, :cond_15c

    const-string v2, "corsair_nodialog"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15c

    .line 501
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->fireLogged:Z

    .line 502
    const-string v2, "ModCapitals"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v5, v5, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " battery fire mount="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " fam="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModWeapons;->BASE:[Ljava/lang/String;

    iget v6, v4, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->fam:I

    aget-object v5, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " dmg="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->shot:F

    iget v4, v4, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->dmg:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15c
.end method

.method static indexOf(Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;)I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 331
    move v0, v1

    :goto_2
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v2, v2

    if-ge v0, v2, :cond_11

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v2, v2, v0

    if-ne v2, p0, :cond_e

    .line 333
    :cond_d
    :goto_d
    return v0

    .line 331
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_11
    move v0, v1

    .line 332
    :goto_12
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v2, v2

    if-ge v0, v2, :cond_28

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v2, v2, v0

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_28
    move v0, v1

    .line 333
    goto :goto_d
.end method

.method public static onLevel()V
    .registers 8

    .prologue
    const-wide/16 v2, 0x0

    .line 116
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->active:Z

    if-eqz v0, :cond_a

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->onLevel()V

    .line 134
    :cond_9
    :goto_9
    return-void

    .line 118
    :cond_a
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->caps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitan;->titanClass:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->forget(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;)V

    goto :goto_14

    .line 119
    :cond_29
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->caps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 120
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->onLevel()V

    .line 122
    :try_start_31
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 123
    const/4 v0, 0x0

    move v4, v0

    :goto_3b
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v0, v0

    if-ge v4, v0, :cond_9

    .line 124
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v0, v0, v4

    .line 125
    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->hq:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eq v1, v5, :cond_4c

    .line 123
    :cond_48
    :goto_48
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3b

    .line 126
    :cond_4c
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCapitals;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 127
    if-nez v1, :cond_6a

    move-wide v0, v2

    .line 128
    :goto_53
    cmp-long v6, v0, v2

    if-lez v6, :cond_64

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    const-wide/32 v6, 0xa4cb80

    cmp-long v0, v0, v6

    if-ltz v0, :cond_48

    .line 129
    :cond_64
    invoke-static {v4, v5}, Lfr/testudo/spacecorsair/mod/ModCapitals;->spawn(ILfr/testudo/spacecorsair/game/levels/LevelId;)Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    goto :goto_48

    .line 131
    :catch_68
    move-exception v0

    goto :goto_9

    .line 127
    :cond_6a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cap_dead_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v6, 0x0

    invoke-interface {v1, v0, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_84} :catch_68

    move-result-wide v0

    goto :goto_53
.end method

.method public static physic(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 339
    :try_start_1
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v1

    if-nez v1, :cond_8

    .line 341
    :goto_7
    return-object v0

    .line 339
    :cond_8
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->phys:Lfr/testudo/spacecorsair/engine/Vector2;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a} :catch_b

    goto :goto_7

    .line 340
    :catch_b
    move-exception v1

    goto :goto_7
.end method

.method private static prefs()Landroid/content/SharedPreferences;
    .registers 1

    .prologue
    .line 109
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static prune(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Lfr/testudo/spacecorsair/business/Element;)I
    .registers 8

    .prologue
    const/4 v0, -0x1

    .line 348
    :try_start_1
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v1

    if-nez v1, :cond_8

    .line 359
    :goto_7
    return v0

    .line 350
    :cond_8
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    const v3, -0x3bf18000    # -570.0f

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget v2, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 351
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    const v3, 0x440e8000    # 570.0f

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget v2, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 352
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, v3

    .line 353
    iget-object v3, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    iget-object v4, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    mul-float v4, v1, v1

    mul-float v5, v2, v2

    add-float/2addr v4, v5

    div-float/2addr v3, v4

    .line 354
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 355
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float/2addr v1, v3

    add-float/2addr v1, v4

    iget-object v4, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v1, v4

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCapitals;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    iget-object v3, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, v3

    .line 356
    const/high16 v3, 0x43430000    # 195.0f

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/Element;->getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v4

    iget v0, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_92} :catch_a4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    add-float/2addr v0, v3

    .line 357
    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    mul-float/2addr v0, v0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_a1

    const/4 v0, 0x1

    goto/16 :goto_7

    :cond_a1
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 358
    :catch_a4
    move-exception v1

    goto/16 :goto_7
.end method

.method static scaledLevel(I)I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 165
    .line 166
    :try_start_1
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_9} :catch_1a

    .line 167
    :goto_9
    const/16 v2, 0x28

    add-int/lit8 v0, v0, 0x2

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 166
    :catch_1a
    move-exception v0

    move v0, v1

    goto :goto_9
.end method

.method private static silenceStock(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;)V
    .registers 3

    .prologue
    const/16 v1, 0xbb8

    .line 459
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->nextShootAllowed:I

    .line 460
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->nextShootAllowed:I

    .line 461
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->nextShootAllowed:I

    .line 462
    return-void
.end method

.method private static spawn(ILfr/testudo/spacecorsair/game/levels/LevelId;)Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 171
    iget v0, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->scaledLevel(I)I

    move-result v0

    invoke-static {p0, v0, v1, v1}, Lfr/testudo/spacecorsair/mod/ModCapitals;->build(IILfr/testudo/spacecorsair/mod/ModCapitals$Faction;Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    move-result-object v0

    return-object v0
.end method

.method static spawnBoss(IILfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 196
    invoke-static {p0, p1, v0, p2}, Lfr/testudo/spacecorsair/mod/ModCapitals;->build(IILfr/testudo/spacecorsair/mod/ModCapitals$Faction;Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    move-result-object v1

    .line 197
    if-nez v1, :cond_8

    .line 202
    :goto_7
    return-object v0

    .line 198
    :cond_8
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->caps:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    .line 199
    if-eqz v0, :cond_15

    const/4 v2, 0x1

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->hostileAnnounced:Z

    .line 200
    :cond_15
    const/4 v0, 0x0

    iput v0, v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->amountOfDamageAllowedInRatioByPlayerBeforeRebelion:I

    .line 201
    :try_start_18
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->attackPlayerIfItNotTheCaseAlready()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1b} :catch_1d

    :goto_1b
    move-object v0, v1

    .line 202
    goto :goto_7

    .line 201
    :catch_1d
    move-exception v0

    goto :goto_1b
.end method

.method static spawnPolice(IILfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;F)Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;
    .registers 10

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 177
    invoke-static {p0, p1, p3, p2}, Lfr/testudo/spacecorsair/mod/ModCapitals;->build(IILfr/testudo/spacecorsair/mod/ModCapitals$Faction;Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    move-result-object v1

    .line 178
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->caps:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    .line 179
    iput-boolean v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->police:Z

    .line 180
    iput p4, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->rate:F

    .line 181
    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->shot:F

    mul-float/2addr v2, p4

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->shot:F

    .line 182
    iput-boolean v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->hostileAnnounced:Z

    .line 183
    iget v0, v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    mul-float/2addr v0, p4

    iput v0, v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    .line 184
    iget v0, v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    iput v0, v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->life:F

    .line 185
    iget v0, v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->xp:I

    int-to-float v0, v0

    mul-float/2addr v0, p4

    float-to-int v0, v0

    iput v0, v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->xp:I

    .line 186
    iget v0, v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxPouseeForce:F

    mul-float/2addr v0, p4

    iput v0, v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxPouseeForce:F

    .line 187
    iget v0, v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->pouseeForce:F

    mul-float/2addr v0, p4

    iput v0, v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->pouseeForce:F

    .line 188
    iput v4, v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->amountOfDamageAllowedInRatioByPlayerBeforeRebelion:I

    .line 189
    const-string v0, "%s Police Titan"

    new-array v2, v3, [Ljava/lang/Object;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v3, v3, p0

    iget-object v3, v3, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModLang;->trf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->specificName:Ljava/lang/String;

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cap_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v2, v2, p0

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, 0x44bb8000    # 1500.0f

    invoke-static {v1, v0, p0, v2}, Lfr/testudo/spacecorsair/mod/ModPoliceAura;->put(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;IF)V

    .line 191
    return-object v1
.end method

.method static testSpawn(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 8

    .prologue
    .line 140
    const-string v0, "corsair_capital"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 141
    if-eqz v3, :cond_10

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->testSpawned:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 159
    :cond_10
    return-void

    .line 142
    :cond_11
    sput-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->testSpawned:Ljava/lang/String;

    .line 144
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->caps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 145
    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->removed:Z

    if-nez v2, :cond_1d

    .line 146
    const/4 v2, 0x1

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->removed:Z

    .line 147
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/Level;->toDelete:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 149
    :cond_3c
    const/4 v0, 0x0

    move v2, v0

    :goto_3e
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v0, v0

    if-ge v2, v0, :cond_10

    .line 150
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 149
    :cond_4f
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3e

    .line 151
    :cond_53
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->spawn(ILfr/testudo/spacecorsair/game/levels/LevelId;)Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 152
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->caps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_68
    :goto_68
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 153
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v5, v5, v2

    if-ne v1, v5, :cond_68

    .line 154
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->anchor:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    const/4 v5, 0x0

    const v6, 0x44d48000    # 1700.0f

    invoke-virtual {v1, v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 155
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->anchor:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_68
.end method
