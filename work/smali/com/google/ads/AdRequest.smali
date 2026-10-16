.class public Lcom/google/ads/AdRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/AdRequest$Gender;,
        Lcom/google/ads/AdRequest$ErrorCode;
    }
.end annotation


# static fields
.field public static final LOGTAG:Ljava/lang/String; = "Ads"

.field public static final TEST_EMULATOR:Ljava/lang/String;

.field public static final VERSION:Ljava/lang/String; = "6.3.1"

.field private static final a:Ljava/text/SimpleDateFormat;

.field private static b:Ljava/lang/reflect/Method;

.field private static c:Ljava/lang/reflect/Method;


# instance fields
.field private d:Lcom/google/ads/AdRequest$Gender;

.field private e:Ljava/util/Date;

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/ads/mediation/NetworkExtras;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/location/Location;

.field private j:Z

.field private k:Z

.field private l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 48
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/ads/AdRequest;->a:Ljava/text/SimpleDateFormat;

    .line 147
    sput-object v2, Lcom/google/ads/AdRequest;->b:Ljava/lang/reflect/Method;

    .line 148
    sput-object v2, Lcom/google/ads/AdRequest;->c:Ljava/lang/reflect/Method;

    .line 153
    :try_start_e
    const-string v0, "com.google.analytics.tracking.android.AdMobInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1a
    if-ge v0, v2, :cond_5b

    aget-object v3, v1, v0

    .line 155
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getInstance"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_36

    .line 157
    sput-object v3, Lcom/google/ads/AdRequest;->b:Ljava/lang/reflect/Method;

    .line 154
    :cond_33
    :goto_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 158
    :cond_36
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getJoinIds"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_33

    .line 160
    sput-object v3, Lcom/google/ads/AdRequest;->c:Ljava/lang/reflect/Method;
    :try_end_4b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_4b} :catch_4c
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_4b} :catch_6f

    goto :goto_33

    .line 169
    :catch_4c
    move-exception v0

    .line 170
    const-string v0, "No Google Analytics: Library Not Found."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 210
    :cond_52
    :goto_52
    const-string v0, "emulator"

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/ads/AdRequest;->TEST_EMULATOR:Ljava/lang/String;

    return-void

    .line 164
    :cond_5b
    :try_start_5b
    sget-object v0, Lcom/google/ads/AdRequest;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_63

    sget-object v0, Lcom/google/ads/AdRequest;->c:Ljava/lang/reflect/Method;

    if-nez v0, :cond_52

    .line 165
    :cond_63
    const/4 v0, 0x0

    sput-object v0, Lcom/google/ads/AdRequest;->b:Ljava/lang/reflect/Method;

    .line 166
    const/4 v0, 0x0

    sput-object v0, Lcom/google/ads/AdRequest;->c:Ljava/lang/reflect/Method;

    .line 167
    const-string v0, "No Google Analytics: Library Incompatible."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5b .. :try_end_6e} :catch_4c
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_6e} :catch_6f

    goto :goto_52

    .line 171
    :catch_6f
    move-exception v0

    .line 172
    const-string v0, "No Google Analytics: Error Loading Library"

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    goto :goto_52
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object v1, p0, Lcom/google/ads/AdRequest;->d:Lcom/google/ads/AdRequest$Gender;

    .line 181
    iput-object v1, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Date;

    .line 184
    iput-object v1, p0, Lcom/google/ads/AdRequest;->f:Ljava/util/Set;

    .line 187
    iput-object v1, p0, Lcom/google/ads/AdRequest;->g:Ljava/util/Map;

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/AdRequest;->h:Ljava/util/Map;

    .line 194
    iput-object v1, p0, Lcom/google/ads/AdRequest;->i:Landroid/location/Location;

    .line 197
    iput-boolean v2, p0, Lcom/google/ads/AdRequest;->j:Z

    .line 200
    iput-boolean v2, p0, Lcom/google/ads/AdRequest;->k:Z

    .line 213
    iput-object v1, p0, Lcom/google/ads/AdRequest;->l:Ljava/util/Set;

    return-void
.end method

.method private declared-synchronized a()Lcom/google/ads/mediation/admob/AdMobAdapterExtras;
    .registers 2

    .prologue
    .line 408
    monitor-enter p0

    :try_start_1
    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    invoke-virtual {p0, v0}, Lcom/google/ads/AdRequest;->getNetworkExtras(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    .line 409
    new-instance v0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    invoke-direct {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/ads/AdRequest;->setNetworkExtras(Lcom/google/ads/mediation/NetworkExtras;)Lcom/google/ads/AdRequest;

    .line 412
    :cond_11
    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    invoke-virtual {p0, v0}, Lcom/google/ads/AdRequest;->getNetworkExtras(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-object v0

    .line 408
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/ads/AdRequest;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/google/ads/AdRequest;->a()Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    move-result-object v0

    .line 446
    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_12

    .line 447
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->setExtras(Ljava/util/Map;)Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    .line 450
    :cond_12
    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    return-object p0
.end method

.method public addKeyword(Ljava/lang/String;)Lcom/google/ads/AdRequest;
    .registers 3

    .prologue
    .line 360
    iget-object v0, p0, Lcom/google/ads/AdRequest;->f:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 361
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/ads/AdRequest;->f:Ljava/util/Set;

    .line 364
    :cond_b
    iget-object v0, p0, Lcom/google/ads/AdRequest;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 365
    return-object p0
.end method

.method public addKeywords(Ljava/util/Set;)Lcom/google/ads/AdRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/ads/AdRequest;"
        }
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/ads/AdRequest;->f:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 379
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/ads/AdRequest;->f:Ljava/util/Set;

    .line 382
    :cond_b
    iget-object v0, p0, Lcom/google/ads/AdRequest;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 383
    return-object p0
.end method

.method public addMediationExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/ads/AdRequest;
    .registers 4

    .prologue
    .line 517
    iget-object v0, p0, Lcom/google/ads/AdRequest;->g:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 518
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/AdRequest;->g:Ljava/util/Map;

    .line 521
    :cond_b
    iget-object v0, p0, Lcom/google/ads/AdRequest;->g:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    return-object p0
.end method

.method public addTestDevice(Ljava/lang/String;)Lcom/google/ads/AdRequest;
    .registers 3

    .prologue
    .line 673
    iget-object v0, p0, Lcom/google/ads/AdRequest;->l:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 674
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/ads/AdRequest;->l:Ljava/util/Set;

    .line 677
    :cond_b
    iget-object v0, p0, Lcom/google/ads/AdRequest;->l:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 678
    return-object p0
.end method

.method public clearBirthday()Lcom/google/ads/AdRequest;
    .registers 2

    .prologue
    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Date;

    .line 303
    return-object p0
.end method

.method public getBirthday()Ljava/util/Date;
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Date;

    return-object v0
.end method

.method public getGender()Lcom/google/ads/AdRequest$Gender;
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/ads/AdRequest;->d:Lcom/google/ads/AdRequest$Gender;

    return-object v0
.end method

.method public getKeywords()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/ads/AdRequest;->f:Ljava/util/Set;

    if-nez v0, :cond_6

    .line 395
    const/4 v0, 0x0

    .line 398
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/ads/AdRequest;->f:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_5
.end method

.method public getLocation()Landroid/location/Location;
    .registers 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/google/ads/AdRequest;->i:Landroid/location/Location;

    return-object v0
.end method

.method public getNetworkExtras(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 489
    iget-object v0, p0, Lcom/google/ads/AdRequest;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPlusOneOptOut()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/google/ads/AdRequest;->a()Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getPlusOneOptOut()Z

    move-result v0

    return v0
.end method

.method public getRequestMap(Landroid/content/Context;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 569
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 572
    iget-object v0, p0, Lcom/google/ads/AdRequest;->f:Ljava/util/Set;

    if-eqz v0, :cond_11

    .line 573
    const-string v0, "kw"

    iget-object v1, p0, Lcom/google/ads/AdRequest;->f:Ljava/util/Set;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    :cond_11
    iget-object v0, p0, Lcom/google/ads/AdRequest;->d:Lcom/google/ads/AdRequest$Gender;

    if-eqz v0, :cond_24

    .line 578
    const-string v0, "cust_gender"

    iget-object v1, p0, Lcom/google/ads/AdRequest;->d:Lcom/google/ads/AdRequest$Gender;

    invoke-virtual {v1}, Lcom/google/ads/AdRequest$Gender;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    :cond_24
    iget-object v0, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Date;

    if-eqz v0, :cond_35

    .line 583
    const-string v0, "cust_age"

    sget-object v1, Lcom/google/ads/AdRequest;->a:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Date;

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    :cond_35
    iget-object v0, p0, Lcom/google/ads/AdRequest;->i:Landroid/location/Location;

    if-eqz v0, :cond_44

    .line 588
    const-string v0, "uule"

    iget-object v1, p0, Lcom/google/ads/AdRequest;->i:Landroid/location/Location;

    invoke-static {v1}, Lcom/google/ads/util/AdUtil;->a(Landroid/location/Location;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    :cond_44
    iget-boolean v0, p0, Lcom/google/ads/AdRequest;->j:Z

    if-eqz v0, :cond_51

    .line 592
    const-string v0, "testing"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    :cond_51
    invoke-virtual {p0, p1}, Lcom/google/ads/AdRequest;->isTestDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 596
    const-string v0, "adtest"

    const-string v1, "on"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    :cond_5e
    :goto_5e
    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    invoke-virtual {p0, v0}, Lcom/google/ads/AdRequest;->getNetworkExtras(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    .line 614
    const-class v1, Lcom/google/ads/doubleclick/DfpExtras;

    invoke-virtual {p0, v1}, Lcom/google/ads/AdRequest;->getNetworkExtras(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/doubleclick/DfpExtras;

    .line 615
    if-eqz v1, :cond_116

    invoke-virtual {v1}, Lcom/google/ads/doubleclick/DfpExtras;->getExtras()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_116

    invoke-virtual {v1}, Lcom/google/ads/doubleclick/DfpExtras;->getExtras()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_116

    .line 618
    const-string v0, "extras"

    invoke-virtual {v1}, Lcom/google/ads/doubleclick/DfpExtras;->getExtras()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    :cond_89
    :goto_89
    if-eqz v1, :cond_9a

    .line 626
    invoke-virtual {v1}, Lcom/google/ads/doubleclick/DfpExtras;->getPublisherProvidedId()Ljava/lang/String;

    move-result-object v0

    .line 627
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9a

    .line 628
    const-string v1, "ppid"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    :cond_9a
    iget-object v0, p0, Lcom/google/ads/AdRequest;->g:Ljava/util/Map;

    if-eqz v0, :cond_a5

    .line 633
    const-string v0, "mediation_extras"

    iget-object v1, p0, Lcom/google/ads/AdRequest;->g:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    :cond_a5
    :try_start_a5
    sget-object v0, Lcom/google/ads/AdRequest;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_cb

    .line 639
    sget-object v0, Lcom/google/ads/AdRequest;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 640
    sget-object v1, Lcom/google/ads/AdRequest;->c:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 643
    check-cast v0, Ljava/util/Map;

    .line 644
    if-eqz v0, :cond_cb

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_cb

    .line 645
    const-string v1, "analytics_join_id"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_cb
    .catch Ljava/lang/Throwable; {:try_start_a5 .. :try_end_cb} :catch_133

    .line 652
    :cond_cb
    :goto_cb
    return-object v2

    .line 598
    :cond_cc
    iget-boolean v0, p0, Lcom/google/ads/AdRequest;->k:Z

    if-nez v0, :cond_5e

    .line 600
    invoke-static {}, Lcom/google/ads/util/AdUtil;->c()Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 601
    const-string v0, "AdRequest.TEST_EMULATOR"

    .line 605
    :goto_d8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "To get test ads on this device, call adRequest.addTestDevice("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    .line 607
    iput-boolean v4, p0, Lcom/google/ads/AdRequest;->k:Z

    goto/16 :goto_5e

    .line 603
    :cond_f8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d8

    .line 619
    :cond_116
    if-eqz v0, :cond_89

    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_89

    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_89

    .line 622
    const-string v3, "extras"

    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_89

    .line 648
    :catch_133
    move-exception v0

    .line 649
    const-string v1, "Internal Analytics Error:"

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_cb
.end method

.method public isTestDevice(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 707
    iget-object v1, p0, Lcom/google/ads/AdRequest;->l:Ljava/util/Set;

    if-eqz v1, :cond_b

    .line 708
    invoke-static {p1}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 710
    if-nez v1, :cond_c

    .line 719
    :cond_b
    :goto_b
    return v0

    .line 714
    :cond_c
    iget-object v2, p0, Lcom/google/ads/AdRequest;->l:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 715
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public removeNetworkExtras(Ljava/lang/Class;)Lcom/google/ads/AdRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/ads/AdRequest;"
        }
    .end annotation

    .prologue
    .line 478
    iget-object v0, p0, Lcom/google/ads/AdRequest;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    return-object p0
.end method

.method public setBirthday(Ljava/lang/String;)Lcom/google/ads/AdRequest;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 243
    const-string v0, ""

    if-eq p1, v0, :cond_7

    if-nez p1, :cond_a

    .line 244
    :cond_7
    iput-object v1, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Date;

    .line 255
    :goto_9
    return-object p0

    .line 247
    :cond_a
    :try_start_a
    sget-object v0, Lcom/google/ads/AdRequest;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Date;
    :try_end_12
    .catch Ljava/text/ParseException; {:try_start_a .. :try_end_12} :catch_13

    goto :goto_9

    .line 248
    :catch_13
    move-exception v0

    .line 249
    const-string v0, "Birthday format invalid.  Expected \'YYYYMMDD\' where \'YYYY\' is a 4 digit year, \'MM\' is a two digit month, and \'DD\' is a two digit day.  Birthday value ignored"

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    .line 251
    iput-object v1, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Date;

    goto :goto_9
.end method

.method public setBirthday(Ljava/util/Calendar;)Lcom/google/ads/AdRequest;
    .registers 3

    .prologue
    .line 280
    if-nez p1, :cond_6

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Date;

    .line 286
    :goto_5
    return-object p0

    .line 283
    :cond_6
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/AdRequest;->setBirthday(Ljava/util/Date;)Lcom/google/ads/AdRequest;

    goto :goto_5
.end method

.method public setBirthday(Ljava/util/Date;)Lcom/google/ads/AdRequest;
    .registers 6

    .prologue
    .line 264
    if-nez p1, :cond_6

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Date;

    .line 270
    :goto_5
    return-object p0

    .line 267
    :cond_6
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Date;

    goto :goto_5
.end method

.method public setExtras(Ljava/util/Map;)Lcom/google/ads/AdRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/ads/AdRequest;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/google/ads/AdRequest;->a()Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->setExtras(Ljava/util/Map;)Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    .line 428
    return-object p0
.end method

.method public setGender(Lcom/google/ads/AdRequest$Gender;)Lcom/google/ads/AdRequest;
    .registers 2

    .prologue
    .line 221
    iput-object p1, p0, Lcom/google/ads/AdRequest;->d:Lcom/google/ads/AdRequest$Gender;

    .line 222
    return-object p0
.end method

.method public setKeywords(Ljava/util/Set;)Lcom/google/ads/AdRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/ads/AdRequest;"
        }
    .end annotation

    .prologue
    .line 346
    iput-object p1, p0, Lcom/google/ads/AdRequest;->f:Ljava/util/Set;

    .line 347
    return-object p0
.end method

.method public setLocation(Landroid/location/Location;)Lcom/google/ads/AdRequest;
    .registers 2

    .prologue
    .line 533
    iput-object p1, p0, Lcom/google/ads/AdRequest;->i:Landroid/location/Location;

    .line 534
    return-object p0
.end method

.method public setMediationExtras(Ljava/util/Map;)Lcom/google/ads/AdRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/ads/AdRequest;"
        }
    .end annotation

    .prologue
    .line 502
    iput-object p1, p0, Lcom/google/ads/AdRequest;->g:Ljava/util/Map;

    .line 503
    return-object p0
.end method

.method public setNetworkExtras(Lcom/google/ads/mediation/NetworkExtras;)Lcom/google/ads/AdRequest;
    .registers 4

    .prologue
    .line 465
    if-eqz p1, :cond_b

    .line 466
    iget-object v0, p0, Lcom/google/ads/AdRequest;->h:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    :cond_b
    return-object p0
.end method

.method public setPlusOneOptOut(Z)Lcom/google/ads/AdRequest;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/google/ads/AdRequest;->a()Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->setPlusOneOptOut(Z)Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    .line 321
    return-object p0
.end method

.method public setTestDevices(Ljava/util/Set;)Lcom/google/ads/AdRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/ads/AdRequest;"
        }
    .end annotation

    .prologue
    .line 691
    iput-object p1, p0, Lcom/google/ads/AdRequest;->l:Ljava/util/Set;

    .line 692
    return-object p0
.end method

.method public setTesting(Z)Lcom/google/ads/AdRequest;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 557
    iput-boolean p1, p0, Lcom/google/ads/AdRequest;->j:Z

    .line 558
    return-object p0
.end method
