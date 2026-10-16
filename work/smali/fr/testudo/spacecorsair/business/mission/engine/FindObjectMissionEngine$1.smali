.class synthetic Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$fr$testudo$spacecorsair$business$mission$engine$FindObjectMissionEngine$Phase:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 121
    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$Phase;->values()[Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$Phase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$FindObjectMissionEngine$Phase:[I

    :try_start_9
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$FindObjectMissionEngine$Phase:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$Phase;->SEARCH:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$Phase;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_22

    :goto_14
    :try_start_14
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$FindObjectMissionEngine$Phase:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$Phase;->GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$Phase;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    goto :goto_1f

    :catch_22
    move-exception v0

    goto :goto_14
.end method
