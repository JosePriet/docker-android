.class public Lfr/testudo/spacecorsair/storage/StorageManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfr/testudo/spacecorsair/storage/StorageSystem;


# instance fields
.field private configStorage:Lfr/testudo/spacecorsair/storage/ConfigStorage;

.field private giftStorage:Lfr/testudo/spacecorsair/storage/GiftStorage;

.field private inventoryStorage:Lfr/testudo/spacecorsair/storage/InventoryStorage;

.field private levelPropStorage:Lfr/testudo/spacecorsair/storage/LevelPropertiesStorage;

.field private missionRepoStorage:Lfr/testudo/spacecorsair/storage/MissionRepoStorage;

.field private playerInfoStorage:Lfr/testudo/spacecorsair/storage/PlayerInfoStorage;

.field private priceStorage:Lfr/testudo/spacecorsair/storage/PriceStorage;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method


# virtual methods
.method public getConfigStorage()Lfr/testudo/spacecorsair/storage/ConfigStorage;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lfr/testudo/spacecorsair/storage/StorageManager;->configStorage:Lfr/testudo/spacecorsair/storage/ConfigStorage;

    if-nez v0, :cond_b

    .line 65
    new-instance v0, Lfr/testudo/spacecorsair/storage/ConfigStorage;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/storage/ConfigStorage;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/storage/StorageManager;->configStorage:Lfr/testudo/spacecorsair/storage/ConfigStorage;

    .line 67
    :cond_b
    iget-object v0, p0, Lfr/testudo/spacecorsair/storage/StorageManager;->configStorage:Lfr/testudo/spacecorsair/storage/ConfigStorage;

    return-object v0
.end method

.method public getGiftStorage()Lfr/testudo/spacecorsair/storage/GiftStorage;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lfr/testudo/spacecorsair/storage/StorageManager;->giftStorage:Lfr/testudo/spacecorsair/storage/GiftStorage;

    if-nez v0, :cond_b

    .line 38
    new-instance v0, Lfr/testudo/spacecorsair/storage/GiftStorage;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/storage/GiftStorage;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/storage/StorageManager;->giftStorage:Lfr/testudo/spacecorsair/storage/GiftStorage;

    .line 40
    :cond_b
    iget-object v0, p0, Lfr/testudo/spacecorsair/storage/StorageManager;->giftStorage:Lfr/testudo/spacecorsair/storage/GiftStorage;

    return-object v0
.end method

.method public getInventoryStorage()Lfr/testudo/spacecorsair/storage/InventoryStorage;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lfr/testudo/spacecorsair/storage/StorageManager;->inventoryStorage:Lfr/testudo/spacecorsair/storage/InventoryStorage;

    if-nez v0, :cond_b

    .line 18
    new-instance v0, Lfr/testudo/spacecorsair/storage/InventoryStorage;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/storage/InventoryStorage;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/storage/StorageManager;->inventoryStorage:Lfr/testudo/spacecorsair/storage/InventoryStorage;

    .line 20
    :cond_b
    iget-object v0, p0, Lfr/testudo/spacecorsair/storage/StorageManager;->inventoryStorage:Lfr/testudo/spacecorsair/storage/InventoryStorage;

    return-object v0
.end method

.method public getLevelPropStorage()Lfr/testudo/spacecorsair/storage/LevelPropertiesStorage;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lfr/testudo/spacecorsair/storage/StorageManager;->levelPropStorage:Lfr/testudo/spacecorsair/storage/LevelPropertiesStorage;

    if-nez v0, :cond_b

    .line 48
    new-instance v0, Lfr/testudo/spacecorsair/storage/LevelPropertiesStorage;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/storage/LevelPropertiesStorage;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/storage/StorageManager;->levelPropStorage:Lfr/testudo/spacecorsair/storage/LevelPropertiesStorage;

    .line 50
    :cond_b
    iget-object v0, p0, Lfr/testudo/spacecorsair/storage/StorageManager;->levelPropStorage:Lfr/testudo/spacecorsair/storage/LevelPropertiesStorage;

    return-object v0
.end method

.method public getMissionRepoStorage()Lfr/testudo/spacecorsair/storage/MissionRepoStorage;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lfr/testudo/spacecorsair/storage/StorageManager;->missionRepoStorage:Lfr/testudo/spacecorsair/storage/MissionRepoStorage;

    if-nez v0, :cond_b

    .line 30
    new-instance v0, Lfr/testudo/spacecorsair/storage/MissionRepoStorage;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/storage/MissionRepoStorage;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/storage/StorageManager;->missionRepoStorage:Lfr/testudo/spacecorsair/storage/MissionRepoStorage;

    .line 32
    :cond_b
    iget-object v0, p0, Lfr/testudo/spacecorsair/storage/StorageManager;->missionRepoStorage:Lfr/testudo/spacecorsair/storage/MissionRepoStorage;

    return-object v0
.end method

.method public getPlayerInfoStorage()Lfr/testudo/spacecorsair/storage/PlayerInfoStorage;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lfr/testudo/spacecorsair/storage/StorageManager;->playerInfoStorage:Lfr/testudo/spacecorsair/storage/PlayerInfoStorage;

    if-nez v0, :cond_b

    .line 57
    new-instance v0, Lfr/testudo/spacecorsair/storage/PlayerInfoStorage;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/storage/PlayerInfoStorage;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/storage/StorageManager;->playerInfoStorage:Lfr/testudo/spacecorsair/storage/PlayerInfoStorage;

    .line 59
    :cond_b
    iget-object v0, p0, Lfr/testudo/spacecorsair/storage/StorageManager;->playerInfoStorage:Lfr/testudo/spacecorsair/storage/PlayerInfoStorage;

    return-object v0
.end method

.method public getPriceStorage()Lfr/testudo/spacecorsair/storage/PriceStorage;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lfr/testudo/spacecorsair/storage/StorageManager;->priceStorage:Lfr/testudo/spacecorsair/storage/PriceStorage;

    if-nez v0, :cond_b

    .line 73
    new-instance v0, Lfr/testudo/spacecorsair/storage/PriceStorage;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/storage/PriceStorage;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/storage/StorageManager;->priceStorage:Lfr/testudo/spacecorsair/storage/PriceStorage;

    .line 75
    :cond_b
    iget-object v0, p0, Lfr/testudo/spacecorsair/storage/StorageManager;->priceStorage:Lfr/testudo/spacecorsair/storage/PriceStorage;

    return-object v0
.end method

.method public restore()V
    .registers 2

    .prologue
    .line 114
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/storage/StorageManager;->getInventoryStorage()Lfr/testudo/spacecorsair/storage/InventoryStorage;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/storage/InventoryStorage;->restore()V

    .line 115
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/storage/StorageManager;->getConfigStorage()Lfr/testudo/spacecorsair/storage/ConfigStorage;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/storage/ConfigStorage;->restore()V

    .line 116
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/storage/StorageManager;->getPriceStorage()Lfr/testudo/spacecorsair/storage/PriceStorage;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/storage/PriceStorage;->restore()V

    .line 117
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/storage/StorageManager;->getPlayerInfoStorage()Lfr/testudo/spacecorsair/storage/PlayerInfoStorage;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/storage/PlayerInfoStorage;->restore()V

    .line 118
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/storage/StorageManager;->getMissionRepoStorage()Lfr/testudo/spacecorsair/storage/MissionRepoStorage;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/storage/MissionRepoStorage;->restore()V

    .line 120
    invoke-static {}, Lfr/testudo/spacecorsair/storage/AchievementStorage;->getInstance()Lfr/testudo/spacecorsair/storage/AchievementStorage;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/storage/AchievementStorage;->restore()V

    .line 121
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/storage/StorageManager;->getGiftStorage()Lfr/testudo/spacecorsair/storage/GiftStorage;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/storage/GiftStorage;->restore()V

    .line 122
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/storage/StorageManager;->getLevelPropStorage()Lfr/testudo/spacecorsair/storage/LevelPropertiesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/storage/LevelPropertiesStorage;->restore()V

    .line 124
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSave;->sanitize()V

    return-void
.end method

.method public save()V
    .registers 2

    .prologue
    .line 98
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/storage/StorageManager;->getInventoryStorage()Lfr/testudo/spacecorsair/storage/InventoryStorage;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/storage/InventoryStorage;->save()V

    .line 99
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/storage/StorageManager;->getConfigStorage()Lfr/testudo/spacecorsair/storage/ConfigStorage;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/storage/ConfigStorage;->save()V

    .line 100
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/storage/StorageManager;->getPriceStorage()Lfr/testudo/spacecorsair/storage/PriceStorage;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/storage/PriceStorage;->save()V

    .line 101
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/storage/StorageManager;->getPlayerInfoStorage()Lfr/testudo/spacecorsair/storage/PlayerInfoStorage;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/storage/PlayerInfoStorage;->save()V

    .line 102
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/storage/StorageManager;->getMissionRepoStorage()Lfr/testudo/spacecorsair/storage/MissionRepoStorage;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/storage/MissionRepoStorage;->save()V

    .line 103
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-eqz v0, :cond_32

    .line 104
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->saveState()V

    .line 106
    :cond_32
    invoke-static {}, Lfr/testudo/spacecorsair/storage/AchievementStorage;->getInstance()Lfr/testudo/spacecorsair/storage/AchievementStorage;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/storage/AchievementStorage;->save()V

    .line 107
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/storage/StorageManager;->getGiftStorage()Lfr/testudo/spacecorsair/storage/GiftStorage;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/storage/GiftStorage;->save()V

    .line 108
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/storage/StorageManager;->getLevelPropStorage()Lfr/testudo/spacecorsair/storage/LevelPropertiesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/storage/LevelPropertiesStorage;->save()V

    .line 110
    return-void
.end method

.method public saveConfig()V
    .registers 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/storage/StorageManager;->getConfigStorage()Lfr/testudo/spacecorsair/storage/ConfigStorage;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/storage/ConfigStorage;->save()V

    .line 92
    return-void
.end method

.method public saveInventory()V
    .registers 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/storage/StorageManager;->getInventoryStorage()Lfr/testudo/spacecorsair/storage/InventoryStorage;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/storage/InventoryStorage;->save()V

    .line 88
    return-void
.end method
