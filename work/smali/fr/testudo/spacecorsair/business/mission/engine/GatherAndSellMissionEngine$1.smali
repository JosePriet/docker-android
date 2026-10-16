.class synthetic Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$fr$testudo$spacecorsair$business$mission$engine$GatherAndSellMissionEngine$Phase:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 238
    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;->values()[Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$GatherAndSellMissionEngine$Phase:[I

    :try_start_9
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$GatherAndSellMissionEngine$Phase:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;->GATHERING:Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_2f

    :goto_14
    :try_start_14
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$GatherAndSellMissionEngine$Phase:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;->SELL:Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_2d

    :goto_1f
    :try_start_1f
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$GatherAndSellMissionEngine$Phase:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;->REWARD:Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2b

    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    goto :goto_2a

    :catch_2d
    move-exception v0

    goto :goto_1f

    :catch_2f
    move-exception v0

    goto :goto_14
.end method
