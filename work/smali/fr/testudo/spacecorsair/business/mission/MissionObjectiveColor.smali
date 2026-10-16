.class public final enum Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

.field public static final enum BLUE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

.field public static final enum GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

.field public static final enum GREY:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

.field public static final enum ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

.field public static final enum RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

.field public static final enum TREASURE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

.field public static final enum WHITE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;


# instance fields
.field public final a:F

.field public final b:F

.field public final g:F

.field public final r:F


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .prologue
    const/4 v2, 0x0

    const v14, 0x3f333333    # 0.7f

    const v13, 0x3f451eb8    # 0.77f

    const v5, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 7
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    const-string v1, "RED"

    move v4, v3

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;-><init>(Ljava/lang/String;IFFFF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 8
    new-instance v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    const-string v7, "ORANGE"

    const/4 v8, 0x1

    const v11, 0x3f49c9ca

    const v12, 0x3e60e0e1

    move v9, v3

    move v10, v3

    invoke-direct/range {v6 .. v12}, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;-><init>(Ljava/lang/String;IFFFF)V

    sput-object v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 9
    new-instance v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    const-string v7, "WHITE"

    const/4 v8, 0x2

    move v9, v3

    move v10, v3

    move v11, v3

    move v12, v3

    invoke-direct/range {v6 .. v12}, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;-><init>(Ljava/lang/String;IFFFF)V

    sput-object v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->WHITE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 10
    new-instance v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    const-string v7, "GREEN"

    const/4 v8, 0x3

    move v9, v3

    move v10, v5

    move v11, v3

    move v12, v5

    invoke-direct/range {v6 .. v12}, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;-><init>(Ljava/lang/String;IFFFF)V

    sput-object v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 11
    new-instance v4, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    const-string v5, "BLUE"

    const/4 v6, 0x4

    move v7, v3

    move v8, v14

    move v9, v14

    move v10, v3

    invoke-direct/range {v4 .. v10}, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;-><init>(Ljava/lang/String;IFFFF)V

    sput-object v4, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->BLUE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 12
    new-instance v4, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    const-string v5, "GREY"

    const/4 v6, 0x5

    move v7, v3

    move v8, v13

    move v9, v13

    move v10, v13

    invoke-direct/range {v4 .. v10}, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;-><init>(Ljava/lang/String;IFFFF)V

    sput-object v4, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREY:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 13
    new-instance v4, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    const-string v5, "TREASURE"

    const/4 v6, 0x6

    const/4 v10, 0x0

    move v7, v3

    move v8, v3

    move v9, v3

    invoke-direct/range {v4 .. v10}, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;-><init>(Ljava/lang/String;IFFFF)V

    sput-object v4, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->TREASURE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 4
    const/4 v0, 0x7

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->WHITE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->BLUE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREY:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->TREASURE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->$VALUES:[Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFFFF)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->a:F

    .line 20
    iput p4, p0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->r:F

    .line 21
    iput p5, p0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->g:F

    .line 22
    iput p6, p0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->b:F

    .line 23
    return-void
.end method

.method public static getOfLevelDifference(III)Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;
    .registers 5

    .prologue
    .line 28
    if-gt p2, p1, :cond_7

    if-lt p2, p0, :cond_7

    .line 29
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 51
    :goto_6
    return-object v0

    .line 32
    :cond_7
    if-ge p2, p0, :cond_14

    .line 33
    sub-int v0, p0, p2

    const/4 v1, 0x3

    if-le v0, v1, :cond_11

    .line 34
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_6

    .line 37
    :cond_11
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_6

    .line 41
    :cond_14
    if-le p2, p1, :cond_21

    .line 42
    sub-int v0, p2, p1

    const/4 v1, 0x2

    if-le v0, v1, :cond_1e

    .line 43
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREY:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_6

    .line 46
    :cond_1e
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_6

    .line 51
    :cond_21
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_6
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;
    .registers 2

    .prologue
    .line 4
    const-class v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;
    .registers 1

    .prologue
    .line 4
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->$VALUES:[Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    return-object v0
.end method
