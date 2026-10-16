.class public Lfr/testudo/spacecorsair/storage/PriceListRepresentation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public lastGameMillisec:J

.field public lastSystemMillisec:J

.field prices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/storage/PriceRepresentation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide v0, p0, Lfr/testudo/spacecorsair/storage/PriceListRepresentation;->lastSystemMillisec:J

    .line 17
    iput-wide v0, p0, Lfr/testudo/spacecorsair/storage/PriceListRepresentation;->lastGameMillisec:J

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/storage/PriceListRepresentation;->prices:Ljava/util/List;

    .line 22
    return-void
.end method

.method private ensureAllPricesSet()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    .line 55
    invoke-static {}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->values()[Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_20

    aget-object v3, v1, v0

    .line 56
    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getObjectPrice()Lfr/testudo/spacecorsair/business/economy/Price;

    move-result-object v4

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/economy/Price;->isSet()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 57
    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getObjectPrice()Lfr/testudo/spacecorsair/business/economy/Price;

    move-result-object v3

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/economy/Price;->initFirstTimeValue()V

    .line 55
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 60
    :cond_20
    iget-wide v0, p0, Lfr/testudo/spacecorsair/storage/PriceListRepresentation;->lastSystemMillisec:J

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2e

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/storage/PriceListRepresentation;->lastSystemMillisec:J

    .line 63
    :cond_2e
    iget-wide v0, p0, Lfr/testudo/spacecorsair/storage/PriceListRepresentation;->lastGameMillisec:J

    cmp-long v0, v0, v6

    if-gez v0, :cond_36

    .line 64
    iput-wide v6, p0, Lfr/testudo/spacecorsair/storage/PriceListRepresentation;->lastGameMillisec:J

    .line 67
    :cond_36
    return-void
.end method


# virtual methods
.method public applyPricesFromConfig()V
    .registers 6

    .prologue
    .line 32
    iget-object v0, p0, Lfr/testudo/spacecorsair/storage/PriceListRepresentation;->prices:Ljava/util/List;

    if-eqz v0, :cond_4b

    .line 33
    iget-object v0, p0, Lfr/testudo/spacecorsair/storage/PriceListRepresentation;->prices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/storage/PriceRepresentation;

    .line 35
    :try_start_16
    iget-object v2, v0, Lfr/testudo/spacecorsair/storage/PriceRepresentation;->objectName:Ljava/lang/String;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v2

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getObjectPrice()Lfr/testudo/spacecorsair/business/economy/Price;

    move-result-object v2

    .line 36
    iget-boolean v3, v2, Lfr/testudo/spacecorsair/business/economy/Price;->fixed:Z

    if-nez v3, :cond_45

    .line 37
    iget v3, v0, Lfr/testudo/spacecorsair/storage/PriceRepresentation;->currentValue:F

    iput v3, v2, Lfr/testudo/spacecorsair/business/economy/Price;->current:F
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_28} :catch_29

    goto :goto_a

    .line 43
    :catch_29
    move-exception v2

    .line 44
    const-string v2, "JDE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object type not found from price list :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lfr/testudo/spacecorsair/storage/PriceRepresentation;->objectName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 40
    :cond_45
    :try_start_45
    iget v3, v2, Lfr/testudo/spacecorsair/business/economy/Price;->max:I

    int-to-float v3, v3

    iput v3, v2, Lfr/testudo/spacecorsair/business/economy/Price;->current:F
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4a} :catch_29

    goto :goto_a

    .line 48
    :cond_4b
    invoke-direct {p0}, Lfr/testudo/spacecorsair/storage/PriceListRepresentation;->ensureAllPricesSet()V

    .line 49
    return-void
.end method

.method public resetTimeCounter()V
    .registers 3

    .prologue
    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/storage/PriceListRepresentation;->lastSystemMillisec:J

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/storage/PriceListRepresentation;->lastGameMillisec:J

    .line 76
    return-void
.end method

.method public snapshotPricesConfig()V
    .registers 7

    .prologue
    .line 25
    iget-object v0, p0, Lfr/testudo/spacecorsair/storage/PriceListRepresentation;->prices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 26
    invoke-static {}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->values()[Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v2, :cond_1c

    aget-object v3, v1, v0

    .line 27
    iget-object v4, p0, Lfr/testudo/spacecorsair/storage/PriceListRepresentation;->prices:Ljava/util/List;

    new-instance v5, Lfr/testudo/spacecorsair/storage/PriceRepresentation;

    invoke-direct {v5, v3}, Lfr/testudo/spacecorsair/storage/PriceRepresentation;-><init>(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 29
    :cond_1c
    return-void
.end method
