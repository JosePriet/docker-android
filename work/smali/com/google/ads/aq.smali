.class public Lcom/google/ads/aq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>([B)V
    .registers 9

    .prologue
    const/16 v6, 0x100

    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-array v0, v6, [B

    iput-object v0, p0, Lcom/google/ads/aq;->a:[B

    move v0, v1

    .line 13
    :goto_b
    if-ge v0, v6, :cond_15

    .line 14
    iget-object v2, p0, Lcom/google/ads/aq;->a:[B

    int-to-byte v3, v0

    aput-byte v3, v2, v0

    .line 13
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_15
    move v0, v1

    move v2, v1

    .line 16
    :goto_17
    if-ge v2, v6, :cond_39

    .line 17
    iget-object v3, p0, Lcom/google/ads/aq;->a:[B

    aget-byte v3, v3, v2

    add-int/2addr v0, v3

    array-length v3, p1

    rem-int v3, v2, v3

    aget-byte v3, p1, v3

    add-int/2addr v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 19
    iget-object v3, p0, Lcom/google/ads/aq;->a:[B

    aget-byte v3, v3, v2

    .line 20
    iget-object v4, p0, Lcom/google/ads/aq;->a:[B

    iget-object v5, p0, Lcom/google/ads/aq;->a:[B

    aget-byte v5, v5, v0

    aput-byte v5, v4, v2

    .line 21
    iget-object v4, p0, Lcom/google/ads/aq;->a:[B

    aput-byte v3, v4, v0

    .line 16
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 23
    :cond_39
    iput v1, p0, Lcom/google/ads/aq;->b:I

    .line 24
    iput v1, p0, Lcom/google/ads/aq;->c:I

    .line 25
    return-void
.end method


# virtual methods
.method public a([B)V
    .registers 9

    .prologue
    .line 28
    iget v2, p0, Lcom/google/ads/aq;->b:I

    .line 29
    iget v1, p0, Lcom/google/ads/aq;->c:I

    .line 30
    const/4 v0, 0x0

    :goto_5
    array-length v3, p1

    if-ge v0, v3, :cond_3b

    .line 31
    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    .line 32
    iget-object v3, p0, Lcom/google/ads/aq;->a:[B

    aget-byte v3, v3, v2

    add-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    .line 34
    iget-object v3, p0, Lcom/google/ads/aq;->a:[B

    aget-byte v3, v3, v2

    .line 35
    iget-object v4, p0, Lcom/google/ads/aq;->a:[B

    iget-object v5, p0, Lcom/google/ads/aq;->a:[B

    aget-byte v5, v5, v1

    aput-byte v5, v4, v2

    .line 36
    iget-object v4, p0, Lcom/google/ads/aq;->a:[B

    aput-byte v3, v4, v1

    .line 38
    aget-byte v3, p1, v0

    iget-object v4, p0, Lcom/google/ads/aq;->a:[B

    iget-object v5, p0, Lcom/google/ads/aq;->a:[B

    aget-byte v5, v5, v2

    iget-object v6, p0, Lcom/google/ads/aq;->a:[B

    aget-byte v6, v6, v1

    add-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 40
    :cond_3b
    iput v2, p0, Lcom/google/ads/aq;->b:I

    .line 41
    iput v1, p0, Lcom/google/ads/aq;->c:I

    .line 42
    return-void
.end method
