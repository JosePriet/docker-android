.class public final Lcom/google/ads/util/AdUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/util/AdUtil$UserActivityReceiver;,
        Lcom/google/ads/util/AdUtil$a;
    }
.end annotation


# static fields
.field public static final a:I

.field private static b:Ljava/lang/Boolean;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Landroid/media/AudioManager;

.field private static g:Z

.field private static h:Z

.field private static i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 61
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->a(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/ads/util/AdUtil;->a:I

    .line 86
    sput-object v1, Lcom/google/ads/util/AdUtil;->b:Ljava/lang/Boolean;

    .line 89
    sput-object v1, Lcom/google/ads/util/AdUtil;->c:Ljava/lang/String;

    .line 95
    sput-object v1, Lcom/google/ads/util/AdUtil;->e:Ljava/lang/String;

    .line 101
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/ads/util/AdUtil;->g:Z

    .line 679
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/ads/util/AdUtil;->h:Z

    .line 719
    sput-object v1, Lcom/google/ads/util/AdUtil;->i:Ljava/lang/String;

    return-void
.end method

.method public static a()I
    .registers 2

    .prologue
    .line 214
    sget v0, Lcom/google/ads/util/AdUtil;->a:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_8

    .line 215
    const/4 v0, 0x6

    .line 217
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static a(Landroid/content/Context;I)I
    .registers 5

    .prologue
    .line 896
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static a(Landroid/content/Context;Landroid/util/DisplayMetrics;)I
    .registers 4

    .prologue
    .line 245
    sget v0, Lcom/google/ads/util/AdUtil;->a:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_a

    .line 246
    invoke-static {p0, p1}, Lcom/google/ads/util/e;->a(Landroid/content/Context;Landroid/util/DisplayMetrics;)I

    move-result v0

    .line 248
    :goto_9
    return v0

    :cond_a
    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_9
.end method

.method public static a(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 167
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 174
    :goto_4
    return v0

    .line 168
    :catch_5
    move-exception v0

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Android SDK version couldn\'t be parsed to an int: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    .line 171
    const-string v0, "Defaulting to Android SDK version 3."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    .line 172
    const/4 v0, 0x3

    goto :goto_4
.end method

.method public static a(Landroid/app/Activity;)Landroid/util/DisplayMetrics;
    .registers 3

    .prologue
    .line 608
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    if-nez v0, :cond_8

    .line 609
    const/4 v0, 0x0

    .line 614
    :goto_7
    return-object v0

    .line 612
    :cond_8
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 613
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_7
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 185
    sget-object v0, Lcom/google/ads/util/AdUtil;->c:Ljava/lang/String;

    if-nez v0, :cond_2d

    .line 186
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_16

    invoke-static {}, Lcom/google/ads/util/AdUtil;->c()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 191
    :cond_16
    const-string v0, "emulator"

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    :goto_1c
    if-nez v0, :cond_25

    .line 197
    const/4 v0, 0x0

    .line 203
    :goto_1f
    return-object v0

    .line 193
    :cond_20
    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 200
    :cond_25
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/ads/util/AdUtil;->c:Ljava/lang/String;

    .line 203
    :cond_2d
    sget-object v0, Lcom/google/ads/util/AdUtil;->c:Ljava/lang/String;

    goto :goto_1f
.end method

.method public static a(Ljava/lang/Readable;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    const/16 v1, 0x800

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 154
    :goto_b
    invoke-interface {p0, v1}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1a

    .line 155
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 156
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 158
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 795
    .line 796
    const/4 v0, 0x0

    .line 798
    :try_start_1
    invoke-static {p0}, Lcom/google/ads/util/AdUtil;->b(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    .line 799
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_8} :catch_a

    move-result-object v0

    .line 804
    :goto_9
    return-object v0

    .line 800
    :catch_a
    move-exception v1

    .line 801
    const-string v2, "JsonException in serialization: "

    invoke-static {v2, v1}, Lcom/google/ads/util/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method public static a(Landroid/location/Location;)Ljava/util/HashMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide v6, 0x416312d000000000L    # 1.0E7

    .line 618
    if-nez p0, :cond_9

    .line 619
    const/4 v0, 0x0

    .line 628
    :goto_8
    return-object v0

    .line 622
    :cond_9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 623
    const-string v1, "time"

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    const-string v1, "lat"

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    mul-double/2addr v2, v6

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    const-string v1, "long"

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v6

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    const-string v1, "radius"

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8
.end method

.method public static a(Ljava/util/Set;)Lorg/json/JSONArray;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 847
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 849
    if-eqz p0, :cond_d

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    move-object v0, v1

    .line 879
    :goto_e
    return-object v0

    .line 853
    :cond_f
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 854
    instance-of v3, v0, Ljava/lang/String;

    if-nez v3, :cond_31

    instance-of v3, v0, Ljava/lang/Integer;

    if-nez v3, :cond_31

    instance-of v3, v0, Ljava/lang/Double;

    if-nez v3, :cond_31

    instance-of v3, v0, Ljava/lang/Long;

    if-nez v3, :cond_31

    instance-of v3, v0, Ljava/lang/Float;

    if-eqz v3, :cond_35

    .line 859
    :cond_31
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_13

    .line 860
    :cond_35
    instance-of v3, v0, Ljava/util/Map;

    if-eqz v3, :cond_4a

    .line 862
    :try_start_39
    check-cast v0, Ljava/util/Map;

    .line 863
    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->b(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_42
    .catch Ljava/lang/ClassCastException; {:try_start_39 .. :try_end_42} :catch_43

    goto :goto_13

    .line 864
    :catch_43
    move-exception v0

    .line 865
    const-string v3, "Unknown map type in json serialization: "

    invoke-static {v3, v0}, Lcom/google/ads/util/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13

    .line 867
    :cond_4a
    instance-of v3, v0, Ljava/util/Set;

    if-eqz v3, :cond_5f

    .line 869
    :try_start_4e
    check-cast v0, Ljava/util/Set;

    .line 870
    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->a(Ljava/util/Set;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_57
    .catch Ljava/lang/ClassCastException; {:try_start_4e .. :try_end_57} :catch_58

    goto :goto_13

    .line 871
    :catch_58
    move-exception v0

    .line 872
    const-string v3, "Unknown map type in json serialization: "

    invoke-static {v3, v0}, Lcom/google/ads/util/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13

    .line 875
    :cond_5f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown value in json serialization: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    goto :goto_13

    :cond_76
    move-object v0, v1

    .line 879
    goto :goto_e
.end method

.method public static a(Landroid/webkit/WebView;)V
    .registers 3

    .prologue
    .line 780
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 782
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 783
    return-void
.end method

.method public static a(Ljava/net/HttpURLConnection;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 791
    const-string v0, "User-Agent"

    invoke-static {p1}, Lcom/google/ads/util/AdUtil;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    return-void
.end method

.method public static a(Z)V
    .registers 1

    .prologue
    .line 676
    sput-boolean p0, Lcom/google/ads/util/AdUtil;->g:Z

    .line 677
    return-void
.end method

.method public static a(IILjava/lang/String;)Z
    .registers 5

    .prologue
    .line 303
    and-int v0, p0, p1

    if-nez v0, :cond_22

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The android:configChanges value of the com.google.ads.AdActivity must include "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;)V

    .line 306
    const/4 v0, 0x0

    .line 309
    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x1

    goto :goto_21
.end method

.method public static a(Landroid/content/Intent;Landroid/content/Context;)Z
    .registers 4

    .prologue
    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static a(Landroid/net/Uri;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 423
    if-nez p0, :cond_4

    .line 427
    :cond_3
    :goto_3
    return v0

    .line 426
    :cond_4
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 427
    const-string v2, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_18
    const/4 v0, 0x1

    goto :goto_3
.end method

.method static a(Lcom/google/ads/util/d;)Z
    .registers 2

    .prologue
    .line 408
    if-nez p0, :cond_4

    .line 409
    sget-object p0, Lcom/google/ads/util/d;->d:Lcom/google/ads/util/d;

    .line 411
    :cond_4
    sget-object v0, Lcom/google/ads/util/d;->e:Lcom/google/ads/util/d;

    invoke-virtual {p0, v0}, Lcom/google/ads/util/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/google/ads/util/d;->f:Lcom/google/ads/util/d;

    invoke-virtual {p0, v0}, Lcom/google/ads/util/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static b()I
    .registers 2

    .prologue
    .line 229
    sget v0, Lcom/google/ads/util/AdUtil;->a:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_8

    .line 230
    const/4 v0, 0x7

    .line 232
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static b(Landroid/content/Context;Landroid/util/DisplayMetrics;)I
    .registers 4

    .prologue
    .line 261
    sget v0, Lcom/google/ads/util/AdUtil;->a:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_a

    .line 262
    invoke-static {p0, p1}, Lcom/google/ads/util/e;->b(Landroid/content/Context;Landroid/util/DisplayMetrics;)I

    move-result v0

    .line 264
    :goto_9
    return v0

    :cond_a
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_9
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 439
    const/4 v0, 0x0

    .line 441
    if-eqz p0, :cond_34

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_34

    .line 443
    :try_start_a
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 444
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 445
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%032X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/math/BigInteger;

    const/4 v6, 0x1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {v5, v6, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_33
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_33} :catch_35

    move-result-object v0

    .line 451
    :cond_34
    :goto_34
    return-object v0

    .line 446
    :catch_35
    move-exception v0

    .line 447
    const/16 v0, 0x20

    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_34
.end method

.method public static b(Landroid/net/Uri;)Ljava/util/HashMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 643
    if-nez p0, :cond_5

    .line 662
    :goto_4
    return-object v0

    .line 647
    :cond_5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 648
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v2

    .line 650
    if-eqz v2, :cond_48

    .line 651
    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_18
    if-ge v2, v5, :cond_48

    aget-object v6, v4, v2

    .line 652
    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 653
    if-gez v7, :cond_2e

    .line 654
    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    :goto_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 656
    :cond_2e
    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 657
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    :cond_48
    move-object v0, v1

    .line 662
    goto :goto_4
.end method

.method public static b(Ljava/util/Map;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 809
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 811
    if-eqz p0, :cond_d

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    move-object v0, v2

    .line 842
    :goto_e
    return-object v0

    .line 815
    :cond_f
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 816
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 817
    instance-of v4, v1, Ljava/lang/String;

    if-nez v4, :cond_3b

    instance-of v4, v1, Ljava/lang/Integer;

    if-nez v4, :cond_3b

    instance-of v4, v1, Ljava/lang/Double;

    if-nez v4, :cond_3b

    instance-of v4, v1, Ljava/lang/Long;

    if-nez v4, :cond_3b

    instance-of v4, v1, Ljava/lang/Float;

    if-eqz v4, :cond_3f

    .line 822
    :cond_3b
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_17

    .line 823
    :cond_3f
    instance-of v4, v1, Ljava/util/Map;

    if-eqz v4, :cond_54

    .line 825
    :try_start_43
    check-cast v1, Ljava/util/Map;

    .line 826
    invoke-static {v1}, Lcom/google/ads/util/AdUtil;->b(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4c
    .catch Ljava/lang/ClassCastException; {:try_start_43 .. :try_end_4c} :catch_4d

    goto :goto_17

    .line 827
    :catch_4d
    move-exception v0

    .line 828
    const-string v1, "Unknown map type in json serialization: "

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_17

    .line 830
    :cond_54
    instance-of v4, v1, Ljava/util/Set;

    if-eqz v4, :cond_69

    .line 832
    :try_start_58
    check-cast v1, Ljava/util/Set;

    .line 833
    invoke-static {v1}, Lcom/google/ads/util/AdUtil;->a(Ljava/util/Set;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_61
    .catch Ljava/lang/ClassCastException; {:try_start_58 .. :try_end_61} :catch_62

    goto :goto_17

    .line 834
    :catch_62
    move-exception v0

    .line 835
    const-string v1, "Unknown map type in json serialization: "

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_17

    .line 838
    :cond_69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown value in json serialization: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    goto :goto_17

    :cond_80
    move-object v0, v2

    .line 842
    goto :goto_e
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 277
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 278
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 279
    const-string v3, "android.permission.INTERNET"

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_18

    .line 281
    const-string v1, "INTERNET permissions must be enabled in AndroidManifest.xml."

    invoke-static {v1}, Lcom/google/ads/util/b;->b(Ljava/lang/String;)V

    .line 289
    :goto_17
    return v0

    .line 283
    :cond_18
    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_26

    .line 285
    const-string v1, "ACCESS_NETWORK_STATE permissions must be enabled in AndroidManifest.xml."

    invoke-static {v1}, Lcom/google/ads/util/b;->b(Ljava/lang/String;)V

    goto :goto_17

    .line 289
    :cond_26
    const/4 v0, 0x1

    goto :goto_17
.end method

.method public static c()Z
    .registers 1

    .prologue
    .line 399
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->a(Lcom/google/ads/util/d;)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 323
    sget-object v0, Lcom/google/ads/util/AdUtil;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    .line 324
    sget-object v0, Lcom/google/ads/util/AdUtil;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 390
    :goto_b
    return v0

    .line 328
    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 329
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/ads/AdActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 330
    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 334
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/ads/util/AdUtil;->b:Ljava/lang/Boolean;

    .line 335
    if-eqz v0, :cond_2a

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_3c

    .line 336
    :cond_2a
    const-string v0, "Could not find com.google.ads.AdActivity, please make sure it is registered in AndroidManifest.xml."

    invoke-static {v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;)V

    .line 338
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/ads/util/AdUtil;->b:Ljava/lang/Boolean;

    .line 390
    :cond_35
    :goto_35
    sget-object v0, Lcom/google/ads/util/AdUtil;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_b

    .line 342
    :cond_3c
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v2, 0x10

    const-string v3, "keyboard"

    invoke-static {v1, v2, v3}, Lcom/google/ads/util/AdUtil;->a(IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_50

    .line 345
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/ads/util/AdUtil;->b:Ljava/lang/Boolean;

    .line 349
    :cond_50
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v2, 0x20

    const-string v3, "keyboardHidden"

    invoke-static {v1, v2, v3}, Lcom/google/ads/util/AdUtil;->a(IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_64

    .line 352
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/ads/util/AdUtil;->b:Ljava/lang/Boolean;

    .line 356
    :cond_64
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v2, 0x80

    const-string v3, "orientation"

    invoke-static {v1, v2, v3}, Lcom/google/ads/util/AdUtil;->a(IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 359
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/ads/util/AdUtil;->b:Ljava/lang/Boolean;

    .line 363
    :cond_78
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v2, 0x100

    const-string v3, "screenLayout"

    invoke-static {v1, v2, v3}, Lcom/google/ads/util/AdUtil;->a(IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8c

    .line 366
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/ads/util/AdUtil;->b:Ljava/lang/Boolean;

    .line 370
    :cond_8c
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v2, 0x200

    const-string v3, "uiMode"

    invoke-static {v1, v2, v3}, Lcom/google/ads/util/AdUtil;->a(IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a0

    .line 373
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/ads/util/AdUtil;->b:Ljava/lang/Boolean;

    .line 377
    :cond_a0
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v2, 0x400

    const-string v3, "screenSize"

    invoke-static {v1, v2, v3}, Lcom/google/ads/util/AdUtil;->a(IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b4

    .line 380
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/ads/util/AdUtil;->b:Ljava/lang/Boolean;

    .line 383
    :cond_b4
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v1, 0x800

    const-string v2, "smallestScreenSize"

    invoke-static {v0, v1, v2}, Lcom/google/ads/util/AdUtil;->a(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 386
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/ads/util/AdUtil;->b:Ljava/lang/Boolean;

    goto/16 :goto_35
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 463
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 465
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 466
    if-nez v0, :cond_10

    .line 467
    const/4 v0, 0x0

    .line 483
    :goto_f
    return-object v0

    .line 471
    :cond_10
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    .line 479
    const-string v0, "unknown"

    goto :goto_f

    .line 473
    :pswitch_1a
    const-string v0, "ed"

    goto :goto_f

    .line 476
    :pswitch_1d
    const-string v0, "wi"

    goto :goto_f

    .line 471
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1d
    .end packed-switch
.end method

.method public static d()Z
    .registers 1

    .prologue
    .line 669
    sget-boolean v0, Lcom/google/ads/util/AdUtil;->g:Z

    return v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .prologue
    const/high16 v5, 0x10000

    .line 495
    sget-object v0, Lcom/google/ads/util/AdUtil;->d:Ljava/lang/String;

    if-nez v0, :cond_5c

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 498
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 500
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "geo:0,0?q=donuts"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 503
    if-eqz v2, :cond_28

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 504
    :cond_28
    const-string v2, "m"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    :cond_2d
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "market://search?q=pname:com.google"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 510
    if-eqz v1, :cond_46

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 511
    :cond_46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_51

    .line 512
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    :cond_51
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    :cond_56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/ads/util/AdUtil;->d:Ljava/lang/String;

    .line 520
    :cond_5c
    sget-object v0, Lcom/google/ads/util/AdUtil;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 531
    sget-object v1, Lcom/google/ads/util/AdUtil;->e:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 532
    sget-object v0, Lcom/google/ads/util/AdUtil;->e:Ljava/lang/String;

    .line 561
    :cond_7
    :goto_7
    return-object v0

    .line 536
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 537
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "market://details?id=com.google.ads"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 540
    const/high16 v3, 0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 542
    if-eqz v2, :cond_7

    .line 546
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 547
    if-eqz v2, :cond_7

    .line 551
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 552
    if-eqz v1, :cond_7

    .line 557
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/ads/util/AdUtil;->e:Ljava/lang/String;

    .line 559
    sget-object v0, Lcom/google/ads/util/AdUtil;->e:Ljava/lang/String;
    :try_end_4d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_4d} :catch_4e

    goto :goto_7

    .line 560
    :catch_4e
    move-exception v1

    goto :goto_7
.end method

.method public static g(Landroid/content/Context;)Lcom/google/ads/util/AdUtil$a;
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 573
    sget-object v0, Lcom/google/ads/util/AdUtil;->f:Landroid/media/AudioManager;

    if-nez v0, :cond_f

    .line 574
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/google/ads/util/AdUtil;->f:Landroid/media/AudioManager;

    .line 578
    :cond_f
    sget-object v0, Lcom/google/ads/util/AdUtil$a;->f:Lcom/google/ads/util/AdUtil$a;

    .line 580
    sget-object v0, Lcom/google/ads/util/AdUtil;->f:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    .line 581
    invoke-static {}, Lcom/google/ads/util/AdUtil;->c()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 582
    sget-object v0, Lcom/google/ads/util/AdUtil$a;->e:Lcom/google/ads/util/AdUtil$a;

    .line 598
    :goto_1f
    return-object v0

    .line 583
    :cond_20
    sget-object v1, Lcom/google/ads/util/AdUtil;->f:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-nez v1, :cond_35

    sget-object v1, Lcom/google/ads/util/AdUtil;->f:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    if-nez v1, :cond_35

    const/4 v1, 0x2

    if-eq v0, v1, :cond_35

    if-ne v0, v2, :cond_38

    .line 587
    :cond_35
    sget-object v0, Lcom/google/ads/util/AdUtil$a;->d:Lcom/google/ads/util/AdUtil$a;

    goto :goto_1f

    .line 589
    :cond_38
    sget-object v0, Lcom/google/ads/util/AdUtil;->f:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 591
    if-eqz v0, :cond_42

    if-ne v0, v2, :cond_45

    .line 593
    :cond_42
    sget-object v0, Lcom/google/ads/util/AdUtil$a;->d:Lcom/google/ads/util/AdUtil$a;

    goto :goto_1f

    .line 595
    :cond_45
    sget-object v0, Lcom/google/ads/util/AdUtil$a;->b:Lcom/google/ads/util/AdUtil$a;

    goto :goto_1f
.end method

.method public static h(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 686
    sget-boolean v0, Lcom/google/ads/util/AdUtil;->h:Z

    if-eqz v0, :cond_5

    .line 698
    :goto_4
    return-void

    .line 691
    :cond_5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 692
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 693
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 695
    new-instance v1, Lcom/google/ads/util/AdUtil$UserActivityReceiver;

    invoke-direct {v1}, Lcom/google/ads/util/AdUtil$UserActivityReceiver;-><init>()V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 697
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/ads/util/AdUtil;->h:Z

    goto :goto_4
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 735
    sget-object v0, Lcom/google/ads/util/AdUtil;->i:Ljava/lang/String;

    if-nez v0, :cond_fa

    .line 737
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 738
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 740
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_21

    const-string v1, "Java0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 745
    :cond_21
    const-string v0, "os.name"

    const-string v1, "Linux"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 747
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 748
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 749
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_54

    .line 751
    const-string v0, "en"

    .line 753
    :cond_54
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 755
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7b

    .line 756
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 758
    :cond_7b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Build/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 760
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mozilla/5.0 ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "; U; "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AppleWebKit/0.0 (KHTML, like "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Gecko) Version/0.0 Mobile Safari/0.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 768
    :cond_d3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (Mobile; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "afma-sdk-a-v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "6.3.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/ads/util/AdUtil;->i:Ljava/lang/String;

    .line 772
    :cond_fa
    sget-object v0, Lcom/google/ads/util/AdUtil;->i:Ljava/lang/String;

    return-object v0
.end method
