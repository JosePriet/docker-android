.class public Lcom/google/ads/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/internal/c$3;,
        Lcom/google/ads/internal/c$d;,
        Lcom/google/ads/internal/c$e;,
        Lcom/google/ads/internal/c$c;,
        Lcom/google/ads/internal/c$a;,
        Lcom/google/ads/internal/c$b;
    }
.end annotation


# instance fields
.field a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Lcom/google/ads/internal/f;

.field private h:Lcom/google/ads/AdRequest;

.field private i:Landroid/webkit/WebView;

.field private j:Lcom/google/ads/l;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/String;

.field private o:Lcom/google/ads/AdSize;

.field private p:Z

.field private volatile q:Z

.field private r:Z

.field private s:Lcom/google/ads/AdRequest$ErrorCode;

.field private t:Z

.field private u:I

.field private v:Ljava/lang/Thread;

.field private w:Z

.field private x:Lcom/google/ads/internal/c$d;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/internal/c;->p:Z

    .line 531
    sget-object v0, Lcom/google/ads/internal/c$d;->b:Lcom/google/ads/internal/c$d;

    iput-object v0, p0, Lcom/google/ads/internal/c;->x:Lcom/google/ads/internal/c$d;

    .line 543
    return-void
.end method

.method public constructor <init>(Lcom/google/ads/l;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    iput-boolean v3, p0, Lcom/google/ads/internal/c;->p:Z

    .line 531
    sget-object v0, Lcom/google/ads/internal/c$d;->b:Lcom/google/ads/internal/c$d;

    iput-object v0, p0, Lcom/google/ads/internal/c;->x:Lcom/google/ads/internal/c$d;

    .line 553
    iput-object p1, p0, Lcom/google/ads/internal/c;->j:Lcom/google/ads/l;

    .line 557
    iput-object v2, p0, Lcom/google/ads/internal/c;->k:Ljava/lang/String;

    .line 562
    iput-object v2, p0, Lcom/google/ads/internal/c;->b:Ljava/lang/String;

    .line 563
    iput-object v2, p0, Lcom/google/ads/internal/c;->c:Ljava/lang/String;

    .line 564
    iput-object v2, p0, Lcom/google/ads/internal/c;->d:Ljava/lang/String;

    .line 571
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/internal/c;->m:Ljava/util/LinkedList;

    .line 575
    iput-object v2, p0, Lcom/google/ads/internal/c;->s:Lcom/google/ads/AdRequest$ErrorCode;

    .line 579
    iput-boolean v3, p0, Lcom/google/ads/internal/c;->t:Z

    .line 582
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/internal/c;->u:I

    .line 584
    iput-boolean v3, p0, Lcom/google/ads/internal/c;->f:Z

    .line 585
    iput-boolean v3, p0, Lcom/google/ads/internal/c;->r:Z

    .line 586
    iput-object v2, p0, Lcom/google/ads/internal/c;->n:Ljava/lang/String;

    .line 587
    iput-object v2, p0, Lcom/google/ads/internal/c;->o:Lcom/google/ads/AdSize;

    .line 590
    iget-object v0, p1, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->c:Lcom/google/ads/util/i$d;

    invoke-virtual {v0}, Lcom/google/ads/util/i$d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 591
    if-eqz v0, :cond_7c

    .line 595
    new-instance v1, Lcom/google/ads/internal/AdWebView;

    iget-object v0, p1, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    invoke-direct {v1, v0, v2}, Lcom/google/ads/internal/AdWebView;-><init>(Lcom/google/ads/n;Lcom/google/ads/AdSize;)V

    iput-object v1, p0, Lcom/google/ads/internal/c;->i:Landroid/webkit/WebView;

    .line 596
    iget-object v1, p0, Lcom/google/ads/internal/c;->i:Landroid/webkit/WebView;

    iget-object v0, p1, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->b:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/d;

    sget-object v2, Lcom/google/ads/internal/a;->b:Ljava/util/Map;

    invoke-static {v0, v2, v3, v3}, Lcom/google/ads/internal/i;->a(Lcom/google/ads/internal/d;Ljava/util/Map;ZZ)Lcom/google/ads/internal/i;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 603
    iget-object v0, p0, Lcom/google/ads/internal/c;->i:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 604
    iget-object v0, p0, Lcom/google/ads/internal/c;->i:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    .line 607
    new-instance v0, Lcom/google/ads/internal/f;

    invoke-direct {v0, p1}, Lcom/google/ads/internal/f;-><init>(Lcom/google/ads/l;)V

    iput-object v0, p0, Lcom/google/ads/internal/c;->g:Lcom/google/ads/internal/f;

    .line 615
    :goto_7b
    return-void

    .line 611
    :cond_7c
    iput-object v2, p0, Lcom/google/ads/internal/c;->i:Landroid/webkit/WebView;

    .line 612
    iput-object v2, p0, Lcom/google/ads/internal/c;->g:Lcom/google/ads/internal/f;

    .line 613
    const-string v0, "activity was null while trying to create an AdLoader."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    goto :goto_7b
.end method

.method static a(Ljava/lang/String;Lcom/google/ads/c;Lcom/google/ads/d;)V
    .registers 8

    .prologue
    .line 1014
    if-nez p0, :cond_3

    .line 1046
    :cond_2
    :goto_2
    return-void

    .line 1017
    :cond_3
    const-string v0, "no-store"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1020
    const-string v0, "no-cache"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1025
    const-string v0, "max-age\\s*=\\s*(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1027
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1029
    const/4 v1, 0x1

    :try_start_24
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1030
    invoke-virtual {p2, p1, v0}, Lcom/google/ads/d;->a(Lcom/google/ads/c;I)V

    .line 1031
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Caching gWhirl configuration for: %d seconds"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_44} :catch_45

    goto :goto_2

    .line 1034
    :catch_45
    move-exception v0

    .line 1037
    const-string v1, "Caught exception trying to parse cache control directive. Overflow?"

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1044
    :cond_4c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized cacheControlDirective: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'. Not caching configuration."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/google/ads/internal/c;)Z
    .registers 2

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/google/ads/internal/c;->p:Z

    return v0
.end method

.method static synthetic b(Lcom/google/ads/internal/c;)Lcom/google/ads/l;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/ads/internal/c;->j:Lcom/google/ads/l;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1433
    invoke-static {}, Lcom/google/ads/m;->a()Lcom/google/ads/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/m;->b:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/google/ads/internal/c$c;

    iget-object v2, p0, Lcom/google/ads/internal/c;->i:Landroid/webkit/WebView;

    invoke-direct {v1, p0, v2, p2, p1}, Lcom/google/ads/internal/c$c;-><init>(Lcom/google/ads/internal/c;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1435
    return-void
.end method

.method static synthetic c(Lcom/google/ads/internal/c;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/ads/internal/c;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/google/ads/internal/c;)Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/ads/internal/c;->i:Landroid/webkit/WebView;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/google/ads/internal/c;->h:Lcom/google/ads/AdRequest;

    instance-of v0, v0, Lcom/google/ads/searchads/SearchAdRequest;

    if-eqz v0, :cond_9

    .line 1342
    const-string v0, "AFMA_buildAdURL"

    .line 1344
    :goto_8
    return-object v0

    :cond_9
    const-string v0, "AFMA_buildAdURL"

    goto :goto_8
.end method

.method private e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/google/ads/internal/c;->h:Lcom/google/ads/AdRequest;

    instance-of v0, v0, Lcom/google/ads/searchads/SearchAdRequest;

    if-eqz v0, :cond_9

    .line 1356
    const-string v0, "AFMA_getSdkConstants();"

    .line 1358
    :goto_8
    return-object v0

    :cond_9
    const-string v0, "AFMA_getSdkConstants();"

    goto :goto_8
.end method

.method static synthetic e(Lcom/google/ads/internal/c;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/ads/internal/c;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/google/ads/internal/c;)Lcom/google/ads/AdSize;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/ads/internal/c;->o:Lcom/google/ads/AdSize;

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/google/ads/internal/c;->h:Lcom/google/ads/AdRequest;

    instance-of v0, v0, Lcom/google/ads/searchads/SearchAdRequest;

    if-eqz v0, :cond_9

    .line 1369
    const-string v0, "http://www.gstatic.com/safa/"

    .line 1371
    :goto_8
    return-object v0

    :cond_9
    const-string v0, "http://media.admob.com/"

    goto :goto_8
.end method

.method private g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/google/ads/internal/c;->h:Lcom/google/ads/AdRequest;

    instance-of v0, v0, Lcom/google/ads/searchads/SearchAdRequest;

    if-eqz v0, :cond_9

    .line 1384
    const-string v0, "<html><head><script src=\"http://www.gstatic.com/safa/sdk-core-v40.js\"></script><script>"

    .line 1386
    :goto_8
    return-object v0

    :cond_9
    const-string v0, "<html><head><script src=\"http://media.admob.com/sdk-core-v40.js\"></script><script>"

    goto :goto_8
.end method

.method private h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/google/ads/internal/c;->h:Lcom/google/ads/AdRequest;

    instance-of v0, v0, Lcom/google/ads/searchads/SearchAdRequest;

    if-eqz v0, :cond_9

    .line 1398
    const-string v0, "</script></head><body></body></html>"

    .line 1400
    :goto_8
    return-object v0

    :cond_9
    const-string v0, "</script></head><body></body></html>"

    goto :goto_8
.end method

.method private i()V
    .registers 6

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/google/ads/internal/c;->j:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->b:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->l()Lcom/google/ads/internal/AdWebView;

    move-result-object v1

    .line 1443
    iget-object v0, p0, Lcom/google/ads/internal/c;->j:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->b:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->m()Lcom/google/ads/internal/i;

    move-result-object v0

    .line 1444
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/ads/internal/i;->c(Z)V

    .line 1446
    iget-object v0, p0, Lcom/google/ads/internal/c;->j:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->b:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->n()Lcom/google/ads/internal/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/internal/g;->h()V

    .line 1447
    invoke-static {}, Lcom/google/ads/m;->a()Lcom/google/ads/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/m;->b:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v2, Lcom/google/ads/internal/c$c;

    iget-object v3, p0, Lcom/google/ads/internal/c;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/ads/internal/c;->c:Ljava/lang/String;

    invoke-direct {v2, p0, v1, v3, v4}, Lcom/google/ads/internal/c$c;-><init>(Lcom/google/ads/internal/c;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1449
    return-void
.end method

.method private j()V
    .registers 11

    .prologue
    .line 1455
    invoke-static {}, Lcom/google/ads/m;->a()Lcom/google/ads/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/m;->b:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/Handler;

    new-instance v0, Lcom/google/ads/internal/c$e;

    iget-object v1, p0, Lcom/google/ads/internal/c;->j:Lcom/google/ads/l;

    iget-object v1, v1, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->b:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/internal/d;

    iget-object v3, p0, Lcom/google/ads/internal/c;->i:Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/google/ads/internal/c;->m:Ljava/util/LinkedList;

    iget v5, p0, Lcom/google/ads/internal/c;->u:I

    iget-boolean v6, p0, Lcom/google/ads/internal/c;->r:Z

    iget-object v7, p0, Lcom/google/ads/internal/c;->n:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/ads/internal/c;->o:Lcom/google/ads/AdSize;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/ads/internal/c$e;-><init>(Lcom/google/ads/internal/c;Lcom/google/ads/internal/d;Landroid/webkit/WebView;Ljava/util/LinkedList;IZLjava/lang/String;Lcom/google/ads/AdSize;)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1463
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;Landroid/app/Activity;)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/Activity;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1061
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1064
    iget-object v0, p0, Lcom/google/ads/internal/c;->j:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->b:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->n()Lcom/google/ads/internal/g;

    move-result-object v0

    .line 1067
    invoke-virtual {v0}, Lcom/google/ads/internal/g;->m()J

    move-result-wide v6

    .line 1068
    cmp-long v1, v6, v8

    if-lez v1, :cond_2f

    .line 1069
    const-string v1, "prl"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    :cond_2f
    invoke-virtual {v0}, Lcom/google/ads/internal/g;->n()J

    move-result-wide v6

    .line 1074
    cmp-long v1, v6, v8

    if-lez v1, :cond_40

    .line 1075
    const-string v1, "prnl"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    :cond_40
    invoke-virtual {v0}, Lcom/google/ads/internal/g;->l()Ljava/lang/String;

    move-result-object v1

    .line 1081
    if-eqz v1, :cond_4b

    .line 1082
    const-string v5, "ppcl"

    invoke-interface {p1, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    :cond_4b
    invoke-virtual {v0}, Lcom/google/ads/internal/g;->k()Ljava/lang/String;

    move-result-object v1

    .line 1088
    if-eqz v1, :cond_56

    .line 1089
    const-string v5, "pcl"

    invoke-interface {p1, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    :cond_56
    invoke-virtual {v0}, Lcom/google/ads/internal/g;->j()J

    move-result-wide v6

    .line 1094
    cmp-long v1, v6, v8

    if-lez v1, :cond_67

    .line 1095
    const-string v1, "pcc"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    :cond_67
    const-string v1, "preqs"

    invoke-virtual {v0}, Lcom/google/ads/internal/g;->o()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    const-string v1, "oar"

    invoke-virtual {v0}, Lcom/google/ads/internal/g;->p()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    const-string v1, "bas_on"

    invoke-virtual {v0}, Lcom/google/ads/internal/g;->s()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    const-string v1, "bas_off"

    invoke-virtual {v0}, Lcom/google/ads/internal/g;->v()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    invoke-virtual {v0}, Lcom/google/ads/internal/g;->y()Z

    move-result v1

    .line 1115
    if-eqz v1, :cond_a8

    .line 1116
    const-string v1, "aoi_timeout"

    const-string v5, "true"

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    :cond_a8
    invoke-virtual {v0}, Lcom/google/ads/internal/g;->A()Z

    move-result v1

    .line 1121
    if-eqz v1, :cond_b5

    .line 1122
    const-string v1, "aoi_nofill"

    const-string v5, "true"

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    :cond_b5
    invoke-virtual {v0}, Lcom/google/ads/internal/g;->D()Ljava/lang/String;

    move-result-object v1

    .line 1127
    if-eqz v1, :cond_c0

    .line 1128
    const-string v5, "pit"

    invoke-interface {p1, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    :cond_c0
    invoke-static {}, Lcom/google/ads/internal/g;->E()J

    move-result-wide v6

    .line 1133
    const-string v1, "ptime"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    invoke-virtual {v0}, Lcom/google/ads/internal/g;->a()V

    .line 1137
    invoke-virtual {v0}, Lcom/google/ads/internal/g;->i()V

    .line 1140
    iget-object v0, p0, Lcom/google/ads/internal/c;->j:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    invoke-virtual {v0}, Lcom/google/ads/n;->b()Z

    move-result v0

    if-eqz v0, :cond_2dc

    .line 1141
    const-string v0, "format"

    const-string v1, "interstitial_mb"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    :goto_ea
    const-string v1, "slotname"

    iget-object v0, p0, Lcom/google/ads/internal/c;->j:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->h:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    const-string v0, "js"

    const-string v1, "afma-sdk-a-v6.3.1"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1173
    :try_start_10a
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_112
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10a .. :try_end_112} :catch_343

    move-result-object v0

    .line 1177
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 1180
    invoke-static {v4}, Lcom/google/ads/util/AdUtil;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1181
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_124

    .line 1182
    const-string v5, "mv"

    invoke-interface {p1, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    :cond_124
    const-string v1, "msid"

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    const-string v1, "app_name"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".android."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    const-string v0, "isu"

    invoke-static {v4}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    invoke-static {v4}, Lcom/google/ads/util/AdUtil;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1197
    const-string v1, "net"

    if-nez v0, :cond_160

    const-string v0, "null"

    :cond_160
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    invoke-static {v4}, Lcom/google/ads/util/AdUtil;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1203
    if-eqz v0, :cond_174

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_174

    .line 1204
    const-string v1, "cap"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    :cond_174
    const-string v0, "u_audio"

    invoke-static {v4}, Lcom/google/ads/util/AdUtil;->g(Landroid/content/Context;)Lcom/google/ads/util/AdUtil$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/util/AdUtil$a;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    invoke-static {p2}, Lcom/google/ads/util/AdUtil;->a(Landroid/app/Activity;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1214
    const-string v1, "u_sd"

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    const-string v1, "u_h"

    invoke-static {v4, v0}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;Landroid/util/DisplayMetrics;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    const-string v1, "u_w"

    invoke-static {v4, v0}, Lcom/google/ads/util/AdUtil;->b(Landroid/content/Context;Landroid/util/DisplayMetrics;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    const-string v0, "hl"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1228
    const-string v1, "ms"

    iget-object v0, p0, Lcom/google/ads/internal/c;->j:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->l:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/ak;

    invoke-virtual {v0, v4}, Lcom/google/ads/ak;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    iget-object v0, p0, Lcom/google/ads/internal/c;->j:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->j:Lcom/google/ads/util/i$b;

    if-eqz v0, :cond_28e

    iget-object v0, p0, Lcom/google/ads/internal/c;->j:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->j:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_28e

    .line 1233
    iget-object v0, p0, Lcom/google/ads/internal/c;->j:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->j:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdView;

    .line 1235
    invoke-virtual {v0}, Lcom/google/ads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_28e

    .line 1237
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1238
    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->getLocationOnScreen([I)V

    .line 1239
    aget v5, v1, v3

    .line 1240
    aget v6, v1, v2

    .line 1243
    iget-object v1, p0, Lcom/google/ads/internal/c;->j:Lcom/google/ads/l;

    iget-object v1, v1, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->f:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1245
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1246
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1250
    invoke-virtual {v0}, Lcom/google/ads/AdView;->isShown()Z

    move-result v8

    if-eqz v8, :cond_486

    invoke-virtual {v0}, Lcom/google/ads/AdView;->getWidth()I

    move-result v8

    add-int/2addr v8, v5

    if-lez v8, :cond_486

    invoke-virtual {v0}, Lcom/google/ads/AdView;->getHeight()I

    move-result v8

    add-int/2addr v8, v6

    if-lez v8, :cond_486

    if-gt v5, v7, :cond_486

    if-gt v6, v1, :cond_486

    move v1, v2

    .line 1255
    :goto_24f
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1256
    const-string v8, "x"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    const-string v5, "y"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    const-string v5, "width"

    invoke-virtual {v0}, Lcom/google/ads/AdView;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    const-string v5, "height"

    invoke-virtual {v0}, Lcom/google/ads/AdView;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    const-string v0, "visible"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    const-string v0, "ad_pos"

    invoke-interface {p1, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    :cond_28e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1267
    iget-object v0, p0, Lcom/google/ads/internal/c;->j:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->p:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/AdSize;

    .line 1268
    if-eqz v0, :cond_355

    .line 1269
    array-length v5, v0

    :goto_2a8
    if-ge v3, v5, :cond_34c

    aget-object v6, v0, v3

    .line 1270
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_2b7

    .line 1271
    const-string v7, "|"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1273
    :cond_2b7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a8

    .line 1143
    :cond_2dc
    iget-object v0, p0, Lcom/google/ads/internal/c;->j:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->g:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/h;

    invoke-virtual {v0}, Lcom/google/ads/internal/h;->c()Lcom/google/ads/AdSize;

    move-result-object v0

    .line 1144
    invoke-virtual {v0}, Lcom/google/ads/AdSize;->isFullWidth()Z

    move-result v1

    if-eqz v1, :cond_2ff

    .line 1145
    const-string v1, "smart_w"

    const-string v5, "full"

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    :cond_2ff
    invoke-virtual {v0}, Lcom/google/ads/AdSize;->isAutoHeight()Z

    move-result v1

    if-eqz v1, :cond_30c

    .line 1148
    const-string v1, "smart_h"

    const-string v5, "auto"

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    :cond_30c
    invoke-virtual {v0}, Lcom/google/ads/AdSize;->isCustomAdSize()Z

    move-result v1

    if-nez v1, :cond_31d

    .line 1151
    const-string v1, "format"

    invoke-virtual {v0}, Lcom/google/ads/AdSize;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_ea

    .line 1153
    :cond_31d
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1154
    const-string v5, "w"

    invoke-virtual {v0}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    const-string v5, "h"

    invoke-virtual {v0}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    const-string v0, "ad_frame"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_ea

    .line 1174
    :catch_343
    move-exception v0

    .line 1175
    new-instance v0, Lcom/google/ads/internal/c$b;

    const-string v1, "NameNotFoundException"

    invoke-direct {v0, p0, v1}, Lcom/google/ads/internal/c$b;-><init>(Lcom/google/ads/internal/c;Ljava/lang/String;)V

    throw v0

    .line 1275
    :cond_34c
    const-string v0, "sz"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    :cond_355
    const-string v0, "phone"

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1281
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 1282
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_36c

    .line 1283
    const-string v3, "carrier"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    :cond_36c
    const-string v1, "pt"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 1291
    const-string v1, "gnt"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1294
    invoke-static {}, Lcom/google/ads/util/AdUtil;->c()Z

    move-result v0

    if-eqz v0, :cond_395

    .line 1295
    const-string v0, "simulator"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    :cond_395
    const-string v0, "session_id"

    invoke-static {}, Lcom/google/ads/b;->a()Lcom/google/ads/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/b;->b()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1308
    const-string v0, "seq_num"

    invoke-static {}, Lcom/google/ads/b;->a()Lcom/google/ads/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/b;->c()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1311
    iget-object v0, p0, Lcom/google/ads/internal/c;->j:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->g:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/h;

    invoke-virtual {v0}, Lcom/google/ads/internal/h;->b()Z

    move-result v0

    if-eqz v0, :cond_3d8

    .line 1312
    const-string v0, "swipeable"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    :cond_3d8
    invoke-static {p1}, Lcom/google/ads/util/AdUtil;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 1319
    iget-object v0, p0, Lcom/google/ads/internal/c;->j:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->d:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/m;

    iget-object v0, v0, Lcom/google/ads/m;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/m$a;

    .line 1323
    iget-object v0, v0, Lcom/google/ads/m$a;->o:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_44c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/google/ads/internal/c;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/ads/internal/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/ads/internal/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1329
    :goto_435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adRequestUrlHtml: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    .line 1331
    return-object v0

    .line 1323
    :cond_44c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/google/ads/internal/c;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/ads/internal/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/ads/internal/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/ads/internal/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_435

    :cond_486
    move v1, v3

    goto/16 :goto_24f
.end method

.method protected a()V
    .registers 2

    .prologue
    .line 628
    const-string v0, "AdLoader cancelled."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 631
    iget-object v0, p0, Lcom/google/ads/internal/c;->i:Landroid/webkit/WebView;

    if-eqz v0, :cond_13

    .line 632
    iget-object v0, p0, Lcom/google/ads/internal/c;->i:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 633
    iget-object v0, p0, Lcom/google/ads/internal/c;->i:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 637
    :cond_13
    iget-object v0, p0, Lcom/google/ads/internal/c;->v:Ljava/lang/Thread;

    if-eqz v0, :cond_1f

    .line 638
    iget-object v0, p0, Lcom/google/ads/internal/c;->v:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 639
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/internal/c;->v:Ljava/lang/Thread;

    .line 643
    :cond_1f
    iget-object v0, p0, Lcom/google/ads/internal/c;->g:Lcom/google/ads/internal/f;

    if-eqz v0, :cond_28

    .line 644
    iget-object v0, p0, Lcom/google/ads/internal/c;->g:Lcom/google/ads/internal/f;

    invoke-virtual {v0}, Lcom/google/ads/internal/f;->a()V

    .line 647
    :cond_28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/c;->q:Z

    .line 648
    return-void
.end method

.method public declared-synchronized a(I)V
    .registers 3

    .prologue
    .line 1571
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/google/ads/internal/c;->u:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1572
    monitor-exit p0

    return-void

    .line 1571
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/ads/AdRequest$ErrorCode;)V
    .registers 3

    .prologue
    .line 1542
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/ads/internal/c;->s:Lcom/google/ads/AdRequest$ErrorCode;

    .line 1543
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1544
    monitor-exit p0

    return-void

    .line 1542
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    .registers 10

    .prologue
    .line 1416
    invoke-static {}, Lcom/google/ads/m;->a()Lcom/google/ads/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/m;->b:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/Handler;

    new-instance v0, Lcom/google/ads/internal/c$a;

    iget-object v1, p0, Lcom/google/ads/internal/c;->j:Lcom/google/ads/l;

    iget-object v1, v1, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->b:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/internal/d;

    iget-object v2, p0, Lcom/google/ads/internal/c;->i:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/google/ads/internal/c;->g:Lcom/google/ads/internal/f;

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/internal/c$a;-><init>(Lcom/google/ads/internal/d;Landroid/webkit/WebView;Lcom/google/ads/internal/f;Lcom/google/ads/AdRequest$ErrorCode;Z)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1422
    return-void
.end method

.method protected a(Lcom/google/ads/AdRequest;)V
    .registers 3

    .prologue
    .line 656
    iput-object p1, p0, Lcom/google/ads/internal/c;->h:Lcom/google/ads/AdRequest;

    .line 657
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/internal/c;->q:Z

    .line 658
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/ads/internal/c;->v:Ljava/lang/Thread;

    .line 659
    iget-object v0, p0, Lcom/google/ads/internal/c;->v:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 660
    return-void
.end method

.method public declared-synchronized a(Lcom/google/ads/AdSize;)V
    .registers 3

    .prologue
    .line 1531
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/ads/internal/c;->o:Lcom/google/ads/AdSize;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1532
    monitor-exit p0

    return-void

    .line 1531
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/ads/internal/c$d;)V
    .registers 3

    .prologue
    .line 1592
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/ads/internal/c;->x:Lcom/google/ads/internal/c$d;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1593
    monitor-exit p0

    return-void

    .line 1592
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 621
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/internal/c;->m:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 622
    monitor-exit p0

    return-void

    .line 621
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1484
    monitor-enter p0

    :try_start_1
    iput-object p2, p0, Lcom/google/ads/internal/c;->b:Ljava/lang/String;

    .line 1485
    iput-object p1, p0, Lcom/google/ads/internal/c;->c:Ljava/lang/String;

    .line 1486
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 1487
    monitor-exit p0

    return-void

    .line 1484
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Z)V
    .registers 3

    .prologue
    .line 503
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/ads/internal/c;->p:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 504
    monitor-exit p0

    return-void

    .line 503
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected b()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 967
    :try_start_1
    iget-object v0, p0, Lcom/google/ads/internal/c;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 968
    const-string v0, "Got a mediation response with no content type. Aborting mediation."

    invoke-static {v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;)V

    .line 969
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V

    .line 1003
    :goto_14
    return-void

    .line 972
    :cond_15
    iget-object v0, p0, Lcom/google/ads/internal/c;->e:Ljava/lang/String;

    const-string v1, "application/json"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got a mediation response with a content type: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/internal/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'. Expected something starting with \'application/json\'. Aborting mediation."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;)V

    .line 975
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    :try_end_43
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_43} :catch_44

    goto :goto_14

    .line 999
    :catch_44
    move-exception v0

    .line 1000
    const-string v1, "AdLoader can\'t parse gWhirl server configuration."

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1001
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {p0, v0, v3}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V

    goto :goto_14

    .line 978
    :cond_50
    :try_start_50
    iget-object v0, p0, Lcom/google/ads/internal/c;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/ads/c;->a(Ljava/lang/String;)Lcom/google/ads/c;

    move-result-object v1

    .line 979
    iget-object v2, p0, Lcom/google/ads/internal/c;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/ads/internal/c;->j:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->b:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->j()Lcom/google/ads/d;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/google/ads/internal/c;->a(Ljava/lang/String;Lcom/google/ads/c;Lcom/google/ads/d;)V

    .line 984
    invoke-static {}, Lcom/google/ads/m;->a()Lcom/google/ads/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/m;->b:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v2, Lcom/google/ads/internal/c$2;

    invoke-direct {v2, p0, v1}, Lcom/google/ads/internal/c$2;-><init>(Lcom/google/ads/internal/c;Lcom/google/ads/c;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_85
    .catch Lorg/json/JSONException; {:try_start_50 .. :try_end_85} :catch_44

    goto :goto_14
.end method

.method protected declared-synchronized b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1470
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/ads/internal/c;->e:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1471
    monitor-exit p0

    return-void

    .line 1470
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized b(Z)V
    .registers 3

    .prologue
    .line 1466
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/ads/internal/c;->f:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1467
    monitor-exit p0

    return-void

    .line 1466
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized c()V
    .registers 2

    .prologue
    .line 1553
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/ads/internal/c;->t:Z

    .line 1554
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 1555
    monitor-exit p0

    return-void

    .line 1553
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized c(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1495
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/ads/internal/c;->d:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1496
    monitor-exit p0

    return-void

    .line 1495
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Z)V
    .registers 3

    .prologue
    .line 1561
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/ads/internal/c;->r:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1562
    monitor-exit p0

    return-void

    .line 1561
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1507
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/ads/internal/c;->k:Ljava/lang/String;

    .line 1508
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1509
    monitor-exit p0

    return-void

    .line 1507
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(Z)V
    .registers 3

    .prologue
    .line 1581
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/ads/internal/c;->w:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1582
    monitor-exit p0

    return-void

    .line 1581
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1517
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/ads/internal/c;->l:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1518
    monitor-exit p0

    return-void

    .line 1517
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e(Z)V
    .registers 3

    .prologue
    .line 1602
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/ads/internal/c;->a:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1603
    monitor-exit p0

    return-void

    .line 1602
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1524
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/ads/internal/c;->n:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1525
    monitor-exit p0

    return-void

    .line 1524
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 13

    .prologue
    const/4 v3, 0x0

    const-wide/16 v10, 0x0

    .line 668
    monitor-enter p0

    .line 672
    :try_start_4
    iget-object v0, p0, Lcom/google/ads/internal/c;->i:Landroid/webkit/WebView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/ads/internal/c;->g:Lcom/google/ads/internal/f;

    if-nez v0, :cond_19

    .line 673
    :cond_c
    const-string v0, "adRequestWebView was null while trying to load an ad."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    .line 674
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_17} :catch_115
    .catchall {:try_start_4 .. :try_end_17} :catchall_3a

    .line 675
    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_3a

    .line 962
    :goto_18
    return-void

    .line 679
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/google/ads/internal/c;->j:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->c:Lcom/google/ads/util/i$d;

    invoke-virtual {v0}, Lcom/google/ads/util/i$d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 680
    if-nez v0, :cond_3d

    .line 681
    const-string v0, "activity was null while forming an ad request."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    .line 682
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_38} :catch_115
    .catchall {:try_start_19 .. :try_end_38} :catchall_3a

    .line 683
    :try_start_38
    monitor-exit p0

    goto :goto_18

    .line 961
    :catchall_3a
    move-exception v0

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3a

    throw v0

    .line 687
    :cond_3d
    :try_start_3d
    iget-object v1, p0, Lcom/google/ads/internal/c;->j:Lcom/google/ads/l;

    iget-object v1, v1, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->b:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/internal/d;

    invoke-virtual {v1}, Lcom/google/ads/internal/d;->p()J

    move-result-wide v4

    .line 688
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 692
    iget-object v2, p0, Lcom/google/ads/internal/c;->h:Lcom/google/ads/AdRequest;

    iget-object v1, p0, Lcom/google/ads/internal/c;->j:Lcom/google/ads/l;

    iget-object v1, v1, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->f:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v2, v1}, Lcom/google/ads/AdRequest;->getRequestMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v8

    .line 695
    const-string v1, "extras"

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 697
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_e1

    .line 698
    check-cast v1, Ljava/util/Map;

    .line 701
    const-string v2, "_adUrl"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 702
    instance-of v9, v2, Ljava/lang/String;

    if-eqz v9, :cond_89

    .line 703
    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/google/ads/internal/c;->b:Ljava/lang/String;

    .line 707
    :cond_89
    const-string v2, "_requestUrl"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 708
    instance-of v9, v2, Ljava/lang/String;

    if-eqz v9, :cond_97

    .line 709
    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/google/ads/internal/c;->k:Ljava/lang/String;

    .line 713
    :cond_97
    const-string v2, "_activationOverlayUrl"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 714
    instance-of v9, v2, Ljava/lang/String;

    if-eqz v9, :cond_a5

    .line 715
    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/google/ads/internal/c;->l:Ljava/lang/String;

    .line 719
    :cond_a5
    const-string v2, "_orientation"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 720
    instance-of v9, v2, Ljava/lang/String;

    if-eqz v9, :cond_ba

    .line 721
    const-string v9, "p"

    invoke-virtual {v2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_109

    .line 722
    const/4 v2, 0x1

    iput v2, p0, Lcom/google/ads/internal/c;->u:I

    .line 729
    :cond_ba
    :goto_ba
    const-string v2, "_norefresh"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 730
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_e1

    .line 731
    const-string v2, "t"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    .line 732
    iget-object v1, p0, Lcom/google/ads/internal/c;->j:Lcom/google/ads/l;

    iget-object v1, v1, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->b:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/internal/d;

    invoke-virtual {v1}, Lcom/google/ads/internal/d;->e()V

    .line 740
    :cond_e1
    iget-object v1, p0, Lcom/google/ads/internal/c;->b:Ljava/lang/String;

    if-nez v1, :cond_30e

    .line 743
    iget-object v1, p0, Lcom/google/ads/internal/c;->k:Ljava/lang/String;
    :try_end_e7
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_e7} :catch_115
    .catchall {:try_start_3d .. :try_end_e7} :catchall_3a

    if-nez v1, :cond_1c2

    .line 746
    :try_start_e9
    invoke-virtual {p0, v8, v0}, Lcom/google/ads/internal/c;->a(Ljava/util/Map;Landroid/app/Activity;)Ljava/lang/String;
    :try_end_ec
    .catch Lcom/google/ads/internal/c$b; {:try_start_e9 .. :try_end_ec} :catch_124
    .catch Ljava/lang/Throwable; {:try_start_e9 .. :try_end_ec} :catch_115
    .catchall {:try_start_e9 .. :try_end_ec} :catchall_3a

    move-result-object v0

    .line 752
    :try_start_ed
    invoke-direct {p0}, Lcom/google/ads/internal/c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/ads/internal/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_f7
    .catch Ljava/lang/Throwable; {:try_start_ed .. :try_end_f7} :catch_115
    .catchall {:try_start_ed .. :try_end_f7} :catchall_3a

    move-result-wide v0

    sub-long/2addr v0, v6

    sub-long v0, v4, v0

    .line 757
    cmp-long v2, v0, v10

    if-lez v2, :cond_102

    .line 758
    :try_start_ff
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_102
    .catch Ljava/lang/InterruptedException; {:try_start_ff .. :try_end_102} :catch_144
    .catch Ljava/lang/Throwable; {:try_start_ff .. :try_end_102} :catch_115
    .catchall {:try_start_ff .. :try_end_102} :catchall_3a

    .line 768
    :cond_102
    :try_start_102
    iget-boolean v0, p0, Lcom/google/ads/internal/c;->q:Z
    :try_end_104
    .catch Ljava/lang/Throwable; {:try_start_102 .. :try_end_104} :catch_115
    .catchall {:try_start_102 .. :try_end_104} :catchall_3a

    if-eqz v0, :cond_15e

    .line 769
    :try_start_106
    monitor-exit p0
    :try_end_107
    .catchall {:try_start_106 .. :try_end_107} :catchall_3a

    goto/16 :goto_18

    .line 723
    :cond_109
    :try_start_109
    const-string v9, "l"

    invoke-virtual {v2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 724
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/ads/internal/c;->u:I
    :try_end_114
    .catch Ljava/lang/Throwable; {:try_start_109 .. :try_end_114} :catch_115
    .catchall {:try_start_109 .. :try_end_114} :catchall_3a

    goto :goto_ba

    .line 956
    :catch_115
    move-exception v0

    .line 958
    :try_start_116
    const-string v1, "An unknown error occurred in AdLoader."

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 959
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V

    .line 961
    :goto_121
    monitor-exit p0
    :try_end_122
    .catchall {:try_start_116 .. :try_end_122} :catchall_3a

    goto/16 :goto_18

    .line 747
    :catch_124
    move-exception v0

    .line 748
    :try_start_125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught internal exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    .line 749
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    :try_end_141
    .catch Ljava/lang/Throwable; {:try_start_125 .. :try_end_141} :catch_115
    .catchall {:try_start_125 .. :try_end_141} :catchall_3a

    .line 750
    :try_start_141
    monitor-exit p0
    :try_end_142
    .catchall {:try_start_141 .. :try_end_142} :catchall_3a

    goto/16 :goto_18

    .line 760
    :catch_144
    move-exception v0

    .line 762
    :try_start_145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdLoader InterruptedException while getting the URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V
    :try_end_15b
    .catch Ljava/lang/Throwable; {:try_start_145 .. :try_end_15b} :catch_115
    .catchall {:try_start_145 .. :try_end_15b} :catchall_3a

    .line 764
    :try_start_15b
    monitor-exit p0
    :try_end_15c
    .catchall {:try_start_15b .. :try_end_15c} :catchall_3a

    goto/16 :goto_18

    .line 770
    :cond_15e
    :try_start_15e
    iget-object v0, p0, Lcom/google/ads/internal/c;->s:Lcom/google/ads/AdRequest$ErrorCode;

    if-eqz v0, :cond_16b

    .line 771
    iget-object v0, p0, Lcom/google/ads/internal/c;->s:Lcom/google/ads/AdRequest$ErrorCode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    :try_end_168
    .catch Ljava/lang/Throwable; {:try_start_15e .. :try_end_168} :catch_115
    .catchall {:try_start_15e .. :try_end_168} :catchall_3a

    .line 772
    :try_start_168
    monitor-exit p0
    :try_end_169
    .catchall {:try_start_168 .. :try_end_169} :catchall_3a

    goto/16 :goto_18

    .line 773
    :cond_16b
    :try_start_16b
    iget-object v0, p0, Lcom/google/ads/internal/c;->k:Ljava/lang/String;

    if-nez v0, :cond_194

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdLoader timed out after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms while getting the URL."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    .line 777
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    :try_end_191
    .catch Ljava/lang/Throwable; {:try_start_16b .. :try_end_191} :catch_115
    .catchall {:try_start_16b .. :try_end_191} :catchall_3a

    .line 778
    :try_start_191
    monitor-exit p0
    :try_end_192
    .catchall {:try_start_191 .. :try_end_192} :catchall_3a

    goto/16 :goto_18

    .line 779
    :cond_194
    :try_start_194
    iget-object v0, p0, Lcom/google/ads/internal/c;->j:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->g:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/h;

    invoke-virtual {v0}, Lcom/google/ads/internal/h;->b()Z

    move-result v0

    if-eqz v0, :cond_1c2

    iget-object v0, p0, Lcom/google/ads/internal/c;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c2

    .line 781
    const-string v0, "AdLoader doesn\'t have a URL for the activation overlay"

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    .line 782
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    :try_end_1bf
    .catch Ljava/lang/Throwable; {:try_start_194 .. :try_end_1bf} :catch_115
    .catchall {:try_start_194 .. :try_end_1bf} :catchall_3a

    .line 783
    :try_start_1bf
    monitor-exit p0
    :try_end_1c0
    .catchall {:try_start_1bf .. :try_end_1c0} :catchall_3a

    goto/16 :goto_18

    .line 789
    :cond_1c2
    :try_start_1c2
    iget-object v0, p0, Lcom/google/ads/internal/c;->j:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->b:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->n()Lcom/google/ads/internal/g;

    move-result-object v0

    .line 791
    sget-object v1, Lcom/google/ads/internal/c$3;->a:[I

    iget-object v2, p0, Lcom/google/ads/internal/c;->x:Lcom/google/ads/internal/c$d;

    invoke-virtual {v2}, Lcom/google/ads/internal/c$d;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_47c

    .line 822
    :goto_1e5
    iget-boolean v0, p0, Lcom/google/ads/internal/c;->a:Z

    if-nez v0, :cond_2f2

    .line 823
    const-string v0, "Not using loadUrl()."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 825
    iget-object v0, p0, Lcom/google/ads/internal/c;->g:Lcom/google/ads/internal/f;

    iget-boolean v1, p0, Lcom/google/ads/internal/c;->w:Z

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/f;->a(Z)V

    .line 827
    iget-object v0, p0, Lcom/google/ads/internal/c;->j:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->g:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/h;

    invoke-virtual {v0}, Lcom/google/ads/internal/h;->b()Z

    move-result v0

    if-eqz v0, :cond_479

    .line 828
    iget-object v0, p0, Lcom/google/ads/internal/c;->j:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->e:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/ActivationOverlay;

    invoke-virtual {v0}, Lcom/google/ads/internal/ActivationOverlay;->e()Lcom/google/ads/internal/i;

    move-result-object v3

    .line 830
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/google/ads/internal/i;->c(Z)V

    .line 831
    invoke-static {}, Lcom/google/ads/m;->a()Lcom/google/ads/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/m;->b:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/google/ads/internal/c$1;

    invoke-direct {v1, p0}, Lcom/google/ads/internal/c$1;-><init>(Lcom/google/ads/internal/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v0, v3

    .line 839
    :goto_23c
    iget-object v1, p0, Lcom/google/ads/internal/c;->g:Lcom/google/ads/internal/f;

    iget-object v2, p0, Lcom/google/ads/internal/c;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/ads/internal/f;->a(Ljava/lang/String;)V
    :try_end_243
    .catch Ljava/lang/Throwable; {:try_start_1c2 .. :try_end_243} :catch_115
    .catchall {:try_start_1c2 .. :try_end_243} :catchall_3a

    .line 843
    :goto_243
    :try_start_243
    iget-boolean v1, p0, Lcom/google/ads/internal/c;->q:Z

    if-nez v1, :cond_2b5

    iget-object v1, p0, Lcom/google/ads/internal/c;->s:Lcom/google/ads/AdRequest$ErrorCode;

    if-nez v1, :cond_2b5

    iget-object v1, p0, Lcom/google/ads/internal/c;->c:Ljava/lang/String;

    if-nez v1, :cond_2b5

    .line 844
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v6

    sub-long v2, v4, v2

    .line 845
    cmp-long v1, v2, v10

    if-lez v1, :cond_2b5

    .line 846
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_25d
    .catch Ljava/lang/InterruptedException; {:try_start_243 .. :try_end_25d} :catch_25e
    .catch Ljava/lang/Throwable; {:try_start_243 .. :try_end_25d} :catch_115
    .catchall {:try_start_243 .. :try_end_25d} :catchall_3a

    goto :goto_243

    .line 851
    :catch_25e
    move-exception v0

    .line 853
    :try_start_25f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdLoader InterruptedException while getting the ad server\'s response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V
    :try_end_275
    .catch Ljava/lang/Throwable; {:try_start_25f .. :try_end_275} :catch_115
    .catchall {:try_start_25f .. :try_end_275} :catchall_3a

    .line 854
    :try_start_275
    monitor-exit p0
    :try_end_276
    .catchall {:try_start_275 .. :try_end_276} :catchall_3a

    goto/16 :goto_18

    .line 795
    :pswitch_278
    :try_start_278
    invoke-virtual {v0}, Lcom/google/ads/internal/g;->r()V

    .line 796
    invoke-virtual {v0}, Lcom/google/ads/internal/g;->u()V

    .line 797
    invoke-virtual {v0}, Lcom/google/ads/internal/g;->x()V

    .line 798
    const-string v0, "Request scenario: Online server request."

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    goto/16 :goto_1e5

    .line 801
    :pswitch_288
    invoke-virtual {v0}, Lcom/google/ads/internal/g;->t()V

    .line 802
    const-string v0, "Request scenario: Online using buffered ads."

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    goto/16 :goto_1e5

    .line 805
    :pswitch_292
    invoke-virtual {v0}, Lcom/google/ads/internal/g;->w()V

    .line 806
    invoke-virtual {v0}, Lcom/google/ads/internal/g;->q()V

    .line 807
    const-string v0, "Request scenario: Offline using buffered ads."

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    goto/16 :goto_1e5

    .line 812
    :pswitch_29f
    invoke-virtual {v0}, Lcom/google/ads/internal/g;->q()V

    .line 813
    const-string v0, "Request scenario: Offline with no buffered ads."

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    .line 814
    const-string v0, "Network is unavailable.  Aborting ad request."

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    .line 815
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    :try_end_2b2
    .catch Ljava/lang/Throwable; {:try_start_278 .. :try_end_2b2} :catch_115
    .catchall {:try_start_278 .. :try_end_2b2} :catchall_3a

    .line 816
    :try_start_2b2
    monitor-exit p0
    :try_end_2b3
    .catchall {:try_start_2b2 .. :try_end_2b3} :catchall_3a

    goto/16 :goto_18

    .line 858
    :cond_2b5
    :try_start_2b5
    iget-boolean v1, p0, Lcom/google/ads/internal/c;->q:Z
    :try_end_2b7
    .catch Ljava/lang/Throwable; {:try_start_2b5 .. :try_end_2b7} :catch_115
    .catchall {:try_start_2b5 .. :try_end_2b7} :catchall_3a

    if-eqz v1, :cond_2bc

    .line 859
    :try_start_2b9
    monitor-exit p0
    :try_end_2ba
    .catchall {:try_start_2b9 .. :try_end_2ba} :catchall_3a

    goto/16 :goto_18

    .line 860
    :cond_2bc
    :try_start_2bc
    iget-object v1, p0, Lcom/google/ads/internal/c;->s:Lcom/google/ads/AdRequest$ErrorCode;

    if-eqz v1, :cond_2c9

    .line 861
    iget-object v0, p0, Lcom/google/ads/internal/c;->s:Lcom/google/ads/AdRequest$ErrorCode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    :try_end_2c6
    .catch Ljava/lang/Throwable; {:try_start_2bc .. :try_end_2c6} :catch_115
    .catchall {:try_start_2bc .. :try_end_2c6} :catchall_3a

    .line 862
    :try_start_2c6
    monitor-exit p0
    :try_end_2c7
    .catchall {:try_start_2c6 .. :try_end_2c7} :catchall_3a

    goto/16 :goto_18

    .line 863
    :cond_2c9
    :try_start_2c9
    iget-object v1, p0, Lcom/google/ads/internal/c;->c:Ljava/lang/String;

    if-nez v1, :cond_476

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdLoader timed out after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms while waiting for the ad server\'s response."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    .line 867
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    :try_end_2ef
    .catch Ljava/lang/Throwable; {:try_start_2c9 .. :try_end_2ef} :catch_115
    .catchall {:try_start_2c9 .. :try_end_2ef} :catchall_3a

    .line 868
    :try_start_2ef
    monitor-exit p0
    :try_end_2f0
    .catchall {:try_start_2ef .. :try_end_2f0} :catchall_3a

    goto/16 :goto_18

    .line 875
    :cond_2f2
    :try_start_2f2
    iget-object v0, p0, Lcom/google/ads/internal/c;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/internal/c;->b:Ljava/lang/String;

    .line 876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Using loadUrl.  adBaseUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/internal/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    :cond_30e
    move-object v1, v3

    .line 881
    :goto_30f
    iget-boolean v0, p0, Lcom/google/ads/internal/c;->a:Z

    if-nez v0, :cond_3e1

    .line 882
    iget-boolean v0, p0, Lcom/google/ads/internal/c;->f:Z

    if-eqz v0, :cond_333

    .line 885
    iget-object v0, p0, Lcom/google/ads/internal/c;->j:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->b:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/d;->b(Z)V

    .line 886
    invoke-virtual {p0}, Lcom/google/ads/internal/c;->b()V
    :try_end_330
    .catch Ljava/lang/Throwable; {:try_start_2f2 .. :try_end_330} :catch_115
    .catchall {:try_start_2f2 .. :try_end_330} :catchall_3a

    .line 887
    :try_start_330
    monitor-exit p0
    :try_end_331
    .catchall {:try_start_330 .. :try_end_331} :catchall_3a

    goto/16 :goto_18

    .line 891
    :cond_333
    :try_start_333
    iget-object v0, p0, Lcom/google/ads/internal/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_372

    iget-object v0, p0, Lcom/google/ads/internal/c;->e:Ljava/lang/String;

    const-string v2, "application/json"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34b

    iget-object v0, p0, Lcom/google/ads/internal/c;->e:Ljava/lang/String;

    const-string v2, "text/javascript"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_372

    .line 894
    :cond_34b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected HTML but received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/internal/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;)V

    .line 895
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    :try_end_36f
    .catch Ljava/lang/Throwable; {:try_start_333 .. :try_end_36f} :catch_115
    .catchall {:try_start_333 .. :try_end_36f} :catchall_3a

    .line 896
    :try_start_36f
    monitor-exit p0
    :try_end_370
    .catchall {:try_start_36f .. :try_end_370} :catchall_3a

    goto/16 :goto_18

    .line 897
    :cond_372
    :try_start_372
    iget-object v0, p0, Lcom/google/ads/internal/c;->j:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->p:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3d5

    .line 898
    iget-object v0, p0, Lcom/google/ads/internal/c;->o:Lcom/google/ads/AdSize;

    if-nez v0, :cond_396

    .line 900
    const-string v0, "Multiple supported ad sizes were specified, but the server did not respond with a size."

    invoke-static {v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;)V

    .line 902
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    :try_end_393
    .catch Ljava/lang/Throwable; {:try_start_372 .. :try_end_393} :catch_115
    .catchall {:try_start_372 .. :try_end_393} :catchall_3a

    .line 903
    :try_start_393
    monitor-exit p0
    :try_end_394
    .catchall {:try_start_393 .. :try_end_394} :catchall_3a

    goto/16 :goto_18

    .line 904
    :cond_396
    :try_start_396
    iget-object v0, p0, Lcom/google/ads/internal/c;->j:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->p:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ads/internal/c;->o:Lcom/google/ads/AdSize;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e1

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The ad server did not respond with a supported AdSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/internal/c;->o:Lcom/google/ads/AdSize;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;)V

    .line 907
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    :try_end_3d2
    .catch Ljava/lang/Throwable; {:try_start_396 .. :try_end_3d2} :catch_115
    .catchall {:try_start_396 .. :try_end_3d2} :catchall_3a

    .line 908
    :try_start_3d2
    monitor-exit p0
    :try_end_3d3
    .catchall {:try_start_3d2 .. :try_end_3d3} :catchall_3a

    goto/16 :goto_18

    .line 914
    :cond_3d5
    :try_start_3d5
    iget-object v0, p0, Lcom/google/ads/internal/c;->o:Lcom/google/ads/AdSize;

    if-eqz v0, :cond_3e1

    .line 915
    const-string v0, "adSize was expected to be null in AdLoader."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    .line 916
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/internal/c;->o:Lcom/google/ads/AdSize;

    .line 923
    :cond_3e1
    iget-object v0, p0, Lcom/google/ads/internal/c;->j:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->b:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/d;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/ads/internal/d;->b(Z)V

    .line 928
    invoke-direct {p0}, Lcom/google/ads/internal/c;->i()V
    :try_end_3fa
    .catch Ljava/lang/Throwable; {:try_start_3d5 .. :try_end_3fa} :catch_115
    .catchall {:try_start_3d5 .. :try_end_3fa} :catchall_3a

    .line 933
    :goto_3fa
    :try_start_3fa
    iget-boolean v0, p0, Lcom/google/ads/internal/c;->q:Z

    if-nez v0, :cond_449

    iget-boolean v0, p0, Lcom/google/ads/internal/c;->t:Z

    if-eqz v0, :cond_420

    iget-object v0, p0, Lcom/google/ads/internal/c;->j:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->g:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/h;

    invoke-virtual {v0}, Lcom/google/ads/internal/h;->b()Z

    move-result v0

    if-eqz v0, :cond_449

    invoke-virtual {v1}, Lcom/google/ads/internal/i;->a()Z

    move-result v0

    if-eqz v0, :cond_449

    .line 936
    :cond_420
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v6

    sub-long v2, v4, v2

    .line 937
    cmp-long v0, v2, v10

    if-lez v0, :cond_449

    .line 938
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_42e
    .catch Ljava/lang/InterruptedException; {:try_start_3fa .. :try_end_42e} :catch_42f
    .catch Ljava/lang/Throwable; {:try_start_3fa .. :try_end_42e} :catch_115
    .catchall {:try_start_3fa .. :try_end_42e} :catchall_3a

    goto :goto_3fa

    .line 943
    :catch_42f
    move-exception v0

    .line 944
    :try_start_430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdLoader InterruptedException while loading the HTML: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V
    :try_end_446
    .catch Ljava/lang/Throwable; {:try_start_430 .. :try_end_446} :catch_115
    .catchall {:try_start_430 .. :try_end_446} :catchall_3a

    .line 945
    :try_start_446
    monitor-exit p0
    :try_end_447
    .catchall {:try_start_446 .. :try_end_447} :catchall_3a

    goto/16 :goto_18

    .line 949
    :cond_449
    :try_start_449
    iget-boolean v0, p0, Lcom/google/ads/internal/c;->t:Z

    if-eqz v0, :cond_452

    .line 950
    invoke-direct {p0}, Lcom/google/ads/internal/c;->j()V

    goto/16 :goto_121

    .line 952
    :cond_452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdLoader timed out after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms while loading the HTML."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    .line 954
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    :try_end_474
    .catch Ljava/lang/Throwable; {:try_start_449 .. :try_end_474} :catch_115
    .catchall {:try_start_449 .. :try_end_474} :catchall_3a

    goto/16 :goto_121

    :cond_476
    move-object v1, v0

    goto/16 :goto_30f

    :cond_479
    move-object v0, v3

    goto/16 :goto_23c

    .line 791
    :pswitch_data_47c
    .packed-switch 0x1
        :pswitch_278
        :pswitch_288
        :pswitch_292
        :pswitch_29f
    .end packed-switch
.end method
