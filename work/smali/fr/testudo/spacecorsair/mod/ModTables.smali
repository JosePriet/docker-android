.class final Lfr/testudo/spacecorsair/mod/ModTables;
.super Ljava/lang/Object;
.source "ModTables.java"


# static fields
.field static final CLASSES:[Ljava/lang/String;

.field static final LOCKED:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "ModFactionData"

    aput-object v1, v0, v2

    const-string v1, "ModV30Data"

    aput-object v1, v0, v3

    const-string v1, "ModRepData"

    aput-object v1, v0, v4

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTables;->CLASSES:[Ljava/lang/String;

    .line 24
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "KEYS"

    aput-object v1, v0, v2

    const-string v1, "SITE_SECTOR"

    aput-object v1, v0, v3

    const-string v1, "SITE_HULLS"

    aput-object v1, v0, v4

    const-string v1, "SECRET_SHIP"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "SECRET_WEAPON"

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTables;->LOCKED:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 27
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 28
    const/4 v0, 0x0

    const-string v2, "data/text.json"

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModContent;->layers(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 30
    :try_start_1d
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 31
    const/16 v5, 0x2000

    new-array v5, v5, [B

    .line 32
    :goto_26
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_50

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_30} :catch_31
    .catchall {:try_start_1d .. :try_end_30} :catchall_64

    goto :goto_26

    .line 34
    :catch_31
    move-exception v2

    :try_start_32
    const-string v5, "content"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "text.json: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_32 .. :try_end_4a} :catchall_64

    .line 35
    :try_start_4a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_11

    :catch_4e
    move-exception v0

    goto :goto_11

    .line 33
    :cond_50
    :try_start_50
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const-string v6, "UTF-8"

    invoke-direct {v5, v2, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v5, v4}, Lfr/testudo/spacecorsair/mod/ModLang;->parseFlat(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_5e} :catch_31
    .catchall {:try_start_50 .. :try_end_5e} :catchall_64

    .line 35
    :try_start_5e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_61} :catch_62

    goto :goto_11

    :catch_62
    move-exception v0

    goto :goto_11

    :catchall_64
    move-exception v1

    :try_start_65
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_68} :catch_f3

    :goto_68
    throw v1

    .line 37
    :cond_69
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 44
    :goto_6f
    return-void

    .line 39
    :cond_70
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v1

    :goto_79
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 40
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModTables;->set(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    if-nez v1, :cond_9b

    add-int/lit8 v0, v3, 0x1

    :goto_99
    move v3, v0

    .line 42
    goto :goto_79

    .line 41
    :cond_9b
    const-string v2, "content"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "text.json "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ": "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    goto :goto_99

    .line 43
    :cond_c5
    const-string v0, "content"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tables: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries applied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6f

    .line 35
    :catch_f3
    move-exception v0

    goto/16 :goto_68
.end method

.method static set(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 49
    :try_start_3
    const-string v2, "\\."

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 50
    array-length v2, v7

    const/4 v6, 0x3

    if-lt v2, v6, :cond_11

    array-length v2, v7

    const/4 v6, 0x4

    if-le v2, v6, :cond_14

    :cond_11
    const-string v2, "key must be Class.FIELD.i or Class.FIELD.i.j"

    .line 89
    :goto_13
    return-object v2

    .line 52
    :cond_14
    sget-object v8, Lfr/testudo/spacecorsair/mod/ModTables;->CLASSES:[Ljava/lang/String;

    array-length v9, v8

    move v6, v5

    move v2, v5

    :goto_19
    if-ge v6, v9, :cond_2a

    aget-object v10, v8, v6

    const/4 v11, 0x0

    aget-object v11, v7, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_27

    move v2, v3

    :cond_27
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    .line 53
    :cond_2a
    if-nez v2, :cond_2f

    const-string v2, "class not allowed"

    goto :goto_13

    .line 54
    :cond_2f
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTables;->LOCKED:[Ljava/lang/String;

    array-length v6, v3

    move v2, v5

    :goto_33
    if-ge v2, v6, :cond_46

    aget-object v5, v3, v2

    const/4 v8, 0x1

    aget-object v8, v7, v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    const-string v2, "field is locked"

    goto :goto_13

    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 55
    :cond_46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fr.testudo.spacecorsair.mod."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v7, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v7, v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 56
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_7b

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-nez v3, :cond_7e

    :cond_7b
    const-string v2, "not a static array"

    goto :goto_13

    .line 57
    :cond_7e
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 58
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 59
    const/4 v2, 0x2

    move-object v5, v3

    :goto_89
    array-length v3, v7

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_b4

    .line 60
    aget-object v3, v7, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 61
    if-eqz v5, :cond_a8

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_a8

    if-ltz v3, :cond_a8

    invoke-static {v5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    if-lt v3, v6, :cond_ac

    :cond_a8
    const-string v2, "index out of range"

    goto/16 :goto_13

    .line 62
    :cond_ac
    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 59
    add-int/lit8 v2, v2, 0x1

    move-object v5, v3

    goto :goto_89

    .line 64
    :cond_b4
    array-length v2, v7

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v7, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 65
    if-eqz v5, :cond_d1

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_d1

    if-ltz v6, :cond_d1

    invoke-static {v5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-lt v6, v2, :cond_d5

    :cond_d1
    const-string v2, "index out of range"

    goto/16 :goto_13

    .line 66
    :cond_d5
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 67
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_e7

    const-string v2, "not an element"

    goto/16 :goto_13

    .line 68
    :cond_e7
    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 73
    const-class v7, Ljava/lang/String;

    if-eq v3, v7, :cond_f7

    const-class v7, Ljava/lang/Object;

    if-ne v3, v7, :cond_126

    instance-of v7, v2, Ljava/lang/String;

    if-eqz v7, :cond_126

    .line 74
    :cond_f7
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_105

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_109

    :cond_105
    const-string v2, "not a text element (keys are locked)"

    goto/16 :goto_13

    :cond_109
    move-object v3, p1

    .line 82
    :goto_10a
    instance-of v2, v3, Ljava/lang/Float;

    if-eqz v2, :cond_16e

    move-object v0, v3

    check-cast v0, Ljava/lang/Float;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Float;->isNaN()Z

    move-result v2

    if-nez v2, :cond_122

    move-object v0, v3

    check-cast v0, Ljava/lang/Float;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Float;->isInfinite()Z

    move-result v2

    if-eqz v2, :cond_16e

    :cond_122
    const-string v2, "not a number"

    goto/16 :goto_13

    .line 77
    :cond_126
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v2, :cond_137

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_10a

    .line 78
    :cond_137
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v2, :cond_148

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_10a

    .line 79
    :cond_148
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v3, v2, :cond_159

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_10a

    .line 80
    :cond_159
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v3, v2, :cond_16a

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_10a

    .line 81
    :cond_16a
    const-string v2, "element type not supported"

    goto/16 :goto_13

    .line 83
    :cond_16e
    instance-of v2, v3, Ljava/lang/Double;

    if-eqz v2, :cond_18a

    move-object v0, v3

    check-cast v0, Ljava/lang/Double;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Double;->isNaN()Z

    move-result v2

    if-nez v2, :cond_186

    move-object v0, v3

    check-cast v0, Ljava/lang/Double;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Double;->isInfinite()Z

    move-result v2

    if-eqz v2, :cond_18a

    :cond_186
    const-string v2, "not a number"

    goto/16 :goto_13

    .line 84
    :cond_18a
    invoke-static {v5, v6, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_18d
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_18d} :catch_190
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_18d} :catch_195

    move-object v2, v4

    .line 85
    goto/16 :goto_13

    .line 86
    :catch_190
    move-exception v2

    .line 87
    const-string v2, "not a number"

    goto/16 :goto_13

    .line 88
    :catch_195
    move-exception v2

    .line 89
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_13
.end method
