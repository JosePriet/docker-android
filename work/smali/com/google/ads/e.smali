.class public Lcom/google/ads/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/ads/internal/d;

.field private b:Lcom/google/ads/h;

.field private final c:Ljava/lang/Object;

.field private d:Ljava/lang/Thread;

.field private final e:Ljava/lang/Object;

.field private f:Z

.field private final g:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v1, p0, Lcom/google/ads/e;->b:Lcom/google/ads/h;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/e;->c:Ljava/lang/Object;

    .line 65
    iput-object v1, p0, Lcom/google/ads/e;->d:Ljava/lang/Thread;

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/e;->e:Ljava/lang/Object;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/e;->f:Z

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/e;->g:Ljava/lang/Object;

    .line 323
    iput-object v1, p0, Lcom/google/ads/e;->a:Lcom/google/ads/internal/d;

    .line 324
    return-void
.end method

.method public constructor <init>(Lcom/google/ads/internal/d;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v1, p0, Lcom/google/ads/e;->b:Lcom/google/ads/h;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/e;->c:Ljava/lang/Object;

    .line 65
    iput-object v1, p0, Lcom/google/ads/e;->d:Ljava/lang/Thread;

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/e;->e:Ljava/lang/Object;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/e;->f:Z

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/e;->g:Ljava/lang/Object;

    .line 102
    invoke-static {p1}, Lcom/google/ads/util/a;->b(Ljava/lang/Object;)V

    .line 103
    iput-object p1, p0, Lcom/google/ads/e;->a:Lcom/google/ads/internal/d;

    .line 104
    return-void
.end method

.method static synthetic a(Lcom/google/ads/e;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/ads/e;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/google/ads/e;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/ads/e;->d:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic a(Lcom/google/ads/e;Lcom/google/ads/c;Lcom/google/ads/AdRequest;)V
    .registers 3

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/google/ads/e;->b(Lcom/google/ads/c;Lcom/google/ads/AdRequest;)V

    return-void
.end method

.method public static a(Lcom/google/ads/c;Lcom/google/ads/internal/d;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 172
    invoke-virtual {p0}, Lcom/google/ads/c;->j()Lcom/google/ads/internal/h;

    move-result-object v0

    if-nez v0, :cond_a

    move v0, v1

    .line 201
    :goto_9
    return v0

    .line 176
    :cond_a
    invoke-virtual {p1}, Lcom/google/ads/internal/d;->i()Lcom/google/ads/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/n;->b()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 177
    invoke-virtual {p0}, Lcom/google/ads/c;->j()Lcom/google/ads/internal/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/internal/h;->a()Z

    move-result v0

    if-nez v0, :cond_25

    .line 178
    const-string v0, "InterstitialAd received a mediation response corresponding to a non-interstitial ad. Make sure you specify \'interstitial\' as the ad-type in the mediation UI."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    move v0, v2

    .line 181
    goto :goto_9

    :cond_25
    move v0, v1

    .line 183
    goto :goto_9

    .line 185
    :cond_27
    invoke-virtual {p1}, Lcom/google/ads/internal/d;->i()Lcom/google/ads/n;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/n;->g:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/h;

    invoke-virtual {v0}, Lcom/google/ads/internal/h;->c()Lcom/google/ads/AdSize;

    move-result-object v0

    .line 186
    invoke-virtual {p0}, Lcom/google/ads/c;->j()Lcom/google/ads/internal/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ads/internal/h;->a()Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdView received a mediation response corresponding to an interstitial ad. Make sure you specify the banner ad size corresponding to the AdSize you used in your AdView  ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in the ad-type field in the mediation UI."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    move v0, v2

    .line 192
    goto :goto_9

    .line 194
    :cond_5f
    invoke-virtual {p0}, Lcom/google/ads/c;->j()Lcom/google/ads/internal/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ads/internal/h;->c()Lcom/google/ads/AdSize;

    move-result-object v3

    .line 195
    if-eq v3, v0, :cond_92

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mediation server returned ad size: \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\', while the AdView was created with ad size: \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'. Using the ad-size passed to the AdView on creation."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    move v0, v2

    .line 199
    goto/16 :goto_9

    :cond_92
    move v0, v1

    .line 201
    goto/16 :goto_9
.end method

.method static synthetic a(Lcom/google/ads/e;Lcom/google/ads/h;)Z
    .registers 3

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/ads/e;->e(Lcom/google/ads/h;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/google/ads/h;Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/google/ads/e;->e()Lcom/google/ads/h;

    move-result-object v0

    if-eq v0, p1, :cond_32

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GWController: ignoring callback to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from non showing ambassador with adapter class: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/ads/h;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    .line 217
    const/4 v0, 0x0

    .line 219
    :goto_31
    return v0

    :cond_32
    const/4 v0, 0x1

    goto :goto_31
.end method

.method private a(Ljava/lang/String;Landroid/app/Activity;Lcom/google/ads/AdRequest;Lcom/google/ads/f;Ljava/util/HashMap;J)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Lcom/google/ads/AdRequest;",
            "Lcom/google/ads/f;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)Z"
        }
    .end annotation

    .prologue
    .line 399
    new-instance v0, Lcom/google/ads/h;

    iget-object v1, p0, Lcom/google/ads/e;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v1}, Lcom/google/ads/internal/d;->i()Lcom/google/ads/n;

    move-result-object v1

    iget-object v1, v1, Lcom/google/ads/n;->g:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/internal/h;

    move-object v1, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/h;-><init>(Lcom/google/ads/e;Lcom/google/ads/internal/h;Lcom/google/ads/f;Ljava/lang/String;Lcom/google/ads/AdRequest;Ljava/util/HashMap;)V

    .line 405
    monitor-enter v0

    .line 406
    :try_start_19
    invoke-virtual {v0, p2}, Lcom/google/ads/h;->a(Landroid/app/Activity;)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_9a

    .line 410
    :goto_1c
    :try_start_1c
    invoke-virtual {v0}, Lcom/google/ads/h;->c()Z

    move-result v1

    if-nez v1, :cond_4e

    const-wide/16 v2, 0x0

    cmp-long v1, p6, v2

    if-lez v1, :cond_4e

    .line 411
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 412
    invoke-virtual {v0, p6, p7}, Ljava/lang/Object;->wait(J)V

    .line 413
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_32} :catch_37
    .catchall {:try_start_1c .. :try_end_32} :catchall_9a

    move-result-wide v4

    sub-long v2, v4, v2

    .line 414
    sub-long/2addr p6, v2

    .line 415
    goto :goto_1c

    .line 416
    :catch_37
    move-exception v1

    .line 417
    :try_start_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interrupted while waiting for ad network to load ad using adapter class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 422
    :cond_4e
    iget-object v1, p0, Lcom/google/ads/e;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v1}, Lcom/google/ads/internal/d;->n()Lcom/google/ads/internal/g;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/ads/h;->e()Lcom/google/ads/g$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/ads/internal/g;->a(Lcom/google/ads/g$a;)V

    .line 424
    invoke-virtual {v0}, Lcom/google/ads/h;->c()Z

    move-result v1

    if-eqz v1, :cond_93

    invoke-virtual {v0}, Lcom/google/ads/h;->d()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 428
    iget-object v1, p0, Lcom/google/ads/e;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v1}, Lcom/google/ads/internal/d;->i()Lcom/google/ads/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/n;->b()Z

    move-result v1

    if-eqz v1, :cond_8d

    const/4 v1, 0x0

    move-object v2, v1

    .line 434
    :goto_75
    invoke-static {}, Lcom/google/ads/m;->a()Lcom/google/ads/m;

    move-result-object v1

    iget-object v1, v1, Lcom/google/ads/m;->b:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    new-instance v3, Lcom/google/ads/e$8;

    invoke-direct {v3, p0, v0, v2, p4}, Lcom/google/ads/e$8;-><init>(Lcom/google/ads/e;Lcom/google/ads/h;Landroid/view/View;Lcom/google/ads/f;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 450
    const/4 v1, 0x1

    monitor-exit v0

    move v0, v1

    .line 455
    :goto_8c
    return v0

    .line 428
    :cond_8d
    invoke-virtual {v0}, Lcom/google/ads/h;->f()Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto :goto_75

    .line 454
    :cond_93
    invoke-virtual {v0}, Lcom/google/ads/h;->b()V

    .line 455
    const/4 v1, 0x0

    monitor-exit v0

    move v0, v1

    goto :goto_8c

    .line 456
    :catchall_9a
    move-exception v1

    monitor-exit v0
    :try_end_9c
    .catchall {:try_start_38 .. :try_end_9c} :catchall_9a

    throw v1
.end method

.method static synthetic b(Lcom/google/ads/e;)Lcom/google/ads/internal/d;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/ads/e;->a:Lcom/google/ads/internal/d;

    return-object v0
.end method

.method private b(Lcom/google/ads/c;Lcom/google/ads/AdRequest;)V
    .registers 15

    .prologue
    .line 336
    iget-object v1, p0, Lcom/google/ads/e;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 337
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ads/e;->d:Ljava/lang/Thread;

    invoke-static {v0, v2}, Lcom/google/ads/util/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 338
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_94

    .line 339
    invoke-virtual {p1}, Lcom/google/ads/c;->f()Ljava/util/List;

    move-result-object v0

    .line 340
    invoke-virtual {p1}, Lcom/google/ads/c;->a()Z

    move-result v1

    if-eqz v1, :cond_97

    invoke-virtual {p1}, Lcom/google/ads/c;->b()I

    move-result v1

    int-to-long v8, v1

    .line 343
    :goto_1c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_20
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bd

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/ads/a;

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Looking to fetch ads from network: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/ads/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v2}, Lcom/google/ads/a;->c()Ljava/util/List;

    move-result-object v11

    .line 346
    invoke-virtual {v2}, Lcom/google/ads/a;->e()Ljava/util/HashMap;

    move-result-object v7

    .line 349
    invoke-virtual {v2}, Lcom/google/ads/a;->d()Ljava/util/List;

    move-result-object v4

    .line 350
    new-instance v0, Lcom/google/ads/f;

    invoke-virtual {v2}, Lcom/google/ads/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/ads/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/ads/c;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_9a

    :goto_63
    invoke-virtual {p1}, Lcom/google/ads/c;->h()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/ads/c;->i()Ljava/util/List;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 358
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_72
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 359
    iget-object v2, p0, Lcom/google/ads/e;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v2}, Lcom/google/ads/internal/d;->i()Lcom/google/ads/n;

    move-result-object v2

    iget-object v2, v2, Lcom/google/ads/n;->c:Lcom/google/ads/util/i$d;

    invoke-virtual {v2}, Lcom/google/ads/util/i$d;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    .line 360
    if-nez v4, :cond_9f

    .line 361
    const-string v0, "Activity is null while mediating.  Terminating mediation thread."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 389
    :cond_93
    :goto_93
    return-void

    .line 338
    :catchall_94
    move-exception v0

    :try_start_95
    monitor-exit v1
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    throw v0

    .line 340
    :cond_97
    const-wide/16 v8, 0x2710

    goto :goto_1c

    .line 350
    :cond_9a
    invoke-virtual {p1}, Lcom/google/ads/c;->g()Ljava/util/List;

    move-result-object v4

    goto :goto_63

    .line 365
    :cond_9f
    iget-object v2, p0, Lcom/google/ads/e;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v2}, Lcom/google/ads/internal/d;->n()Lcom/google/ads/internal/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/internal/g;->c()V

    move-object v2, p0

    move-object v5, p2

    move-object v6, v0

    .line 366
    invoke-direct/range {v2 .. v9}, Lcom/google/ads/e;->a(Ljava/lang/String;Landroid/app/Activity;Lcom/google/ads/AdRequest;Lcom/google/ads/f;Ljava/util/HashMap;J)Z

    move-result v2

    if-nez v2, :cond_93

    .line 373
    invoke-direct {p0}, Lcom/google/ads/e;->d()Z

    move-result v2

    if-eqz v2, :cond_72

    .line 374
    const-string v0, "GWController.destroy() called. Terminating mediation thread."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    goto :goto_93

    .line 382
    :cond_bd
    invoke-static {}, Lcom/google/ads/m;->a()Lcom/google/ads/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/m;->b:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/google/ads/e$7;

    invoke-direct {v1, p0, p1}, Lcom/google/ads/e$7;-><init>(Lcom/google/ads/e;Lcom/google/ads/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_93
.end method

.method static synthetic c(Lcom/google/ads/e;)Lcom/google/ads/h;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/ads/e;->b:Lcom/google/ads/h;

    return-object v0
.end method

.method private d()Z
    .registers 3

    .prologue
    .line 327
    iget-object v1, p0, Lcom/google/ads/e;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 328
    :try_start_3
    iget-boolean v0, p0, Lcom/google/ads/e;->f:Z

    monitor-exit v1

    return v0

    .line 329
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private e()Lcom/google/ads/h;
    .registers 3

    .prologue
    .line 486
    iget-object v1, p0, Lcom/google/ads/e;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 487
    :try_start_3
    iget-object v0, p0, Lcom/google/ads/e;->b:Lcom/google/ads/h;

    monitor-exit v1

    return-object v0

    .line 488
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private e(Lcom/google/ads/h;)Z
    .registers 4

    .prologue
    .line 475
    iget-object v1, p0, Lcom/google/ads/e;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 476
    :try_start_3
    invoke-direct {p0}, Lcom/google/ads/e;->d()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 477
    invoke-virtual {p1}, Lcom/google/ads/h;->b()V

    .line 478
    const/4 v0, 0x1

    monitor-exit v1

    .line 480
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_e

    .line 482
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method


# virtual methods
.method public a(Lcom/google/ads/c;Lcom/google/ads/AdRequest;)V
    .registers 6

    .prologue
    .line 127
    iget-object v1, p0, Lcom/google/ads/e;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 128
    :try_start_3
    invoke-virtual {p0}, Lcom/google/ads/e;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 129
    const-string v0, "Mediation thread is not done executing previous mediation  request. Ignoring new mediation request"

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    .line 131
    monitor-exit v1

    .line 161
    :goto_f
    return-void

    .line 135
    :cond_10
    invoke-virtual {p1}, Lcom/google/ads/c;->d()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 136
    iget-object v0, p0, Lcom/google/ads/e;->a:Lcom/google/ads/internal/d;

    invoke-virtual {p1}, Lcom/google/ads/c;->e()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/google/ads/internal/d;->a(F)V

    .line 137
    iget-object v0, p0, Lcom/google/ads/e;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->t()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 138
    iget-object v0, p0, Lcom/google/ads/e;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->g()V

    .line 148
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/google/ads/e;->a:Lcom/google/ads/internal/d;

    invoke-static {p1, v0}, Lcom/google/ads/e;->a(Lcom/google/ads/c;Lcom/google/ads/internal/d;)Z

    .line 150
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/google/ads/e$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/ads/e$1;-><init>(Lcom/google/ads/e;Lcom/google/ads/c;Lcom/google/ads/AdRequest;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/ads/e;->d:Ljava/lang/Thread;

    .line 159
    iget-object v0, p0, Lcom/google/ads/e;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 160
    monitor-exit v1

    goto :goto_f

    :catchall_45
    move-exception v0

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw v0

    .line 142
    :cond_48
    :try_start_48
    iget-object v0, p0, Lcom/google/ads/e;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->t()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 143
    iget-object v0, p0, Lcom/google/ads/e;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->f()V
    :try_end_55
    .catchall {:try_start_48 .. :try_end_55} :catchall_45

    goto :goto_2d
.end method

.method public a(Lcom/google/ads/h;)V
    .registers 4

    .prologue
    .line 260
    const-string v0, "onPresentScreen"

    invoke-direct {p0, p1, v0}, Lcom/google/ads/e;->a(Lcom/google/ads/h;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 269
    :goto_8
    return-void

    .line 263
    :cond_9
    invoke-static {}, Lcom/google/ads/m;->a()Lcom/google/ads/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/m;->b:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/google/ads/e$4;

    invoke-direct {v1, p0}, Lcom/google/ads/e$4;-><init>(Lcom/google/ads/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8
.end method

.method public a(Lcom/google/ads/h;Landroid/view/View;)V
    .registers 6

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/google/ads/e;->e()Lcom/google/ads/h;

    move-result-object v0

    if-eq v0, p1, :cond_27

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GWController: ignoring onAdRefreshed() callback from non-showing ambassador (adapter class name is \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/ads/h;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    .line 256
    :goto_26
    return-void

    .line 247
    :cond_27
    iget-object v0, p0, Lcom/google/ads/e;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->n()Lcom/google/ads/internal/g;

    move-result-object v0

    sget-object v1, Lcom/google/ads/g$a;->a:Lcom/google/ads/g$a;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/g;->a(Lcom/google/ads/g$a;)V

    .line 249
    iget-object v0, p0, Lcom/google/ads/e;->b:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->a()Lcom/google/ads/f;

    move-result-object v1

    .line 250
    invoke-static {}, Lcom/google/ads/m;->a()Lcom/google/ads/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/m;->b:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v2, Lcom/google/ads/e$3;

    invoke-direct {v2, p0, p2, v1}, Lcom/google/ads/e$3;-><init>(Lcom/google/ads/e;Landroid/view/View;Lcom/google/ads/f;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_26
.end method

.method public a(Lcom/google/ads/h;Z)V
    .registers 6

    .prologue
    .line 225
    const-string v0, "onAdClicked()"

    invoke-direct {p0, p1, v0}, Lcom/google/ads/e;->a(Lcom/google/ads/h;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 235
    :goto_8
    return-void

    .line 228
    :cond_9
    invoke-virtual {p1}, Lcom/google/ads/h;->a()Lcom/google/ads/f;

    move-result-object v1

    .line 229
    invoke-static {}, Lcom/google/ads/m;->a()Lcom/google/ads/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/m;->b:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v2, Lcom/google/ads/e$2;

    invoke-direct {v2, p0, v1, p2}, Lcom/google/ads/e$2;-><init>(Lcom/google/ads/e;Lcom/google/ads/f;Z)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8
.end method

.method public a()Z
    .registers 3

    .prologue
    .line 107
    iget-object v1, p0, Lcom/google/ads/e;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    :try_start_3
    iget-object v0, p0, Lcom/google/ads/e;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit v1

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    .line 109
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public b()V
    .registers 4

    .prologue
    .line 113
    iget-object v1, p0, Lcom/google/ads/e;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 114
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/ads/e;->f:Z

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/e;->d(Lcom/google/ads/h;)V

    .line 117
    iget-object v2, p0, Lcom/google/ads/e;->e:Ljava/lang/Object;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_1c

    .line 118
    :try_start_d
    iget-object v0, p0, Lcom/google/ads/e;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_16

    .line 119
    iget-object v0, p0, Lcom/google/ads/e;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 121
    :cond_16
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_19

    .line 122
    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_1c

    .line 123
    return-void

    .line 121
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    :try_start_1b
    throw v0

    .line 122
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public b(Lcom/google/ads/h;)V
    .registers 4

    .prologue
    .line 273
    const-string v0, "onDismissScreen"

    invoke-direct {p0, p1, v0}, Lcom/google/ads/e;->a(Lcom/google/ads/h;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 282
    :goto_8
    return-void

    .line 276
    :cond_9
    invoke-static {}, Lcom/google/ads/m;->a()Lcom/google/ads/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/m;->b:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/google/ads/e$5;

    invoke-direct {v1, p0}, Lcom/google/ads/e$5;-><init>(Lcom/google/ads/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8
.end method

.method public c(Lcom/google/ads/h;)V
    .registers 4

    .prologue
    .line 286
    const-string v0, "onLeaveApplication"

    invoke-direct {p0, p1, v0}, Lcom/google/ads/e;->a(Lcom/google/ads/h;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 295
    :goto_8
    return-void

    .line 289
    :cond_9
    invoke-static {}, Lcom/google/ads/m;->a()Lcom/google/ads/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/m;->b:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/google/ads/e$6;

    invoke-direct {v1, p0}, Lcom/google/ads/e$6;-><init>(Lcom/google/ads/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/ads/e;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->i()Lcom/google/ads/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/n;->b()Z

    move-result v0

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Z)V

    .line 307
    invoke-direct {p0}, Lcom/google/ads/e;->e()Lcom/google/ads/h;

    move-result-object v0

    .line 308
    if-eqz v0, :cond_18

    .line 309
    invoke-virtual {v0}, Lcom/google/ads/h;->g()V

    .line 315
    const/4 v0, 0x1

    :goto_17
    return v0

    .line 311
    :cond_18
    const-string v0, "There is no ad ready to show."

    invoke-static {v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;)V

    .line 312
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public d(Lcom/google/ads/h;)V
    .registers 4

    .prologue
    .line 492
    iget-object v1, p0, Lcom/google/ads/e;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 493
    :try_start_3
    iget-object v0, p0, Lcom/google/ads/e;->b:Lcom/google/ads/h;

    if-eq v0, p1, :cond_12

    .line 494
    iget-object v0, p0, Lcom/google/ads/e;->b:Lcom/google/ads/h;

    if-eqz v0, :cond_10

    .line 496
    iget-object v0, p0, Lcom/google/ads/e;->b:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->b()V

    .line 498
    :cond_10
    iput-object p1, p0, Lcom/google/ads/e;->b:Lcom/google/ads/h;

    .line 500
    :cond_12
    monitor-exit v1

    .line 501
    return-void

    .line 500
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method
