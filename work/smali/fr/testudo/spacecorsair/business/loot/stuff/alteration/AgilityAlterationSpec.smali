.class public Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;
.super Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationOverTimeSpec;
.source "SourceFile"


# static fields
.field public static final NONE:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;


# instance fields
.field public agilityLossFactor:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    invoke-static {}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;->newDefault()Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;->NONE:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;

    return-void
.end method

.method public constructor <init>(FIF)V
    .registers 5

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationOverTimeSpec;-><init>(FI)V

    .line 12
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;->agilityLossFactor:F

    .line 18
    iput p3, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;->agilityLossFactor:F

    .line 19
    return-void
.end method

.method public static newDefault()Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;
    .registers 4

    .prologue
    .line 22
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;-><init>(FIF)V

    return-object v0
.end method


# virtual methods
.method public reset()V
    .registers 2

    .prologue
    .line 27
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationOverTimeSpec;->reset()V

    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;->agilityLossFactor:F

    .line 29
    return-void
.end method

.method public setSameAs(Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;)V
    .registers 3

    .prologue
    .line 33
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;->probability:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;->probability:F

    .line 34
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;->duree:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;->duree:I

    .line 35
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;->agilityLossFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;->agilityLossFactor:F

    .line 36
    return-void
.end method
