.class public Lfr/testudo/spacecorsair/business/loot/SpaceObject;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private isNew:Z

.field private quantity:I

.field private spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;


# direct methods
.method public constructor <init>(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    .registers 3

    .prologue
    .line 24
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;-><init>(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)V
    .registers 4

    .prologue
    .line 14
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;-><init>(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;IZ)V

    .line 15
    return-void
.end method

.method public constructor <init>(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;IZ)V
    .registers 5

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->quantity:I

    .line 18
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 19
    iput p2, p0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->quantity:I

    .line 20
    iput-boolean p3, p0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->isNew:Z

    .line 21
    return-void
.end method

.method public static of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;
    .registers 4

    .prologue
    .line 28
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;-><init>(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;IZ)V

    return-object v0
.end method

.method public static of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Lfr/testudo/spacecorsair/business/loot/SpaceObject;
    .registers 4

    .prologue
    .line 33
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;-><init>(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;IZ)V

    return-object v0
.end method

.method public static ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;
    .registers 4

    .prologue
    .line 38
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    const v1, 0xf4240

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;-><init>(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;IZ)V

    return-object v0
.end method


# virtual methods
.method public addQuantity(I)V
    .registers 3

    .prologue
    .line 55
    iget v0, p0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->quantity:I

    add-int/2addr v0, p1

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->quantity:I

    .line 56
    return-void
.end method

.method public clone()Lfr/testudo/spacecorsair/business/loot/SpaceObject;
    .registers 5

    .prologue
    .line 97
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iget v2, p0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->quantity:I

    iget-boolean v3, p0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->isNew:Z

    invoke-direct {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;-><init>(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;IZ)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 3
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->clone()Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v0

    return-object v0
.end method

.method public getAvgPrice()I
    .registers 3

    .prologue
    .line 63
    iget v0, p0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->quantity:I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getObjectPrice()Lfr/testudo/spacecorsair/business/economy/Price;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/economy/Price;->getAveragePrice()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public getQuantity()I
    .registers 2

    .prologue
    .line 43
    iget v0, p0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->quantity:I

    return v0
.end method

.method public getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    return-object v0
.end method

.method public getTotalPrice()I
    .registers 3

    .prologue
    .line 79
    iget v0, p0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->quantity:I

    int-to-float v0, v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getObjectPrice()Lfr/testudo/spacecorsair/business/economy/Price;

    move-result-object v1

    iget v1, v1, Lfr/testudo/spacecorsair/business/economy/Price;->current:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getTotalSellPrice()I
    .registers 3

    .prologue
    .line 83
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->isInappMoney()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 84
    iget v0, p0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->quantity:I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getObjectPrice()Lfr/testudo/spacecorsair/business/economy/Price;

    move-result-object v1

    iget v1, v1, Lfr/testudo/spacecorsair/business/economy/Price;->max:I

    mul-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x2710

    .line 86
    :goto_17
    return v0

    :cond_18
    iget v0, p0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->quantity:I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getObjectPrice()Lfr/testudo/spacecorsair/business/economy/Price;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/economy/Price;->getSellPrice()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_17
.end method

.method public getTotalWeight()I
    .registers 3

    .prologue
    .line 59
    iget v0, p0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->quantity:I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getUnitWeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public getUnitBuyPrice()I
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getObjectPrice()Lfr/testudo/spacecorsair/business/economy/Price;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/economy/Price;->getBuyPrice()I

    move-result v0

    return v0
.end method

.method public getUnitSellPrice()I
    .registers 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->isInappMoney()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 91
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getObjectPrice()Lfr/testudo/spacecorsair/business/economy/Price;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/economy/Price;->getSellPrice()I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    .line 93
    :goto_16
    return v0

    :cond_17
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getObjectPrice()Lfr/testudo/spacecorsair/business/economy/Price;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/economy/Price;->getSellPrice()I

    move-result v0

    goto :goto_16
.end method

.method public isNew()Z
    .registers 2

    .prologue
    .line 67
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->isNew:Z

    return v0
.end method

.method public setNew(Z)V
    .registers 2

    .prologue
    .line 71
    iput-boolean p1, p0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->isNew:Z

    .line 72
    return-void
.end method

.method public setQuantity(I)V
    .registers 2

    .prologue
    .line 47
    iput p1, p0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->quantity:I

    .line 48
    return-void
.end method
