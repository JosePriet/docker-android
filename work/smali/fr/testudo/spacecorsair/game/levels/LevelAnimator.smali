.class public abstract Lfr/testudo/spacecorsair/game/levels/LevelAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NOP:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/NopLevelAnimator;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/game/levels/NopLevelAnimator;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;->NOP:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCivilAttackedByPlayer(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V
    .registers 2

    .prologue
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModQol;->civilAttacked(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V

    .line 39
    return-void
.end method

.method public onDoPhysic(J)V
    .registers 3

    .prologue
    .line 52
    return-void
.end method

.method public onElementDestroyed(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 35
    return-void
.end method

.method public onElementKilledByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 30
    return-void
.end method

.method public onEverySecond()V
    .registers 1

    .prologue
    .line 48
    return-void
.end method

.method public onEveryTenSec()V
    .registers 1

    .prologue
    .line 25
    return-void
.end method

.method public onEveryThirtySec()V
    .registers 1

    .prologue
    .line 21
    return-void
.end method

.method public onPlayerDeath()V
    .registers 1

    .prologue
    .line 64
    return-void
.end method

.method public onPlayerEnterInZone()V
    .registers 1

    .prologue
    .line 59
    return-void
.end method

.method public onSecretMapReveleaed(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    .registers 2

    .prologue
    .line 44
    return-void
.end method
