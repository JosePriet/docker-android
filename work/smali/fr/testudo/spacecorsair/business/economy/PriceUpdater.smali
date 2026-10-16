.class public Lfr/testudo/spacecorsair/business/economy/PriceUpdater;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "SPC_ECONOMY"

.field private static final MINIMUM_SECONDS_BETWEEN_UPDATES:I = 0x12c


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getGameSecondSinceLastCalc()J
    .registers 6

    .prologue
    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->priceConf:Lfr/testudo/spacecorsair/storage/PriceListRepresentation;

    iget-wide v2, v2, Lfr/testudo/spacecorsair/storage/PriceListRepresentation;->lastSystemMillisec:J

    sub-long/2addr v0, v2

    .line 53
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->priceConf:Lfr/testudo/spacecorsair/storage/PriceListRepresentation;

    iget-wide v2, v2, Lfr/testudo/spacecorsair/storage/PriceListRepresentation;->lastGameMillisec:J

    .line 55
    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3c

    div-long/2addr v0, v4

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static processPriceUpdates(J)V
    .registers 8

    .prologue
    .line 38
    invoke-static {}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->values()[Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_22

    aget-object v3, v1, v0

    .line 39
    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getObjectPrice()Lfr/testudo/spacecorsair/business/economy/Price;

    move-result-object v4

    iget-boolean v4, v4, Lfr/testudo/spacecorsair/business/economy/Price;->fixed:Z

    if-nez v4, :cond_1f

    .line 40
    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getObjectPrice()Lfr/testudo/spacecorsair/business/economy/Price;

    move-result-object v4

    iget v4, v4, Lfr/testudo/spacecorsair/business/economy/Price;->current:F

    .line 41
    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getObjectPrice()Lfr/testudo/spacecorsair/business/economy/Price;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lfr/testudo/spacecorsair/business/economy/Price;->updatePrice(J)V

    .line 38
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 44
    :cond_22
    invoke-static {}, Lfr/testudo/spacecorsair/business/economy/PriceUpdater;->savePricesAndResetTimeCounters()V

    .line 45
    return-void
.end method

.method private static savePricesAndResetTimeCounters()V
    .registers 1

    .prologue
    .line 64
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->priceConf:Lfr/testudo/spacecorsair/storage/PriceListRepresentation;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/storage/PriceListRepresentation;->resetTimeCounter()V

    .line 65
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->storageManager:Lfr/testudo/spacecorsair/storage/StorageManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/storage/StorageManager;->getPriceStorage()Lfr/testudo/spacecorsair/storage/PriceStorage;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/storage/PriceStorage;->save()V

    .line 66
    return-void
.end method

.method public static updatePrices()V
    .registers 5

    .prologue
    .line 24
    invoke-static {}, Lfr/testudo/spacecorsair/business/economy/PriceUpdater;->getGameSecondSinceLastCalc()J

    move-result-wide v0

    .line 25
    const-wide/16 v2, 0x12c

    cmp-long v2, v0, v2

    if-gez v2, :cond_29

    .line 26
    const-string v2, "SPC_ECONOMY"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No price update because last one occured "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " gamesSec ago."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :goto_28
    return-void

    .line 29
    :cond_29
    const-string v2, "SPC_ECONOMY"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating prices with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " gamesSec."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/business/economy/PriceUpdater;->processPriceUpdates(J)V

    goto :goto_28
.end method
