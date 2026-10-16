.class Landroid/support/v4/b/b;
.super Landroid/support/v4/b/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/b/f",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/b/a;


# direct methods
.method constructor <init>(Landroid/support/v4/b/a;)V
    .registers 2

    .prologue
    .line 73
    iput-object p1, p0, Landroid/support/v4/b/b;->a:Landroid/support/v4/b/a;

    invoke-direct {p0}, Landroid/support/v4/b/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()I
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Landroid/support/v4/b/b;->a:Landroid/support/v4/b/a;

    iget v0, v0, Landroid/support/v4/b/a;->h:I

    return v0
.end method

.method protected a(Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 86
    if-nez p1, :cond_9

    iget-object v0, p0, Landroid/support/v4/b/b;->a:Landroid/support/v4/b/a;

    invoke-virtual {v0}, Landroid/support/v4/b/a;->a()I

    move-result v0

    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Landroid/support/v4/b/b;->a:Landroid/support/v4/b/a;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/b/a;->a(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_8
.end method

.method protected a(II)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 81
    iget-object v0, p0, Landroid/support/v4/b/b;->a:Landroid/support/v4/b/a;

    iget-object v0, v0, Landroid/support/v4/b/a;->g:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/2addr v1, p2

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected a(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Landroid/support/v4/b/b;->a:Landroid/support/v4/b/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/b/a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected a(I)V
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, Landroid/support/v4/b/b;->a:Landroid/support/v4/b/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/b/a;->d(I)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Landroid/support/v4/b/b;->a:Landroid/support/v4/b/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void
.end method

.method protected b(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 91
    iget-object v0, p0, Landroid/support/v4/b/b;->a:Landroid/support/v4/b/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/b/a;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected b()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Landroid/support/v4/b/b;->a:Landroid/support/v4/b/a;

    return-object v0
.end method

.method protected c()V
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Landroid/support/v4/b/b;->a:Landroid/support/v4/b/a;

    invoke-virtual {v0}, Landroid/support/v4/b/a;->clear()V

    .line 117
    return-void
.end method
