.class Lcom/google/gson/internal/k;
.super Lcom/google/gson/internal/StringMap$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/internal/StringMap",
        "<TV;>.d<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/internal/StringMap$b;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/StringMap$b;)V
    .registers 4

    .prologue
    .line 402
    iput-object p1, p0, Lcom/google/gson/internal/k;->a:Lcom/google/gson/internal/StringMap$b;

    iget-object v0, p1, Lcom/google/gson/internal/StringMap$b;->a:Lcom/google/gson/internal/StringMap;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/gson/internal/StringMap$d;-><init>(Lcom/google/gson/internal/StringMap;Lcom/google/gson/internal/StringMap$1;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/google/gson/internal/k;->b()Lcom/google/gson/internal/StringMap$c;

    move-result-object v0

    iget-object v0, v0, Lcom/google/gson/internal/StringMap$c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/google/gson/internal/k;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
