.class public final Lcom/google/gson/internal/StringMap;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/StringMap$1;,
        Lcom/google/gson/internal/StringMap$a;,
        Lcom/google/gson/internal/StringMap$e;,
        Lcom/google/gson/internal/StringMap$b;,
        Lcom/google/gson/internal/StringMap$d;,
        Lcom/google/gson/internal/StringMap$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<",
        "Ljava/lang/String;",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_TABLE:[Ljava/util/Map$Entry;

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field private static final MINIMUM_CAPACITY:I = 0x4

.field private static final seed:I


# instance fields
.field private entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private header:Lcom/google/gson/internal/StringMap$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/StringMap$c",
            "<TV;>;"
        }
    .end annotation
.end field

.field private keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private size:I

.field private table:[Lcom/google/gson/internal/StringMap$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/gson/internal/StringMap$c",
            "<TV;>;"
        }
    .end annotation
.end field

.field private threshold:I

.field private values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/gson/internal/StringMap$c;

    sput-object v0, Lcom/google/gson/internal/StringMap;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    .line 485
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    sput v0, Lcom/google/gson/internal/StringMap;->seed:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 92
    sget-object v0, Lcom/google/gson/internal/StringMap;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    check-cast v0, [Lcom/google/gson/internal/StringMap$c;

    check-cast v0, [Lcom/google/gson/internal/StringMap$c;

    iput-object v0, p0, Lcom/google/gson/internal/StringMap;->table:[Lcom/google/gson/internal/StringMap$c;

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/gson/internal/StringMap;->threshold:I

    .line 94
    new-instance v0, Lcom/google/gson/internal/StringMap$c;

    invoke-direct {v0}, Lcom/google/gson/internal/StringMap$c;-><init>()V

    iput-object v0, p0, Lcom/google/gson/internal/StringMap;->header:Lcom/google/gson/internal/StringMap$c;

    .line 95
    return-void
.end method

.method static synthetic access$300(Lcom/google/gson/internal/StringMap;)Lcom/google/gson/internal/StringMap$c;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/gson/internal/StringMap;->header:Lcom/google/gson/internal/StringMap$c;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/gson/internal/StringMap;)I
    .registers 2

    .prologue
    .line 38
    iget v0, p0, Lcom/google/gson/internal/StringMap;->size:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/gson/internal/StringMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/gson/internal/StringMap;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private addNewEntry(Ljava/lang/String;Ljava/lang/Object;II)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;II)V"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v5, p0, Lcom/google/gson/internal/StringMap;->header:Lcom/google/gson/internal/StringMap$c;

    .line 159
    iget-object v6, v5, Lcom/google/gson/internal/StringMap$c;->f:Lcom/google/gson/internal/StringMap$c;

    .line 160
    new-instance v0, Lcom/google/gson/internal/StringMap$c;

    iget-object v1, p0, Lcom/google/gson/internal/StringMap;->table:[Lcom/google/gson/internal/StringMap$c;

    aget-object v4, v1, p4

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/gson/internal/StringMap$c;-><init>(Ljava/lang/String;Ljava/lang/Object;ILcom/google/gson/internal/StringMap$c;Lcom/google/gson/internal/StringMap$c;Lcom/google/gson/internal/StringMap$c;)V

    .line 162
    iget-object v1, p0, Lcom/google/gson/internal/StringMap;->table:[Lcom/google/gson/internal/StringMap$c;

    iput-object v0, v5, Lcom/google/gson/internal/StringMap$c;->f:Lcom/google/gson/internal/StringMap$c;

    iput-object v0, v6, Lcom/google/gson/internal/StringMap$c;->e:Lcom/google/gson/internal/StringMap$c;

    aput-object v0, v1, p4

    .line 163
    return-void
.end method

.method private doubleCapacity()[Lcom/google/gson/internal/StringMap$c;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lcom/google/gson/internal/StringMap$c",
            "<TV;>;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 184
    iget-object v4, p0, Lcom/google/gson/internal/StringMap;->table:[Lcom/google/gson/internal/StringMap$c;

    .line 185
    array-length v9, v4

    .line 186
    const/high16 v0, 0x40000000    # 2.0f

    if-ne v9, v0, :cond_a

    move-object v0, v4

    .line 223
    :goto_9
    return-object v0

    .line 189
    :cond_a
    mul-int/lit8 v0, v9, 0x2

    .line 190
    invoke-direct {p0, v0}, Lcom/google/gson/internal/StringMap;->makeTable(I)[Lcom/google/gson/internal/StringMap$c;

    move-result-object v5

    .line 191
    iget v0, p0, Lcom/google/gson/internal/StringMap;->size:I

    if-nez v0, :cond_16

    move-object v0, v5

    .line 192
    goto :goto_9

    .line 195
    :cond_16
    const/4 v0, 0x0

    move v8, v0

    :goto_18
    if-ge v8, v9, :cond_4d

    .line 200
    aget-object v6, v4, v8

    .line 201
    if-nez v6, :cond_22

    .line 195
    :cond_1e
    :goto_1e
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_18

    .line 204
    :cond_22
    iget v0, v6, Lcom/google/gson/internal/StringMap$c;->c:I

    and-int v3, v0, v9

    .line 206
    or-int v0, v8, v3

    aput-object v6, v5, v0

    .line 207
    iget-object v0, v6, Lcom/google/gson/internal/StringMap$c;->d:Lcom/google/gson/internal/StringMap$c;

    move-object v1, v7

    move-object v10, v0

    move-object v0, v6

    move-object v6, v10

    :goto_30
    if-eqz v6, :cond_48

    .line 208
    iget v2, v6, Lcom/google/gson/internal/StringMap$c;->c:I

    and-int/2addr v2, v9

    .line 209
    if-eq v2, v3, :cond_4f

    .line 210
    if-nez v1, :cond_45

    .line 211
    or-int v1, v8, v2

    aput-object v6, v5, v1

    :goto_3d
    move v1, v2

    .line 207
    :goto_3e
    iget-object v2, v6, Lcom/google/gson/internal/StringMap$c;->d:Lcom/google/gson/internal/StringMap$c;

    move v3, v1

    move-object v1, v0

    move-object v0, v6

    move-object v6, v2

    goto :goto_30

    .line 213
    :cond_45
    iput-object v6, v1, Lcom/google/gson/internal/StringMap$c;->d:Lcom/google/gson/internal/StringMap$c;

    goto :goto_3d

    .line 219
    :cond_48
    if-eqz v1, :cond_1e

    .line 220
    iput-object v7, v1, Lcom/google/gson/internal/StringMap$c;->d:Lcom/google/gson/internal/StringMap$c;

    goto :goto_1e

    :cond_4d
    move-object v0, v5

    .line 223
    goto :goto_9

    :cond_4f
    move-object v0, v1

    move v1, v3

    goto :goto_3e
.end method

.method private getEntry(Ljava/lang/String;)Lcom/google/gson/internal/StringMap$c;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/gson/internal/StringMap$c",
            "<TV;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 115
    if-nez p1, :cond_4

    .line 127
    :cond_3
    :goto_3
    return-object v0

    .line 119
    :cond_4
    invoke-static {p1}, Lcom/google/gson/internal/StringMap;->hash(Ljava/lang/String;)I

    move-result v2

    .line 120
    iget-object v1, p0, Lcom/google/gson/internal/StringMap;->table:[Lcom/google/gson/internal/StringMap$c;

    .line 121
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v2

    aget-object v1, v1, v3

    :goto_10
    if-eqz v1, :cond_3

    .line 122
    iget-object v3, v1, Lcom/google/gson/internal/StringMap$c;->a:Ljava/lang/String;

    .line 123
    if-eq v3, p1, :cond_20

    iget v4, v1, Lcom/google/gson/internal/StringMap$c;->c:I

    if-ne v4, v2, :cond_22

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    :cond_20
    move-object v0, v1

    .line 124
    goto :goto_3

    .line 121
    :cond_22
    iget-object v1, v1, Lcom/google/gson/internal/StringMap$c;->d:Lcom/google/gson/internal/StringMap$c;

    goto :goto_10
.end method

.method private static hash(Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 498
    sget v1, Lcom/google/gson/internal/StringMap;->seed:I

    .line 499
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 500
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v1, v2

    .line 501
    add-int/2addr v1, v1

    shl-int/lit8 v1, v1, 0xa

    .line 502
    ushr-int/lit8 v2, v1, 0x6

    xor-int/2addr v1, v2

    .line 499
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 509
    :cond_17
    ushr-int/lit8 v0, v1, 0x14

    ushr-int/lit8 v2, v1, 0xc

    xor-int/2addr v0, v2

    xor-int/2addr v0, v1

    .line 510
    ushr-int/lit8 v1, v0, 0x7

    xor-int/2addr v1, v0

    ushr-int/lit8 v0, v0, 0x4

    xor-int/2addr v0, v1

    return v0
.end method

.method private makeTable(I)[Lcom/google/gson/internal/StringMap$c;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/gson/internal/StringMap$c",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 171
    new-array v0, p1, [Lcom/google/gson/internal/StringMap$c;

    check-cast v0, [Lcom/google/gson/internal/StringMap$c;

    .line 172
    iput-object v0, p0, Lcom/google/gson/internal/StringMap;->table:[Lcom/google/gson/internal/StringMap$c;

    .line 173
    shr-int/lit8 v1, p1, 0x1

    shr-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/internal/StringMap;->threshold:I

    .line 174
    return-object v0
.end method

.method private removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 349
    if-eqz p1, :cond_7

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_9

    :cond_7
    move v0, v1

    .line 371
    :goto_8
    return v0

    :cond_9
    move-object v0, p1

    .line 353
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/gson/internal/StringMap;->hash(Ljava/lang/String;)I

    move-result v3

    .line 354
    iget-object v4, p0, Lcom/google/gson/internal/StringMap;->table:[Lcom/google/gson/internal/StringMap$c;

    .line 355
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    and-int v5, v3, v0

    .line 356
    aget-object v2, v4, v5

    const/4 v0, 0x0

    :goto_1a
    if-eqz v2, :cond_54

    .line 357
    iget v6, v2, Lcom/google/gson/internal/StringMap$c;->c:I

    if-ne v6, v3, :cond_4e

    iget-object v6, v2, Lcom/google/gson/internal/StringMap$c;->a:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 358
    if-nez p2, :cond_30

    iget-object v3, v2, Lcom/google/gson/internal/StringMap$c;->b:Ljava/lang/Object;

    if-eqz v3, :cond_38

    :cond_2e
    move v0, v1

    .line 359
    goto :goto_8

    .line 358
    :cond_30
    iget-object v3, v2, Lcom/google/gson/internal/StringMap$c;->b:Ljava/lang/Object;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 361
    :cond_38
    if-nez v0, :cond_49

    .line 362
    iget-object v0, v2, Lcom/google/gson/internal/StringMap$c;->d:Lcom/google/gson/internal/StringMap$c;

    aput-object v0, v4, v5

    .line 366
    :goto_3e
    iget v0, p0, Lcom/google/gson/internal/StringMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/internal/StringMap;->size:I

    .line 367
    invoke-direct {p0, v2}, Lcom/google/gson/internal/StringMap;->unlink(Lcom/google/gson/internal/StringMap$c;)V

    .line 368
    const/4 v0, 0x1

    goto :goto_8

    .line 364
    :cond_49
    iget-object v1, v2, Lcom/google/gson/internal/StringMap$c;->d:Lcom/google/gson/internal/StringMap$c;

    iput-object v1, v0, Lcom/google/gson/internal/StringMap$c;->d:Lcom/google/gson/internal/StringMap$c;

    goto :goto_3e

    .line 356
    :cond_4e
    iget-object v0, v2, Lcom/google/gson/internal/StringMap$c;->d:Lcom/google/gson/internal/StringMap$c;

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_1a

    :cond_54
    move v0, v1

    .line 371
    goto :goto_8
.end method

.method private unlink(Lcom/google/gson/internal/StringMap$c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/StringMap$c",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p1, Lcom/google/gson/internal/StringMap$c;->f:Lcom/google/gson/internal/StringMap$c;

    iget-object v1, p1, Lcom/google/gson/internal/StringMap$c;->e:Lcom/google/gson/internal/StringMap$c;

    iput-object v1, v0, Lcom/google/gson/internal/StringMap$c;->e:Lcom/google/gson/internal/StringMap$c;

    .line 251
    iget-object v0, p1, Lcom/google/gson/internal/StringMap$c;->e:Lcom/google/gson/internal/StringMap$c;

    iget-object v1, p1, Lcom/google/gson/internal/StringMap$c;->f:Lcom/google/gson/internal/StringMap$c;

    iput-object v1, v0, Lcom/google/gson/internal/StringMap$c;->f:Lcom/google/gson/internal/StringMap$c;

    .line 252
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/gson/internal/StringMap$c;->f:Lcom/google/gson/internal/StringMap$c;

    iput-object v0, p1, Lcom/google/gson/internal/StringMap$c;->e:Lcom/google/gson/internal/StringMap$c;

    .line 253
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 256
    iget v0, p0, Lcom/google/gson/internal/StringMap;->size:I

    if-eqz v0, :cond_d

    .line 257
    iget-object v0, p0, Lcom/google/gson/internal/StringMap;->table:[Lcom/google/gson/internal/StringMap$c;

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 258
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/internal/StringMap;->size:I

    .line 262
    :cond_d
    iget-object v2, p0, Lcom/google/gson/internal/StringMap;->header:Lcom/google/gson/internal/StringMap$c;

    .line 263
    iget-object v0, v2, Lcom/google/gson/internal/StringMap$c;->e:Lcom/google/gson/internal/StringMap$c;

    :goto_11
    if-eq v0, v2, :cond_1b

    .line 264
    iget-object v1, v0, Lcom/google/gson/internal/StringMap$c;->e:Lcom/google/gson/internal/StringMap$c;

    .line 265
    iput-object v3, v0, Lcom/google/gson/internal/StringMap$c;->f:Lcom/google/gson/internal/StringMap$c;

    iput-object v3, v0, Lcom/google/gson/internal/StringMap$c;->e:Lcom/google/gson/internal/StringMap$c;

    move-object v0, v1

    .line 267
    goto :goto_11

    .line 269
    :cond_1b
    iput-object v2, v2, Lcom/google/gson/internal/StringMap$c;->f:Lcom/google/gson/internal/StringMap$c;

    iput-object v2, v2, Lcom/google/gson/internal/StringMap$c;->e:Lcom/google/gson/internal/StringMap$c;

    .line 270
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 102
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_e

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/gson/internal/StringMap;->getEntry(Ljava/lang/String;)Lcom/google/gson/internal/StringMap$c;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "TV;>;>;"
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/gson/internal/StringMap;->entrySet:Ljava/util/Set;

    .line 284
    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/google/gson/internal/StringMap$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/gson/internal/StringMap$a;-><init>(Lcom/google/gson/internal/StringMap;Lcom/google/gson/internal/StringMap$1;)V

    iput-object v0, p0, Lcom/google/gson/internal/StringMap;->entrySet:Ljava/util/Set;

    goto :goto_4
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 106
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 107
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/gson/internal/StringMap;->getEntry(Ljava/lang/String;)Lcom/google/gson/internal/StringMap$c;

    move-result-object v1

    .line 108
    if-eqz v1, :cond_f

    iget-object v0, v1, Lcom/google/gson/internal/StringMap$c;->b:Ljava/lang/Object;

    .line 110
    :cond_f
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/gson/internal/StringMap;->keySet:Ljava/util/Set;

    .line 274
    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/google/gson/internal/StringMap$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/gson/internal/StringMap$b;-><init>(Lcom/google/gson/internal/StringMap;Lcom/google/gson/internal/StringMap$1;)V

    iput-object v0, p0, Lcom/google/gson/internal/StringMap;->keySet:Ljava/util/Set;

    goto :goto_4
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 38
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;)TV;"
        }
    .end annotation

    .prologue
    .line 131
    if-nez p1, :cond_a

    .line 132
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_a
    invoke-static {p1}, Lcom/google/gson/internal/StringMap;->hash(Ljava/lang/String;)I

    move-result v2

    .line 136
    iget-object v1, p0, Lcom/google/gson/internal/StringMap;->table:[Lcom/google/gson/internal/StringMap$c;

    .line 137
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v2

    .line 138
    aget-object v1, v1, v0

    :goto_16
    if-eqz v1, :cond_2c

    .line 139
    iget v3, v1, Lcom/google/gson/internal/StringMap$c;->c:I

    if-ne v3, v2, :cond_29

    iget-object v3, v1, Lcom/google/gson/internal/StringMap$c;->a:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 140
    iget-object v0, v1, Lcom/google/gson/internal/StringMap$c;->b:Ljava/lang/Object;

    .line 141
    iput-object p2, v1, Lcom/google/gson/internal/StringMap$c;->b:Ljava/lang/Object;

    .line 152
    :goto_28
    return-object v0

    .line 138
    :cond_29
    iget-object v1, v1, Lcom/google/gson/internal/StringMap$c;->d:Lcom/google/gson/internal/StringMap$c;

    goto :goto_16

    .line 147
    :cond_2c
    iget v1, p0, Lcom/google/gson/internal/StringMap;->size:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/google/gson/internal/StringMap;->size:I

    iget v3, p0, Lcom/google/gson/internal/StringMap;->threshold:I

    if-le v1, v3, :cond_3e

    .line 148
    invoke-direct {p0}, Lcom/google/gson/internal/StringMap;->doubleCapacity()[Lcom/google/gson/internal/StringMap$c;

    move-result-object v0

    .line 149
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v2

    .line 151
    :cond_3e
    invoke-direct {p0, p1, p2, v2, v0}, Lcom/google/gson/internal/StringMap;->addNewEntry(Ljava/lang/String;Ljava/lang/Object;II)V

    .line 152
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 227
    if-eqz p1, :cond_7

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_9

    :cond_7
    move-object v0, v1

    .line 246
    :goto_8
    return-object v0

    :cond_9
    move-object v0, p1

    .line 230
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/gson/internal/StringMap;->hash(Ljava/lang/String;)I

    move-result v3

    .line 231
    iget-object v4, p0, Lcom/google/gson/internal/StringMap;->table:[Lcom/google/gson/internal/StringMap$c;

    .line 232
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    and-int v5, v3, v0

    .line 233
    aget-object v2, v4, v5

    move-object v0, v1

    .line 234
    :goto_1a
    if-eqz v2, :cond_45

    .line 235
    iget v6, v2, Lcom/google/gson/internal/StringMap$c;->c:I

    if-ne v6, v3, :cond_3f

    iget-object v6, v2, Lcom/google/gson/internal/StringMap$c;->a:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 236
    if-nez v0, :cond_3a

    .line 237
    iget-object v0, v2, Lcom/google/gson/internal/StringMap$c;->d:Lcom/google/gson/internal/StringMap$c;

    aput-object v0, v4, v5

    .line 241
    :goto_2e
    iget v0, p0, Lcom/google/gson/internal/StringMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/internal/StringMap;->size:I

    .line 242
    invoke-direct {p0, v2}, Lcom/google/gson/internal/StringMap;->unlink(Lcom/google/gson/internal/StringMap$c;)V

    .line 243
    iget-object v0, v2, Lcom/google/gson/internal/StringMap$c;->b:Ljava/lang/Object;

    goto :goto_8

    .line 239
    :cond_3a
    iget-object v1, v2, Lcom/google/gson/internal/StringMap$c;->d:Lcom/google/gson/internal/StringMap$c;

    iput-object v1, v0, Lcom/google/gson/internal/StringMap$c;->d:Lcom/google/gson/internal/StringMap$c;

    goto :goto_2e

    .line 234
    :cond_3f
    iget-object v0, v2, Lcom/google/gson/internal/StringMap$c;->d:Lcom/google/gson/internal/StringMap$c;

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_1a

    :cond_45
    move-object v0, v1

    .line 246
    goto :goto_8
.end method

.method public size()I
    .registers 2

    .prologue
    .line 98
    iget v0, p0, Lcom/google/gson/internal/StringMap;->size:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/gson/internal/StringMap;->values:Ljava/util/Collection;

    .line 279
    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/google/gson/internal/StringMap$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/gson/internal/StringMap$e;-><init>(Lcom/google/gson/internal/StringMap;Lcom/google/gson/internal/StringMap$1;)V

    iput-object v0, p0, Lcom/google/gson/internal/StringMap;->values:Ljava/util/Collection;

    goto :goto_4
.end method
