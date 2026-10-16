.class public final Lcom/google/ads/as;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/as$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/ads/internal/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/ads/internal/a;->a:Lcom/google/ads/util/f;

    invoke-interface {v0}, Lcom/google/ads/util/f;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/a;

    sput-object v0, Lcom/google/ads/as;->a:Lcom/google/ads/internal/a;

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 159
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/ads/as$a;

    invoke-direct {v1, p0}, Lcom/google/ads/as$a;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 160
    return-void
.end method

.method public static a(Landroid/content/Context;J)Z
    .registers 6

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 121
    invoke-static {p0, p1, p2, v0}, Lcom/google/ads/as;->a(Landroid/content/Context;JLandroid/content/SharedPreferences;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 122
    const/4 v0, 0x0

    .line 134
    :goto_f
    return v0

    .line 124
    :cond_10
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/ads/as$1;

    invoke-direct {v1, p0}, Lcom/google/ads/as$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 134
    const/4 v0, 0x1

    goto :goto_f
.end method

.method static a(Landroid/content/Context;JLandroid/content/SharedPreferences;)Z
    .registers 9

    .prologue
    .line 140
    const-string v0, "drt"

    invoke-interface {p3, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "drt_ts"

    invoke-interface {p3, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "drt_ts"

    const-wide/16 v2, 0x0

    invoke-interface {p3, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v2, p1

    cmp-long v0, v0, v2

    if-gez v0, :cond_28

    .line 144
    :cond_26
    const/4 v0, 0x1

    .line 146
    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method
