.class public Lcom/google/ads/al;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:Lcom/google/ads/ai;

.field private e:Lcom/google/ads/ah;


# direct methods
.method public constructor <init>(Lcom/google/ads/ai;)V
    .registers 5

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "googleads.g.doubleclick.net"

    iput-object v0, p0, Lcom/google/ads/al;->a:Ljava/lang/String;

    .line 31
    const-string v0, "/pagead/ads"

    iput-object v0, p0, Lcom/google/ads/al;->b:Ljava/lang/String;

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".doubleclick.net"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".googleadservices.com"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ".googlesyndication.com"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/ads/al;->c:[Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/google/ads/ah;

    invoke-direct {v0}, Lcom/google/ads/ah;-><init>()V

    iput-object v0, p0, Lcom/google/ads/al;->e:Lcom/google/ads/ah;

    .line 60
    iput-object p1, p0, Lcom/google/ads/al;->d:Lcom/google/ads/ai;

    .line 61
    return-void
.end method

.method private a(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;
    .registers 7

    .prologue
    .line 249
    :try_start_0
    const-string v0, "ms"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 250
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Query parameter already exists: ms"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_10} :catch_10

    .line 263
    :catch_10
    move-exception v0

    .line 264
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Provided Uri is not in a valid state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_19
    if-eqz p4, :cond_28

    .line 256
    :try_start_1b
    iget-object v0, p0, Lcom/google/ads/al;->d:Lcom/google/ads/ai;

    invoke-interface {v0, p2, p3}, Lcom/google/ads/ai;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    :goto_21
    const-string v1, "ms"

    invoke-direct {p0, p1, v1, v0}, Lcom/google/ads/al;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 258
    :cond_28
    iget-object v0, p0, Lcom/google/ads/al;->d:Lcom/google/ads/ai;

    invoke-interface {v0, p2}, Lcom/google/ads/ai;->a(Landroid/content/Context;)Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1b .. :try_end_2d} :catch_10

    move-result-object v0

    goto :goto_21
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 9

    .prologue
    const/4 v2, -0x1

    .line 207
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 209
    const-string v0, "&adurl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 210
    if-ne v0, v2, :cond_13

    .line 211
    const-string v0, "?adurl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 214
    :cond_13
    if-eq v0, v2, :cond_48

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 230
    :goto_47
    return-object v0

    .line 228
    :cond_48
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 229
    invoke-virtual {v0, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_47
.end method


# virtual methods
.method public a(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;
    .registers 5

    .prologue
    .line 190
    :try_start_0
    const-string v0, "ai"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/ads/al;->a(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;
    :try_end_a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_a} :catch_c

    move-result-object v0

    return-object v0

    .line 192
    :catch_c
    move-exception v0

    .line 193
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Provided Uri is not in a valid state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 124
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/al;->c:[Ljava/lang/String;

    .line 125
    return-void
.end method

.method public a(Landroid/net/Uri;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 102
    if-nez p1, :cond_9

    .line 103
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 106
    :cond_9
    :try_start_9
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 107
    iget-object v3, p0, Lcom/google/ads/al;->c:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_11
    if-ge v1, v4, :cond_1c

    aget-object v5, v3, v1

    .line 108
    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_18} :catch_20

    move-result v5

    if-eqz v5, :cond_1d

    .line 109
    const/4 v0, 0x1

    .line 114
    :cond_1c
    :goto_1c
    return v0

    .line 107
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 113
    :catch_20
    move-exception v1

    goto :goto_1c
.end method
