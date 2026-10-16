.class public Lfr/testudo/spacecorsair/storage/PlayerInfoStorage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfr/testudo/spacecorsair/storage/StorageSystem;


# static fields
.field private static final FILENAME:Ljava/lang/String; = "playerinfo"


# instance fields
.field private gameContext:Landroid/content/Context;

.field private gson:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    iput-object v0, p0, Lfr/testudo/spacecorsair/storage/PlayerInfoStorage;->gameContext:Landroid/content/Context;

    .line 24
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->gson:Lcom/google/gson/Gson;

    iput-object v0, p0, Lfr/testudo/spacecorsair/storage/PlayerInfoStorage;->gson:Lcom/google/gson/Gson;

    .line 25
    return-void
.end method

.method private confFileExists()Z
    .registers 3

    .prologue
    .line 83
    iget-object v0, p0, Lfr/testudo/spacecorsair/storage/PlayerInfoStorage;->gameContext:Landroid/content/Context;

    const-string v1, "playerinfo"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private getPlayerInfo()Lfr/testudo/spacecorsair/business/player/PlayerInfo;
    .registers 2

    .prologue
    .line 122
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    return-object v0
.end method

.method private getPlayerInfoFromStr(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/player/PlayerInfo;
    .registers 4

    .prologue
    .line 126
    iget-object v0, p0, Lfr/testudo/spacecorsair/storage/PlayerInfoStorage;->gson:Lcom/google/gson/Gson;

    const-class v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    return-object v0
.end method

.method private getPlayerInfoJsonRepresentation()Ljava/lang/String;
    .registers 3

    .prologue
    .line 133
    iget-object v0, p0, Lfr/testudo/spacecorsair/storage/PlayerInfoStorage;->gson:Lcom/google/gson/Gson;

    invoke-direct {p0}, Lfr/testudo/spacecorsair/storage/PlayerInfoStorage;->getPlayerInfo()Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadDefault()V
    .registers 3

    .prologue
    .line 117
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->getDefaultInstance()Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    .line 118
    return-void
.end method

.method private readJsonFromFile()Ljava/lang/String;
    .registers 7

    .prologue
    .line 88
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 89
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 90
    const/4 v1, 0x0

    .line 93
    :try_start_a
    iget-object v3, p0, Lfr/testudo/spacecorsair/storage/PlayerInfoStorage;->gameContext:Landroid/content/Context;

    const-string v4, "playerinfo"

    invoke-virtual {v3, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 95
    :goto_12
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_35

    .line 96
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_22} :catch_23
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_22} :catch_3d
    .catchall {:try_start_a .. :try_end_22} :catchall_4d

    goto :goto_12

    .line 99
    :catch_23
    move-exception v0

    .line 100
    :try_start_24
    const-string v3, "JDE"

    const-string v4, "Error while loading player info"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_4d

    .line 104
    if-eqz v1, :cond_30

    .line 106
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_54

    .line 112
    :cond_30
    :goto_30
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 104
    :cond_35
    if-eqz v1, :cond_30

    .line 106
    :try_start_37
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_30

    .line 107
    :catch_3b
    move-exception v0

    goto :goto_30

    .line 101
    :catch_3d
    move-exception v0

    .line 102
    :try_start_3e
    const-string v3, "JDE"

    const-string v4, "Error while loading player info"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_4d

    .line 104
    if-eqz v1, :cond_30

    .line 106
    :try_start_47
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_30

    .line 107
    :catch_4b
    move-exception v0

    goto :goto_30

    .line 104
    :catchall_4d
    move-exception v0

    if-eqz v1, :cond_53

    .line 106
    :try_start_50
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_56

    .line 109
    :cond_53
    :goto_53
    throw v0

    .line 107
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
    .line 58
    invoke-direct {p0}, Lfr/testudo/spacecorsair/storage/PlayerInfoStorage;->confFileExists()Z

    move-result v0

    if-nez v0, :cond_21

    .line 59
    const-string v0, "JDE"

    const-string v1, "Player info file is not present, loading default"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-direct {p0}, Lfr/testudo/spacecorsair/storage/PlayerInfoStorage;->loadDefault()V

    .line 72
    :goto_10
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->init()V

    .line 73
    const-string v0, "JDE"

    const-string v1, "Player info restored !"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void

    .line 64
    :cond_21
    :try_start_21
    invoke-direct {p0}, Lfr/testudo/spacecorsair/storage/PlayerInfoStorage;->readJsonFromFile()Ljava/lang/String;

    move-result-object v0

    .line 65
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/storage/PlayerInfoStorage;->getPlayerInfoFromStr(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    move-result-object v0

    iput-object v0, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2f} :catch_30

    goto :goto_10

    .line 67
    :catch_30
    move-exception v0

    .line 68
    const-string v1, "JDE"

    const-string v2, "Ooops, player info file is corrupted ! Loading default (sorry about that)"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    invoke-direct {p0}, Lfr/testudo/spacecorsair/storage/PlayerInfoStorage;->loadDefault()V

    goto :goto_10
.end method

.method public save()V
    .registers 6

    .prologue
    .line 32
    invoke-direct {p0}, Lfr/testudo/spacecorsair/storage/PlayerInfoStorage;->getPlayerInfoJsonRepresentation()Ljava/lang/String;

    move-result-object v0

    .line 34
    const/4 v1, 0x0

    .line 36
    :try_start_5
    iget-object v2, p0, Lfr/testudo/spacecorsair/storage/PlayerInfoStorage;->gameContext:Landroid/content/Context;

    const-string v3, "playerinfo"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 37
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 38
    const-string v0, "JDE"

    const-string v2, "Player info saved !"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_1c} :catch_22
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1c} :catch_32
    .catchall {:try_start_5 .. :try_end_1c} :catchall_42

    .line 44
    if-eqz v1, :cond_21

    .line 46
    :try_start_1e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_49

    .line 54
    :cond_21
    :goto_21
    return-void

    .line 39
    :catch_22
    move-exception v0

    .line 40
    :try_start_23
    const-string v2, "JDE"

    const-string v3, "Error while saving player info"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_42

    .line 44
    if-eqz v1, :cond_21

    .line 46
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_21

    .line 47
    :catch_30
    move-exception v0

    goto :goto_21

    .line 41
    :catch_32
    move-exception v0

    .line 42
    :try_start_33
    const-string v2, "JDE"

    const-string v3, "Error while saving player info"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_42

    .line 44
    if-eqz v1, :cond_21

    .line 46
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_21

    .line 47
    :catch_40
    move-exception v0

    goto :goto_21

    .line 44
    :catchall_42
    move-exception v0

    if-eqz v1, :cond_48

    .line 46
    :try_start_45
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_4b

    .line 49
    :cond_48
    :goto_48
    throw v0

    .line 47
    :catch_49
    move-exception v0

    goto :goto_21

    :catch_4b
    move-exception v1

    goto :goto_48
.end method
