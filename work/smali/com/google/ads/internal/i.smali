.class public Lcom/google/ads/internal/i;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# static fields
.field private static final c:Lcom/google/ads/internal/a;


# instance fields
.field protected a:Lcom/google/ads/internal/d;

.field protected b:Z

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/o;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/ads/internal/a;->a:Lcom/google/ads/util/f;

    invoke-interface {v0}, Lcom/google/ads/util/f;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/a;

    sput-object v0, Lcom/google/ads/internal/i;->c:Lcom/google/ads/internal/a;

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/internal/d;Ljava/util/Map;ZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/internal/d;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/o;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/google/ads/internal/i;->a:Lcom/google/ads/internal/d;

    .line 86
    iput-object p2, p0, Lcom/google/ads/internal/i;->d:Ljava/util/Map;

    .line 87
    iput-boolean p3, p0, Lcom/google/ads/internal/i;->e:Z

    .line 88
    iput-boolean p4, p0, Lcom/google/ads/internal/i;->g:Z

    .line 89
    iput-boolean v0, p0, Lcom/google/ads/internal/i;->b:Z

    .line 90
    iput-boolean v0, p0, Lcom/google/ads/internal/i;->h:Z

    .line 91
    iput-boolean v0, p0, Lcom/google/ads/internal/i;->i:Z

    .line 92
    return-void
.end method

.method public static a(Lcom/google/ads/internal/d;Ljava/util/Map;ZZ)Lcom/google/ads/internal/i;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/internal/d;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/o;",
            ">;ZZ)",
            "Lcom/google/ads/internal/i;"
        }
    .end annotation

    .prologue
    .line 100
    sget v0, Lcom/google/ads/util/AdUtil;->a:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_c

    .line 101
    new-instance v0, Lcom/google/ads/util/g$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/ads/util/g$b;-><init>(Lcom/google/ads/internal/d;Ljava/util/Map;ZZ)V

    .line 104
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lcom/google/ads/internal/i;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/ads/internal/i;-><init>(Lcom/google/ads/internal/d;Ljava/util/Map;ZZ)V

    goto :goto_b
.end method


# virtual methods
.method public a(Z)V
    .registers 2

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/google/ads/internal/i;->b:Z

    .line 222
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/google/ads/internal/i;->f:Z

    return v0
.end method

.method public b(Z)V
    .registers 2

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/google/ads/internal/i;->g:Z

    .line 230
    return-void
.end method

.method public c(Z)V
    .registers 2

    .prologue
    .line 240
    iput-boolean p1, p0, Lcom/google/ads/internal/i;->h:Z

    .line 241
    return-void
.end method

.method public d(Z)V
    .registers 2

    .prologue
    .line 249
    iput-boolean p1, p0, Lcom/google/ads/internal/i;->i:Z

    .line 250
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 183
    iput-boolean v1, p0, Lcom/google/ads/internal/i;->f:Z

    .line 184
    iget-boolean v0, p0, Lcom/google/ads/internal/i;->h:Z

    if-eqz v0, :cond_14

    .line 188
    iget-object v0, p0, Lcom/google/ads/internal/i;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->k()Lcom/google/ads/internal/c;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_20

    .line 190
    invoke-virtual {v0}, Lcom/google/ads/internal/c;->c()V

    .line 194
    :goto_12
    iput-boolean v1, p0, Lcom/google/ads/internal/i;->h:Z

    .line 197
    :cond_14
    iget-boolean v0, p0, Lcom/google/ads/internal/i;->i:Z

    if-eqz v0, :cond_1f

    .line 198
    sget-object v0, Lcom/google/ads/internal/i;->c:Lcom/google/ads/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/ads/internal/a;->a(Landroid/webkit/WebView;)V

    .line 199
    iput-boolean v1, p0, Lcom/google/ads/internal/i;->i:Z

    .line 201
    :cond_1f
    return-void

    .line 192
    :cond_20
    const-string v0, "adLoader was null while trying to setFinishedLoadingHtml()."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    goto :goto_12
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    .prologue
    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/i;->f:Z

    .line 174
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/internal/i;->f:Z

    .line 211
    iget-object v0, p0, Lcom/google/ads/internal/i;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->k()Lcom/google/ads/internal/c;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_10

    .line 213
    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;)V

    .line 215
    :cond_10
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v2, 0x1

    .line 117
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldOverrideUrlLoading(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 120
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 123
    sget-object v0, Lcom/google/ads/internal/i;->c:Lcom/google/ads/internal/a;

    invoke-virtual {v0, v3}, Lcom/google/ads/internal/a;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 124
    sget-object v0, Lcom/google/ads/internal/i;->c:Lcom/google/ads/internal/a;

    iget-object v1, p0, Lcom/google/ads/internal/i;->a:Lcom/google/ads/internal/d;

    iget-object v4, p0, Lcom/google/ads/internal/i;->d:Ljava/util/Map;

    invoke-virtual {v0, v1, v4, v3, p1}, Lcom/google/ads/internal/a;->a(Lcom/google/ads/internal/d;Ljava/util/Map;Landroid/net/Uri;Landroid/webkit/WebView;)V

    move v0, v2

    .line 163
    :goto_33
    return v0

    .line 126
    :cond_34
    iget-boolean v0, p0, Lcom/google/ads/internal/i;->g:Z

    if-eqz v0, :cond_5b

    .line 128
    invoke-static {v3}, Lcom/google/ads/util/AdUtil;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 131
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_33

    .line 134
    :cond_43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 135
    const-string v1, "u"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v1, p0, Lcom/google/ads/internal/i;->a:Lcom/google/ads/internal/d;

    new-instance v3, Lcom/google/ads/internal/e;

    const-string v4, "intent"

    invoke-direct {v3, v4, v0}, Lcom/google/ads/internal/e;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {v1, v3}, Lcom/google/ads/AdActivity;->launchAdActivity(Lcom/google/ads/internal/d;Lcom/google/ads/internal/e;)V

    move v0, v2

    .line 139
    goto :goto_33

    .line 141
    :cond_5b
    iget-boolean v0, p0, Lcom/google/ads/internal/i;->e:Z

    if-eqz v0, :cond_9b

    .line 143
    iget-object v0, p0, Lcom/google/ads/internal/i;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->i()Lcom/google/ads/n;

    move-result-object v1

    .line 144
    iget-object v0, v1, Lcom/google/ads/n;->f:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 145
    iget-object v1, v1, Lcom/google/ads/n;->m:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/al;

    .line 146
    invoke-virtual {v1, v3}, Lcom/google/ads/al;->a(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_ba

    .line 147
    invoke-virtual {v1, v3, v0}, Lcom/google/ads/al;->a(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 151
    :goto_7f
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 152
    const-string v3, "u"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/google/ads/internal/i;->a:Lcom/google/ads/internal/d;

    new-instance v3, Lcom/google/ads/internal/e;

    const-string v4, "intent"

    invoke-direct {v3, v4, v1}, Lcom/google/ads/internal/e;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {v0, v3}, Lcom/google/ads/AdActivity;->launchAdActivity(Lcom/google/ads/internal/d;Lcom/google/ads/internal/e;)V

    move v0, v2

    .line 155
    goto :goto_33

    .line 157
    :cond_9b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URL is not a GMSG and can\'t handle URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V
    :try_end_b1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_b1} :catch_b3

    :goto_b1
    move v0, v2

    .line 163
    goto :goto_33

    .line 159
    :catch_b3
    move-exception v0

    .line 160
    const-string v1, "An unknown error occurred in shouldOverrideUrlLoading."

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b1

    :cond_ba
    move-object v0, v3

    goto :goto_7f
.end method
