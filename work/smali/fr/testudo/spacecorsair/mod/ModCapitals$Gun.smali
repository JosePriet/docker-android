.class final Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;
.super Ljava/lang/Object;
.source "ModCapitals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModCapitals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Gun"
.end annotation


# instance fields
.field final b:F

.field final dmg:F

.field final fam:I

.field final g:F

.field final r:F

.field final range:F

.field final reload:I

.field final shots:I

.field final speed:F

.field final spread:F

.field final turn:F


# direct methods
.method constructor <init>(IFIFFFIFFFF)V
    .registers 12

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->fam:I

    iput p2, p0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->dmg:F

    iput p3, p0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->reload:I

    iput p4, p0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->speed:F

    iput p5, p0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->range:F

    iput p6, p0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->spread:F

    .line 77
    iput p7, p0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->shots:I

    iput p8, p0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->turn:F

    iput p9, p0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->r:F

    iput p10, p0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->g:F

    iput p11, p0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->b:F

    .line 78
    return-void
.end method
