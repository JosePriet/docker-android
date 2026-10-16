.class public Lfr/testudo/spacecorsair/mod/ModShips$Hull;
.super Ljava/lang/Object;
.source "ModShips.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModShips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Hull"
.end annotation


# instance fields
.field final art:Ljava/lang/String;

.field cargo:F

.field carrier:Z

.field final cls:I

.field dev:Z

.field dmg:F

.field doomsday:Z

.field faction:Ljava/lang/String;

.field hullRegen:F

.field final hwTurret:Ljava/lang/String;

.field final id:Ljava/lang/String;

.field final level:I

.field final lore:Ljava/lang/String;

.field missileReload:F

.field final name:Ljava/lang/String;

.field final price:I

.field final rarity:Lfr/testudo/spacecorsair/business/loot/LootRarety;

.field reload:F

.field final role:Ljava/lang/String;

.field secret:Ljava/lang/String;

.field shieldCap:F

.field shieldDelay:F

.field shieldRegen:F

.field final size:I

.field final skill:Ljava/lang/String;

.field spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

.field final tech:I

.field turretArt:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILfr/testudo/spacecorsair/business/loot/LootRarety;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dmg:F

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->reload:F

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldCap:F

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldRegen:F

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->shieldDelay:F

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->missileReload:F

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cargo:F

    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->hullRegen:F

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->faction:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->id:Ljava/lang/String;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->name:Ljava/lang/String;

    iput p3, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    iput p4, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->tech:I

    iput-object p5, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->role:Ljava/lang/String;

    iput-object p6, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    .line 45
    iput p7, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->size:I

    iput p8, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->level:I

    iput p9, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->price:I

    iput-object p10, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->rarity:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object p11, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->skill:Ljava/lang/String;

    iput-object p12, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->lore:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hw_turret_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->hwTurret:Ljava/lang/String;

    .line 47
    return-void
.end method
