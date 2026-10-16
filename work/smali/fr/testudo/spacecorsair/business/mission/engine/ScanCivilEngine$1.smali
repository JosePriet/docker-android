.class Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfr/testudo/spacecorsair/business/world/civil/ScanListener;


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;)V
    .registers 2

    .prologue
    .line 118
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$1;->this$0:Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanFinished(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 6

    .prologue
    .line 132
    check-cast p1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 133
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$1;->this$0:Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;

    iget-wide v2, v2, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->agressiveProbability:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_38

    .line 134
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->attackPlayerIfItNotTheCaseAlready()V

    .line 135
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$1;->this$0:Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->scannedKo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setNamePrefix(Ljava/lang/String;)V

    .line 141
    :goto_18
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setNotScannable()V

    .line 142
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$1;->this$0:Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;

    iget v1, v0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->currentCivilScanned:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->currentCivilScanned:I

    .line 143
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$1;->this$0:Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->updateScanText()V

    .line 144
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$1;->this$0:Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;

    iget v0, v0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->currentCivilScanned:I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$1;->this$0:Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;

    iget v1, v1, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->civilScanObjective:I

    if-lt v0, v1, :cond_37

    .line 145
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$1;->this$0:Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->onObjectiveReach()V

    .line 147
    :cond_37
    return-void

    .line 138
    :cond_38
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$1;->this$0:Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->scannedOk:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setNamePrefix(Ljava/lang/String;)V

    goto :goto_18
.end method

.method public onScanInterrupted(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 128
    return-void
.end method

.method public onScanStart(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 123
    return-void
.end method
