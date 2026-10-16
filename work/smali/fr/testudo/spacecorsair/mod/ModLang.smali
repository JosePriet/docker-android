.class public Lfr/testudo/spacecorsair/mod/ModLang;
.super Ljava/lang/Object;
.source "ModLang.java"


# static fields
.field public static final GL_EXTRA:Ljava/lang/String; = "\u00e1\u00e9\u00ed\u00f3\u00fa\u00fc\u00f1\u00c1\u00c9\u00cd\u00d3\u00da\u00dc\u00d1\u00a1\u00bf\u00ba\u00aa\u00ab\u00bb"

.field public static final GL_UNKNOWN:I = 0x73

.field public static final KEY:Ljava/lang/String; = "lang"

.field public static final PREFS:Ljava/lang/String; = "modqol"

.field private static app:Landroid/content/Context;

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

.field private static mode:Ljava/lang/String;

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

    .line 219
    :try_start_1
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLang;->app:Landroid/content/Context;

    if-eqz v1, :cond_b

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLang;->app:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v0

    .line 221
    :cond_b
    :goto_b
    return-object v0

    .line 220
    :catch_c
    move-exception v1

    goto :goto_b
.end method

.method public static apply(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 90
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLang;->app:Landroid/content/Context;

    if-nez v0, :cond_b

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->applyApp(Landroid/content/Context;)V

    .line 91
    :cond_b
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->target(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .line 92
    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 93
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModLang;->set(Landroid/content/res/Resources;Ljava/util/Locale;)V

    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModLang;->set(Landroid/content/res/Resources;Ljava/util/Locale;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_24} :catch_25

    .line 96
    :goto_24
    return-void

    .line 95
    :catch_25
    move-exception v0

    goto :goto_24
.end method

.method public static applyApp(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 79
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_a
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModLang;->app:Landroid/content/Context;

    .line 80
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->sysLocale()Ljava/util/Locale;

    .line 81
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLang;->app:Landroid/content/Context;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->target(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .line 82
    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 83
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLang;->app:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModLang;->set(Landroid/content/res/Resources;Ljava/util/Locale;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_21} :catch_22

    .line 85
    :goto_21
    return-void

    .line 84
    :catch_22
    move-exception v0

    goto :goto_21
.end method

.method private static dict()Ljava/util/Map;
    .registers 6
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
    .line 160
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLang;->dict:Ljava/util/Map;

    if-eqz v0, :cond_7

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLang;->dict:Ljava/util/Map;

    .line 174
    :goto_6
    return-object v0

    .line 161
    :cond_7
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 163
    :try_start_c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLang;->app:Landroid/content/Context;

    .line 164
    if-nez v0, :cond_1c

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_20

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    .line 165
    :cond_1c
    :goto_1c
    if-nez v0, :cond_22

    move-object v0, v1

    goto :goto_6

    .line 164
    :cond_20
    const/4 v0, 0x0

    goto :goto_1c

    .line 166
    :cond_22
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "lang/es.json"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 167
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 168
    const/16 v3, 0x2000

    new-array v3, v3, [B

    .line 169
    :goto_35
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_45

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3f} :catch_40

    goto :goto_35

    .line 172
    :catch_40
    move-exception v0

    .line 173
    :goto_41
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLang;->dict:Ljava/util/Map;

    move-object v0, v1

    .line 174
    goto :goto_6

    .line 170
    :cond_45
    :try_start_45
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 171
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLang;->parseFlat(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_56} :catch_40

    goto :goto_41
.end method

.method public static gl(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/16 v6, 0x73

    const/4 v4, 0x0

    .line 306
    if-nez p0, :cond_7

    .line 316
    :goto_6
    return-object v0

    :cond_7
    move v3, v4

    .line 308
    :goto_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v3, v1, :cond_4e

    .line 309
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 310
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->glIndex(I)I

    move-result v1

    if-eq v1, v6, :cond_21

    if-eqz v0, :cond_1d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 308
    :cond_1d
    :goto_1d
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_8

    .line 311
    :cond_21
    if-nez v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    :cond_2c
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {v1, v5}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4a

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 314
    :goto_40
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->glIndex(I)I

    move-result v5

    if-eq v5, v6, :cond_4c

    :goto_46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1d

    :cond_4a
    move v1, v2

    .line 313
    goto :goto_40

    :cond_4c
    move v1, v2

    .line 314
    goto :goto_46

    .line 316
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
    .line 294
    const/16 v0, 0x20

    if-lt p0, v0, :cond_b

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_b

    add-int/lit8 v0, p0, -0x20

    .line 296
    :goto_a
    return v0

    .line 295
    :cond_b
    const-string v0, "\u00e1\u00e9\u00ed\u00f3\u00fa\u00fc\u00f1\u00c1\u00c9\u00cd\u00d3\u00da\u00dc\u00d1\u00a1\u00bf\u00ba\u00aa\u00ab\u00bb"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 296
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
    .line 301
    const/4 v1, 0x0

    const/16 v0, 0x5f

    if-ge p1, v0, :cond_b

    add-int/lit8 v0, p1, 0x20

    int-to-char v0, v0

    :goto_8
    aput-char v0, p0, v1

    .line 302
    return-void

    .line 301
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

    .line 179
    const/4 v0, 0x1

    new-array v3, v0, [I

    aput v5, v3, v5

    move-object v2, v1

    .line 181
    :goto_8
    aget v0, v3, v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_37

    .line 182
    aget v0, v3, v5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 183
    const/16 v4, 0x22

    if-ne v0, v4, :cond_27

    .line 184
    invoke-static {p0, v3}, Lfr/testudo/spacecorsair/mod/ModLang;->str(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    .line 185
    if-nez v2, :cond_22

    :goto_20
    move-object v2, v0

    .line 190
    goto :goto_8

    .line 185
    :cond_22
    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_20

    .line 187
    :cond_27
    const/16 v4, 0x2c

    if-eq v0, v4, :cond_2f

    const/16 v4, 0x7b

    if-ne v0, v4, :cond_38

    :cond_2f
    move-object v0, v1

    .line 188
    :goto_30
    aget v2, v3, v5

    add-int/lit8 v2, v2, 0x1

    aput v2, v3, v5

    goto :goto_20

    .line 191
    :cond_37
    return-void

    :cond_38
    move-object v0, v2

    goto :goto_30
.end method

.method public static selector(Landroid/app/Activity;)Landroid/view/View;
    .registers 11

    .prologue
    const/4 v5, 0x3

    const/4 v9, -0x1

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 128
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 129
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 130
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 131
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

    .line 132
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v6, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 134
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 135
    new-instance v2, Landroid/widget/RadioGroup;

    invoke-direct {v2, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 136
    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 137
    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "auto"

    aput-object v4, v3, v0

    const-string v4, "en"

    aput-object v4, v3, v8

    const-string v4, "es"

    aput-object v4, v3, v6

    .line 138
    new-array v4, v5, [Ljava/lang/String;

    const-string v5, "Auto"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "English"

    aput-object v5, v4, v8

    const-string v5, "Espa\u00f1ol"

    aput-object v5, v4, v6

    .line 139
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->mode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 140
    :goto_65
    array-length v6, v3

    if-ge v0, v6, :cond_8d

    .line 141
    new-instance v6, Landroid/widget/RadioButton;

    invoke-direct {v6, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 142
    const v7, 0x4c41000

    add-int/2addr v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setId(I)V

    .line 143
    aget-object v7, v4, v0

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {v6, v9}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 145
    invoke-virtual {v2, v6}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 146
    aget-object v7, v3, v0

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8a

    invoke-virtual {v6, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 140
    :cond_8a
    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    .line 148
    :cond_8d
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLang$1;

    invoke-direct {v0, v3, p0}, Lfr/testudo/spacecorsair/mod/ModLang$1;-><init>([Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 154
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 155
    return-object v1
.end method

.method private static set(Landroid/content/res/Resources;Ljava/util/Locale;)V
    .registers 8

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 100
    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 109
    :goto_c
    return-void

    .line 101
    :cond_d
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 103
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

    .line 104
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2b} :catch_33

    .line 108
    :goto_2b
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_c

    .line 105
    :catch_33
    move-exception v0

    .line 106
    iput-object p1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_2b
.end method

.method static setMode(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 112
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->mode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 124
    :cond_a
    :goto_a
    return-void

    .line 113
    :cond_b
    sput-object p1, Lfr/testudo/spacecorsair/mod/ModLang;->mode:Ljava/lang/String;

    .line 114
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLang;->dict:Ljava/util/Map;

    .line 115
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

    .line 116
    :goto_28
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->apply(Landroid/app/Activity;)V

    .line 118
    :try_start_2b
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->spanish()Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "Idioma cambiado. Reinicia el juego para aplicarlo en todas las pantallas."

    .line 119
    :goto_33
    const/4 v1, 0x1

    .line 118
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3b} :catch_58

    .line 121
    :goto_3b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_a

    .line 122
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

    .line 119
    :cond_55
    :try_start_55
    const-string v0, "Language changed. Restart the game to apply it everywhere."
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_57} :catch_58

    goto :goto_33

    .line 120
    :catch_58
    move-exception v0

    goto :goto_3b

    .line 115
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

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    aget v0, p1, v5

    add-int/lit8 v0, v0, 0x1

    .line 196
    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_18

    .line 197
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 198
    const/16 v3, 0x22

    if-ne v2, v3, :cond_21

    .line 212
    :cond_18
    add-int/lit8 v0, v0, 0x1

    aput v0, p1, v5

    .line 213
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 199
    :cond_21
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_6f

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_6f

    .line 200
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 201
    sparse-switch v2, :sswitch_data_74

    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    :goto_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 202
    :sswitch_3c
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 203
    :sswitch_42
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 204
    :sswitch_48
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 205
    :sswitch_4e
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 206
    :sswitch_54
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 207
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

    .line 210
    :cond_6f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 201
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
    .line 227
    if-eqz p0, :cond_8

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->spanish()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    move-object v0, p0

    .line 229
    :cond_9
    :goto_9
    return-object v0

    .line 228
    :cond_a
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->dict()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 229
    if-nez v0, :cond_9

    move-object v0, p0

    goto :goto_9
.end method

.method private static trSegments(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 261
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->dict()Ljava/util/Map;

    move-result-object v6

    .line 262
    invoke-interface {v6, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 263
    if-eqz v0, :cond_10

    .line 276
    :goto_f
    return-object v0

    .line 264
    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 265
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

    .line 266
    :cond_2b
    const-string v0, " \u00b7 "

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_35

    move-object v0, v5

    goto :goto_f

    .line 267
    :cond_35
    const-string v0, " \u00b7 "

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    move v1, v2

    move v3, v2

    .line 269
    :goto_3e
    array-length v0, v7

    if-ge v1, v0, :cond_5c

    .line 270
    aget-object v0, v7, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 271
    if-eqz v0, :cond_58

    aget-object v3, v7, v1

    invoke-virtual {v3, v8, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v1

    move v3, v4

    .line 269
    :cond_58
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3e

    .line 273
    :cond_5c
    if-nez v3, :cond_60

    move-object v0, v5

    goto :goto_f

    .line 274
    :cond_60
    new-instance v0, Ljava/lang/StringBuilder;

    aget-object v1, v7, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
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

    .line 276
    :cond_78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method static translateTree(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 248
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_17

    .line 249
    check-cast p0, Landroid/view/ViewGroup;

    .line 250
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

    .line 251
    :cond_17
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_2e

    .line 252
    check-cast p0, Landroid/widget/TextView;

    .line 253
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_2e

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2e

    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_2f

    .line 258
    :cond_2e
    :goto_2e
    return-void

    .line 255
    :cond_2f
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->trSegments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
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
    .line 282
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    .line 284
    :goto_a
    return-object v0

    .line 283
    :catch_b
    move-exception v0

    .line 284
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static watch(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 236
    :try_start_0
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->spanish()Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_f

    .line 245
    :cond_e
    :goto_e
    return-void

    .line 237
    :cond_f
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 238
    const v1, 0x4c41100

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_e

    .line 239
    const v1, 0x4c41100

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 240
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLang$2;

    invoke-direct {v2, v0}, Lfr/testudo/spacecorsair/mod/ModLang$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 243
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->translateTree(Landroid/view/View;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_37} :catch_38

    goto :goto_e

    .line 244
    :catch_38
    move-exception v0

    goto :goto_e
.end method
