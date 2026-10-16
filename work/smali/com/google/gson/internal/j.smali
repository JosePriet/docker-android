.class Lcom/google/gson/internal/j;
.super Lcom/google/gson/internal/StringMap$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/internal/StringMap",
        "<TV;>.d<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/internal/StringMap$a;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/StringMap$a;)V
    .registers 4

    .prologue
    .line 452
    iput-object p1, p0, Lcom/google/gson/internal/j;->a:Lcom/google/gson/internal/StringMap$a;

    iget-object v0, p1, Lcom/google/gson/internal/StringMap$a;->a:Lcom/google/gson/internal/StringMap;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/gson/internal/StringMap$d;-><init>(Lcom/google/gson/internal/StringMap;Lcom/google/gson/internal/StringMap$1;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/google/gson/internal/j;->b()Lcom/google/gson/internal/StringMap$c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/google/gson/internal/j;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
