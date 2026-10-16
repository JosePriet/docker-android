.class Lcom/google/ads/internal/k$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/ads/internal/k$a;


# direct methods
.method constructor <init>(Lcom/google/ads/internal/k$a;)V
    .registers 2

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/ads/internal/k$a$2;->a:Lcom/google/ads/internal/k$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .prologue
    .line 107
    new-instance v0, Lcom/google/ads/internal/j;

    iget-object v1, p0, Lcom/google/ads/internal/k$a$2;->a:Lcom/google/ads/internal/k$a;

    invoke-static {v1}, Lcom/google/ads/internal/k$a;->a(Lcom/google/ads/internal/k$a;)Lcom/google/ads/internal/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/internal/d;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/internal/k$a$2;->a:Lcom/google/ads/internal/k$a;

    invoke-static {v2}, Lcom/google/ads/internal/k$a;->b(Lcom/google/ads/internal/k$a;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/ads/internal/j;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 110
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 111
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 112
    return-void
.end method
