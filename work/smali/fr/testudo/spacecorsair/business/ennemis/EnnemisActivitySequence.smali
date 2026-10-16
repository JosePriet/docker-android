.class public Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;
.super Lfr/testudo/spacecorsair/engine/PoolObject;
.source "SourceFile"


# instance fields
.field public activities:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

.field public activityCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 8
    invoke-direct {p0}, Lfr/testudo/spacecorsair/engine/PoolObject;-><init>()V

    .line 11
    const/16 v0, 0x14

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->activities:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->activityCount:I

    return-void
.end method


# virtual methods
.method public addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;
    .registers 4

    .prologue
    .line 27
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->activities:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->activityCount:I

    aput-object p1, v0, v1

    .line 28
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->activityCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->activityCount:I

    .line 29
    return-object p0
.end method

.method public finalizePoolObject()V
    .registers 1

    .prologue
    .line 23
    return-void
.end method

.method public initializePoolObject()V
    .registers 1

    .prologue
    .line 18
    return-void
.end method

.method public resetToPool()V
    .registers 3

    .prologue
    .line 37
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->activityCount:I

    if-ge v0, v1, :cond_f

    .line 38
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->activities:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->recycleToPool()V

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 41
    :cond_f
    return-void
.end method
