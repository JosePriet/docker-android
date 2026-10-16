.class public Lfr/testudo/spacecorsair/storage/PriceRepresentation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public currentValue:F

.field public objectName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    .registers 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/storage/PriceRepresentation;->objectName:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getObjectPrice()Lfr/testudo/spacecorsair/business/economy/Price;

    move-result-object v0

    iget v0, v0, Lfr/testudo/spacecorsair/business/economy/Price;->current:F

    iput v0, p0, Lfr/testudo/spacecorsair/storage/PriceRepresentation;->currentValue:F

    .line 24
    return-void
.end method
