.class public Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;
.super Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationOverTimeSpec;
.source "SourceFile"


# static fields
.field public static final NONE:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;


# instance fields
.field public damagePerTic:I

.field public tickFrequenceInMilli:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    invoke-static {}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;->newDefault()Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;->NONE:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;

    return-void
.end method

.method public constructor <init>(FIII)V
    .registers 6

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationOverTimeSpec;-><init>(FI)V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;->damagePerTic:I

    .line 13
    const/16 v0, 0xbb8

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;->tickFrequenceInMilli:I

    .line 17
    iput p3, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;->damagePerTic:I

    .line 18
    iput p4, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;->tickFrequenceInMilli:I

    .line 19
    return-void
.end method

.method public static newDefault()Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 22
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;-><init>(FIII)V

    return-object v0
.end method


# virtual methods
.method public reset()V
    .registers 2

    .prologue
    .line 27
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationOverTimeSpec;->reset()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;->damagePerTic:I

    .line 29
    const/16 v0, 0xbb8

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;->tickFrequenceInMilli:I

    .line 30
    return-void
.end method

.method public setSameAs(Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;)V
    .registers 3

    .prologue
    .line 33
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;->probability:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;->probability:F

    .line 34
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;->damagePerTic:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;->damagePerTic:I

    .line 35
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;->duree:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;->duree:I

    .line 36
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;->tickFrequenceInMilli:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;->tickFrequenceInMilli:I

    .line 37
    return-void
.end method

.method public totalDamage()I
    .registers 4

    .prologue
    .line 42
    iget v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;->damagePerTic:I

    iget v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;->duree:I

    iget v2, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;->tickFrequenceInMilli:I

    div-int/2addr v1, v2

    mul-int/2addr v0, v1

    return v0
.end method
