.class final Lfr/testudo/spacecorsair/game/levels/CivilAnimatorHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfr/testudo/spacecorsair/business/world/civil/ScanListener;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanFinished(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 3

    .prologue
    .line 90
    check-cast p1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    const-string v0, "scanned !"

    iput-object v0, p1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->specificName:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public onScanInterrupted(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 3

    .prologue
    .line 85
    check-cast p1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    const-string v0, "interrupted"

    iput-object v0, p1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->specificName:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public onScanStart(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 3

    .prologue
    .line 80
    check-cast p1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    const-string v0, "scaning"

    iput-object v0, p1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->specificName:Ljava/lang/String;

    .line 81
    return-void
.end method
