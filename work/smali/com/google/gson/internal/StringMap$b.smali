.class final Lcom/google/gson/internal/StringMap$b;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/StringMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/internal/StringMap;


# direct methods
.method private constructor <init>(Lcom/google/gson/internal/StringMap;)V
    .registers 2

    .prologue
    .line 400
    iput-object p1, p0, Lcom/google/gson/internal/StringMap$b;->a:Lcom/google/gson/internal/StringMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gson/internal/StringMap;Lcom/google/gson/internal/StringMap$1;)V
    .registers 3

    .prologue
    .line 400
    invoke-direct {p0, p1}, Lcom/google/gson/internal/StringMap$b;-><init>(Lcom/google/gson/internal/StringMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/gson/internal/StringMap$b;->a:Lcom/google/gson/internal/StringMap;

    invoke-virtual {v0}, Lcom/google/gson/internal/StringMap;->clear()V

    .line 425
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/gson/internal/StringMap$b;->a:Lcom/google/gson/internal/StringMap;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/StringMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    new-instance v0, Lcom/google/gson/internal/k;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/k;-><init>(Lcom/google/gson/internal/StringMap$b;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 418
    iget-object v0, p0, Lcom/google/gson/internal/StringMap$b;->a:Lcom/google/gson/internal/StringMap;

    # getter for: Lcom/google/gson/internal/StringMap;->size:I
    invoke-static {v0}, Lcom/google/gson/internal/StringMap;->access$500(Lcom/google/gson/internal/StringMap;)I

    move-result v0

    .line 419
    iget-object v1, p0, Lcom/google/gson/internal/StringMap$b;->a:Lcom/google/gson/internal/StringMap;

    invoke-virtual {v1, p1}, Lcom/google/gson/internal/StringMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iget-object v1, p0, Lcom/google/gson/internal/StringMap$b;->a:Lcom/google/gson/internal/StringMap;

    # getter for: Lcom/google/gson/internal/StringMap;->size:I
    invoke-static {v1}, Lcom/google/gson/internal/StringMap;->access$500(Lcom/google/gson/internal/StringMap;)I

    move-result v1

    if-eq v1, v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public size()I
    .registers 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/google/gson/internal/StringMap$b;->a:Lcom/google/gson/internal/StringMap;

    # getter for: Lcom/google/gson/internal/StringMap;->size:I
    invoke-static {v0}, Lcom/google/gson/internal/StringMap;->access$500(Lcom/google/gson/internal/StringMap;)I

    move-result v0

    return v0
.end method
