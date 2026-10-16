.class public Lcom/google/ads/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/o;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/i$c;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/ads/util/i$c",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 109
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 110
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/ads/util/i$c;->a(Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_13} :catch_14

    .line 115
    :cond_13
    :goto_13
    return-void

    .line 112
    :catch_14
    move-exception v0

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not parse \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" constant."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    goto :goto_13
.end method

.method private b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/i$c;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/ads/util/i$c",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 123
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/ads/util/i$c;->a(Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_13} :catch_14

    .line 128
    :cond_13
    :goto_13
    return-void

    .line 125
    :catch_14
    move-exception v0

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not parse \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" constant."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    goto :goto_13
.end method

.method private c(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/i$c;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/ads/util/i$c",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 134
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 135
    invoke-virtual {p3, v0}, Lcom/google/ads/util/i$c;->a(Ljava/lang/Object;)V

    .line 137
    :cond_f
    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/internal/d;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .registers 12
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
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 33
    invoke-virtual {p1}, Lcom/google/ads/internal/d;->i()Lcom/google/ads/n;

    move-result-object v5

    .line 34
    iget-object v0, v5, Lcom/google/ads/n;->d:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/m;

    iget-object v0, v0, Lcom/google/ads/m;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/m$a;

    .line 37
    const-string v1, "as_domains"

    iget-object v2, v0, Lcom/google/ads/m$a;->a:Lcom/google/ads/util/i$c;

    invoke-direct {p0, p2, v1, v2}, Lcom/google/ads/x;->c(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/i$c;)V

    .line 38
    const-string v1, "bad_ad_report_path"

    iget-object v2, v0, Lcom/google/ads/m$a;->h:Lcom/google/ads/util/i$c;

    invoke-direct {p0, p2, v1, v2}, Lcom/google/ads/x;->c(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/i$c;)V

    .line 39
    const-string v1, "min_hwa_banner"

    iget-object v2, v0, Lcom/google/ads/m$a;->b:Lcom/google/ads/util/i$c;

    invoke-direct {p0, p2, v1, v2}, Lcom/google/ads/x;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/i$c;)V

    .line 40
    const-string v1, "min_hwa_activation_overlay"

    iget-object v2, v0, Lcom/google/ads/m$a;->c:Lcom/google/ads/util/i$c;

    invoke-direct {p0, p2, v1, v2}, Lcom/google/ads/x;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/i$c;)V

    .line 42
    const-string v1, "min_hwa_overlay"

    iget-object v2, v0, Lcom/google/ads/m$a;->d:Lcom/google/ads/util/i$c;

    invoke-direct {p0, p2, v1, v2}, Lcom/google/ads/x;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/i$c;)V

    .line 43
    const-string v1, "mraid_banner_path"

    iget-object v2, v0, Lcom/google/ads/m$a;->e:Lcom/google/ads/util/i$c;

    invoke-direct {p0, p2, v1, v2}, Lcom/google/ads/x;->c(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/i$c;)V

    .line 44
    const-string v1, "mraid_expanded_banner_path"

    iget-object v2, v0, Lcom/google/ads/m$a;->f:Lcom/google/ads/util/i$c;

    invoke-direct {p0, p2, v1, v2}, Lcom/google/ads/x;->c(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/i$c;)V

    .line 45
    const-string v1, "mraid_interstitial_path"

    iget-object v2, v0, Lcom/google/ads/m$a;->g:Lcom/google/ads/util/i$c;

    invoke-direct {p0, p2, v1, v2}, Lcom/google/ads/x;->c(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/i$c;)V

    .line 46
    const-string v1, "ac_max_size"

    iget-object v2, v0, Lcom/google/ads/m$a;->i:Lcom/google/ads/util/i$c;

    invoke-direct {p0, p2, v1, v2}, Lcom/google/ads/x;->b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/i$c;)V

    .line 47
    const-string v1, "ac_padding"

    iget-object v2, v0, Lcom/google/ads/m$a;->j:Lcom/google/ads/util/i$c;

    invoke-direct {p0, p2, v1, v2}, Lcom/google/ads/x;->b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/i$c;)V

    .line 48
    const-string v1, "ac_total_quota"

    iget-object v2, v0, Lcom/google/ads/m$a;->k:Lcom/google/ads/util/i$c;

    invoke-direct {p0, p2, v1, v2}, Lcom/google/ads/x;->b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/i$c;)V

    .line 49
    const-string v1, "db_total_quota"

    iget-object v2, v0, Lcom/google/ads/m$a;->l:Lcom/google/ads/util/i$c;

    invoke-direct {p0, p2, v1, v2}, Lcom/google/ads/x;->b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/i$c;)V

    .line 50
    const-string v1, "db_quota_per_origin"

    iget-object v2, v0, Lcom/google/ads/m$a;->m:Lcom/google/ads/util/i$c;

    invoke-direct {p0, p2, v1, v2}, Lcom/google/ads/x;->b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/i$c;)V

    .line 51
    const-string v1, "db_quota_step_size"

    iget-object v2, v0, Lcom/google/ads/m$a;->n:Lcom/google/ads/util/i$c;

    invoke-direct {p0, p2, v1, v2}, Lcom/google/ads/x;->b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/i$c;)V

    .line 57
    invoke-virtual {p1}, Lcom/google/ads/internal/d;->l()Lcom/google/ads/internal/AdWebView;

    move-result-object v2

    .line 59
    sget v1, Lcom/google/ads/util/AdUtil;->a:I

    const/16 v6, 0xb

    if-lt v1, v6, :cond_90

    .line 60
    invoke-virtual {v2}, Lcom/google/ads/internal/AdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/google/ads/util/g;->a(Landroid/webkit/WebSettings;Lcom/google/ads/n;)V

    .line 61
    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/google/ads/util/g;->a(Landroid/webkit/WebSettings;Lcom/google/ads/n;)V

    .line 64
    :cond_90
    iget-object v1, v5, Lcom/google/ads/n;->g:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/internal/h;

    invoke-virtual {v1}, Lcom/google/ads/internal/h;->a()Z

    move-result v1

    if-nez v1, :cond_bf

    .line 65
    invoke-virtual {v2}, Lcom/google/ads/internal/AdWebView;->k()Z

    move-result v6

    .line 66
    sget v7, Lcom/google/ads/util/AdUtil;->a:I

    iget-object v1, v0, Lcom/google/ads/m$a;->b:Lcom/google/ads/util/i$c;

    invoke-virtual {v1}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v7, v1, :cond_11b

    move v1, v3

    .line 68
    :goto_b3
    if-nez v1, :cond_11d

    if-eqz v6, :cond_11d

    .line 69
    const-string v1, "Re-enabling hardware acceleration for a banner after reading constants."

    invoke-static {v1}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v2}, Lcom/google/ads/internal/AdWebView;->h()V

    .line 78
    :cond_bf
    :goto_bf
    iget-object v1, v5, Lcom/google/ads/n;->e:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/internal/ActivationOverlay;

    .line 79
    iget-object v2, v5, Lcom/google/ads/n;->g:Lcom/google/ads/util/i$b;

    invoke-virtual {v2}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/internal/h;

    invoke-virtual {v2}, Lcom/google/ads/internal/h;->b()Z

    move-result v2

    if-nez v2, :cond_f8

    if-eqz v1, :cond_f8

    .line 80
    invoke-virtual {v1}, Lcom/google/ads/internal/ActivationOverlay;->k()Z

    move-result v6

    .line 81
    sget v7, Lcom/google/ads/util/AdUtil;->a:I

    iget-object v2, v0, Lcom/google/ads/m$a;->c:Lcom/google/ads/util/i$c;

    invoke-virtual {v2}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v7, v2, :cond_12a

    move v2, v3

    .line 83
    :goto_ec
    if-nez v2, :cond_12c

    if-eqz v6, :cond_12c

    .line 84
    const-string v2, "Re-enabling hardware acceleration for an activation overlay after reading constants."

    invoke-static {v2}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1}, Lcom/google/ads/internal/ActivationOverlay;->h()V

    .line 95
    :cond_f8
    :goto_f8
    iget-object v1, v0, Lcom/google/ads/m$a;->a:Lcom/google/ads/util/i$c;

    invoke-virtual {v1}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 96
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_111

    .line 97
    iget-object v2, v5, Lcom/google/ads/n;->m:Lcom/google/ads/util/i$b;

    invoke-virtual {v2}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/al;

    invoke-virtual {v2, v1}, Lcom/google/ads/al;->a(Ljava/lang/String;)V

    .line 101
    :cond_111
    iget-object v0, v0, Lcom/google/ads/m$a;->o:Lcom/google/ads/util/i$c;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/util/i$c;->a(Ljava/lang/Object;)V

    .line 102
    return-void

    :cond_11b
    move v1, v4

    .line 66
    goto :goto_b3

    .line 71
    :cond_11d
    if-eqz v1, :cond_bf

    if-nez v6, :cond_bf

    .line 72
    const-string v1, "Disabling hardware acceleration for a banner after reading constants."

    invoke-static {v1}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v2}, Lcom/google/ads/internal/AdWebView;->g()V

    goto :goto_bf

    :cond_12a
    move v2, v4

    .line 81
    goto :goto_ec

    .line 87
    :cond_12c
    if-eqz v2, :cond_f8

    if-nez v6, :cond_f8

    .line 88
    const-string v2, "Disabling hardware acceleration for an activation overlay after reading constants."

    invoke-static {v2}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1}, Lcom/google/ads/internal/ActivationOverlay;->g()V

    goto :goto_f8
.end method
