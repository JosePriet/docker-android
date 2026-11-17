.class public final Lfr/testudo/spacecorsair/mod/ModChain;
.super Ljava/lang/Object;
.source "ModChain.java"


# static fields
.field static final CHAIN_MS:J = 0x1770L

.field static final MAX:F = 1.5f

.field static final STEP:F = 0.1f

.field private static lastAt:J

.field static links:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 17
    const-wide/16 v0, -0x1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModChain;->lastAt:J

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static enabled()Z
    .registers 1

    .prologue
    .line 21
    const/4 v0, 0x1

    return v0
.end method

.method public static factor(I)F
    .registers 6

    .prologue
    .line 28
    const/high16 v0, 0x3fc00000    # 1.5f

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3dcccccd    # 0.1f

    const/4 v3, 0x0

    add-int/lit8 v4, p0, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method static onKill(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)F
    .registers 9

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 33
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModChain;->enabled()Z

    move-result v1

    if-nez v1, :cond_9

    .line 45
    :goto_8
    return v0

    .line 35
    :cond_9
    :try_start_9
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSector;->play()J

    move-result-wide v2

    .line 36
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModChain;->lastAt:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_a4

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModChain;->lastAt:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1770

    cmp-long v1, v4, v6

    if-gtz v1, :cond_a4

    sget v1, Lfr/testudo/spacecorsair/mod/ModChain;->links:I

    add-int/lit8 v1, v1, 0x1

    :goto_23
    sput v1, Lfr/testudo/spacecorsair/mod/ModChain;->links:I

    .line 37
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModChain;->lastAt:J

    .line 38
    const-string v1, "chain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "links="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lfr/testudo/spacecorsair/mod/ModChain;->links:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " factor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lfr/testudo/spacecorsair/mod/ModChain;->links:I

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModChain;->factor(I)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget v1, Lfr/testudo/spacecorsair/mod/ModChain;->links:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_9c

    .line 40
    sget v1, Lfr/testudo/spacecorsair/mod/ModChain;->links:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModChain;->factor(I)F

    move-result v1

    .line 41
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CHAIN x"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lfr/testudo/spacecorsair/mod/ModChain;->links:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  +"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-float/2addr v1, v0

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f59999a    # 0.85f

    const v5, 0x3e99999a    # 0.3f

    invoke-static {v2, v1, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 43
    :cond_9c
    sget v1, Lfr/testudo/spacecorsair/mod/ModChain;->links:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModChain;->factor(I)F
    :try_end_a1
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_a1} :catch_a7

    move-result v0

    goto/16 :goto_8

    .line 36
    :cond_a4
    const/4 v1, 0x1

    goto/16 :goto_23

    .line 44
    :catch_a7
    move-exception v1

    goto/16 :goto_8
.end method
