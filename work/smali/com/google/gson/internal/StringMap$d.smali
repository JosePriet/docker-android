.class abstract Lcom/google/gson/internal/StringMap$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/StringMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field b:Lcom/google/gson/internal/StringMap$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/StringMap$c",
            "<TV;>;"
        }
    .end annotation
.end field

.field c:Lcom/google/gson/internal/StringMap$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/StringMap$c",
            "<TV;>;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/google/gson/internal/StringMap;


# direct methods
.method private constructor <init>(Lcom/google/gson/internal/StringMap;)V
    .registers 3

    .prologue
    .line 374
    iput-object p1, p0, Lcom/google/gson/internal/StringMap$d;->d:Lcom/google/gson/internal/StringMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    iget-object v0, p0, Lcom/google/gson/internal/StringMap$d;->d:Lcom/google/gson/internal/StringMap;

    # getter for: Lcom/google/gson/internal/StringMap;->header:Lcom/google/gson/internal/StringMap$c;
    invoke-static {v0}, Lcom/google/gson/internal/StringMap;->access$300(Lcom/google/gson/internal/StringMap;)Lcom/google/gson/internal/StringMap$c;

    move-result-object v0

    iget-object v0, v0, Lcom/google/gson/internal/StringMap$c;->e:Lcom/google/gson/internal/StringMap$c;

    iput-object v0, p0, Lcom/google/gson/internal/StringMap$d;->b:Lcom/google/gson/internal/StringMap$c;

    .line 376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/internal/StringMap$d;->c:Lcom/google/gson/internal/StringMap$c;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gson/internal/StringMap;Lcom/google/gson/internal/StringMap$1;)V
    .registers 3

    .prologue
    .line 374
    invoke-direct {p0, p1}, Lcom/google/gson/internal/StringMap$d;-><init>(Lcom/google/gson/internal/StringMap;)V

    return-void
.end method


# virtual methods
.method final b()Lcom/google/gson/internal/StringMap$c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/internal/StringMap$c",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/gson/internal/StringMap$d;->b:Lcom/google/gson/internal/StringMap$c;

    .line 384
    iget-object v1, p0, Lcom/google/gson/internal/StringMap$d;->d:Lcom/google/gson/internal/StringMap;

    # getter for: Lcom/google/gson/internal/StringMap;->header:Lcom/google/gson/internal/StringMap$c;
    invoke-static {v1}, Lcom/google/gson/internal/StringMap;->access$300(Lcom/google/gson/internal/StringMap;)Lcom/google/gson/internal/StringMap$c;

    move-result-object v1

    if-ne v0, v1, :cond_10

    .line 385
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 387
    :cond_10
    iget-object v1, v0, Lcom/google/gson/internal/StringMap$c;->e:Lcom/google/gson/internal/StringMap$c;

    iput-object v1, p0, Lcom/google/gson/internal/StringMap$d;->b:Lcom/google/gson/internal/StringMap$c;

    .line 388
    iput-object v0, p0, Lcom/google/gson/internal/StringMap$d;->c:Lcom/google/gson/internal/StringMap$c;

    return-object v0
.end method

.method public final hasNext()Z
    .registers 3

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/gson/internal/StringMap$d;->b:Lcom/google/gson/internal/StringMap$c;

    iget-object v1, p0, Lcom/google/gson/internal/StringMap$d;->d:Lcom/google/gson/internal/StringMap;

    # getter for: Lcom/google/gson/internal/StringMap;->header:Lcom/google/gson/internal/StringMap$c;
    invoke-static {v1}, Lcom/google/gson/internal/StringMap;->access$300(Lcom/google/gson/internal/StringMap;)Lcom/google/gson/internal/StringMap$c;

    move-result-object v1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final remove()V
    .registers 3

    .prologue
    .line 392
    iget-object v0, p0, Lcom/google/gson/internal/StringMap$d;->c:Lcom/google/gson/internal/StringMap$c;

    if-nez v0, :cond_a

    .line 393
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 395
    :cond_a
    iget-object v0, p0, Lcom/google/gson/internal/StringMap$d;->d:Lcom/google/gson/internal/StringMap;

    iget-object v1, p0, Lcom/google/gson/internal/StringMap$d;->c:Lcom/google/gson/internal/StringMap$c;

    iget-object v1, v1, Lcom/google/gson/internal/StringMap$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/internal/StringMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/internal/StringMap$d;->c:Lcom/google/gson/internal/StringMap$c;

    .line 397
    return-void
.end method
