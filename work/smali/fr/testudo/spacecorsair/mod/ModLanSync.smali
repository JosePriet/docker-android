.class final Lfr/testudo/spacecorsair/mod/ModLanSync;
.super Ljava/lang/Object;
.source "ModLanSync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/mod/ModLanSync$Style;,
        Lfr/testudo/spacecorsair/mod/ModLanSync$RecordIndex;
    }
.end annotation


# static fields
.field static final GLIDE_MAX:F = 500.0f

.field static final K_SPIN0:I = 0x20

.field static final K_STYLED:I = 0x10

.field static final K_WHITE:I = 0x8

.field static final MAX_STYLES:I = 0x4000

.field static final Q:F = 2.0f

.field static final STYLE_WAIT_MS:I = 0x258

.field static final newStyles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field static volatile on:Z

.field private static final probe:Lfr/testudo/spacecorsair/mod/ModLanSync$Style;

.field static volatile saver:Z

.field private static seenLast:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lfr/testudo/spacecorsair/mod/ModLanSync$Style;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static seenNow:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lfr/testudo/spacecorsair/mod/ModLanSync$Style;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final styleAt:[J

.field private static final styleOut:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lfr/testudo/spacecorsair/mod/ModLanSync$Style;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final stylesIn:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lfr/testudo/spacecorsair/mod/ModLanSync$Style;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLanSync;->styleOut:Ljava/util/HashMap;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLanSync;->seenLast:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLanSync;->seenNow:Ljava/util/HashMap;

    .line 71
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLanSync;->probe:Lfr/testudo/spacecorsair/mod/ModLanSync$Style;

    .line 72
    const/16 v0, 0x4000

    new-array v0, v0, [J

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLanSync;->styleAt:[J

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLanSync;->newStyles:Ljava/util/ArrayList;

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLanSync;->stylesIn:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bar(Ljava/io/DataOutputStream;FFFFFFF[I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v3, 0xffff

    const/high16 v2, 0x41000000    # 8.0f

    const/4 v0, 0x0

    .line 172
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModLanSync;->pos(F)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModLanSync;->pos(F)Z

    move-result v1

    if-nez v1, :cond_13

    .line 178
    :cond_12
    :goto_12
    return v0

    .line 173
    :cond_13
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModLanSync;->q(F)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModLanSync;->q(F)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 174
    invoke-virtual {p0, p3}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-virtual {p0, p4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 175
    mul-float v1, p5, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    mul-float v1, p6, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 176
    const/16 v1, 0xc8

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, p7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 177
    :goto_61
    const/16 v1, 0x8

    if-ge v0, v1, :cond_6d

    aget v1, p8, v0

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    .line 178
    :cond_6d
    const/4 v0, 0x1

    goto :goto_12
.end method

.method private static colour(Ljava/io/DataInputStream;Lfr/testudo/spacecorsair/mod/ModLan$Rec;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v1, 0x437f0000    # 255.0f

    const/high16 v0, 0x3f800000    # 1.0f

    .line 270
    if-eqz p2, :cond_f

    iput v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->a:F

    iput v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->r:F

    iput v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->g:F

    iput v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->b:F

    .line 272
    :goto_e
    return-void

    .line 271
    :cond_f
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->a:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->r:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->g:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p1, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->b:F

    goto :goto_e
.end method

.method private static colour(Ljava/io/DataOutputStream;IIIII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_10

    invoke-virtual {p0, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {p0, p3}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {p0, p4}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {p0, p5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 103
    :cond_10
    return-void
.end method

.method static compact([Lfr/testudo/spacecorsair/mod/ModLan$Rec;I)I
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 276
    move v2, v0

    move v1, v0

    .line 277
    :goto_3
    if-ge v2, p1, :cond_15

    aget-object v0, p0, v2

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    if-ltz v0, :cond_16

    add-int/lit8 v0, v1, 0x1

    aget-object v3, p0, v2

    aput-object v3, p0, v1

    :goto_11
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_3

    .line 278
    :cond_15
    return v1

    :cond_16
    move v0, v1

    goto :goto_11
.end method

.method private static dim(F)F
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    const v0, -0x3963c000    # -20000.0f

    const v1, 0x469c4000    # 20000.0f

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLanSync;->fin(F)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private static fin(F)F
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "not a number"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_14
    return p0
.end method

.method static declared-synchronized frameStart()V
    .registers 3

    .prologue
    .line 87
    const-class v1, Lfr/testudo/spacecorsair/mod/ModLanSync;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLanSync;->seenLast:Ljava/util/HashMap;

    .line 88
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLanSync;->seenNow:Ljava/util/HashMap;

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLanSync;->seenLast:Ljava/util/HashMap;

    .line 89
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLanSync;->seenNow:Ljava/util/HashMap;

    .line 90
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLanSync;->seenNow:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 91
    monitor-exit v1

    return-void

    .line 87
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static glide([Lfr/testudo/spacecorsair/mod/ModLan$Rec;IF)V
    .registers 10

    .prologue
    const/high16 v6, 0x43b40000    # 360.0f

    .line 367
    if-nez p0, :cond_5

    .line 378
    :cond_4
    return-void

    .line 368
    :cond_5
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, p1, :cond_4

    .line 369
    aget-object v2, p0, v1

    .line 370
    iget-object v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->from:Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    .line 371
    if-eqz v3, :cond_15

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_25

    :cond_15
    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->tx:F

    iput v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->x:F

    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->ty:F

    iput v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->y:F

    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->ts:F

    iput v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->spin:F

    .line 368
    :goto_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 372
    :cond_25
    iget v0, v3, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->tx:F

    iget v4, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->tx:F

    iget v5, v3, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->tx:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p2

    add-float/2addr v0, v4

    iput v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->x:F

    .line 373
    iget v0, v3, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->ty:F

    iget v4, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->ty:F

    iget v5, v3, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->ty:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p2

    add-float/2addr v0, v4

    iput v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->y:F

    .line 374
    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->ts:F

    iget v4, v3, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->ts:F

    sub-float/2addr v0, v4

    .line 375
    const/high16 v4, 0x43340000    # 180.0f

    cmpl-float v4, v0, v4

    if-lez v4, :cond_4e

    sub-float/2addr v0, v6

    .line 376
    :cond_47
    :goto_47
    iget v3, v3, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->ts:F

    mul-float/2addr v0, p2

    add-float/2addr v0, v3

    iput v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->spin:F

    goto :goto_21

    .line 375
    :cond_4e
    const/high16 v4, -0x3ccc0000    # -180.0f

    cmpg-float v4, v0, v4

    if-gez v4, :cond_47

    add-float/2addr v0, v6

    goto :goto_47
.end method

.method private static head(IIIII)I
    .registers 6

    .prologue
    const/16 v0, 0xff

    .line 98
    if-ne p1, v0, :cond_e

    if-ne p2, v0, :cond_e

    if-ne p3, v0, :cond_e

    if-ne p4, v0, :cond_e

    const/16 v0, 0x8

    :goto_c
    or-int/2addr v0, p0

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c
.end method

.method static hz()I
    .registers 1

    .prologue
    .line 34
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLanSync;->on:Z

    if-nez v0, :cond_7

    const/16 v0, 0x1e

    :goto_6
    return v0

    :cond_7
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLanSync;->saver:Z

    if-eqz v0, :cond_e

    const/16 v0, 0xa

    goto :goto_6

    :cond_e
    const/16 v0, 0xf

    goto :goto_6
.end method

.method static index([Lfr/testudo/spacecorsair/mod/ModLan$Rec;I)Ljava/util/HashMap;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lfr/testudo/spacecorsair/mod/ModLan$Rec;",
            "I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 286
    new-instance v3, Ljava/util/HashMap;

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x2

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 287
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move v2, v1

    .line 288
    :goto_10
    if-ge v2, p1, :cond_56

    .line 289
    aget-object v0, p0, v2

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->key:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 290
    if-nez v0, :cond_51

    move v0, v1

    .line 291
    :goto_23
    aget-object v5, p0, v2

    iget v5, v5, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->key:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    aget-object v5, p0, v2

    iput v0, v5, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->ord:I

    .line 293
    aget-object v5, p0, v2

    iget v5, v5, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->key:I

    int-to-long v6, v5

    const/16 v5, 0x14

    shl-long/2addr v6, v5

    int-to-long v8, v0

    or-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_10

    .line 290
    :cond_51
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_23

    .line 295
    :cond_56
    return-object v3
.end method

.method static marksEveryMs()I
    .registers 1

    .prologue
    .line 36
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLanSync;->saver:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x3e8

    :goto_6
    return v0

    :cond_7
    const/16 v0, 0x1f4

    goto :goto_6
.end method

.method static pair([Lfr/testudo/spacecorsair/mod/ModLan$Rec;I[Lfr/testudo/spacecorsair/mod/ModLan$Rec;Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lfr/testudo/spacecorsair/mod/ModLan$Rec;",
            "I[",
            "Lfr/testudo/spacecorsair/mod/ModLan$Rec;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 342
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lfr/testudo/spacecorsair/mod/ModLanSync;->pair([Lfr/testudo/spacecorsair/mod/ModLan$Rec;I[Lfr/testudo/spacecorsair/mod/ModLan$Rec;Ljava/util/HashMap;Lfr/testudo/spacecorsair/mod/ModLanSync$RecordIndex;)V

    .line 343
    return-void
.end method

.method static pair([Lfr/testudo/spacecorsair/mod/ModLan$Rec;I[Lfr/testudo/spacecorsair/mod/ModLan$Rec;Ljava/util/HashMap;Lfr/testudo/spacecorsair/mod/ModLanSync$RecordIndex;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lfr/testudo/spacecorsair/mod/ModLan$Rec;",
            "I[",
            "Lfr/testudo/spacecorsair/mod/ModLan$Rec;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;",
            "Lfr/testudo/spacecorsair/mod/ModLanSync$RecordIndex;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 346
    if-eqz p2, :cond_7

    if-nez p3, :cond_8

    if-nez p4, :cond_8

    .line 363
    :cond_7
    return-void

    .line 347
    :cond_8
    array-length v2, p2

    move v1, v0

    :goto_a
    if-ge v1, v2, :cond_16

    aget-object v3, p2, v1

    if-eqz v3, :cond_13

    const/4 v4, 0x0

    iput-object v4, v3, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->from:Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_16
    move v1, v0

    .line 348
    :goto_17
    if-ge v1, p1, :cond_7

    .line 349
    aget-object v2, p0, v1

    .line 351
    if-eqz p4, :cond_2e

    .line 352
    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->key:I

    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->ord:I

    invoke-virtual {p4, v0, v3}, Lfr/testudo/spacecorsair/mod/ModLanSync$RecordIndex;->find(II)I

    move-result v0

    .line 357
    :goto_25
    if-ltz v0, :cond_2a

    array-length v3, p2

    if-lt v0, v3, :cond_4b

    .line 348
    :cond_2a
    :goto_2a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_17

    .line 354
    :cond_2e
    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->key:I

    int-to-long v4, v0

    const/16 v0, 0x14

    shl-long/2addr v4, v0

    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->ord:I

    int-to-long v6, v0

    or-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 355
    if-nez v0, :cond_46

    const/4 v0, -0x1

    goto :goto_25

    :cond_46
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_25

    .line 358
    :cond_4b
    aget-object v0, p2, v0

    .line 359
    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->tx:F

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->tx:F

    sub-float/2addr v3, v4

    iget v4, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->ty:F

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->ty:F

    sub-float/2addr v4, v5

    .line 360
    mul-float/2addr v3, v3

    mul-float/2addr v4, v4

    add-float/2addr v3, v4

    const v4, 0x48742400    # 250000.0f

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_2a

    .line 361
    iput-object v0, v2, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->from:Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    goto :goto_2a
.end method

.method static point(Ljava/io/DataOutputStream;FFIIIIF)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 163
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModLanSync;->pos(F)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModLanSync;->pos(F)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    move v0, v6

    .line 168
    :goto_e
    return v0

    .line 164
    :cond_f
    const/4 v0, 0x3

    invoke-static {v0, p3, p4, p5, p6}, Lfr/testudo/spacecorsair/mod/ModLanSync;->head(IIIII)I

    move-result v1

    .line 165
    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModLanSync;->q(F)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModLanSync;->q(F)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    move-object v0, p0

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 166
    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModLanSync;->colour(Ljava/io/DataOutputStream;IIIII)V

    .line 167
    const/16 v0, 0xff

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, p7

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 168
    const/4 v0, 0x1

    goto :goto_e
.end method

.method private static pos(F)Z
    .registers 2

    .prologue
    .line 93
    const/high16 v0, -0x39860000    # -16000.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_e

    const/high16 v0, 0x467a0000    # 16000.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static q(F)I
    .registers 2

    .prologue
    .line 95
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method static read(Ljava/io/DataInputStream;IFF)[Lfr/testudo/spacecorsair/mod/ModLan$Rec;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    new-array v3, p1, [Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    .line 211
    const/4 v0, 0x0

    move v2, v0

    :goto_4
    if-ge v2, p1, :cond_22b

    .line 212
    new-instance v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;

    invoke-direct {v4}, Lfr/testudo/spacecorsair/mod/ModLan$Rec;-><init>()V

    .line 213
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v5

    .line 214
    and-int/lit8 v6, v5, 0x7

    .line 215
    iput v6, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    .line 216
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr v0, p2

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->x:F

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->tx:F

    .line 217
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr v0, p3

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->y:F

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->ty:F

    .line 218
    and-int/lit8 v0, v5, 0x8

    if-eqz v0, :cond_6c

    const/4 v0, 0x1

    move v1, v0

    .line 219
    :goto_33
    if-eqz v6, :cond_38

    const/4 v0, 0x1

    if-ne v6, v0, :cond_126

    .line 220
    :cond_38
    and-int/lit8 v0, v5, 0x10

    if-eqz v0, :cond_9f

    .line 221
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v6

    .line 223
    sget-object v7, Lfr/testudo/spacecorsair/mod/ModLanSync;->stylesIn:Ljava/util/HashMap;

    monitor-enter v7

    :try_start_43
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLanSync;->stylesIn:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;

    monitor-exit v7
    :try_end_50
    .catchall {:try_start_43 .. :try_end_50} :catchall_6f

    .line 224
    if-nez v0, :cond_72

    const/4 v0, -0x1

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    .line 229
    :goto_55
    const/high16 v0, 0x40000

    or-int/2addr v0, v6

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->key:I

    .line 242
    :goto_5a
    and-int/lit8 v0, v5, 0x20

    if-eqz v0, :cond_11c

    const/4 v0, 0x0

    :goto_5f
    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->spin:F

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->ts:F

    .line 243
    invoke-static {p0, v4, v1}, Lfr/testudo/spacecorsair/mod/ModLanSync;->colour(Ljava/io/DataInputStream;Lfr/testudo/spacecorsair/mod/ModLan$Rec;Z)V

    .line 264
    :goto_66
    aput-object v4, v3, v2

    .line 211
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 218
    :cond_6c
    const/4 v0, 0x0

    move v1, v0

    goto :goto_33

    .line 223
    :catchall_6f
    move-exception v0

    :try_start_70
    monitor-exit v7
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw v0

    .line 226
    :cond_72
    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->kind:I

    iput v7, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->kind:I

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->tex:I

    iput v7, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->id:I

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->flags:I

    iput v7, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->w:F

    iput v7, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->w:F

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->h:F

    iput v7, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->h:F

    .line 227
    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->u0:F

    iput v7, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->u0:F

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->v0:F

    iput v7, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->v0:F

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->u1:F

    iput v7, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->u1:F

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->v1:F

    iput v7, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->v1:F

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->e0:F

    iput v7, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->e0:F

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->e1:F

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->e1:F

    goto :goto_55

    .line 231
    :cond_9f
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->id:I

    .line 232
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    .line 233
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanSync;->dim(F)F

    move-result v0

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->w:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanSync;->dim(F)F

    move-result v0

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->h:F

    .line 234
    const/4 v0, 0x1

    if-ne v6, v0, :cond_10d

    .line 235
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanSync;->fin(F)F

    move-result v0

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->u0:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanSync;->fin(F)F

    move-result v0

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->v0:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanSync;->fin(F)F

    move-result v0

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->u1:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanSync;->fin(F)F

    move-result v0

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->v1:F

    .line 236
    iget v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_104

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanSync;->fin(F)F

    move-result v0

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->e0:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanSync;->fin(F)F

    move-result v0

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->e1:F

    .line 240
    :cond_104
    :goto_104
    shl-int/lit8 v0, v6, 0x10

    iget v6, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->id:I

    or-int/2addr v0, v6

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->key:I

    goto/16 :goto_5a

    .line 238
    :cond_10d
    const/4 v0, 0x0

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->u0:F

    const/4 v0, 0x0

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->v0:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->u1:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->v1:F

    goto :goto_104

    .line 242
    :cond_11c
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    int-to-float v0, v0

    const/high16 v5, 0x3bb40000

    mul-float/2addr v0, v5

    goto/16 :goto_5f

    .line 244
    :cond_126
    const/4 v0, 0x2

    if-ne v6, v0, :cond_159

    .line 245
    invoke-static {p0, v4, v1}, Lfr/testudo/spacecorsair/mod/ModLanSync;->colour(Ljava/io/DataInputStream;Lfr/testudo/spacecorsair/mod/ModLan$Rec;Z)V

    .line 246
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->flags:I

    .line 247
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->tsize:I

    .line 248
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->fromWire(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->text:Ljava/lang/String;

    .line 249
    const/high16 v0, 0x80000

    iget-object v1, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v5, 0xffff

    and-int/2addr v1, v5

    or-int/2addr v0, v1

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->key:I

    goto/16 :goto_66

    .line 250
    :cond_159
    const/4 v0, 0x3

    if-ne v6, v0, :cond_16f

    .line 251
    invoke-static {p0, v4, v1}, Lfr/testudo/spacecorsair/mod/ModLanSync;->colour(Ljava/io/DataInputStream;Lfr/testudo/spacecorsair/mod/ModLan$Rec;Z)V

    .line 252
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->psize:F

    .line 253
    const/high16 v0, 0xc0000

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->key:I

    goto/16 :goto_66

    .line 254
    :cond_16f
    const/4 v0, 0x4

    if-ne v6, v0, :cond_212

    .line 255
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanSync;->fin(F)F

    move-result v0

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->u0:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanSync;->fin(F)F

    move-result v0

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->v0:F

    .line 256
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x44000000    # 512.0f

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x41000000    # 8.0f

    div-float/2addr v5, v6

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->w:F

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x44000000    # 512.0f

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x41000000    # 8.0f

    div-float/2addr v5, v6

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->h:F

    .line 257
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->psize:F

    .line 258
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->a:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->r:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->g:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->b:F

    .line 259
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->xa:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->xr:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->xg:F

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->xb:F

    .line 260
    const/high16 v0, 0x100000

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModLan$Rec;->key:I

    goto/16 :goto_66

    .line 262
    :cond_212
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad record "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_22b
    return-object v3
.end method

.method static declared-synchronized reset()V
    .registers 3

    .prologue
    .line 78
    const-class v1, Lfr/testudo/spacecorsair/mod/ModLanSync;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLanSync;->styleOut:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 79
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLanSync;->seenLast:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 80
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLanSync;->seenNow:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 81
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLanSync;->newStyles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 82
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLanSync;->stylesIn:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_25

    :try_start_1a
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLanSync;->stylesIn:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_22

    .line 83
    monitor-exit v1

    return-void

    .line 82
    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    :try_start_24
    throw v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    .line 78
    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static spinQ(F)I
    .registers 4

    .prologue
    const/high16 v2, 0x43b40000    # 360.0f

    .line 148
    rem-float v0, p0, v2

    .line 149
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_a

    add-float/2addr v0, v2

    .line 150
    :cond_a
    const v1, 0x43360b61

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method static declared-synchronized sprite(Ljava/io/DataOutputStream;ZIFFFIIIIIFFFFFFZFF)Z
    .registers 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    const-class v10, Lfr/testudo/spacecorsair/mod/ModLanSync;

    monitor-enter v10

    :try_start_3
    invoke-static {p3}, Lfr/testudo/spacecorsair/mod/ModLanSync;->pos(F)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-static/range {p4 .. p4}, Lfr/testudo/spacecorsair/mod/ModLanSync;->pos(F)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_173

    move-result v4

    if-nez v4, :cond_12

    :cond_f
    const/4 v4, 0x0

    .line 144
    :goto_10
    monitor-exit v10

    return v4

    .line 109
    :cond_12
    :try_start_12
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLanSync;->probe:Lfr/testudo/spacecorsair/mod/ModLanSync$Style;

    .line 110
    if-eqz p1, :cond_13d

    const/4 v4, 0x1

    :goto_17
    iput v4, v5, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->kind:I

    iput p2, v5, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->tex:I

    move/from16 v0, p10

    iput v0, v5, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->flags:I

    move/from16 v0, p11

    iput v0, v5, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->w:F

    move/from16 v0, p12

    iput v0, v5, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->h:F

    .line 111
    if-eqz p1, :cond_140

    move/from16 v4, p13

    :goto_2b
    iput v4, v5, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->u0:F

    if-eqz p1, :cond_143

    move/from16 v4, p14

    :goto_31
    iput v4, v5, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->v0:F

    if-eqz p1, :cond_146

    move/from16 v4, p15

    :goto_37
    iput v4, v5, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->u1:F

    if-eqz p1, :cond_14a

    move/from16 v4, p16

    :goto_3d
    iput v4, v5, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->v1:F

    if-eqz p17, :cond_14e

    move/from16 v4, p18

    :goto_43
    iput v4, v5, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->e0:F

    if-eqz p17, :cond_151

    move/from16 v4, p19

    :goto_49
    iput v4, v5, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->e1:F

    .line 112
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLanSync;->styleOut:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 114
    if-nez v4, :cond_d9

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModLanSync;->styleOut:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    const/16 v9, 0x4000

    if-ge v8, v9, :cond_d9

    .line 115
    sget-object v8, Lfr/testudo/spacecorsair/mod/ModLanSync;->seenLast:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_154

    .line 116
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLanSync;->styleOut:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 117
    sget-object v8, Lfr/testudo/spacecorsair/mod/ModLanSync;->styleAt:[J

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput-wide v6, v8, v9

    .line 118
    invoke-virtual {v5}, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->copy()Lfr/testudo/spacecorsair/mod/ModLanSync$Style;

    move-result-object v5

    .line 119
    sget-object v8, Lfr/testudo/spacecorsair/mod/ModLanSync;->styleOut:Ljava/util/HashMap;

    invoke-virtual {v8, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    const/16 v9, 0x28

    invoke-direct {v8, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 121
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-direct {v9, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 122
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v11, v5, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->kind:I

    invoke-virtual {v9, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v11, v5, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->tex:I

    invoke-virtual {v9, v11}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v11, v5, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->flags:I

    invoke-virtual {v9, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 123
    iget v11, v5, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->w:F

    invoke-virtual {v9, v11}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v11, v5, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->h:F

    invoke-virtual {v9, v11}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v11, v5, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->u0:F

    invoke-virtual {v9, v11}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v11, v5, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->v0:F

    invoke-virtual {v9, v11}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v11, v5, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->u1:F

    invoke-virtual {v9, v11}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v11, v5, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->v1:F

    invoke-virtual {v9, v11}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 124
    iget v11, v5, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->e0:F

    invoke-virtual {v9, v11}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v5, v5, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->e1:F

    invoke-virtual {v9, v5}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 125
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLanSync;->newStyles:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_d9
    :goto_d9
    if-eqz v4, :cond_1b3

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLanSync;->styleAt:[J

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-wide v8, v5, v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x258

    cmp-long v5, v6, v8

    if-gez v5, :cond_1b3

    const/4 v4, 0x0

    move-object v6, v4

    .line 131
    :goto_ec
    if-eqz p1, :cond_176

    const/4 v4, 0x1

    :goto_ef
    move/from16 v0, p6

    move/from16 v1, p7

    move/from16 v2, p8

    move/from16 v3, p9

    invoke-static {v4, v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLanSync;->head(IIIII)I

    move-result v5

    if-eqz v6, :cond_179

    const/16 v4, 0x10

    :goto_ff
    or-int/2addr v5, v4

    const/4 v4, 0x0

    cmpl-float v4, p5, v4

    if-nez v4, :cond_17b

    const/16 v4, 0x20

    :goto_107
    or-int/2addr v5, v4

    .line 132
    invoke-virtual {p0, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 133
    invoke-static {p3}, Lfr/testudo/spacecorsair/mod/ModLanSync;->q(F)I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-static/range {p4 .. p4}, Lfr/testudo/spacecorsair/mod/ModLanSync;->q(F)I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 134
    if-eqz v6, :cond_17d

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 142
    :cond_122
    :goto_122
    const/4 v4, 0x0

    cmpl-float v4, p5, v4

    if-eqz v4, :cond_12e

    invoke-static/range {p5 .. p5}, Lfr/testudo/spacecorsair/mod/ModLanSync;->spinQ(F)I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    :cond_12e
    move-object v4, p0

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 143
    invoke-static/range {v4 .. v9}, Lfr/testudo/spacecorsair/mod/ModLanSync;->colour(Ljava/io/DataOutputStream;IIIII)V

    .line 144
    const/4 v4, 0x1

    goto/16 :goto_10

    .line 110
    :cond_13d
    const/4 v4, 0x0

    goto/16 :goto_17

    .line 111
    :cond_140
    const/4 v4, 0x0

    goto/16 :goto_2b

    :cond_143
    const/4 v4, 0x0

    goto/16 :goto_31

    :cond_146
    const/high16 v4, 0x3f800000    # 1.0f

    goto/16 :goto_37

    :cond_14a
    const/high16 v4, 0x3f800000    # 1.0f

    goto/16 :goto_3d

    :cond_14e
    const/4 v4, 0x0

    goto/16 :goto_43

    :cond_151
    const/4 v4, 0x0

    goto/16 :goto_49

    .line 126
    :cond_154
    sget-object v8, Lfr/testudo/spacecorsair/mod/ModLanSync;->seenNow:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    const/16 v9, 0x200

    if-ge v8, v9, :cond_d9

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModLanSync;->seenNow:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d9

    .line 127
    sget-object v8, Lfr/testudo/spacecorsair/mod/ModLanSync;->seenNow:Ljava/util/HashMap;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->copy()Lfr/testudo/spacecorsair/mod/ModLanSync$Style;

    move-result-object v5

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_171
    .catchall {:try_start_12 .. :try_end_171} :catchall_173

    goto/16 :goto_d9

    .line 108
    :catchall_173
    move-exception v4

    monitor-exit v10

    throw v4

    .line 131
    :cond_176
    const/4 v4, 0x0

    goto/16 :goto_ef

    :cond_179
    const/4 v4, 0x0

    goto :goto_ff

    :cond_17b
    const/4 v4, 0x0

    goto :goto_107

    .line 136
    :cond_17d
    :try_start_17d
    invoke-virtual {p0, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    move/from16 v0, p10

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    move/from16 v0, p11

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    move/from16 v0, p12

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 137
    if-eqz p1, :cond_122

    .line 138
    move/from16 v0, p13

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    move/from16 v0, p14

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    move/from16 v0, p15

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    move/from16 v0, p16

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 139
    if-eqz p17, :cond_122

    move/from16 v0, p18

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    move/from16 v0, p19

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V
    :try_end_1b1
    .catchall {:try_start_17d .. :try_end_1b1} :catchall_173

    goto/16 :goto_122

    :cond_1b3
    move-object v6, v4

    goto/16 :goto_ec
.end method

.method static style([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    array-length v0, p0

    const/16 v1, 0x26

    if-eq v0, v1, :cond_d

    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad style"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_d
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 195
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    .line 196
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;-><init>()V

    .line 197
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->kind:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->tex:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->flags:I

    .line 198
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLanSync;->dim(F)F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->w:F

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLanSync;->dim(F)F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->h:F

    .line 199
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLanSync;->fin(F)F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->u0:F

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLanSync;->fin(F)F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->v0:F

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLanSync;->fin(F)F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->u1:F

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLanSync;->fin(F)F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->v1:F

    .line 200
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLanSync;->fin(F)F

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->e0:F

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanSync;->fin(F)F

    move-result v0

    iput v0, v2, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->e1:F

    .line 201
    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModLanSync$Style;->kind:I

    const/4 v3, 0x1

    if-gt v0, v3, :cond_8b

    const/16 v0, 0x4000

    if-lt v1, v0, :cond_93

    :cond_8b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad style"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_93
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLanSync;->stylesIn:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_96
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLanSync;->stylesIn:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    .line 203
    return-void

    .line 202
    :catchall_a1
    move-exception v0

    monitor-exit v3
    :try_end_a3
    .catchall {:try_start_96 .. :try_end_a3} :catchall_a1

    throw v0
.end method

.method static text(Ljava/io/DataOutputStream;FFIIIIIILjava/lang/String;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModLanSync;->pos(F)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModLanSync;->pos(F)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x0

    .line 159
    :goto_d
    return v0

    .line 155
    :cond_e
    const/4 v0, 0x2

    invoke-static {v0, p3, p4, p5, p6}, Lfr/testudo/spacecorsair/mod/ModLanSync;->head(IIIII)I

    move-result v1

    .line 156
    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModLanSync;->q(F)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModLanSync;->q(F)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    move-object v0, p0

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 157
    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModLanSync;->colour(Ljava/io/DataOutputStream;IIIII)V

    .line 158
    invoke-virtual {p0, p7}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {p0, p8}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {p0, p9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 159
    const/4 v0, 0x1

    goto :goto_d
.end method
