.class final Lcom/google/gson/internal/StringMap$e;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/StringMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/internal/StringMap;


# direct methods
.method private constructor <init>(Lcom/google/gson/internal/StringMap;)V
    .registers 2

    .prologue
    .line 428
    iput-object p1, p0, Lcom/google/gson/internal/StringMap$e;->a:Lcom/google/gson/internal/StringMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gson/internal/StringMap;Lcom/google/gson/internal/StringMap$1;)V
    .registers 3

    .prologue
    .line 428
    invoke-direct {p0, p1}, Lcom/google/gson/internal/StringMap$e;-><init>(Lcom/google/gson/internal/StringMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/google/gson/internal/StringMap$e;->a:Lcom/google/gson/internal/StringMap;

    invoke-virtual {v0}, Lcom/google/gson/internal/StringMap;->clear()V

    .line 447
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 442
    iget-object v0, p0, Lcom/google/gson/internal/StringMap$e;->a:Lcom/google/gson/internal/StringMap;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/StringMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 430
    new-instance v0, Lcom/google/gson/internal/l;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/l;-><init>(Lcom/google/gson/internal/StringMap$e;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/google/gson/internal/StringMap$e;->a:Lcom/google/gson/internal/StringMap;

    # getter for: Lcom/google/gson/internal/StringMap;->size:I
    invoke-static {v0}, Lcom/google/gson/internal/StringMap;->access$500(Lcom/google/gson/internal/StringMap;)I

    move-result v0

    return v0
.end method
