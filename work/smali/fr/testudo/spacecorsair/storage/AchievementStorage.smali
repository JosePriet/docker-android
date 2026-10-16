.class public Lfr/testudo/spacecorsair/storage/AchievementStorage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfr/testudo/spacecorsair/storage/StorageSystem;


# static fields
.field private static final FILENAME:Ljava/lang/String; = "achievements"

.field private static achievementRepres:Lfr/testudo/spacecorsair/storage/AchievementsStorageRepresentation;

.field private static instance:Lfr/testudo/spacecorsair/storage/AchievementStorage;


# instance fields
.field private gameContext:Landroid/content/Context;

.field private gson:Lcom/google/gson/Gson;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    iput-object v0, p0, Lfr/testudo/spacecorsair/storage/AchievementStorage;->gameContext:Landroid/content/Context;

    .line 26
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->gson:Lcom/google/gson/Gson;

    iput-object v0, p0, Lfr/testudo/spacecorsair/storage/AchievementStorage;->gson:Lcom/google/gson/Gson;

    .line 27
    new-instance v0, Lfr/testudo/spacecorsair/storage/AchievementsStorageRepresentation;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/storage/AchievementsStorageRepresentation;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/storage/AchievementStorage;->achievementRepres:Lfr/testudo/spacecorsair/storage/AchievementsStorageRepresentation;

    .line 28
    return-void
.end method

.method private getAchievementRepresFromJson(Ljava/lang/String;)Lfr/testudo/spacecorsair/storage/AchievementsStorageRepresentation;
    .registers 4

    .prologue
    .line 131
    iget-object v0, p0, Lfr/testudo/spacecorsair/storage/AchievementStorage;->gson:Lcom/google/gson/Gson;

    const-class v1, Lfr/testudo/spacecorsair/storage/AchievementsStorageRepresentation;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/storage/AchievementsStorageRepresentation;

    return-object v0
.end method

.method private getAchievementsJsonRepresentation()Ljava/lang/String;
    .registers 3

    .prologue
    .line 136
    sget-object v0, Lfr/testudo/spacecorsair/storage/AchievementStorage;->achievementRepres:Lfr/testudo/spacecorsair/storage/AchievementsStorageRepresentation;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/storage/AchievementsStorageRepresentation;->loadFromMemory()V

    .line 137
    iget-object v0, p0, Lfr/testudo/spacecorsair/storage/AchievementStorage;->gson:Lcom/google/gson/Gson;

    sget-object v1, Lfr/testudo/spacecorsair/storage/AchievementStorage;->achievementRepres:Lfr/testudo/spacecorsair/storage/AchievementsStorageRepresentation;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lfr/testudo/spacecorsair/storage/AchievementStorage;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lfr/testudo/spacecorsair/storage/AchievementStorage;->instance:Lfr/testudo/spacecorsair/storage/AchievementStorage;

    if-nez v0, :cond_b

    .line 32
    new-instance v0, Lfr/testudo/spacecorsair/storage/AchievementStorage;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/storage/AchievementStorage;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/storage/AchievementStorage;->instance:Lfr/testudo/spacecorsair/storage/AchievementStorage;

    .line 34
    :cond_b
    sget-object v0, Lfr/testudo/spacecorsair/storage/AchievementStorage;->instance:Lfr/testudo/spacecorsair/storage/AchievementStorage;

    return-object v0
.end method

.method private loadDefault()V
    .registers 1

    .prologue
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
    iget-object v3, p0, Lfr/testudo/spacecorsair/storage/AchievementStorage;->gameContext:Landroid/content/Context;

    const-string v4, "achievements"

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

    const-string v4, "Error while loading achievement"

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

    const-string v4, "Error while loading achievement"

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

.method private storageFileExists()Z
    .registers 3

    .prologue
    .line 91
    iget-object v0, p0, Lfr/testudo/spacecorsair/storage/AchievementStorage;->gameContext:Landroid/content/Context;

    const-string v1, "achievements"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public restore()V
    .registers 4

    .prologue
    .line 66
    invoke-direct {p0}, Lfr/testudo/spacecorsair/storage/AchievementStorage;->storageFileExists()Z

    move-result v0

    if-nez v0, :cond_11

    .line 67
    const-string v0, "JDE"

    const-string v1, "Achievements file is not present, loading default"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-direct {p0}, Lfr/testudo/spacecorsair/storage/AchievementStorage;->loadDefault()V

    .line 82
    :goto_10
    return-void

    .line 72
    :cond_11
    :try_start_11
    invoke-direct {p0}, Lfr/testudo/spacecorsair/storage/AchievementStorage;->readJsonFromFile()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/storage/AchievementStorage;->getAchievementRepresFromJson(Ljava/lang/String;)Lfr/testudo/spacecorsair/storage/AchievementsStorageRepresentation;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/storage/AchievementsStorageRepresentation;->applyToMemory()V

    .line 74
    const-string v0, "JDE"

    const-string v1, "Achievement list restored !"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_23} :catch_24

    goto :goto_10

    .line 76
    :catch_24
    move-exception v0

    .line 77
    const-string v1, "JDE"

    const-string v2, "Ooops, Achievement file is corrupted ! Loading default (sorry about that)"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    invoke-direct {p0}, Lfr/testudo/spacecorsair/storage/AchievementStorage;->loadDefault()V

    goto :goto_10
.end method

.method public save()V
    .registers 6

    .prologue
    .line 40
    invoke-direct {p0}, Lfr/testudo/spacecorsair/storage/AchievementStorage;->getAchievementsJsonRepresentation()Ljava/lang/String;

    move-result-object v0

    .line 42
    const/4 v1, 0x0

    .line 44
    :try_start_5
    iget-object v2, p0, Lfr/testudo/spacecorsair/storage/AchievementStorage;->gameContext:Landroid/content/Context;

    const-string v3, "achievements"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 45
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 46
    const-string v0, "JDE"

    const-string v2, "Achievements saved !"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_1c} :catch_22
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1c} :catch_32
    .catchall {:try_start_5 .. :try_end_1c} :catchall_42

    .line 52
    if-eqz v1, :cond_21

    .line 54
    :try_start_1e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_49

    .line 62
    :cond_21
    :goto_21
    return-void

    .line 47
    :catch_22
    move-exception v0

    .line 48
    :try_start_23
    const-string v2, "JDE"

    const-string v3, "Error while saving Achievements"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_42

    .line 52
    if-eqz v1, :cond_21

    .line 54
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_21

    .line 55
    :catch_30
    move-exception v0

    goto :goto_21

    .line 49
    :catch_32
    move-exception v0

    .line 50
    :try_start_33
    const-string v2, "JDE"

    const-string v3, "Error while saving Achievemens"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_42

    .line 52
    if-eqz v1, :cond_21

    .line 54
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_21

    .line 55
    :catch_40
    move-exception v0

    goto :goto_21

    .line 52
    :catchall_42
    move-exception v0

    if-eqz v1, :cond_48

    .line 54
    :try_start_45
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_4b

    .line 57
    :cond_48
    :goto_48
    throw v0

    .line 55
    :catch_49
    move-exception v0

    goto :goto_21

    :catch_4b
    move-exception v1

    goto :goto_48
.end method
