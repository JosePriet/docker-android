.class Lcom/google/ads/internal/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/ads/internal/d;

.field private final b:Landroid/webkit/WebView;

.field private final c:Lcom/google/ads/internal/f;

.field private final d:Lcom/google/ads/AdRequest$ErrorCode;

.field private final e:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/internal/d;Landroid/webkit/WebView;Lcom/google/ads/internal/f;Lcom/google/ads/AdRequest$ErrorCode;Z)V
    .registers 6

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/google/ads/internal/c$a;->a:Lcom/google/ads/internal/d;

    .line 105
    iput-object p2, p0, Lcom/google/ads/internal/c$a;->b:Landroid/webkit/WebView;

    .line 106
    iput-object p3, p0, Lcom/google/ads/internal/c$a;->c:Lcom/google/ads/internal/f;

    .line 107
    iput-object p4, p0, Lcom/google/ads/internal/c$a;->d:Lcom/google/ads/AdRequest$ErrorCode;

    .line 108
    iput-boolean p5, p0, Lcom/google/ads/internal/c$a;->e:Z

    .line 109
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/ads/internal/c$a;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_e

    .line 115
    iget-object v0, p0, Lcom/google/ads/internal/c$a;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 116
    iget-object v0, p0, Lcom/google/ads/internal/c$a;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 120
    :cond_e
    iget-object v0, p0, Lcom/google/ads/internal/c$a;->c:Lcom/google/ads/internal/f;

    if-eqz v0, :cond_17

    .line 121
    iget-object v0, p0, Lcom/google/ads/internal/c$a;->c:Lcom/google/ads/internal/f;

    invoke-virtual {v0}, Lcom/google/ads/internal/f;->a()V

    .line 125
    :cond_17
    iget-boolean v0, p0, Lcom/google/ads/internal/c$a;->e:Z

    if-eqz v0, :cond_45

    .line 126
    iget-object v0, p0, Lcom/google/ads/internal/c$a;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->l()Lcom/google/ads/internal/AdWebView;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/google/ads/internal/AdWebView;->stopLoading()V

    .line 128
    iget-object v0, p0, Lcom/google/ads/internal/c$a;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->i()Lcom/google/ads/n;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/n;->i:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 129
    iget-object v0, p0, Lcom/google/ads/internal/c$a;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->i()Lcom/google/ads/n;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/n;->i:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 134
    :cond_45
    iget-object v0, p0, Lcom/google/ads/internal/c$a;->a:Lcom/google/ads/internal/d;

    iget-object v1, p0, Lcom/google/ads/internal/c$a;->d:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/d;->a(Lcom/google/ads/AdRequest$ErrorCode;)V

    .line 135
    return-void
.end method
