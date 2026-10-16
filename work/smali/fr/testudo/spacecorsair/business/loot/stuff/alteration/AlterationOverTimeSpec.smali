.class public abstract Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationOverTimeSpec;
.super Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpec;
.source "SourceFile"


# instance fields
.field public duree:I


# direct methods
.method public constructor <init>(FI)V
    .registers 3

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpec;-><init>(F)V

    .line 17
    iput p2, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationOverTimeSpec;->duree:I

    .line 18
    return-void
.end method


# virtual methods
.method public reset()V
    .registers 2

    .prologue
    .line 22
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpec;->reset()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationOverTimeSpec;->duree:I

    .line 24
    return-void
.end method
