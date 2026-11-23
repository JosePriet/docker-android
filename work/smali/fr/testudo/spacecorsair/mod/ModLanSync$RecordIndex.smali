.class final Lfr/testudo/spacecorsair/mod/ModLanSync$RecordIndex;
.super Ljava/lang/Object;
.source "ModLanSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModLanSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RecordIndex"
.end annotation


# instance fields
.field final counts:[I

.field final keys:[I

.field final positions:[I

.field final starts:[I


# direct methods
.method constructor <init>([Lfr/testudo/spacecorsair/mod/ModLan$Rec;I)V
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    const/4 v1, 0x1

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    mul-int/lit8 v3, v1, 0x4

    .line 305
    new-array v1, v3, [I

    iput-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$RecordIndex;->keys:[I

    .line 306
    new-array v1, v3, [I

    iput-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$RecordIndex;->counts:[I

    .line 307
    new-array v1, v3, [I

    iput-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$RecordIndex;->starts:[I

    .line 308
    new-array v1, p2, [I

    iput-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$RecordIndex;->positions:[I

    move v1, v0

    .line 309
    :goto_20
    if-ge v1, p2, :cond_3d

    .line 310
    aget-object v2, p1, v1

    .line 311
    iget v4, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->key:I

    invoke-direct {p0, v4}, Lfr/testudo/spacecorsair/mod/ModLanSync$RecordIndex;->slot(I)I

    move-result v4

    .line 312
    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$RecordIndex;->keys:[I

    iget v6, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->key:I

    aput v6, v5, v4

    .line 313
    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$RecordIndex;->counts:[I

    aget v6, v5, v4

    add-int/lit8 v7, v6, 0x1

    aput v7, v5, v4

    iput v6, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->ord:I

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_3d
    move v1, v0

    move v2, v0

    .line 316
    :goto_3f
    if-ge v1, v3, :cond_4d

    .line 317
    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$RecordIndex;->starts:[I

    aput v2, v4, v1

    .line 318
    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$RecordIndex;->counts:[I

    aget v4, v4, v1

    add-int/2addr v2, v4

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 320
    :cond_4d
    :goto_4d
    if-ge v0, p2, :cond_65

    .line 321
    aget-object v1, p1, v0

    .line 322
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$RecordIndex;->positions:[I

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$RecordIndex;->starts:[I

    iget v4, v1, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->key:I

    invoke-direct {p0, v4}, Lfr/testudo/spacecorsair/mod/ModLanSync$RecordIndex;->slot(I)I

    move-result v4

    aget v3, v3, v4

    iget v1, v1, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->ord:I

    add-int/2addr v1, v3

    aput v0, v2, v1

    .line 320
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    .line 324
    :cond_65
    return-void
.end method

.method private slot(I)I
    .registers 5

    .prologue
    .line 327
    const v0, -0x61c88647

    mul-int/2addr v0, p1

    .line 328
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$RecordIndex;->keys:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 329
    ushr-int/lit8 v2, v0, 0x10

    xor-int/2addr v0, v2

    and-int/2addr v0, v1

    .line 330
    :goto_d
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$RecordIndex;->counts:[I

    aget v2, v2, v0

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$RecordIndex;->keys:[I

    aget v2, v2, v0

    if-eq v2, p1, :cond_1d

    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v1

    goto :goto_d

    .line 331
    :cond_1d
    return v0
.end method


# virtual methods
.method find(II)I
    .registers 6

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/mod/ModLanSync$RecordIndex;->slot(I)I

    move-result v0

    .line 336
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$RecordIndex;->counts:[I

    aget v1, v1, v0

    if-ge p2, v1, :cond_14

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$RecordIndex;->positions:[I

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModLanSync$RecordIndex;->starts:[I

    aget v0, v2, v0

    add-int/2addr v0, p2

    aget v0, v1, v0

    :goto_13
    return v0

    :cond_14
    const/4 v0, -0x1

    goto :goto_13
.end method
