.class public Lfr/testudo/spacecorsair/storage/MissionRepoStorage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfr/testudo/spacecorsair/storage/StorageSystem;


# static fields
.field private static final FILENAME:Ljava/lang/String; = "missions"


# instance fields
.field private gameContext:Landroid/content/Context;

.field private gson:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    iput-object v0, p0, Lfr/testudo/spacecorsair/storage/MissionRepoStorage;->gameContext:Landroid/content/Context;

    .line 32
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->gson:Lcom/google/gson/Gson;

    iput-object v0, p0, Lfr/testudo/spacecorsair/storage/MissionRepoStorage;->gson:Lcom/google/gson/Gson;

    .line 33
    return-void
.end method

.method private getMissionRepoFromString(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/mission/MissionRepository;
    .registers 4

    .prologue
    .line 133
    iget-object v0, p0, Lfr/testudo/spacecorsair/storage/MissionRepoStorage;->gson:Lcom/google/gson/Gson;

    const-class v1, Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    return-object v0
.end method

.method private getMissionRepoJsonRepres()Ljava/lang/String;
    .registers 3

    .prologue
    .line 138
    iget-object v0, p0, Lfr/testudo/spacecorsair/storage/MissionRepoStorage;->gson:Lcom/google/gson/Gson;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadDefault()V
    .registers 3

    .prologue
    .line 126
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->getDefaultInstance()Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    .line 127
    return-void
.end method

.method private missionRepofileExists()Z
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, Lfr/testudo/spacecorsair/storage/MissionRepoStorage;->gameContext:Landroid/content/Context;

    const-string v1, "missions"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private readJsonFromFile()Ljava/lang/String;
    .registers 7

    .prologue
    .line 97
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 98
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 99
    const/4 v1, 0x0

    .line 102
    :try_start_a
    iget-object v3, p0, Lfr/testudo/spacecorsair/storage/MissionRepoStorage;->gameContext:Landroid/content/Context;

    const-string v4, "missions"

    invoke-virtual {v3, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 104
    :goto_12
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_35

    .line 105
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_22} :catch_23
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_22} :catch_3d
    .catchall {:try_start_a .. :try_end_22} :catchall_4d

    goto :goto_12

    .line 108
    :catch_23
    move-exception v0

    .line 109
    :try_start_24
    const-string v3, "JDE"

    const-string v4, "Error while loading config"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_4d

    .line 113
    if-eqz v1, :cond_30

    .line 115
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_54

    .line 121
    :cond_30
    :goto_30
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 113
    :cond_35
    if-eqz v1, :cond_30

    .line 115
    :try_start_37
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_30

    .line 116
    :catch_3b
    move-exception v0

    goto :goto_30

    .line 110
    :catch_3d
    move-exception v0

    .line 111
    :try_start_3e
    const-string v3, "JDE"

    const-string v4, "Error while loading config"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_4d

    .line 113
    if-eqz v1, :cond_30

    .line 115
    :try_start_47
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_30

    .line 116
    :catch_4b
    move-exception v0

    goto :goto_30

    .line 113
    :catchall_4d
    move-exception v0

    if-eqz v1, :cond_53

    .line 115
    :try_start_50
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_56

    .line 118
    :cond_53
    :goto_53
    throw v0

    .line 116
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
    .line 68
    invoke-direct {p0}, Lfr/testudo/spacecorsair/storage/MissionRepoStorage;->missionRepofileExists()Z

    move-result v0

    if-nez v0, :cond_18

    .line 69
    const-string v0, "JDE"

    const-string v1, "Mission Repo file is not present, loading default"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-direct {p0}, Lfr/testudo/spacecorsair/storage/MissionRepoStorage;->loadDefault()V

    .line 82
    :goto_10
    const-string v0, "JDE"

    const-string v1, "Mission Repo restored !"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void

    .line 74
    :cond_18
    :try_start_18
    invoke-direct {p0}, Lfr/testudo/spacecorsair/storage/MissionRepoStorage;->readJsonFromFile()Ljava/lang/String;

    move-result-object v0

    .line 75
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/storage/MissionRepoStorage;->getMissionRepoFromString(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    move-result-object v0

    iput-object v0, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_24} :catch_25

    goto :goto_10

    .line 76
    :catch_25
    move-exception v0

    .line 77
    const-string v1, "JDE"

    const-string v2, "Ooops, Mission Repo file is corrupted ! Loading default (sorry about that)"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    invoke-direct {p0}, Lfr/testudo/spacecorsair/storage/MissionRepoStorage;->loadDefault()V

    goto :goto_10
.end method

.method public save()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 38
    sget-boolean v0, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->dirty:Z

    if-nez v0, :cond_6

    .line 64
    :goto_5
    return-void

    .line 42
    :cond_6
    invoke-direct {p0}, Lfr/testudo/spacecorsair/storage/MissionRepoStorage;->getMissionRepoJsonRepres()Ljava/lang/String;

    move-result-object v0

    .line 44
    const/4 v1, 0x0

    .line 46
    :try_start_b
    iget-object v2, p0, Lfr/testudo/spacecorsair/storage/MissionRepoStorage;->gameContext:Landroid/content/Context;

    const-string v3, "missions"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 47
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 48
    const-string v0, "JDE"

    const-string v2, "Misions Repo saved !"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_22} :catch_2a
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_22} :catch_3a
    .catchall {:try_start_b .. :try_end_22} :catchall_4a

    .line 54
    if-eqz v1, :cond_27

    .line 56
    :try_start_24
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_51

    .line 62
    :cond_27
    :goto_27
    sput-boolean v5, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->dirty:Z

    goto :goto_5

    .line 49
    :catch_2a
    move-exception v0

    .line 50
    :try_start_2b
    const-string v2, "JDE"

    const-string v3, "Error while saving Misions Repo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_4a

    .line 54
    if-eqz v1, :cond_27

    .line 56
    :try_start_34
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_27

    .line 57
    :catch_38
    move-exception v0

    goto :goto_27

    .line 51
    :catch_3a
    move-exception v0

    .line 52
    :try_start_3b
    const-string v2, "JDE"

    const-string v3, "Error while saving Misions Repo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_4a

    .line 54
    if-eqz v1, :cond_27

    .line 56
    :try_start_44
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_27

    .line 57
    :catch_48
    move-exception v0

    goto :goto_27

    .line 54
    :catchall_4a
    move-exception v0

    if-eqz v1, :cond_50

    .line 56
    :try_start_4d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_53

    .line 59
    :cond_50
    :goto_50
    throw v0

    .line 57
    :catch_51
    move-exception v0

    goto :goto_27

    :catch_53
    move-exception v1

    goto :goto_50
.end method
