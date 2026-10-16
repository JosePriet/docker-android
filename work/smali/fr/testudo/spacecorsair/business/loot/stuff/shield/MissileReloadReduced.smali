.class public Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileReloadReduced;
.super Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonus;
.source "SourceFile"


# instance fields
.field public reduceInPourc:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonus;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileReloadReduced;->reduceInPourc:I

    .line 19
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 14
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonus;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileReloadReduced;->reduceInPourc:I

    .line 15
    iput p1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileReloadReduced;->reduceInPourc:I

    .line 16
    return-void
.end method


# virtual methods
.method public enabled()Z
    .registers 2

    .prologue
    .line 23
    iget v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileReloadReduced;->reduceInPourc:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
