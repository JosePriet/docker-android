.class public Lcom/google/ads/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/o;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/internal/d;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/internal/d;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/webkit/WebView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    const-string v0, "url"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 29
    const-string v1, "type"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 30
    const-string v2, "afma_notify_dt"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 31
    const-string v3, "activation_overlay_url"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 32
    const-string v4, "1"

    const-string v5, "drt_include"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 33
    const-string v4, "request_scenario"

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 34
    const-string v6, "1"

    const-string v7, "use_webview_loadurl"

    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 39
    sget-object v7, Lcom/google/ads/internal/c$d;->d:Lcom/google/ads/internal/c$d;

    iget-object v7, v7, Lcom/google/ads/internal/c$d;->e:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a6

    .line 41
    sget-object v4, Lcom/google/ads/internal/c$d;->d:Lcom/google/ads/internal/c$d;

    .line 51
    :goto_4c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received ad url: <url: \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" type: \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "\" afmaNotifyDt: \""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" activationOverlayUrl: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" useWebViewLoadUrl: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Lcom/google/ads/internal/d;->k()Lcom/google/ads/internal/c;

    move-result-object v1

    .line 61
    if-eqz v1, :cond_a5

    .line 62
    invoke-virtual {v1, v5}, Lcom/google/ads/internal/c;->d(Z)V

    .line 63
    invoke-virtual {v1, v4}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/internal/c$d;)V

    .line 64
    invoke-virtual {v1, v6}, Lcom/google/ads/internal/c;->e(Z)V

    .line 65
    invoke-virtual {v1, v3}, Lcom/google/ads/internal/c;->e(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1, v0}, Lcom/google/ads/internal/c;->d(Ljava/lang/String;)V

    .line 70
    :cond_a5
    return-void

    .line 42
    :cond_a6
    sget-object v7, Lcom/google/ads/internal/c$d;->c:Lcom/google/ads/internal/c$d;

    iget-object v7, v7, Lcom/google/ads/internal/c$d;->e:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b3

    .line 44
    sget-object v4, Lcom/google/ads/internal/c$d;->c:Lcom/google/ads/internal/c$d;

    goto :goto_4c

    .line 45
    :cond_b3
    sget-object v7, Lcom/google/ads/internal/c$d;->a:Lcom/google/ads/internal/c$d;

    iget-object v7, v7, Lcom/google/ads/internal/c$d;->e:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c0

    .line 47
    sget-object v4, Lcom/google/ads/internal/c$d;->a:Lcom/google/ads/internal/c$d;

    goto :goto_4c

    .line 49
    :cond_c0
    sget-object v4, Lcom/google/ads/internal/c$d;->b:Lcom/google/ads/internal/c$d;

    goto :goto_4c
.end method
