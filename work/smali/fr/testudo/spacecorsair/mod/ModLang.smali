.class public Lfr/testudo/spacecorsair/mod/ModLang;
.super Ljava/lang/Object;
.source "ModLang.java"


# static fields
.field public static final GL_EXTRA:Ljava/lang/String; = "\u00e1\u00e9\u00ed\u00f3\u00fa\u00fc\u00f1\u00c1\u00c9\u00cd\u00d3\u00da\u00dc\u00d1\u00a1\u00bf\u00ba\u00aa\u00ab\u00bb"

.field public static final GL_UNKNOWN:I = 0x73

.field public static final KEY:Ljava/lang/String; = "lang"

.field public static final PREFS:Ljava/lang/String; = "modqol"

.field private static app:Landroid/content/Context;

.field private static back:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static dict:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile enFix:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mode:Ljava/lang/String;

.field private static volatile stockIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static systemLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static appString(I)Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 246
    :try_start_1
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLang;->app:Landroid/content/Context;

    if-eqz v1, :cond_b

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLang;->app:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v0

    .line 248
    :cond_b
    :goto_b
    return-object v0

    .line 247
    :catch_c
    move-exception v1

    goto :goto_b
.end method

.method public static apply(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 91
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLang;->app:Landroid/content/Context;

    if-nez v0, :cond_b

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->applyApp(Landroid/content/Context;)V

    .line 92
    :cond_b
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->target(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .line 93
    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModLang;->set(Landroid/content/res/Resources;Ljava/util/Locale;)V

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModLang;->set(Landroid/content/res/Resources;Ljava/util/Locale;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_24} :catch_2b

    .line 97
    :goto_24
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->front(Landroid/app/Activity;)V

    .line 98
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->onActivity(Landroid/app/Activity;)V

    .line 99
    return-void

    .line 96
    :catch_2b
    move-exception v0

    goto :goto_24
.end method

.method public static applyApp(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 78
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModSaveSig;->start(Landroid/content/Context;)V

    .line 80
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_d
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLang;->app:Landroid/content/Context;

    .line 81
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->sysLocale()Ljava/util/Locale;

    .line 82
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLang;->app:Landroid/content/Context;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->target(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .line 83
    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 84
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLang;->app:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModLang;->set(Landroid/content/res/Resources;Ljava/util/Locale;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_24} :catch_25

    .line 86
    :goto_24
    return-void

    .line 85
    :catch_25
    move-exception v0

    goto :goto_24
.end method

.method private static dict()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLang;->dict:Ljava/util/Map;

    if-eqz v0, :cond_7

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLang;->dict:Ljava/util/Map;

    .line 184
    :goto_6
    return-object v0

    .line 164
    :cond_7
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 166
    :try_start_c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLang;->app:Landroid/content/Context;

    .line 167
    if-nez v0, :cond_1c

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_20

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    .line 168
    :cond_1c
    :goto_1c
    if-nez v0, :cond_22

    move-object v0, v1

    goto :goto_6

    .line 167
    :cond_20
    const/4 v0, 0x0

    goto :goto_1c

    .line 169
    :cond_22
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "lang/es.json"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 170
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 171
    const/16 v4, 0x2000

    new-array v4, v4, [B

    .line 172
    :goto_35
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_45

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3f} :catch_40

    goto :goto_35

    .line 182
    :catch_40
    move-exception v0

    .line 183
    :cond_41
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLang;->dict:Ljava/util/Map;

    move-object v0, v1

    .line 184
    goto :goto_6

    .line 173
    :cond_45
    :try_start_45
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 174
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-string v5, "UTF-8"

    invoke-direct {v2, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v2, v1}, Lfr/testudo/spacecorsair/mod/ModLang;->parseFlat(Ljava/lang/String;Ljava/util/Map;)V

    .line 175
    const-string v2, "lang/es.json"

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModContent;->layers(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_60
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_6c} :catch_40

    .line 177
    :try_start_6c
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 178
    :goto_71
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_83

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_7b} :catch_7c
    .catchall {:try_start_6c .. :try_end_7b} :catchall_97

    goto :goto_71

    .line 180
    :catch_7c
    move-exception v3

    :try_start_7d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_60

    :catch_81
    move-exception v0

    goto :goto_60

    .line 179
    :cond_83
    :try_start_83
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-string v6, "UTF-8"

    invoke-direct {v5, v3, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v5, v1}, Lfr/testudo/spacecorsair/mod/ModLang;->parseFlat(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_91} :catch_7c
    .catchall {:try_start_83 .. :try_end_91} :catchall_97

    .line 180
    :try_start_91
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_94} :catch_95

    goto :goto_60

    :catch_95
    move-exception v0

    goto :goto_60

    :catchall_97
    move-exception v2

    :try_start_98
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_9b} :catch_9c

    :goto_9b
    :try_start_9b
    throw v2
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_9c} :catch_40

    :catch_9c
    move-exception v0

    goto :goto_9b
.end method

.method public static en(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 257
    if-eqz p0, :cond_8

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->spanish()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    move-object v0, p0

    .line 265
    :cond_9
    :goto_9
    return-object v0

    .line 258
    :cond_a
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLang;->back:Ljava/util/Map;

    .line 259
    if-nez v0, :cond_48

    .line 260
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 261
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->dict()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1f
    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    .line 262
    :cond_45
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLang;->back:Ljava/util/Map;

    move-object v0, v2

    .line 264
    :cond_48
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 265
    if-nez v0, :cond_9

    move-object v0, p0

    goto :goto_9
.end method

.method private static enFix()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLang;->enFix:Ljava/util/Map;

    .line 330
    if-eqz v0, :cond_5

    .line 342
    :goto_4
    return-object v0

    .line 331
    :cond_5
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModContent;->isReady()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_4

    .line 332
    :cond_10
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 333
    const/16 v0, 0x2000

    new-array v2, v0, [B

    .line 334
    const/4 v0, 0x0

    const-string v3, "lang/en.json"

    invoke-static {v0, v3}, Lfr/testudo/spacecorsair/mod/ModContent;->layers(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 336
    :try_start_30
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 337
    :goto_35
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_47

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3f} :catch_40
    .catchall {:try_start_30 .. :try_end_3f} :catchall_5b

    goto :goto_35

    .line 339
    :catch_40
    move-exception v4

    :try_start_41
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_24

    :catch_45
    move-exception v0

    goto :goto_24

    .line 338
    :cond_47
    :try_start_47
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const-string v6, "UTF-8"

    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v5, v1}, Lfr/testudo/spacecorsair/mod/ModLang;->parseFlat(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_55} :catch_40
    .catchall {:try_start_47 .. :try_end_55} :catchall_5b

    .line 339
    :try_start_55
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_24

    :catch_59
    move-exception v0

    goto :goto_24

    :catchall_5b
    move-exception v1

    :try_start_5c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5f} :catch_64

    :goto_5f
    throw v1

    .line 341
    :cond_60
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLang;->enFix:Ljava/util/Map;

    move-object v0, v1

    .line 342
    goto :goto_4

    .line 339
    :catch_64
    move-exception v0

    goto :goto_5f
.end method

.method public static varargs fmt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 284
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    const/4 v0, 0x0

    :goto_5
    array-length v2, p1

    if-ge v0, v2, :cond_2e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 286
    :cond_2e
    return-object v1
.end method

.method public static forWire(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 294
    if-nez p0, :cond_4

    .line 314
    :goto_3
    return-object v0

    .line 296
    :cond_4
    :try_start_4
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLang;->stockIds:Ljava/util/Map;

    .line 297
    if-nez v0, :cond_4f

    .line 298
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 299
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    .line 300
    const-class v1, Lfr/testudo/spacecorsair/R$string;

    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v4, :cond_4d

    aget-object v5, v3, v1

    .line 301
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_21} :catch_6b

    if-eq v6, v7, :cond_26

    .line 300
    :cond_23
    :goto_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 303
    :cond_26
    const/4 v6, 0x0

    :try_start_27
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v6}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v6

    .line 304
    if-eqz v6, :cond_23

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_23

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_23

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_4a} :catch_4b

    goto :goto_23

    .line 305
    :catch_4b
    move-exception v5

    goto :goto_23

    .line 307
    :cond_4d
    :try_start_4d
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLang;->stockIds:Ljava/util/Map;

    .line 309
    :cond_4f
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 310
    if-eqz v0, :cond_77

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_69} :catch_6b

    move-result-object v0

    goto :goto_3

    .line 311
    :catch_6b
    move-exception v0

    .line 312
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLang;->stockIds:Ljava/util/Map;

    if-nez v0, :cond_77

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLang;->stockIds:Ljava/util/Map;

    .line 314
    :cond_77
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->en(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static fromWire(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 319
    if-eqz p0, :cond_1e

    const-string v0, "@@s"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 320
    :try_start_a
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_18} :catch_1a

    move-result-object v0

    .line 322
    :goto_19
    return-object v0

    .line 320
    :catch_1a
    move-exception v0

    const-string v0, ""

    goto :goto_19

    .line 322
    :cond_1e
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19
.end method

.method public static gl(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/16 v6, 0x73

    const/4 v4, 0x0

    .line 427
    if-nez p0, :cond_7

    .line 437
    :goto_6
    return-object v0

    :cond_7
    move v3, v4

    .line 429
    :goto_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v3, v1, :cond_4e

    .line 430
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 431
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->glIndex(I)I

    move-result v1

    if-eq v1, v6, :cond_21

    if-eqz v0, :cond_1d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 429
    :cond_1d
    :goto_1d
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_8

    .line 432
    :cond_21
    if-nez v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 433
    :cond_2c
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {v1, v5}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v1

    .line 434
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4a

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 435
    :goto_40
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->glIndex(I)I

    move-result v5

    if-eq v5, v6, :cond_4c

    :goto_46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1d

    :cond_4a
    move v1, v2

    .line 434
    goto :goto_40

    :cond_4c
    move v1, v2

    .line 435
    goto :goto_46

    .line 437
    :cond_4e
    if-nez v0, :cond_52

    :goto_50
    move-object v0, p0

    goto :goto_6

    :cond_52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_50
.end method

.method public static glIndex(I)I
    .registers 2

    .prologue
    .line 415
    const/16 v0, 0x20

    if-lt p0, v0, :cond_b

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_b

    add-int/lit8 v0, p0, -0x20

    .line 417
    :goto_a
    return v0

    .line 416
    :cond_b
    const-string v0, "\u00e1\u00e9\u00ed\u00f3\u00fa\u00fc\u00f1\u00c1\u00c9\u00cd\u00d3\u00da\u00dc\u00d1\u00a1\u00bf\u00ba\u00aa\u00ab\u00bb"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 417
    if-ltz v0, :cond_16

    add-int/lit8 v0, v0, 0x5f

    goto :goto_a

    :cond_16
    const/16 v0, 0x73

    goto :goto_a
.end method

.method public static glPut([CI)V
    .registers 5

    .prologue
    .line 422
    const/4 v1, 0x0

    const/16 v0, 0x5f

    if-ge p1, v0, :cond_b

    add-int/lit8 v0, p1, 0x20

    int-to-char v0, v0

    :goto_8
    aput-char v0, p0, v1

    .line 423
    return-void

    .line 422
    :cond_b
    const-string v0, "\u00e1\u00e9\u00ed\u00f3\u00fa\u00fc\u00f1\u00c1\u00c9\u00cd\u00d3\u00da\u00dc\u00d1\u00a1\u00bf\u00ba\u00aa\u00ab\u00bb"

    add-int/lit8 v2, p1, -0x5f

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_8
.end method

.method static mode(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 41
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLang;->mode:Ljava/lang/String;

    if-nez v0, :cond_3a

    .line 43
    if-eqz p0, :cond_1b

    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "modqol"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lang"

    const-string v2, "auto"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLang;->mode:Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1b} :catch_3f

    .line 45
    :cond_1b
    :goto_1b
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLang;->mode:Ljava/lang/String;

    if-nez v0, :cond_22

    const-string v0, "auto"

    .line 52
    :goto_21
    return-object v0

    .line 48
    :cond_22
    :try_start_22
    const-string v0, "corsair_lang"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3a

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLang;->mode:Ljava/lang/String;
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_3a} :catch_3d

    .line 52
    :cond_3a
    :goto_3a
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLang;->mode:Ljava/lang/String;

    goto :goto_21

    .line 50
    :catch_3d
    move-exception v0

    goto :goto_3a

    .line 44
    :catch_3f
    move-exception v0

    goto :goto_1b
.end method

.method static parseFlat(Ljava/lang/String;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 189
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModSave;->strictInputs:Z

    if-eqz v0, :cond_44

    .line 190
    new-instance v0, Lcom/google/gson/stream/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 191
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 193
    :try_start_15
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 194
    :goto_18
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 195
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    if-eq v3, v4, :cond_2b

    .line 218
    :cond_2a
    :goto_2a
    return-void

    .line 197
    :cond_2b
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 201
    :catch_33
    move-exception v0

    goto :goto_2a

    .line 199
    :cond_35
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 200
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v2, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v2, :cond_2a

    invoke-interface {p1, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_43} :catch_33

    goto :goto_2a

    .line 206
    :cond_44
    const/4 v0, 0x1

    new-array v3, v0, [I

    aput v5, v3, v5

    move-object v2, v1

    .line 208
    :goto_4a
    aget v0, v3, v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_2a

    .line 209
    aget v0, v3, v5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 210
    const/16 v4, 0x22

    if-ne v0, v4, :cond_69

    .line 211
    invoke-static {p0, v3}, Lfr/testudo/spacecorsair/mod/ModLang;->str(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    .line 212
    if-nez v2, :cond_64

    :goto_62
    move-object v2, v0

    .line 217
    goto :goto_4a

    .line 212
    :cond_64
    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_62

    .line 214
    :cond_69
    const/16 v4, 0x2c

    if-eq v0, v4, :cond_71

    const/16 v4, 0x7b

    if-ne v0, v4, :cond_79

    :cond_71
    move-object v0, v1

    .line 215
    :goto_72
    aget v2, v3, v5

    add-int/lit8 v2, v2, 0x1

    aput v2, v3, v5

    goto :goto_62

    :cond_79
    move-object v0, v2

    goto :goto_72
.end method

.method public static re(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 271
    if-nez p0, :cond_4

    const/4 v0, 0x0

    .line 279
    :goto_3
    return-object v0

    .line 272
    :cond_4
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLang;->back:Ljava/util/Map;

    .line 273
    if-nez v0, :cond_48

    .line 274
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 275
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->dict()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_19
    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 276
    :cond_3f
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_47

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLang;->back:Ljava/util/Map;

    :cond_47
    move-object v0, v2

    .line 278
    :cond_48
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 279
    if-eqz v0, :cond_55

    :goto_50
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_55
    move-object v0, p0

    goto :goto_50
.end method

.method public static selector(Landroid/app/Activity;)Landroid/view/View;
    .registers 11

    .prologue
    const/4 v5, 0x3

    const/4 v9, -0x1

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 131
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 132
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 133
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Language"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / Idioma"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v6, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 137
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    new-instance v2, Landroid/widget/RadioGroup;

    invoke-direct {v2, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 139
    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 140
    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "auto"

    aput-object v4, v3, v0

    const-string v4, "en"

    aput-object v4, v3, v8

    const-string v4, "es"

    aput-object v4, v3, v6

    .line 141
    new-array v4, v5, [Ljava/lang/String;

    const-string v5, "Auto"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "English"

    aput-object v5, v4, v8

    const-string v5, "Espa\u00f1ol"

    aput-object v5, v4, v6

    .line 142
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->mode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 143
    :goto_65
    array-length v6, v3

    if-ge v0, v6, :cond_8d

    .line 144
    new-instance v6, Landroid/widget/RadioButton;

    invoke-direct {v6, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 145
    const v7, 0x4c41000

    add-int/2addr v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setId(I)V

    .line 146
    aget-object v7, v4, v0

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-virtual {v6, v9}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 148
    invoke-virtual {v2, v6}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 149
    aget-object v7, v3, v0

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8a

    invoke-virtual {v6, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 143
    :cond_8a
    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    .line 151
    :cond_8d
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLang$1;

    invoke-direct {v0, v3, p0}, Lfr/testudo/spacecorsair/mod/ModLang$1;-><init>([Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 157
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 158
    return-object v1
.end method

.method private static set(Landroid/content/res/Resources;Ljava/util/Locale;)V
    .registers 8

    .prologue
    .line 102
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 103
    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 112
    :goto_c
    return-void

    .line 104
    :cond_d
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 106
    :try_start_12
    const-class v0, Landroid/content/res/Configuration;

    const-string v2, "setLocale"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/util/Locale;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 107
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2b} :catch_33

    .line 111
    :goto_2b
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_c

    .line 108
    :catch_33
    move-exception v0

    .line 109
    iput-object p1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_2b
.end method

.method static setMode(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 115
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->mode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 127
    :cond_a
    :goto_a
    return-void

    .line 116
    :cond_b
    sput-object p1, Lfr/testudo/spacecorsair/mod/ModLang;->mode:Ljava/lang/String;

    .line 117
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLang;->dict:Ljava/util/Map;

    .line 118
    :try_start_10
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "modqol"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lang"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_28} :catch_5a

    .line 119
    :goto_28
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->apply(Landroid/app/Activity;)V

    .line 121
    :try_start_2b
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->spanish()Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "Idioma cambiado. Reinicia el juego para aplicarlo en todas las pantallas."

    .line 122
    :goto_33
    const/4 v1, 0x1

    .line 121
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3b} :catch_58

    .line 124
    :goto_3b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_a

    .line 125
    :try_start_41
    const-class v0, Landroid/app/Activity;

    const-string v1, "recreate"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_52} :catch_53

    goto :goto_a

    :catch_53
    move-exception v0

    goto :goto_a

    .line 122
    :cond_55
    :try_start_55
    const-string v0, "Language changed. Restart the game to apply it everywhere."
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_57} :catch_58

    goto :goto_33

    .line 123
    :catch_58
    move-exception v0

    goto :goto_3b

    .line 118
    :catch_5a
    move-exception v0

    goto :goto_28
.end method

.method public static spanish()Z
    .registers 2

    .prologue
    .line 73
    const-string v0, "es"

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLang;->app:Landroid/content/Context;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->target(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static str(Ljava/lang/String;[I)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    aget v0, p1, v5

    add-int/lit8 v0, v0, 0x1

    .line 223
    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_18

    .line 224
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 225
    const/16 v3, 0x22

    if-ne v2, v3, :cond_21

    .line 239
    :cond_18
    add-int/lit8 v0, v0, 0x1

    aput v0, p1, v5

    .line 240
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 226
    :cond_21
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_6f

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_6f

    .line 227
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 228
    sparse-switch v2, :sswitch_data_74

    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 223
    :goto_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 229
    :sswitch_3c
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 230
    :sswitch_42
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 231
    :sswitch_48
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 232
    :sswitch_4e
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 233
    :sswitch_54
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 234
    :sswitch_5a
    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, v0, 0x5

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x4

    goto :goto_39

    .line 237
    :cond_6f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 228
    nop

    :sswitch_data_74
    .sparse-switch
        0x62 -> :sswitch_4e
        0x66 -> :sswitch_54
        0x6e -> :sswitch_3c
        0x72 -> :sswitch_48
        0x74 -> :sswitch_42
        0x75 -> :sswitch_5a
    .end sparse-switch
.end method

.method private static sysLocale()Ljava/util/Locale;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLang;->systemLocale:Ljava/util/Locale;

    if-nez v0, :cond_1a

    .line 57
    :try_start_4
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLang;->systemLocale:Ljava/util/Locale;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_1d

    .line 58
    :goto_10
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLang;->systemLocale:Ljava/util/Locale;

    if-nez v0, :cond_1a

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLang;->systemLocale:Ljava/util/Locale;

    .line 60
    :cond_1a
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLang;->systemLocale:Ljava/util/Locale;

    return-object v0

    .line 57
    :catch_1d
    move-exception v0

    goto :goto_10
.end method

.method public static target(Landroid/content/Context;)Ljava/util/Locale;
    .registers 3

    .prologue
    .line 65
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->mode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 66
    const-string v1, "es"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    new-instance v0, Ljava/util/Locale;

    const-string v1, "es"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 68
    :goto_13
    return-object v0

    .line 67
    :cond_14
    const-string v1, "en"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    goto :goto_13

    .line 68
    :cond_1f
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->sysLocale()Ljava/util/Locale;

    move-result-object v0

    goto :goto_13
.end method

.method public static tr(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 346
    if-nez p0, :cond_3

    .line 349
    :cond_2
    :goto_2
    return-object p0

    .line 347
    :cond_3
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->spanish()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->enFix()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    :goto_14
    if-eqz v0, :cond_2

    move-object p0, v0

    goto :goto_2

    :cond_18
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->enFix()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_14

    .line 348
    :cond_23
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->dict()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 349
    if-eqz v0, :cond_31

    :goto_2f
    move-object p0, v0

    goto :goto_2

    :cond_31
    move-object v0, p0

    goto :goto_2f
.end method

.method private static trSegments(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 382
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->dict()Ljava/util/Map;

    move-result-object v6

    .line 383
    invoke-interface {v6, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 384
    if-eqz v0, :cond_10

    .line 397
    :goto_f
    return-object v0

    .line 385
    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 386
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_2b

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2b

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 387
    :cond_2b
    const-string v0, " \u00b7 "

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_35

    move-object v0, v5

    goto :goto_f

    .line 388
    :cond_35
    const-string v0, " \u00b7 "

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    move v1, v2

    move v3, v2

    .line 390
    :goto_3e
    array-length v0, v7

    if-ge v1, v0, :cond_5c

    .line 391
    aget-object v0, v7, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 392
    if-eqz v0, :cond_58

    aget-object v3, v7, v1

    invoke-virtual {v3, v8, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v1

    move v3, v4

    .line 390
    :cond_58
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3e

    .line 394
    :cond_5c
    if-nez v3, :cond_60

    move-object v0, v5

    goto :goto_f

    .line 395
    :cond_60
    new-instance v0, Ljava/lang/StringBuilder;

    aget-object v1, v7, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    :goto_67
    array-length v1, v7

    if-ge v4, v1, :cond_78

    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v7, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_67

    .line 397
    :cond_78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method static translateTree(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 369
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_17

    .line 370
    check-cast p0, Landroid/view/ViewGroup;

    .line 371
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2e

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->translateTree(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 372
    :cond_17
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_2e

    .line 373
    check-cast p0, Landroid/widget/TextView;

    .line 374
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 375
    if-eqz v0, :cond_2e

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2e

    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_2f

    .line 379
    :cond_2e
    :goto_2e
    return-void

    .line 376
    :cond_2f
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->trSegments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 377
    if-eqz v1, :cond_2e

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2e
.end method

.method public static varargs trf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 403
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    .line 405
    :goto_a
    return-object v0

    .line 404
    :catch_b
    move-exception v0

    .line 405
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static watch(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 356
    :try_start_0
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->spanish()Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_f

    .line 366
    :cond_e
    :goto_e
    return-void

    .line 357
    :cond_f
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 358
    const v1, 0x4c41100

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->translateTree(Landroid/view/View;)V

    goto :goto_e

    .line 365
    :catch_24
    move-exception v0

    goto :goto_e

    .line 359
    :cond_26
    const v1, 0x4c41100

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 360
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLang$2;

    invoke-direct {v2, v0}, Lfr/testudo/spacecorsair/mod/ModLang$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 364
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->translateTree(Landroid/view/View;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3d} :catch_24

    goto :goto_e
.end method
