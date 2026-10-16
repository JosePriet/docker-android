.class public Lfr/testudo/spacecorsair/storage/GiftStorage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfr/testudo/spacecorsair/storage/StorageSystem;


# static fields
.field private static final FILENAME:Ljava/lang/String; = "gifts"


# instance fields
.field private gameContext:Landroid/content/Context;

.field private gson:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    iput-object v0, p0, Lfr/testudo/spacecorsair/storage/GiftStorage;->gameContext:Landroid/content/Context;

    .line 31
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->gson:Lcom/google/gson/Gson;

    iput-object v0, p0, Lfr/testudo/spacecorsair/storage/GiftStorage;->gson:Lcom/google/gson/Gson;

    .line 32
    return-void
.end method

.method private fileExists()Z
    .registers 3

    .prologue
    .line 91
    iget-object v0, p0, Lfr/testudo/spacecorsair/storage/GiftStorage;->gameContext:Landroid/content/Context;

    const-string v1, "gifts"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private getGiftRepoStorage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 137
    iget-object v0, p0, Lfr/testudo/spacecorsair/storage/GiftStorage;->gson:Lcom/google/gson/Gson;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->giftRepository:Lfr/testudo/spacecorsair/business/gifts/GiftRepository;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getInstanceFromString(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/gifts/GiftRepository;
    .registers 4

    .prologue
    .line 132
    iget-object v0, p0, Lfr/testudo/spacecorsair/storage/GiftStorage;->gson:Lcom/google/gson/Gson;

    const-class v1, Lfr/testudo/spacecorsair/business/gifts/GiftRepository;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/gifts/GiftRepository;

    return-object v0
.end method

.method private loadDefault()V
    .registers 3

    .prologue
    .line 125
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-static {}, Lfr/testudo/spacecorsair/business/gifts/GiftRepository;->getDefaultInstance()Lfr/testudo/spacecorsair/business/gifts/GiftRepository;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->giftRepository:Lfr/testudo/spacecorsair/business/gifts/GiftRepository;

    .line 126
    return-void
.end method

.method private readJsonFromFile()Ljava/lang/String;
    .registers 7

    .prologue
    .line 96
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 97
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 98
    const/4 v1, 0x0

    .line 101
    :try_start_a
    iget-object v3, p0, Lfr/testudo/spacecorsair/storage/GiftStorage;->gameContext:Landroid/content/Context;

    const-string v4, "gifts"

    invoke-virtual {v3, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 103
    :goto_12
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_35

    .line 104
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_22} :catch_23
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_22} :catch_3d
    .catchall {:try_start_a .. :try_end_22} :catchall_4d

    goto :goto_12

    .line 107
    :catch_23
    move-exception v0

    .line 108
    :try_start_24
    const-string v3, "JDE"

    const-string v4, "Error while loading config"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_4d

    .line 112
    if-eqz v1, :cond_30

    .line 114
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_54

    .line 120
    :cond_30
    :goto_30
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 112
    :cond_35
    if-eqz v1, :cond_30

    .line 114
    :try_start_37
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_30

    .line 115
    :catch_3b
    move-exception v0

    goto :goto_30

    .line 109
    :catch_3d
    move-exception v0

    .line 110
    :try_start_3e
    const-string v3, "JDE"

    const-string v4, "Error while loading config"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_4d

    .line 112
    if-eqz v1, :cond_30

    .line 114
    :try_start_47
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_30

    .line 115
    :catch_4b
    move-exception v0

    goto :goto_30

    .line 112
    :catchall_4d
    move-exception v0

    if-eqz v1, :cond_53

    .line 114
    :try_start_50
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_56

    .line 117
    :cond_53
    :goto_53
    throw v0

    .line 115
    :catch_54
    move-exception v0

    goto :goto_30

    :catch_56
    move-exception v1

    goto :goto_53
.end method


# virtual methods
.method public restore()V
    .registers 4

    .prologue
    .line 67
    invoke-direct {p0}, Lfr/testudo/spacecorsair/storage/GiftStorage;->fileExists()Z

    move-result v0

    if-nez v0, :cond_18

    .line 68
    const-string v0, "JDE"

    const-string v1, "Gift Repo file is not present, loading default"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-direct {p0}, Lfr/testudo/spacecorsair/storage/GiftStorage;->loadDefault()V

    .line 81
    :goto_10
    const-string v0, "JDE"

    const-string v1, "gift restored !"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void

    .line 73
    :cond_18
    :try_start_18
    invoke-direct {p0}, Lfr/testudo/spacecorsair/storage/GiftStorage;->readJsonFromFile()Ljava/lang/String;

    move-result-object v0

    .line 74
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/storage/GiftStorage;->getInstanceFromString(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/gifts/GiftRepository;

    move-result-object v0

    iput-object v0, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->giftRepository:Lfr/testudo/spacecorsair/business/gifts/GiftRepository;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_24} :catch_25

    goto :goto_10

    .line 75
    :catch_25
    move-exception v0

    .line 76
    const-string v1, "JDE"

    const-string v2, "Ooops, gift  file is corrupted ! Loading default (sorry about that)"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    invoke-direct {p0}, Lfr/testudo/spacecorsair/storage/GiftStorage;->loadDefault()V

    goto :goto_10
.end method

.method public save()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 37
    sget-boolean v0, Lfr/testudo/spacecorsair/business/gifts/GiftRepository;->dirty:Z

    if-nez v0, :cond_6

    .line 63
    :goto_5
    return-void

    .line 41
    :cond_6
    invoke-direct {p0}, Lfr/testudo/spacecorsair/storage/GiftStorage;->getGiftRepoStorage()Ljava/lang/String;

    move-result-object v0

    .line 43
    const/4 v1, 0x0

    .line 45
    :try_start_b
    iget-object v2, p0, Lfr/testudo/spacecorsair/storage/GiftStorage;->gameContext:Landroid/content/Context;

    const-string v3, "gifts"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 47
    const-string v0, "JDE"

    const-string v2, "Gift Repo saved !"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_22} :catch_2a
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_22} :catch_3a
    .catchall {:try_start_b .. :try_end_22} :catchall_4a

    .line 53
    if-eqz v1, :cond_27

    .line 55
    :try_start_24
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_51

    .line 61
    :cond_27
    :goto_27
    sput-boolean v5, Lfr/testudo/spacecorsair/business/gifts/GiftRepository;->dirty:Z

    goto :goto_5

    .line 48
    :catch_2a
    move-exception v0

    .line 49
    :try_start_2b
    const-string v2, "JDE"

    const-string v3, "Error while saving Gift Repo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_4a

    .line 53
    if-eqz v1, :cond_27

    .line 55
    :try_start_34
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_27

    .line 56
    :catch_38
    move-exception v0

    goto :goto_27

    .line 50
    :catch_3a
    move-exception v0

    .line 51
    :try_start_3b
    const-string v2, "JDE"

    const-string v3, "Error while saving Gift Repo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_4a

    .line 53
    if-eqz v1, :cond_27

    .line 55
    :try_start_44
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_27

    .line 56
    :catch_48
    move-exception v0

    goto :goto_27

    .line 53
    :catchall_4a
    move-exception v0

    if-eqz v1, :cond_50

    .line 55
    :try_start_4d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_53

    .line 58
    :cond_50
    :goto_50
    throw v0

    .line 56
    :catch_51
    move-exception v0

    goto :goto_27

    :catch_53
    move-exception v1

    goto :goto_50
.end method
