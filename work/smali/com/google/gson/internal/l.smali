.class Lcom/google/gson/internal/l;
.super Lcom/google/gson/internal/StringMap$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/internal/StringMap",
        "<TV;>.d<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/internal/StringMap$e;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/StringMap$e;)V
    .registers 4

    .prologue
    .line 430
    iput-object p1, p0, Lcom/google/gson/internal/l;->a:Lcom/google/gson/internal/StringMap$e;

    iget-object v0, p1, Lcom/google/gson/internal/StringMap$e;->a:Lcom/google/gson/internal/StringMap;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/gson/internal/StringMap$d;-><init>(Lcom/google/gson/internal/StringMap;Lcom/google/gson/internal/StringMap$1;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/google/gson/internal/l;->b()Lcom/google/gson/internal/StringMap$c;

    move-result-object v0

    iget-object v0, v0, Lcom/google/gson/internal/StringMap$c;->b:Ljava/lang/Object;

    return-object v0
.end method
