.class public Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;
.super Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationOverTimeSpec;
.source "SourceFile"


# static fields
.field public static final NONE:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;


# instance fields
.field public reloadFactor:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    invoke-static {}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;->newDefault()Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;->NONE:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;

    return-void
.end method

.method public constructor <init>(FIF)V
    .registers 5

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationOverTimeSpec;-><init>(FI)V

    .line 12
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;->reloadFactor:F

    .line 16
    iput p3, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;->reloadFactor:F

    .line 17
    return-void
.end method

.method public static newDefault()Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;
    .registers 4

    .prologue
    .line 20
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;-><init>(FIF)V

    return-object v0
.end method


# virtual methods
.method public reset()V
    .registers 2

    .prologue
    .line 25
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationOverTimeSpec;->reset()V

    .line 26
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;->reloadFactor:F

    .line 27
    return-void
.end method

.method public setSameAs(Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;)V
    .registers 3

    .prologue
    .line 30
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;->probability:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;->probability:F

    .line 31
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;->duree:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;->duree:I

    .line 32
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;->reloadFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;->reloadFactor:F

    .line 34
    return-void
.end method
