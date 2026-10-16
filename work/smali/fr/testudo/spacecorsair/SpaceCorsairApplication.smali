.class public Lfr/testudo/spacecorsair/SpaceCorsairApplication;
.super Lfr/testudo/spacecorsair/billing/BillingApp;
.source "SourceFile"

# interfaces
.implements Lfr/testudo/spacecorsair/billing/BillingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/SpaceCorsairApplication$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lfr/testudo/spacecorsair/billing/BillingApp;-><init>()V

    .line 106
    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 3

    .prologue
    .line 16
    invoke-super {p0}, Lfr/testudo/spacecorsair/billing/BillingApp;->onCreate()V

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->applyApp(Landroid/content/Context;)V

    .line 18
    :try_start_3
    const-string v0, "spacecorsaire"

    invoke-virtual {p0, v0, p0}, Lfr/testudo/spacecorsair/SpaceCorsairApplication;->initInAppBilling(Ljava/lang/String;Lfr/testudo/spacecorsair/billing/BillingListener;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_9

    .line 22
    :goto_8
    return-void

    .line 19
    :catch_9
    move-exception v0

    .line 20
    const-string v1, "Error cached while inapp setup"

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/utils/Logs;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method public onInventorRetreived(Lfr/testudo/spacecorsair/billing/IabResult;Lfr/testudo/spacecorsair/billing/Inventory;)V
    .registers 8

    .prologue
    .line 47
    invoke-static {}, Lfr/testudo/spacecorsair/billing/InAppObject;->values()[Lfr/testudo/spacecorsair/billing/InAppObject;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_22

    aget-object v3, v1, v0

    .line 48
    iget-boolean v4, v3, Lfr/testudo/spacecorsair/billing/InAppObject;->consumable:Z

    if-eqz v4, :cond_1f

    iget-object v4, v3, Lfr/testudo/spacecorsair/billing/InAppObject;->sku:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lfr/testudo/spacecorsair/billing/Inventory;->hasPurchase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 49
    iget-object v3, v3, Lfr/testudo/spacecorsair/billing/InAppObject;->sku:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lfr/testudo/spacecorsair/billing/Inventory;->getPurchase(Ljava/lang/String;)Lfr/testudo/spacecorsair/billing/Purchase;

    move-result-object v3

    invoke-virtual {p0, v3}, Lfr/testudo/spacecorsair/SpaceCorsairApplication;->consumeItem(Lfr/testudo/spacecorsair/billing/Purchase;)V

    .line 47
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 53
    :cond_22
    return-void
.end method

.method public onPurchaseConsumed(Lfr/testudo/spacecorsair/billing/Purchase;)V
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 61
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/billing/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/billing/InAppObject;->getBySku(Ljava/lang/String;)Lfr/testudo/spacecorsair/billing/InAppObject;

    move-result-object v1

    .line 62
    if-nez v1, :cond_c

    .line 112
    :goto_b
    return-void

    .line 68
    :cond_c
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/billing/Purchase;->isPurchased()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inapp Item purchased : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/billing/InAppObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/utils/Logs;->i(Ljava/lang/String;)V

    .line 73
    :cond_2c
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/billing/Purchase;->isRefund()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inapp Item refund : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/billing/InAppObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/Logs;->i(Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x0

    .line 78
    :cond_4d
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/billing/Purchase;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inapp Item cancelled : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/billing/InAppObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/Logs;->i(Ljava/lang/String;)V

    .line 80
    const/4 v0, -0x1

    .line 83
    :cond_6e
    sget-object v2, Lfr/testudo/spacecorsair/SpaceCorsairApplication$1;->$SwitchMap$fr$testudo$spacecorsair$billing$InAppObject:[I

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/billing/InAppObject;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_dc

    .line 110
    :goto_79
    invoke-static {}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onInAppCreditBought()V

    .line 111
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->saveGameAndPlayerData()V

    goto :goto_b

    .line 86
    :pswitch_82
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    mul-int/lit8 v0, v0, 0x5

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->addCreditInApp(I)V

    goto :goto_79

    .line 89
    :pswitch_8e
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    mul-int/lit8 v0, v0, 0xa

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->addCreditInApp(I)V

    goto :goto_79

    .line 92
    :pswitch_9a
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    mul-int/lit8 v0, v0, 0x19

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->addCreditInApp(I)V

    goto :goto_79

    .line 95
    :pswitch_a6
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    const v2, 0x3d090

    mul-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->addCredit(I)V

    goto :goto_79

    .line 98
    :pswitch_b4
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    const v2, 0x7a120

    mul-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->addCredit(I)V

    goto :goto_79

    .line 101
    :pswitch_c2
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    const v2, 0xf4240

    mul-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->addCredit(I)V

    goto :goto_79

    .line 105
    :pswitch_d0
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    mul-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->addCreditInApp(I)V

    goto :goto_79

    .line 83
    :pswitch_data_dc
    .packed-switch 0x1
        :pswitch_82
        :pswitch_8e
        :pswitch_9a
        :pswitch_a6
        :pswitch_b4
        :pswitch_c2
        :pswitch_d0
    .end packed-switch
.end method

.method public onPurchaseFinished(Lfr/testudo/spacecorsair/billing/IabResult;Lfr/testudo/spacecorsair/billing/Purchase;)V
    .registers 4

    .prologue
    .line 28
    invoke-virtual {p2}, Lfr/testudo/spacecorsair/billing/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/billing/InAppObject;->getBySku(Ljava/lang/String;)Lfr/testudo/spacecorsair/billing/InAppObject;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_11

    .line 30
    iget-boolean v0, v0, Lfr/testudo/spacecorsair/billing/InAppObject;->consumable:Z

    if-eqz v0, :cond_11

    .line 31
    invoke-virtual {p0, p2}, Lfr/testudo/spacecorsair/SpaceCorsairApplication;->consumeItem(Lfr/testudo/spacecorsair/billing/Purchase;)V

    .line 35
    :cond_11
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->config:Lfr/testudo/spacecorsair/game/Config;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/Config;->removeAdds()V

    .line 37
    return-void
.end method
