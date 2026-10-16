.class public Lcom/google/ads/internal/AdWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/google/ads/n;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/ads/AdActivity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/google/ads/AdSize;

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/n;Lcom/google/ads/AdSize;)V
    .registers 7

    .prologue
    const/16 v3, 0xb

    const/4 v2, 0x0

    .line 69
    iget-object v0, p1, Lcom/google/ads/n;->f:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 71
    iput-object p1, p0, Lcom/google/ads/internal/AdWebView;->a:Lcom/google/ads/n;

    .line 74
    iput-object p2, p0, Lcom/google/ads/internal/AdWebView;->c:Lcom/google/ads/AdSize;

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/internal/AdWebView;->b:Ljava/lang/ref/WeakReference;

    .line 82
    iput-boolean v2, p0, Lcom/google/ads/internal/AdWebView;->d:Z

    .line 86
    iput-boolean v2, p0, Lcom/google/ads/internal/AdWebView;->e:Z

    .line 89
    iput-boolean v2, p0, Lcom/google/ads/internal/AdWebView;->f:Z

    .line 92
    invoke-virtual {p0, v2}, Lcom/google/ads/internal/AdWebView;->setBackgroundColor(I)V

    .line 95
    invoke-static {p0}, Lcom/google/ads/util/AdUtil;->a(Landroid/webkit/WebView;)V

    .line 98
    invoke-virtual {p0}, Lcom/google/ads/internal/AdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 99
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 102
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 106
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 109
    new-instance v1, Lcom/google/ads/internal/AdWebView$1;

    invoke-direct {v1, p0}, Lcom/google/ads/internal/AdWebView$1;-><init>(Lcom/google/ads/internal/AdWebView;)V

    invoke-virtual {p0, v1}, Lcom/google/ads/internal/AdWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 129
    sget v1, Lcom/google/ads/util/AdUtil;->a:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_54

    .line 130
    invoke-static {v0, p1}, Lcom/google/ads/util/h;->a(Landroid/webkit/WebSettings;Lcom/google/ads/n;)V

    .line 136
    :cond_40
    :goto_40
    const/high16 v0, 0x2000000

    invoke-virtual {p0, v0}, Lcom/google/ads/internal/AdWebView;->setScrollBarStyle(I)V

    .line 142
    sget v0, Lcom/google/ads/util/AdUtil;->a:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_5c

    .line 143
    new-instance v0, Lcom/google/ads/util/IcsUtil$a;

    invoke-direct {v0, p1}, Lcom/google/ads/util/IcsUtil$a;-><init>(Lcom/google/ads/n;)V

    invoke-virtual {p0, v0}, Lcom/google/ads/internal/AdWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 147
    :cond_53
    :goto_53
    return-void

    .line 131
    :cond_54
    sget v1, Lcom/google/ads/util/AdUtil;->a:I

    if-lt v1, v3, :cond_40

    .line 132
    invoke-static {v0, p1}, Lcom/google/ads/util/g;->a(Landroid/webkit/WebSettings;Lcom/google/ads/n;)V

    goto :goto_40

    .line 144
    :cond_5c
    sget v0, Lcom/google/ads/util/AdUtil;->a:I

    if-lt v0, v3, :cond_53

    .line 145
    new-instance v0, Lcom/google/ads/util/g$a;

    invoke-direct {v0, p1}, Lcom/google/ads/util/g$a;-><init>(Lcom/google/ads/n;)V

    invoke-virtual {p0, v0}, Lcom/google/ads/internal/AdWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto :goto_53
.end method


# virtual methods
.method public a(Z)V
    .registers 3

    .prologue
    .line 383
    if-eqz p1, :cond_b

    .line 384
    new-instance v0, Lcom/google/ads/internal/AdWebView$2;

    invoke-direct {v0, p0}, Lcom/google/ads/internal/AdWebView$2;-><init>(Lcom/google/ads/internal/AdWebView;)V

    invoke-virtual {p0, v0}, Lcom/google/ads/internal/AdWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 393
    :goto_a
    return-void

    .line 391
    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/internal/AdWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_a
.end method

.method public destroy()V
    .registers 3

    .prologue
    .line 268
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_c

    .line 276
    :goto_3
    :try_start_3
    new-instance v0, Landroid/webkit/WebViewClient;

    invoke-direct {v0}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/ads/internal/AdWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_b} :catch_13

    .line 281
    :goto_b
    return-void

    .line 269
    :catch_c
    move-exception v0

    .line 270
    const-string v1, "An error occurred while destroying an AdWebView:"

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 277
    :catch_13
    move-exception v0

    goto :goto_b
.end method

.method public f()V
    .registers 2

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/google/ads/internal/AdWebView;->i()Lcom/google/ads/AdActivity;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_9

    .line 155
    invoke-virtual {v0}, Lcom/google/ads/AdActivity;->finish()V

    .line 157
    :cond_9
    return-void
.end method

.method public g()V
    .registers 3

    .prologue
    .line 164
    sget v0, Lcom/google/ads/util/AdUtil;->a:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_9

    .line 165
    invoke-static {p0}, Lcom/google/ads/util/g;->a(Landroid/view/View;)V

    .line 168
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/AdWebView;->e:Z

    .line 169
    return-void
.end method

.method public h()V
    .registers 3

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/google/ads/internal/AdWebView;->e:Z

    if-eqz v0, :cond_d

    sget v0, Lcom/google/ads/util/AdUtil;->a:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_d

    .line 178
    invoke-static {p0}, Lcom/google/ads/util/g;->b(Landroid/view/View;)V

    .line 181
    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/internal/AdWebView;->e:Z

    .line 182
    return-void
.end method

.method public i()Lcom/google/ads/AdActivity;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/ads/internal/AdWebView;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/ads/internal/AdWebView;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdActivity;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public j()Z
    .registers 2

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/google/ads/internal/AdWebView;->f:Z

    return v0
.end method

.method public k()Z
    .registers 2

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/google/ads/internal/AdWebView;->e:Z

    return v0
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 228
    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 232
    :goto_3
    return-void

    .line 229
    :catch_4
    move-exception v0

    .line 230
    const-string v1, "An error occurred while loading data in AdWebView:"

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 241
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 245
    :goto_3
    return-void

    .line 242
    :catch_4
    move-exception v0

    .line 243
    const-string v1, "An error occurred while loading a URL in AdWebView:"

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method protected declared-synchronized onMeasure(II)V
    .registers 13

    .prologue
    const v0, 0x7fffffff

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, -0x80000000

    .line 299
    monitor-enter p0

    :try_start_8
    invoke-virtual {p0}, Lcom/google/ads/internal/AdWebView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 300
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_1f

    .line 344
    :goto_11
    monitor-exit p0

    return-void

    .line 306
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/google/ads/internal/AdWebView;->c:Lcom/google/ads/AdSize;

    if-eqz v1, :cond_1b

    iget-boolean v1, p0, Lcom/google/ads/internal/AdWebView;->d:Z

    if-eqz v1, :cond_22

    .line 307
    :cond_1b
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_1f

    goto :goto_11

    .line 299
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 312
    :cond_22
    :try_start_22
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 313
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 316
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 317
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 320
    invoke-virtual {p0}, Lcom/google/ads/internal/AdWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 322
    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 325
    iget-object v6, p0, Lcom/google/ads/internal/AdWebView;->c:Lcom/google/ads/AdSize;

    invoke-virtual {v6}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    float-to-int v6, v6

    .line 326
    iget-object v7, p0, Lcom/google/ads/internal/AdWebView;->c:Lcom/google/ads/AdSize;

    invoke-virtual {v7}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v7, v7

    .line 329
    if-eq v2, v8, :cond_56

    if-ne v2, v9, :cond_b1

    :cond_56
    move v2, v3

    .line 333
    :goto_57
    if-eq v4, v8, :cond_5b

    if-ne v4, v9, :cond_5c

    :cond_5b
    move v0, v1

    .line 336
    :cond_5c
    int-to-float v4, v6

    const/high16 v8, 0x40c00000    # 6.0f

    mul-float/2addr v5, v8

    sub-float/2addr v4, v5

    int-to-float v2, v2

    cmpl-float v2, v4, v2

    if-gtz v2, :cond_68

    if-le v7, v0, :cond_ac

    .line 337
    :cond_68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough space to show ad! Wants: <"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">, Has: <"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;)V

    .line 339
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/ads/internal/AdWebView;->setVisibility(I)V

    .line 340
    invoke-virtual {p0, v3, v1}, Lcom/google/ads/internal/AdWebView;->setMeasuredDimension(II)V

    goto/16 :goto_11

    .line 342
    :cond_ac
    invoke-virtual {p0, v6, v7}, Lcom/google/ads/internal/AdWebView;->setMeasuredDimension(II)V
    :try_end_af
    .catchall {:try_start_22 .. :try_end_af} :catchall_1f

    goto/16 :goto_11

    :cond_b1
    move v2, v0

    goto :goto_57
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 351
    iget-object v0, p0, Lcom/google/ads/internal/AdWebView;->a:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->l:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/ak;

    invoke-virtual {v0, p1}, Lcom/google/ads/ak;->a(Landroid/view/MotionEvent;)V

    .line 352
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setAdActivity(Lcom/google/ads/AdActivity;)V
    .registers 3

    .prologue
    .line 213
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/internal/AdWebView;->b:Ljava/lang/ref/WeakReference;

    .line 214
    return-void
.end method

.method public declared-synchronized setAdSize(Lcom/google/ads/AdSize;)V
    .registers 3

    .prologue
    .line 287
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/ads/internal/AdWebView;->c:Lcom/google/ads/AdSize;

    .line 288
    invoke-virtual {p0}, Lcom/google/ads/internal/AdWebView;->requestLayout()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 289
    monitor-exit p0

    return-void

    .line 287
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCustomClose(Z)V
    .registers 3

    .prologue
    .line 361
    iput-boolean p1, p0, Lcom/google/ads/internal/AdWebView;->f:Z

    .line 362
    iget-object v0, p0, Lcom/google/ads/internal/AdWebView;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_13

    .line 363
    iget-object v0, p0, Lcom/google/ads/internal/AdWebView;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdActivity;

    .line 364
    if-eqz v0, :cond_13

    .line 365
    invoke-virtual {v0, p1}, Lcom/google/ads/AdActivity;->setCustomClose(Z)V

    .line 368
    :cond_13
    return-void
.end method

.method public setIsExpandedMraid(Z)V
    .registers 2

    .prologue
    .line 375
    iput-boolean p1, p0, Lcom/google/ads/internal/AdWebView;->d:Z

    .line 376
    return-void
.end method

.method public stopLoading()V
    .registers 3

    .prologue
    .line 254
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 258
    :goto_3
    return-void

    .line 255
    :catch_4
    move-exception v0

    .line 256
    const-string v1, "An error occurred while stopping loading in AdWebView:"

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method
