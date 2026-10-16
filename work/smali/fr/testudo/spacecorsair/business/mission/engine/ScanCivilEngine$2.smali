.class synthetic Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$fr$testudo$spacecorsair$business$mission$engine$ScanCivilEngine$Phase:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 250
    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$Phase;->values()[Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$Phase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$2;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$ScanCivilEngine$Phase:[I

    :try_start_9
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$2;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$ScanCivilEngine$Phase:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$Phase;->SCAN:Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$Phase;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_22

    :goto_14
    :try_start_14
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$2;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$ScanCivilEngine$Phase:[I

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$Phase;->REWARD:Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$Phase;->ordinal()I

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
