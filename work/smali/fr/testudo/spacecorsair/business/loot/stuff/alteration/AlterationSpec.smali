.class public abstract Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public probability:F


# direct methods
.method public constructor <init>(F)V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpec;->probability:F

    .line 20
    return-void
.end method


# virtual methods
.method public enabled()Z
    .registers 3

    .prologue
    .line 15
    iget v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpec;->probability:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getTexualProbability()Ljava/lang/String;
    .registers 6

    .prologue
    .line 30
    const-string v0, "%.2f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpec;->probability:F

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpec;->probability:F

    .line 27
    return-void
.end method
