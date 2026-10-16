.class public Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageIncreasementWhenFull;
.super Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonus;
.source "SourceFile"


# instance fields
.field public damageIncreasePourc:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageIncreasementWhenFull;-><init>(I)V

    .line 20
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonus;-><init>()V

    .line 15
    iput p1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageIncreasementWhenFull;->damageIncreasePourc:I

    .line 16
    return-void
.end method


# virtual methods
.method public enabled()Z
    .registers 2

    .prologue
    .line 24
    iget v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageIncreasementWhenFull;->damageIncreasePourc:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
