.class public Lfr/testudo/spacecorsair/storage/InventoryStorage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfr/testudo/spacecorsair/storage/StorageSystem;


# static fields
.field private static final FILENAME:Ljava/lang/String; = "inventory"


# instance fields
.field private gameContext:Landroid/content/Context;

.field private gson:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    iput-object v0, p0, Lfr/testudo/spacecorsair/storage/InventoryStorage;->gameContext:Landroid/content/Context;

    .line 33
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->gson:Lcom/google/gson/Gson;

    iput-object v0, p0, Lfr/testudo/spacecorsair/storage/InventoryStorage;->gson:Lcom/google/gson/Gson;

    .line 34
    return-void
.end method

.method private getInventory()Lfr/testudo/spacecorsair/business/player/Inventory;
    .registers 2

    .prologue
    .line 137
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    return-object v0
.end method

.method private getInventoryFromString(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/player/Inventory;
    .registers 4

    .prologue
    .line 141
    iget-object v0, p0, Lfr/testudo/spacecorsair/storage/InventoryStorage;->gson:Lcom/google/gson/Gson;

    const-class v1, Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/player/Inventory;

    return-object v0
.end method

.method private getInventoryJsonRepresentation()Ljava/lang/String;
    .registers 3

    .prologue
    .line 147
    iget-object v0, p0, Lfr/testudo/spacecorsair/storage/InventoryStorage;->gson:Lcom/google/gson/Gson;

    invoke-direct {p0}, Lfr/testudo/spacecorsair/storage/InventoryStorage;->getInventory()Lfr/testudo/spacecorsair/business/player/Inventory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private inventoryFileExists()Z
    .registers 3

    .prologue
    .line 95
    iget-object v0, p0, Lfr/testudo/spacecorsair/storage/InventoryStorage;->gameContext:Landroid/content/Context;

    const-string v1, "inventory"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private loadDefault()V
    .registers 3

    .prologue
    .line 129
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/Inventory;->getDefault()Lfr/testudo/spacecorsair/business/player/Inventory;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->setAsPlayerInventory()V

    .line 131
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->setDirty(Z)V

    .line 132
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iput-object v0, v1, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    .line 133
    return-void
.end method

.method private readJsonFromFile()Ljava/lang/String;
    .registers 7

    .prologue
    .line 100
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 101
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 102
    const/4 v1, 0x0

    .line 105
    :try_start_a
    iget-object v3, p0, Lfr/testudo/spacecorsair/storage/InventoryStorage;->gameContext:Landroid/content/Context;

    const-string v4, "inventory"

    invoke-virtual {v3, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 107
    :goto_12
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_35

    .line 108
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_22} :catch_23
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_22} :catch_3d
    .catchall {:try_start_a .. :try_end_22} :catchall_4d

    goto :goto_12

    .line 111
    :catch_23
    move-exception v0

    .line 112
    :try_start_24
    const-string v3, "JDE"

    const-string v4, "Error while loading inventory"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_4d

    .line 116
    if-eqz v1, :cond_30

    .line 118
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_54

    .line 124
    :cond_30
    :goto_30
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 116
    :cond_35
    if-eqz v1, :cond_30

    .line 118
    :try_start_37
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_30

    .line 119
    :catch_3b
    move-exception v0

    goto :goto_30

    .line 113
    :catch_3d
    move-exception v0

    .line 114
    :try_start_3e
    const-string v3, "JDE"

    const-string v4, "Error while loading inventory"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_4d

    .line 116
    if-eqz v1, :cond_30

    .line 118
    :try_start_47
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_30

    .line 119
    :catch_4b
    move-exception v0

    goto :goto_30

    .line 116
    :catchall_4d
    move-exception v0

    if-eqz v1, :cond_53

    .line 118
    :try_start_50
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_56

    .line 121
    :cond_53
    :goto_53
    throw v0

    .line 119
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
    .line 70
    invoke-direct {p0}, Lfr/testudo/spacecorsair/storage/InventoryStorage;->inventoryFileExists()Z

    move-result v0

    if-nez v0, :cond_21

    .line 71
    const-string v0, "JDE"

    const-string v1, "Inventory file is not present, loading default"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-direct {p0}, Lfr/testudo/spacecorsair/storage/InventoryStorage;->loadDefault()V

    .line 84
    :goto_10
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->validate()V

    .line 85
    const-string v0, "JDE"

    const-string v1, "Inventory restored !"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void

    .line 76
    :cond_21
    :try_start_21
    invoke-direct {p0}, Lfr/testudo/spacecorsair/storage/InventoryStorage;->readJsonFromFile()Ljava/lang/String;

    move-result-object v0

    .line 77
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/storage/InventoryStorage;->getInventoryFromString(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/player/Inventory;

    move-result-object v0

    iput-object v0, v1, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    .line 78
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->setAsPlayerInventory()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_38} :catch_39

    goto :goto_10

    .line 79
    :catch_39
    move-exception v0

    .line 80
    const-string v1, "JDE"

    const-string v2, "Ooops, inventory file is corrupted ! Loading default (sorry about that)"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    invoke-direct {p0}, Lfr/testudo/spacecorsair/storage/InventoryStorage;->loadDefault()V

    goto :goto_10
.end method

.method public save()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 40
    invoke-direct {p0}, Lfr/testudo/spacecorsair/storage/InventoryStorage;->getInventory()Lfr/testudo/spacecorsair/business/player/Inventory;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->isDirty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 66
    :goto_b
    return-void

    .line 44
    :cond_c
    invoke-direct {p0}, Lfr/testudo/spacecorsair/storage/InventoryStorage;->getInventoryJsonRepresentation()Ljava/lang/String;

    move-result-object v0

    .line 46
    const/4 v1, 0x0

    .line 48
    :try_start_11
    iget-object v2, p0, Lfr/testudo/spacecorsair/storage/InventoryStorage;->gameContext:Landroid/content/Context;

    const-string v3, "inventory"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 49
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 50
    const-string v0, "JDE"

    const-string v2, "Inventory saved !"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_28} :catch_35
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_28} :catch_45
    .catchall {:try_start_11 .. :try_end_28} :catchall_55

    .line 56
    if-eqz v1, :cond_2d

    .line 58
    :try_start_2a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_5c

    .line 64
    :cond_2d
    :goto_2d
    invoke-direct {p0}, Lfr/testudo/spacecorsair/storage/InventoryStorage;->getInventory()Lfr/testudo/spacecorsair/business/player/Inventory;

    move-result-object v0

    invoke-virtual {v0, v5}, Lfr/testudo/spacecorsair/business/player/Inventory;->setDirty(Z)V

    goto :goto_b

    .line 51
    :catch_35
    move-exception v0

    .line 52
    :try_start_36
    const-string v2, "JDE"

    const-string v3, "Error while saving inventory"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_55

    .line 56
    if-eqz v1, :cond_2d

    .line 58
    :try_start_3f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_2d

    .line 59
    :catch_43
    move-exception v0

    goto :goto_2d

    .line 53
    :catch_45
    move-exception v0

    .line 54
    :try_start_46
    const-string v2, "JDE"

    const-string v3, "Error while saving inventory"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_55

    .line 56
    if-eqz v1, :cond_2d

    .line 58
    :try_start_4f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_2d

    .line 59
    :catch_53
    move-exception v0

    goto :goto_2d

    .line 56
    :catchall_55
    move-exception v0

    if-eqz v1, :cond_5b

    .line 58
    :try_start_58
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5e

    .line 61
    :cond_5b
    :goto_5b
    throw v0

    .line 59
    :catch_5c
    move-exception v0

    goto :goto_2d

    :catch_5e
    move-exception v1

    goto :goto_5b
.end method
