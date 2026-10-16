.class public Lfr/testudo/spacecorsair/engine/ObjectRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry; = null

.field private static final MISSING_STRING_MSG:Ljava/lang/String; = "missingString"


# instance fields
.field public camera:Lfr/testudo/spacecorsair/engine/Camera;

.field public config:Lfr/testudo/spacecorsair/game/Config;

.field public currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

.field public game:Lfr/testudo/spacecorsair/game/Game;

.field public gameRenderer:Lfr/testudo/spacecorsair/engine/GameRenderer;

.field public giftRepository:Lfr/testudo/spacecorsair/business/gifts/GiftRepository;

.field public gson:Lcom/google/gson/Gson;

.field private initilized:Z

.field public levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

.field public mainActivity:Lfr/testudo/spacecorsair/activity/Main;

.field public mainView:Lfr/testudo/spacecorsair/view/MainView;

.field public missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

.field public musicManager:Lfr/testudo/spacecorsair/engine/MusicManager;

.field public playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

.field public priceConf:Lfr/testudo/spacecorsair/storage/PriceListRepresentation;

.field public renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

.field public soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

.field public storageManager:Lfr/testudo/spacecorsair/storage/StorageManager;

.field public vibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    new-instance v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lfr/testudo/spacecorsair/engine/Camera;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Camera;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    .line 47
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->gson:Lcom/google/gson/Gson;

    .line 49
    new-instance v0, Lfr/testudo/spacecorsair/storage/StorageManager;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/storage/StorageManager;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->storageManager:Lfr/testudo/spacecorsair/storage/StorageManager;

    .line 51
    new-instance v0, Lfr/testudo/spacecorsair/storage/PriceListRepresentation;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/storage/PriceListRepresentation;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->priceConf:Lfr/testudo/spacecorsair/storage/PriceListRepresentation;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->initilized:Z

    .line 70
    return-void
.end method

.method public static pause()V
    .registers 1

    .prologue
    .line 73
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/GameThread;->waitCommitPhysicEnded()V

    .line 74
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/Game;->pause()V

    .line 75
    return-void
.end method

.method public static resume()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 78
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iput v1, v0, Lfr/testudo/spacecorsair/engine/GameThread;->shootEventIndex:I

    .line 79
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iput v1, v0, Lfr/testudo/spacecorsair/engine/GameThread;->gazEventIndex:I

    .line 80
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iput v1, v0, Lfr/testudo/spacecorsair/engine/GameThread;->boosterEventIndex:I

    .line 81
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isPousee:Z

    .line 82
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isShooting:Z

    .line 83
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isBoosterEnabled:Z

    .line 84
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/Game;->resume()V

    .line 85
    return-void
.end method


# virtual methods
.method public getLocalizedString(I)Ljava/lang/String;
    .registers 3

    .prologue
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModBoss;->text(I)Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :mod_real_text
    return-object v0
    :mod_real_text

    .line 115
    :try_start_0
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 117
    :goto_8
    return-object v0

    .line 116
    :catch_9
    move-exception v0

    .line 117
    const-string v0, "missingString"

    goto :goto_8
.end method

.method public getStringRessource(I)Ljava/lang/String;
    .registers 3

    .prologue
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModBoss;->text(I)Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :mod_real_text
    return-object v0
    :mod_real_text

    .line 96
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isInitilized()Z
    .registers 2

    .prologue
    .line 100
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->initilized:Z

    return v0
.end method

.method public queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 3

    .prologue
    .line 88
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public queueElementToBeAddToLevelDrawOnly(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public saveGameAndPlayerData()V
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->storageManager:Lfr/testudo/spacecorsair/storage/StorageManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/storage/StorageManager;->save()V

    .line 123
    return-void
.end method

.method public setInitilized()V
    .registers 2

    .prologue
    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->initilized:Z

    .line 105
    return-void
.end method

.method public vibrate(Ljava/lang/Long;)V
    .registers 6

    .prologue
    .line 108
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->config:Lfr/testudo/spacecorsair/game/Config;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Config;->vibrationEnabled:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mogaConnected:Z

    if-nez v0, :cond_19

    .line 109
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 111
    :cond_19
    return-void
.end method
