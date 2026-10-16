.class public Lcom/google/ads/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private A:Ljava/lang/String;

.field private final b:Lcom/google/ads/n;

.field private c:Lcom/google/ads/internal/c;

.field private d:Lcom/google/ads/AdRequest;

.field private e:Lcom/google/ads/internal/g;

.field private f:Lcom/google/ads/internal/AdWebView;

.field private g:Lcom/google/ads/internal/i;

.field private h:Z

.field private i:J

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Landroid/content/SharedPreferences;

.field private p:J

.field private q:Lcom/google/ads/af;

.field private r:Z

.field private s:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:I

.field private v:Ljava/lang/Boolean;

.field private w:Lcom/google/ads/d;

.field private x:Lcom/google/ads/e;

.field private y:Lcom/google/ads/f;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/ads/internal/d;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/Ad;Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;Landroid/view/ViewGroup;Z)V
    .registers 20

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/ads/internal/d;->h:Z

    .line 159
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/ads/internal/d;->u:I

    .line 345
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/ads/internal/d;->z:Ljava/lang/String;

    .line 346
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/ads/internal/d;->A:Ljava/lang/String;

    .line 203
    move/from16 v0, p6

    iput-boolean v0, p0, Lcom/google/ads/internal/d;->r:Z

    .line 206
    new-instance v2, Lcom/google/ads/internal/g;

    invoke-direct {v2}, Lcom/google/ads/internal/g;-><init>()V

    iput-object v2, p0, Lcom/google/ads/internal/d;->e:Lcom/google/ads/internal/g;

    .line 210
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/ads/internal/d;->c:Lcom/google/ads/internal/c;

    .line 213
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/ads/internal/d;->d:Lcom/google/ads/AdRequest;

    .line 217
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/ads/internal/d;->k:Z

    .line 221
    const-wide/32 v2, 0xea60

    iput-wide v2, p0, Lcom/google/ads/internal/d;->p:J

    .line 222
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/ads/internal/d;->l:Z

    .line 223
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/ads/internal/d;->n:Z

    .line 224
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/ads/internal/d;->m:Z

    .line 225
    if-nez p3, :cond_63

    sget-object v11, Lcom/google/ads/internal/h;->a:Lcom/google/ads/internal/h;

    .line 228
    :goto_35
    instance-of v2, p1, Lcom/google/ads/doubleclick/SwipeableDfpAdView;

    if-eqz v2, :cond_3d

    .line 229
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/google/ads/internal/h;->a(Z)V

    .line 232
    :cond_3d
    if-nez p2, :cond_72

    .line 235
    new-instance v2, Lcom/google/ads/n;

    invoke-static {}, Lcom/google/ads/m;->a()Lcom/google/ads/m;

    move-result-object v3

    instance-of v4, p1, Lcom/google/ads/AdView;

    if-eqz v4, :cond_6e

    move-object v4, p1

    check-cast v4, Lcom/google/ads/AdView;

    move-object v5, v4

    :goto_4d
    instance-of v4, p1, Lcom/google/ads/InterstitialAd;

    if-eqz v4, :cond_70

    move-object v4, p1

    check-cast v4, Lcom/google/ads/InterstitialAd;

    move-object v6, v4

    :goto_55
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    move-object v12, p0

    invoke-direct/range {v2 .. v12}, Lcom/google/ads/n;-><init>(Lcom/google/ads/m;Lcom/google/ads/Ad;Lcom/google/ads/AdView;Lcom/google/ads/InterstitialAd;Ljava/lang/String;Landroid/app/Activity;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/ads/internal/h;Lcom/google/ads/internal/d;)V

    iput-object v2, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    .line 298
    :goto_62
    return-void

    .line 225
    :cond_63
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Lcom/google/ads/internal/h;->a(Lcom/google/ads/AdSize;Landroid/content/Context;)Lcom/google/ads/internal/h;

    move-result-object v11

    goto :goto_35

    .line 235
    :cond_6e
    const/4 v5, 0x0

    goto :goto_4d

    :cond_70
    const/4 v6, 0x0

    goto :goto_55

    .line 250
    :cond_72
    sget-object v3, Lcom/google/ads/internal/d;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 251
    :try_start_75
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "GoogleAdMobAdsPrefs"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/google/ads/internal/d;->o:Landroid/content/SharedPreferences;

    .line 253
    if-eqz p6, :cond_113

    .line 254
    iget-object v2, p0, Lcom/google/ads/internal/d;->o:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, -0x1

    invoke-interface {v2, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 255
    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gez v2, :cond_10d

    .line 257
    const-wide/16 v4, 0x1388

    iput-wide v4, p0, Lcom/google/ads/internal/d;->i:J

    .line 265
    :goto_ab
    monitor-exit v3
    :try_end_ac
    .catchall {:try_start_75 .. :try_end_ac} :catchall_110

    .line 267
    new-instance v2, Lcom/google/ads/n;

    invoke-static {}, Lcom/google/ads/m;->a()Lcom/google/ads/m;

    move-result-object v3

    instance-of v4, p1, Lcom/google/ads/AdView;

    if-eqz v4, :cond_119

    move-object v4, p1

    check-cast v4, Lcom/google/ads/AdView;

    move-object v5, v4

    :goto_ba
    instance-of v4, p1, Lcom/google/ads/InterstitialAd;

    if-eqz v4, :cond_11b

    move-object v4, p1

    check-cast v4, Lcom/google/ads/InterstitialAd;

    move-object v6, v4

    :goto_c2
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    move-object v4, p1

    move-object/from16 v7, p4

    move-object v8, p2

    move-object/from16 v10, p5

    move-object v12, p0

    invoke-direct/range {v2 .. v12}, Lcom/google/ads/n;-><init>(Lcom/google/ads/m;Lcom/google/ads/Ad;Lcom/google/ads/AdView;Lcom/google/ads/InterstitialAd;Ljava/lang/String;Landroid/app/Activity;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/ads/internal/h;Lcom/google/ads/internal/d;)V

    iput-object v2, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    .line 280
    new-instance v2, Lcom/google/ads/af;

    invoke-direct {v2, p0}, Lcom/google/ads/af;-><init>(Lcom/google/ads/internal/d;)V

    iput-object v2, p0, Lcom/google/ads/internal/d;->q:Lcom/google/ads/af;

    .line 283
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/google/ads/internal/d;->s:Ljava/util/LinkedList;

    .line 286
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/google/ads/internal/d;->t:Ljava/util/LinkedList;

    .line 289
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->a()V

    .line 292
    iget-object v2, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v2, v2, Lcom/google/ads/n;->f:Lcom/google/ads/util/i$b;

    invoke-virtual {v2}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lcom/google/ads/util/AdUtil;->h(Landroid/content/Context;)V

    .line 294
    new-instance v2, Lcom/google/ads/d;

    invoke-direct {v2}, Lcom/google/ads/d;-><init>()V

    iput-object v2, p0, Lcom/google/ads/internal/d;->w:Lcom/google/ads/d;

    .line 295
    new-instance v2, Lcom/google/ads/e;

    invoke-direct {v2, p0}, Lcom/google/ads/e;-><init>(Lcom/google/ads/internal/d;)V

    iput-object v2, p0, Lcom/google/ads/internal/d;->x:Lcom/google/ads/e;

    .line 296
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/ads/internal/d;->v:Ljava/lang/Boolean;

    .line 297
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/ads/internal/d;->y:Lcom/google/ads/f;

    goto/16 :goto_62

    .line 260
    :cond_10d
    :try_start_10d
    iput-wide v4, p0, Lcom/google/ads/internal/d;->i:J

    goto :goto_ab

    .line 265
    :catchall_110
    move-exception v2

    monitor-exit v3
    :try_end_112
    .catchall {:try_start_10d .. :try_end_112} :catchall_110

    throw v2

    .line 263
    :cond_113
    const-wide/32 v4, 0xea60

    :try_start_116
    iput-wide v4, p0, Lcom/google/ads/internal/d;->i:J
    :try_end_118
    .catchall {:try_start_116 .. :try_end_118} :catchall_110

    goto :goto_ab

    .line 267
    :cond_119
    const/4 v5, 0x0

    goto :goto_ba

    :cond_11b
    const/4 v6, 0x0

    goto :goto_c2
.end method

.method private a(Lcom/google/ads/f;Ljava/lang/Boolean;)V
    .registers 11

    .prologue
    .line 800
    invoke-virtual {p1}, Lcom/google/ads/f;->d()Ljava/util/List;

    move-result-object v1

    .line 801
    if-nez v1, :cond_10

    .line 802
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 803
    const-string v0, "http://e.admob.com/imp?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&ad_network_id=@gw_adnetid@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@&nr=@gw_adnetrefresh@&adt=@gw_adt@&aec=@gw_aec@"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 807
    :cond_10
    invoke-virtual {p1}, Lcom/google/ads/f;->b()Ljava/lang/String;

    move-result-object v3

    .line 808
    invoke-virtual {p1}, Lcom/google/ads/f;->a()Ljava/lang/String;

    move-result-object v2

    .line 809
    invoke-virtual {p1}, Lcom/google/ads/f;->c()Ljava/lang/String;

    move-result-object v4

    .line 810
    iget-object v0, p0, Lcom/google/ads/internal/d;->e:Lcom/google/ads/internal/g;

    invoke-virtual {v0}, Lcom/google/ads/internal/g;->d()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/google/ads/internal/d;->e:Lcom/google/ads/internal/g;

    invoke-virtual {v0}, Lcom/google/ads/internal/g;->e()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/ads/internal/d;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 856
    if-nez p1, :cond_21

    .line 857
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 858
    const-string v0, "http://e.admob.com/nofill?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@&adt=@gw_adt@&aec=@gw_aec@"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 861
    :goto_d
    iget-object v0, p0, Lcom/google/ads/internal/d;->e:Lcom/google/ads/internal/g;

    invoke-virtual {v0}, Lcom/google/ads/internal/g;->d()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/google/ads/internal/d;->e:Lcom/google/ads/internal/g;

    invoke-virtual {v0}, Lcom/google/ads/internal/g;->e()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v3, v2

    move-object v4, p2

    move-object v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/ads/internal/d;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    return-void

    :cond_21
    move-object v1, p1

    goto :goto_d
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 875
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->f:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 878
    invoke-static {}, Lcom/google/ads/b;->a()Lcom/google/ads/b;

    move-result-object v0

    .line 879
    invoke-virtual {v0}, Lcom/google/ads/b;->b()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v7

    .line 880
    invoke-virtual {v0}, Lcom/google/ads/b;->c()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v8

    .line 881
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_26
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 882
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->h:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v2, p5

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-static/range {v0 .. v10}, Lcom/google/ads/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 893
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/google/ads/ae;

    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->f:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v4, v1, v0}, Lcom/google/ads/ae;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 895
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_26

    .line 899
    :cond_62
    iget-object v0, p0, Lcom/google/ads/internal/d;->e:Lcom/google/ads/internal/g;

    invoke-virtual {v0}, Lcom/google/ads/internal/g;->b()V

    .line 900
    return-void
.end method

.method private b(Lcom/google/ads/f;Ljava/lang/Boolean;)V
    .registers 11

    .prologue
    const/4 v6, 0x0

    .line 829
    invoke-virtual {p1}, Lcom/google/ads/f;->e()Ljava/util/List;

    move-result-object v1

    .line 830
    if-nez v1, :cond_11

    .line 831
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 832
    const-string v0, "http://e.admob.com/clk?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&ad_network_id=@gw_adnetid@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@&nr=@gw_adnetrefresh@"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 836
    :cond_11
    invoke-virtual {p1}, Lcom/google/ads/f;->b()Ljava/lang/String;

    move-result-object v3

    .line 837
    invoke-virtual {p1}, Lcom/google/ads/f;->a()Ljava/lang/String;

    move-result-object v2

    .line 838
    invoke-virtual {p1}, Lcom/google/ads/f;->c()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, p2

    move-object v7, v6

    .line 839
    invoke-direct/range {v0 .. v7}, Lcom/google/ads/internal/d;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    return-void
.end method


# virtual methods
.method public declared-synchronized A()V
    .registers 3

    .prologue
    .line 1038
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    invoke-virtual {v0}, Lcom/google/ads/n;->b()Z

    move-result v0

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Z)V

    .line 1039
    iget-boolean v0, p0, Lcom/google/ads/internal/d;->k:Z

    if-eqz v0, :cond_48

    .line 1041
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/internal/d;->k:Z

    .line 1045
    iget-object v0, p0, Lcom/google/ads/internal/d;->v:Ljava/lang/Boolean;

    if-nez v0, :cond_1c

    .line 1046
    const-string v0, "isMediationFlag is null in show() with isReady() true. we should have an ad and know whether this is a mediation request or not. "

    invoke-static {v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_37

    .line 1065
    :cond_1a
    :goto_1a
    monitor-exit p0

    return-void

    .line 1050
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lcom/google/ads/internal/d;->v:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1052
    iget-object v0, p0, Lcom/google/ads/internal/d;->x:Lcom/google/ads/e;

    invoke-virtual {v0}, Lcom/google/ads/e;->c()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1053
    iget-object v0, p0, Lcom/google/ads/internal/d;->y:Lcom/google/ads/f;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/ads/internal/d;->a(Lcom/google/ads/f;Ljava/lang/Boolean;)V
    :try_end_36
    .catchall {:try_start_1c .. :try_end_36} :catchall_37

    goto :goto_1a

    .line 1038
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1057
    :cond_3a
    :try_start_3a
    new-instance v0, Lcom/google/ads/internal/e;

    const-string v1, "interstitial"

    invoke-direct {v0, v1}, Lcom/google/ads/internal/e;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/google/ads/AdActivity;->launchAdActivity(Lcom/google/ads/internal/d;Lcom/google/ads/internal/e;)V

    .line 1060
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->y()V

    goto :goto_1a

    .line 1063
    :cond_48
    const-string v0, "Cannot show interstitial because it is not loaded and ready."

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_3a .. :try_end_4d} :catchall_37

    goto :goto_1a
.end method

.method public declared-synchronized B()V
    .registers 2

    .prologue
    .line 1072
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/internal/d;->c:Lcom/google/ads/internal/c;

    if-eqz v0, :cond_d

    .line 1073
    iget-object v0, p0, Lcom/google/ads/internal/d;->c:Lcom/google/ads/internal/c;

    invoke-virtual {v0}, Lcom/google/ads/internal/c;->a()V

    .line 1074
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/internal/d;->c:Lcom/google/ads/internal/c;

    .line 1078
    :cond_d
    iget-object v0, p0, Lcom/google/ads/internal/d;->f:Lcom/google/ads/internal/AdWebView;

    if-eqz v0, :cond_16

    .line 1079
    iget-object v0, p0, Lcom/google/ads/internal/d;->f:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0}, Lcom/google/ads/internal/AdWebView;->stopLoading()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 1081
    :cond_16
    monitor-exit p0

    return-void

    .line 1072
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized C()V
    .registers 7

    .prologue
    .line 1098
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->c:Lcom/google/ads/util/i$d;

    invoke-virtual {v0}, Lcom/google/ads/util/i$d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1099
    if-nez v0, :cond_14

    .line 1100
    const-string v0, "activity was null while trying to ping click tracking URLs."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_38

    .line 1110
    :cond_12
    monitor-exit p0

    return-void

    .line 1105
    :cond_14
    :try_start_14
    iget-object v1, p0, Lcom/google/ads/internal/d;->t:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1106
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/google/ads/ae;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/google/ads/ae;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1108
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_37
    .catchall {:try_start_14 .. :try_end_37} :catchall_38

    goto :goto_1a

    .line 1098
    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized D()V
    .registers 3

    .prologue
    .line 1118
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/ads/internal/d;->c:Lcom/google/ads/internal/c;

    .line 1121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/d;->k:Z

    .line 1124
    iget-object v0, p0, Lcom/google/ads/internal/d;->f:Lcom/google/ads/internal/AdWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/AdWebView;->setVisibility(I)V

    .line 1128
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    invoke-virtual {v0}, Lcom/google/ads/n;->a()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1129
    iget-object v0, p0, Lcom/google/ads/internal/d;->f:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {p0, v0}, Lcom/google/ads/internal/d;->a(Landroid/view/View;)V

    .line 1133
    :cond_1a
    iget-object v0, p0, Lcom/google/ads/internal/d;->e:Lcom/google/ads/internal/g;

    invoke-virtual {v0}, Lcom/google/ads/internal/g;->g()V

    .line 1136
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    invoke-virtual {v0}, Lcom/google/ads/n;->a()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1137
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->y()V

    .line 1140
    :cond_2a
    const-string v0, "onReceiveAd()"

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    .line 1143
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->q:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdListener;

    .line 1144
    if-eqz v0, :cond_48

    .line 1145
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/Ad;

    invoke-interface {v0, v1}, Lcom/google/ads/AdListener;->onReceiveAd(Lcom/google/ads/Ad;)V

    .line 1148
    :cond_48
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->n:Lcom/google/ads/util/i$c;

    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->o:Lcom/google/ads/util/i$c;

    invoke-virtual {v1}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/util/i$c;->a(Ljava/lang/Object;)V

    .line 1149
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->o:Lcom/google/ads/util/i$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/util/i$c;->a(Ljava/lang/Object;)V
    :try_end_5f
    .catchall {:try_start_2 .. :try_end_5f} :catchall_61

    .line 1150
    monitor-exit p0

    return-void

    .line 1118
    :catchall_61
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()V
    .registers 4

    .prologue
    .line 306
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->g:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/h;

    invoke-virtual {v0}, Lcom/google/ads/internal/h;->c()Lcom/google/ads/AdSize;

    move-result-object v1

    .line 307
    sget v0, Lcom/google/ads/util/AdUtil;->a:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_79

    new-instance v0, Lcom/google/ads/util/IcsUtil$IcsAdWebView;

    iget-object v2, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    invoke-direct {v0, v2, v1}, Lcom/google/ads/util/IcsUtil$IcsAdWebView;-><init>(Lcom/google/ads/n;Lcom/google/ads/AdSize;)V

    :goto_1c
    iput-object v0, p0, Lcom/google/ads/internal/d;->f:Lcom/google/ads/internal/AdWebView;

    .line 310
    iget-object v0, p0, Lcom/google/ads/internal/d;->f:Lcom/google/ads/internal/AdWebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/AdWebView;->setVisibility(I)V

    .line 313
    sget-object v0, Lcom/google/ads/internal/a;->d:Ljava/util/Map;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    invoke-virtual {v2}, Lcom/google/ads/n;->b()Z

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/google/ads/internal/i;->a(Lcom/google/ads/internal/d;Ljava/util/Map;ZZ)Lcom/google/ads/internal/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/internal/d;->g:Lcom/google/ads/internal/i;

    .line 315
    iget-object v0, p0, Lcom/google/ads/internal/d;->f:Lcom/google/ads/internal/AdWebView;

    iget-object v1, p0, Lcom/google/ads/internal/d;->g:Lcom/google/ads/internal/i;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/AdWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 318
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->d:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/m;

    iget-object v0, v0, Lcom/google/ads/m;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/m$a;

    .line 319
    sget v1, Lcom/google/ads/util/AdUtil;->a:I

    iget-object v0, v0, Lcom/google/ads/m$a;->b:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v1, v0, :cond_77

    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->g:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/h;

    invoke-virtual {v0}, Lcom/google/ads/internal/h;->a()Z

    move-result v0

    if-nez v0, :cond_77

    .line 321
    const-string v0, "Disabling hardware acceleration for a banner."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/google/ads/internal/d;->f:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0}, Lcom/google/ads/internal/AdWebView;->g()V
    :try_end_77
    .catchall {:try_start_1 .. :try_end_77} :catchall_81

    .line 324
    :cond_77
    monitor-exit p0

    return-void

    .line 307
    :cond_79
    :try_start_79
    new-instance v0, Lcom/google/ads/internal/AdWebView;

    iget-object v2, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    invoke-direct {v0, v2, v1}, Lcom/google/ads/internal/AdWebView;-><init>(Lcom/google/ads/n;Lcom/google/ads/AdSize;)V
    :try_end_80
    .catchall {:try_start_79 .. :try_end_80} :catchall_81

    goto :goto_1c

    .line 306
    :catchall_81
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(F)V
    .registers 6

    .prologue
    .line 1014
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/ads/internal/d;->p:J

    .line 1015
    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v2, p1

    float-to-long v2, v2

    iput-wide v2, p0, Lcom/google/ads/internal/d;->p:J

    .line 1017
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->t()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-wide v2, p0, Lcom/google/ads/internal/d;->p:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1b

    .line 1018
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->f()V

    .line 1019
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->g()V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 1021
    :cond_1b
    monitor-exit p0

    return-void

    .line 1014
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)V
    .registers 3

    .prologue
    .line 500
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/google/ads/internal/d;->u:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 501
    monitor-exit p0

    return-void

    .line 500
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(IIII)V
    .registers 11

    .prologue
    const/4 v4, 0x0

    .line 1231
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->e:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/ActivationOverlay;

    .line 1232
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->f:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-gez p3, :cond_b7

    iget-object v2, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v2, v2, Lcom/google/ads/n;->g:Lcom/google/ads/util/i$b;

    invoke-virtual {v2}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/internal/h;

    invoke-virtual {v2}, Lcom/google/ads/internal/h;->c()Lcom/google/ads/AdSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v2

    :goto_29
    invoke-static {v1, v2}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;I)I

    move-result v3

    .line 1234
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->f:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-gez p4, :cond_4b

    iget-object v2, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v2, v2, Lcom/google/ads/n;->g:Lcom/google/ads/util/i$b;

    invoke-virtual {v2}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/internal/h;

    invoke-virtual {v2}, Lcom/google/ads/internal/h;->c()Lcom/google/ads/AdSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/AdSize;->getHeight()I

    move-result p4

    :cond_4b
    invoke-static {v1, p4}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;I)I

    move-result v1

    .line 1236
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1241
    if-gez p3, :cond_bc

    move v2, v4

    move v1, v4

    .line 1246
    :goto_58
    if-gez v1, :cond_ba

    .line 1247
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->e:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/internal/ActivationOverlay;

    invoke-virtual {v1}, Lcom/google/ads/internal/ActivationOverlay;->d()I

    move-result v1

    move v3, v1

    .line 1249
    :goto_69
    if-gez v2, :cond_7a

    .line 1250
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->e:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/internal/ActivationOverlay;

    invoke-virtual {v1}, Lcom/google/ads/internal/ActivationOverlay;->c()I

    move-result v1

    move v2, v1

    .line 1253
    :cond_7a
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->e:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/internal/ActivationOverlay;

    invoke-virtual {v1, v3}, Lcom/google/ads/internal/ActivationOverlay;->setXPosition(I)V

    .line 1254
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->e:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/internal/ActivationOverlay;

    invoke-virtual {v1, v2}, Lcom/google/ads/internal/ActivationOverlay;->setYPosition(I)V

    .line 1256
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->f:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;I)I

    move-result v3

    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->f:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v5, v3, v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1262
    invoke-virtual {v0, v5}, Lcom/google/ads/internal/ActivationOverlay;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1263
    return-void

    :cond_b7
    move v2, p3

    .line 1232
    goto/16 :goto_29

    :cond_ba
    move v3, v1

    goto :goto_69

    :cond_bc
    move v2, p2

    move v1, p1

    goto :goto_58
.end method

.method public a(J)V
    .registers 8

    .prologue
    .line 965
    sget-object v1, Lcom/google/ads/internal/d;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 966
    :try_start_3
    iget-object v0, p0, Lcom/google/ads/internal/d;->o:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 967
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v3, v3, Lcom/google/ads/n;->h:Lcom/google/ads/util/i$b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 968
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 970
    iget-boolean v0, p0, Lcom/google/ads/internal/d;->r:Z

    if-eqz v0, :cond_2c

    .line 971
    iput-wide p1, p0, Lcom/google/ads/internal/d;->i:J

    .line 973
    :cond_2c
    monitor-exit v1

    .line 974
    return-void

    .line 973
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public a(Landroid/view/View;)V
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 987
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->i:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 989
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->i:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 990
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->i:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 992
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->g:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/h;

    invoke-virtual {v0}, Lcom/google/ads/internal/h;->b()Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 993
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->b:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/d;

    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->n:Lcom/google/ads/util/i$c;

    invoke-virtual {v1}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/l;

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/ads/internal/d;->a(Lcom/google/ads/l;ZIIII)V

    .line 995
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->e:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/ActivationOverlay;

    invoke-virtual {v0}, Lcom/google/ads/internal/ActivationOverlay;->a()Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 996
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->i:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->e:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v2, v2, Lcom/google/ads/n;->f:Lcom/google/ads/util/i$b;

    invoke-virtual {v2}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v3, v3, Lcom/google/ads/n;->g:Lcom/google/ads/util/i$b;

    invoke-virtual {v3}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/internal/h;

    invoke-virtual {v3}, Lcom/google/ads/internal/h;->c()Lcom/google/ads/AdSize;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;I)I

    move-result v4

    iget-object v2, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v2, v2, Lcom/google/ads/n;->f:Lcom/google/ads/util/i$b;

    invoke-virtual {v2}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v3, v3, Lcom/google/ads/n;->g:Lcom/google/ads/util/i$b;

    invoke-virtual {v3}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/internal/h;

    invoke-virtual {v3}, Lcom/google/ads/internal/h;->c()Lcom/google/ads/AdSize;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1004
    :cond_ba
    return-void
.end method

.method public declared-synchronized a(Landroid/view/View;Lcom/google/ads/h;Lcom/google/ads/f;Z)V
    .registers 7

    .prologue
    .line 671
    monitor-enter p0

    :try_start_1
    const-string v0, "AdManager.onReceiveGWhirlAd() called."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 674
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/d;->k:Z

    .line 675
    iput-object p3, p0, Lcom/google/ads/internal/d;->y:Lcom/google/ads/f;

    .line 679
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    invoke-virtual {v0}, Lcom/google/ads/n;->a()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 680
    invoke-virtual {p0, p1}, Lcom/google/ads/internal/d;->a(Landroid/view/View;)V

    .line 681
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/google/ads/internal/d;->a(Lcom/google/ads/f;Ljava/lang/Boolean;)V

    .line 685
    :cond_1d
    iget-object v0, p0, Lcom/google/ads/internal/d;->x:Lcom/google/ads/e;

    invoke-virtual {v0, p2}, Lcom/google/ads/e;->d(Lcom/google/ads/h;)V

    .line 688
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->q:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdListener;

    .line 689
    if-eqz v0, :cond_3b

    .line 690
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/Ad;

    invoke-interface {v0, v1}, Lcom/google/ads/AdListener;->onReceiveAd(Lcom/google/ads/Ad;)V
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3d

    .line 692
    :cond_3b
    monitor-exit p0

    return-void

    .line 671
    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/ads/AdRequest$ErrorCode;)V
    .registers 4

    .prologue
    .line 617
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/ads/internal/d;->c:Lcom/google/ads/internal/c;

    .line 619
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    if-ne p1, v0, :cond_16

    .line 623
    const/high16 v0, 0x42700000    # 60.0f

    invoke-virtual {p0, v0}, Lcom/google/ads/internal/d;->a(F)V

    .line 624
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->t()Z

    move-result v0

    if-nez v0, :cond_16

    .line 626
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->h()V

    .line 630
    :cond_16
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    invoke-virtual {v0}, Lcom/google/ads/n;->b()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 631
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    if-ne p1, v0, :cond_5e

    .line 632
    iget-object v0, p0, Lcom/google/ads/internal/d;->e:Lcom/google/ads/internal/g;

    invoke-virtual {v0}, Lcom/google/ads/internal/g;->B()V

    .line 638
    :cond_27
    :goto_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailedToReceiveAd("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->q:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdListener;

    .line 642
    if-eqz v0, :cond_5c

    .line 643
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/Ad;

    invoke-interface {v0, v1, p1}, Lcom/google/ads/AdListener;->onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    :try_end_5c
    .catchall {:try_start_2 .. :try_end_5c} :catchall_68

    .line 645
    :cond_5c
    monitor-exit p0

    return-void

    .line 633
    :cond_5e
    :try_start_5e
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    if-ne p1, v0, :cond_27

    .line 634
    iget-object v0, p0, Lcom/google/ads/internal/d;->e:Lcom/google/ads/internal/g;

    invoke-virtual {v0}, Lcom/google/ads/internal/g;->z()V
    :try_end_67
    .catchall {:try_start_5e .. :try_end_67} :catchall_68

    goto :goto_27

    .line 617
    :catchall_68
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/ads/AdRequest;)V
    .registers 6

    .prologue
    .line 553
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/ads/internal/d;->h:Z

    if-eqz v0, :cond_c

    .line 554
    const-string v0, "loadAd called after ad was destroyed."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_18

    .line 607
    :cond_a
    :goto_a
    monitor-exit p0

    return-void

    .line 559
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->q()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 560
    const-string v0, "loadAd called while the ad is already loading, so aborting."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_18

    goto :goto_a

    .line 553
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0

    .line 566
    :cond_1b
    :try_start_1b
    invoke-static {}, Lcom/google/ads/AdActivity;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 567
    const-string v0, "loadAd called while an interstitial or landing page is displayed, so aborting"

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    goto :goto_a

    .line 573
    :cond_27
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->f:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 576
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->f:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 581
    iget-object v0, p0, Lcom/google/ads/internal/d;->o:Landroid/content/SharedPreferences;

    const-string v1, "GoogleAdMobDoritosLife"

    const-wide/32 v2, 0xea60

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 582
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->f:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/google/ads/as;->a(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 583
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->c:Lcom/google/ads/util/i$d;

    invoke-virtual {v0}, Lcom/google/ads/util/i$d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/ads/as;->a(Landroid/app/Activity;)V

    .line 588
    :cond_6f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/internal/d;->k:Z

    .line 589
    iget-object v0, p0, Lcom/google/ads/internal/d;->s:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 592
    iput-object p1, p0, Lcom/google/ads/internal/d;->d:Lcom/google/ads/AdRequest;

    .line 596
    iget-object v0, p0, Lcom/google/ads/internal/d;->w:Lcom/google/ads/d;

    invoke-virtual {v0}, Lcom/google/ads/d;->a()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 597
    iget-object v0, p0, Lcom/google/ads/internal/d;->x:Lcom/google/ads/e;

    iget-object v1, p0, Lcom/google/ads/internal/d;->w:Lcom/google/ads/d;

    invoke-virtual {v1}, Lcom/google/ads/d;->b()Lcom/google/ads/c;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/ads/e;->a(Lcom/google/ads/c;Lcom/google/ads/AdRequest;)V

    goto/16 :goto_a

    .line 601
    :cond_8e
    new-instance v0, Lcom/google/ads/l;

    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    invoke-direct {v0, v1}, Lcom/google/ads/l;-><init>(Lcom/google/ads/n;)V

    .line 602
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->o:Lcom/google/ads/util/i$c;

    invoke-virtual {v1, v0}, Lcom/google/ads/util/i$c;->a(Ljava/lang/Object;)V

    .line 605
    iget-object v0, v0, Lcom/google/ads/l;->b:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/c;

    iput-object v0, p0, Lcom/google/ads/internal/d;->c:Lcom/google/ads/internal/c;

    .line 606
    iget-object v0, p0, Lcom/google/ads/internal/d;->c:Lcom/google/ads/internal/c;

    invoke-virtual {v0, p1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest;)V
    :try_end_ab
    .catchall {:try_start_1b .. :try_end_ab} :catchall_18

    goto/16 :goto_a
.end method

.method public declared-synchronized a(Lcom/google/ads/c;)V
    .registers 4

    .prologue
    .line 654
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/ads/internal/d;->c:Lcom/google/ads/internal/c;

    .line 657
    iget-object v0, p0, Lcom/google/ads/internal/d;->x:Lcom/google/ads/e;

    iget-object v1, p0, Lcom/google/ads/internal/d;->d:Lcom/google/ads/AdRequest;

    invoke-virtual {v0, p1, v1}, Lcom/google/ads/e;->a(Lcom/google/ads/c;Lcom/google/ads/AdRequest;)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_d

    .line 658
    monitor-exit p0

    return-void

    .line 654
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/ads/f;Z)V
    .registers 8

    .prologue
    .line 702
    monitor-enter p0

    :try_start_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "AdManager.onGWhirlAdClicked(%b) called."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 704
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/ads/internal/d;->b(Lcom/google/ads/f;Ljava/lang/Boolean;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 705
    monitor-exit p0

    return-void

    .line 702
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/google/ads/l;ZIIII)V
    .registers 9

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->e:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/ActivationOverlay;

    if-nez p2, :cond_37

    const/4 v1, 0x1

    :goto_d
    invoke-virtual {v0, v1}, Lcom/google/ads/internal/ActivationOverlay;->setOverlayActivated(Z)V

    .line 1210
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/google/ads/internal/d;->a(IIII)V

    .line 1212
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->s:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 1213
    if-eqz p2, :cond_39

    .line 1214
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->s:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/SwipeableAdListener;

    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/Ad;

    invoke-interface {v0, v1}, Lcom/google/ads/SwipeableAdListener;->onAdActivated(Lcom/google/ads/Ad;)V

    .line 1219
    :cond_36
    :goto_36
    return-void

    .line 1208
    :cond_37
    const/4 v1, 0x0

    goto :goto_d

    .line 1216
    :cond_39
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->s:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/SwipeableAdListener;

    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/Ad;

    invoke-interface {v0, v1}, Lcom/google/ads/SwipeableAdListener;->onAdDeactivated(Lcom/google/ads/Ad;)V

    goto :goto_36
.end method

.method public a(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 353
    iput-object p1, p0, Lcom/google/ads/internal/d;->A:Ljava/lang/String;

    .line 356
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->b(Landroid/net/Uri;)Ljava/util/HashMap;

    move-result-object v2

    .line 360
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 361
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 368
    :cond_46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/internal/d;->z:Ljava/lang/String;

    .line 369
    iget-object v0, p0, Lcom/google/ads/internal/d;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 370
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/internal/d;->z:Ljava/lang/String;

    .line 372
    :cond_5b
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 776
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->r:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AppEventListener;

    .line 777
    if-eqz v0, :cond_1a

    .line 778
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/Ad;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/ads/AppEventListener;->onAppEvent(Lcom/google/ads/Ad;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 780
    :cond_1a
    monitor-exit p0

    return-void

    .line 776
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a(Ljava/util/LinkedList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1169
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding a click tracking URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_28

    goto :goto_5

    .line 1169
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1172
    :cond_2b
    :try_start_2b
    iput-object p1, p0, Lcom/google/ads/internal/d;->t:Ljava/util/LinkedList;
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_28

    .line 1173
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Z)V
    .registers 3

    .prologue
    .line 980
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/ads/internal/d;->j:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 981
    monitor-exit p0

    return-void

    .line 980
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .registers 3

    .prologue
    .line 331
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/internal/d;->x:Lcom/google/ads/e;

    if-eqz v0, :cond_a

    .line 332
    iget-object v0, p0, Lcom/google/ads/internal/d;->x:Lcom/google/ads/e;

    invoke-virtual {v0}, Lcom/google/ads/e;->b()V

    .line 334
    :cond_a
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->q:Lcom/google/ads/util/i$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/util/i$c;->a(Ljava/lang/Object;)V

    .line 335
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->r:Lcom/google/ads/util/i$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/util/i$c;->a(Ljava/lang/Object;)V

    .line 336
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->B()V

    .line 337
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->f()V

    .line 338
    iget-object v0, p0, Lcom/google/ads/internal/d;->f:Lcom/google/ads/internal/AdWebView;

    if-eqz v0, :cond_29

    .line 339
    iget-object v0, p0, Lcom/google/ads/internal/d;->f:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0}, Lcom/google/ads/internal/AdWebView;->destroy()V

    .line 341
    :cond_29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/d;->h:Z
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    .line 342
    monitor-exit p0

    return-void

    .line 331
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(J)V
    .registers 6

    .prologue
    .line 1029
    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_16

    .line 1030
    :try_start_7
    iget-object v0, p0, Lcom/google/ads/internal/d;->o:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "GoogleAdMobDoritosLife"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_18

    .line 1032
    :cond_16
    monitor-exit p0

    return-void

    .line 1029
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/google/ads/c;)V
    .registers 5

    .prologue
    .line 714
    monitor-enter p0

    :try_start_1
    const-string v0, "AdManager.onGWhirlNoFill() called."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 717
    invoke-virtual {p1}, Lcom/google/ads/c;->i()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/ads/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/ads/internal/d;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 720
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->q:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdListener;

    .line 721
    if-eqz v0, :cond_2c

    .line 722
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/Ad;

    sget-object v2, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/AdListener;->onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    .line 724
    :cond_2c
    monitor-exit p0

    return-void

    .line 714
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1158
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding a tracking URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 1159
    iget-object v0, p0, Lcom/google/ads/internal/d;->s:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 1160
    monitor-exit p0

    return-void

    .line 1158
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Z)V
    .registers 3

    .prologue
    .line 1188
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/internal/d;->v:Ljava/lang/Boolean;

    .line 1189
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/ads/internal/d;->z:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/google/ads/internal/d;->A:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized e()V
    .registers 2

    .prologue
    .line 392
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/ads/internal/d;->m:Z

    .line 393
    const-string v0, "Refreshing is no longer allowed on this AdView."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 394
    monitor-exit p0

    return-void

    .line 392
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()V
    .registers 3

    .prologue
    .line 401
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/ads/internal/d;->l:Z

    if-eqz v0, :cond_20

    .line 403
    const-string v0, "Disabling refreshing."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 404
    invoke-static {}, Lcom/google/ads/m;->a()Lcom/google/ads/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/m;->b:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/internal/d;->q:Lcom/google/ads/af;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 405
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/internal/d;->l:Z
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_26

    .line 409
    :goto_1e
    monitor-exit p0

    return-void

    .line 407
    :cond_20
    :try_start_20
    const-string v0, "Refreshing is already disabled."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_26

    goto :goto_1e

    .line 401
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()V
    .registers 5

    .prologue
    .line 416
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/ads/internal/d;->n:Z

    .line 418
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    invoke-virtual {v0}, Lcom/google/ads/n;->a()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 419
    iget-boolean v0, p0, Lcom/google/ads/internal/d;->m:Z

    if-eqz v0, :cond_53

    .line 420
    iget-boolean v0, p0, Lcom/google/ads/internal/d;->l:Z

    if-nez v0, :cond_4a

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enabling refreshing every "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/ads/internal/d;->p:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " milliseconds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 423
    invoke-static {}, Lcom/google/ads/m;->a()Lcom/google/ads/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/m;->b:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/internal/d;->q:Lcom/google/ads/af;

    iget-wide v2, p0, Lcom/google/ads/internal/d;->p:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/d;->l:Z
    :try_end_48
    .catchall {:try_start_2 .. :try_end_48} :catchall_50

    .line 435
    :goto_48
    monitor-exit p0

    return-void

    .line 427
    :cond_4a
    :try_start_4a
    const-string v0, "Refreshing is already enabled."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_50

    goto :goto_48

    .line 416
    :catchall_50
    move-exception v0

    monitor-exit p0

    throw v0

    .line 430
    :cond_53
    :try_start_53
    const-string v0, "Refreshing disabled on this AdView"

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    goto :goto_48

    .line 433
    :cond_59
    const-string v0, "Tried to enable refreshing on something other than an AdView."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_53 .. :try_end_5e} :catchall_50

    goto :goto_48
.end method

.method public h()V
    .registers 2

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->g()V

    .line 442
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/d;->n:Z

    .line 443
    return-void
.end method

.method public i()Lcom/google/ads/n;
    .registers 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    return-object v0
.end method

.method public declared-synchronized j()Lcom/google/ads/d;
    .registers 2

    .prologue
    .line 463
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/internal/d;->w:Lcom/google/ads/d;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized k()Lcom/google/ads/internal/c;
    .registers 2

    .prologue
    .line 470
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/internal/d;->c:Lcom/google/ads/internal/c;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized l()Lcom/google/ads/internal/AdWebView;
    .registers 2

    .prologue
    .line 477
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/internal/d;->f:Lcom/google/ads/internal/AdWebView;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized m()Lcom/google/ads/internal/i;
    .registers 2

    .prologue
    .line 484
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/internal/d;->g:Lcom/google/ads/internal/i;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public n()Lcom/google/ads/internal/g;
    .registers 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/google/ads/internal/d;->e:Lcom/google/ads/internal/g;

    return-object v0
.end method

.method public declared-synchronized o()I
    .registers 2

    .prologue
    .line 507
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/ads/internal/d;->u:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public p()J
    .registers 3

    .prologue
    .line 514
    iget-wide v0, p0, Lcom/google/ads/internal/d;->i:J

    return-wide v0
.end method

.method public declared-synchronized q()Z
    .registers 2

    .prologue
    .line 523
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/internal/d;->c:Lcom/google/ads/internal/c;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized r()Z
    .registers 2

    .prologue
    .line 530
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/ads/internal/d;->j:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized s()Z
    .registers 2

    .prologue
    .line 537
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/ads/internal/d;->k:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized t()Z
    .registers 2

    .prologue
    .line 544
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/ads/internal/d;->l:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized u()V
    .registers 3

    .prologue
    .line 733
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/internal/d;->e:Lcom/google/ads/internal/g;

    invoke-virtual {v0}, Lcom/google/ads/internal/g;->C()V

    .line 735
    const-string v0, "onDismissScreen()"

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    .line 738
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->q:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdListener;

    .line 739
    if-eqz v0, :cond_24

    .line 740
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/Ad;

    invoke-interface {v0, v1}, Lcom/google/ads/AdListener;->onDismissScreen(Lcom/google/ads/Ad;)V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    .line 742
    :cond_24
    monitor-exit p0

    return-void

    .line 733
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized v()V
    .registers 3

    .prologue
    .line 750
    monitor-enter p0

    :try_start_1
    const-string v0, "onPresentScreen()"

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    .line 752
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->q:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdListener;

    .line 753
    if-eqz v0, :cond_1f

    .line 754
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/Ad;

    invoke-interface {v0, v1}, Lcom/google/ads/AdListener;->onPresentScreen(Lcom/google/ads/Ad;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 756
    :cond_1f
    monitor-exit p0

    return-void

    .line 750
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized w()V
    .registers 3

    .prologue
    .line 764
    monitor-enter p0

    :try_start_1
    const-string v0, "onLeaveApplication()"

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    .line 766
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->q:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdListener;

    .line 767
    if-eqz v0, :cond_1f

    .line 768
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v1, v1, Lcom/google/ads/n;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/Ad;

    invoke-interface {v0, v1}, Lcom/google/ads/AdListener;->onLeaveApplication(Lcom/google/ads/Ad;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 770
    :cond_1f
    monitor-exit p0

    return-void

    .line 764
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public x()V
    .registers 2

    .prologue
    .line 786
    iget-object v0, p0, Lcom/google/ads/internal/d;->e:Lcom/google/ads/internal/g;

    invoke-virtual {v0}, Lcom/google/ads/internal/g;->f()V

    .line 787
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->C()V

    .line 788
    return-void
.end method

.method public declared-synchronized y()V
    .registers 7

    .prologue
    .line 907
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->c:Lcom/google/ads/util/i$d;

    invoke-virtual {v0}, Lcom/google/ads/util/i$d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 908
    if-nez v0, :cond_14

    .line 909
    const-string v0, "activity was null while trying to ping tracking URLs."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_38

    .line 919
    :cond_12
    monitor-exit p0

    return-void

    .line 914
    :cond_14
    :try_start_14
    iget-object v1, p0, Lcom/google/ads/internal/d;->s:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 915
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/google/ads/ae;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/google/ads/ae;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 917
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_37
    .catchall {:try_start_14 .. :try_end_37} :catchall_38

    goto :goto_1a

    .line 907
    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized z()V
    .registers 5

    .prologue
    .line 925
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/ads/internal/d;->h:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3b

    if-eqz v0, :cond_7

    .line 956
    :goto_5
    monitor-exit p0

    return-void

    .line 930
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/ads/internal/d;->d:Lcom/google/ads/AdRequest;

    if-eqz v0, :cond_5e

    .line 931
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    invoke-virtual {v0}, Lcom/google/ads/n;->a()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 933
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->j:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-static {}, Lcom/google/ads/util/AdUtil;->d()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 934
    const-string v0, "Refreshing ad."

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    .line 935
    iget-object v0, p0, Lcom/google/ads/internal/d;->d:Lcom/google/ads/AdRequest;

    invoke-virtual {p0, v0}, Lcom/google/ads/internal/d;->a(Lcom/google/ads/AdRequest;)V

    .line 943
    :goto_33
    iget-boolean v0, p0, Lcom/google/ads/internal/d;->n:Z

    if-eqz v0, :cond_44

    .line 945
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->f()V
    :try_end_3a
    .catchall {:try_start_7 .. :try_end_3a} :catchall_3b

    goto :goto_5

    .line 925
    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 939
    :cond_3e
    :try_start_3e
    const-string v0, "Not refreshing because the ad is not visible."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    goto :goto_33

    .line 948
    :cond_44
    invoke-static {}, Lcom/google/ads/m;->a()Lcom/google/ads/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/m;->b:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/internal/d;->q:Lcom/google/ads/af;

    iget-wide v2, p0, Lcom/google/ads/internal/d;->p:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    .line 951
    :cond_58
    const-string v0, "Tried to refresh an ad that wasn\'t an AdView."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    goto :goto_5

    .line 954
    :cond_5e
    const-string v0, "Tried to refresh before calling loadAd()."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V
    :try_end_63
    .catchall {:try_start_3e .. :try_end_63} :catchall_3b

    goto :goto_5
.end method
