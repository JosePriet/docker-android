.class public Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;
.super Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpec;
.source "SourceFile"


# static fields
.field public static final NONE:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;


# instance fields
.field public multiplicationFactor:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    invoke-static {}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;->newDefault()Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;->NONE:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 4

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpec;-><init>(F)V

    .line 13
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;->multiplicationFactor:F

    .line 17
    iput p2, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;->multiplicationFactor:F

    .line 18
    return-void
.end method

.method public static newDefault()Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;
    .registers 3

    .prologue
    .line 21
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public reset()V
    .registers 2

    .prologue
    .line 26
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpec;->reset()V

    .line 27
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;->multiplicationFactor:F

    .line 28
    return-void
.end method

.method public setSameAs(Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;)V
    .registers 3

    .prologue
    .line 31
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;->probability:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;->probability:F

    .line 32
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;->multiplicationFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;->multiplicationFactor:F

    .line 33
    return-void
.end method
