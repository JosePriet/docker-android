.class public Lfr/testudo/spacecorsair/activity/Main;
.super Lfr/testudo/spacecorsair/activity/CommonActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/activity/Main$8;
    }
.end annotation


# static fields
.field public static final DIALOGUE_POST_ACTION_HOW_HELP:Ljava/lang/String; = "SHOW_HELP"

.field public static scrollForceMoga:I


# instance fields
.field public currentDialog:Landroid/app/Dialog;

.field private game:Lfr/testudo/spacecorsair/game/Game;

.field private inputObjectPool:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lfr/testudo/spacecorsair/activity/input/InputObject;",
            ">;"
        }
    .end annotation
.end field

.field private layMain:Landroid/widget/RelativeLayout;

.field private mainView:Lfr/testudo/spacecorsair/view/MainView;

.field public messageHandler:Landroid/os/Handler;

.field public mogaVersion:Lfr/testudo/spacecorsair/moga/MogaVersion;

.field private renderer:Lfr/testudo/spacecorsair/engine/GameRenderer;

.field private splashScreen:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/activity/Main;->scrollForceMoga:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;-><init>()V

    .line 61
    sget-object v0, Lfr/testudo/spacecorsair/moga/MogaVersion;->UNKNOWN:Lfr/testudo/spacecorsair/moga/MogaVersion;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->mogaVersion:Lfr/testudo/spacecorsair/moga/MogaVersion;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lfr/testudo/spacecorsair/activity/Main;Landroid/os/Message;)V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/activity/Main;->readMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lfr/testudo/spacecorsair/activity/Main;)Lfr/testudo/spacecorsair/game/Game;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->game:Lfr/testudo/spacecorsair/game/Game;

    return-object v0
.end method

.method private createInputObjectPool()V
    .registers 6

    .prologue
    const/16 v4, 0x64

    .line 519
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v4}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->inputObjectPool:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 521
    const/4 v0, 0x0

    :goto_a
    if-ge v0, v4, :cond_1b

    .line 522
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/Main;->inputObjectPool:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v2, Lfr/testudo/spacecorsair/activity/input/InputObject;

    iget-object v3, p0, Lfr/testudo/spacecorsair/activity/Main;->inputObjectPool:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v2, v3}, Lfr/testudo/spacecorsair/activity/input/InputObject;-><init>(Ljava/util/concurrent/ArrayBlockingQueue;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 521
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 524
    :cond_1b
    return-void
.end method

.method private handleVMKeys(ILandroid/view/KeyEvent;)V
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 494
    packed-switch p1, :pswitch_data_30

    .line 505
    :goto_5
    return-void

    .line 496
    :pswitch_6
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-boolean v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isShooting:Z

    if-nez v3, :cond_15

    :goto_12
    iput-boolean v0, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isShooting:Z

    goto :goto_5

    :cond_15
    move v0, v1

    goto :goto_12

    .line 499
    :pswitch_17
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->requestMissileShoot()V

    goto :goto_5

    .line 502
    :pswitch_1f
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-boolean v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isBoosterEnabled:Z

    if-nez v3, :cond_2e

    :goto_2b
    iput-boolean v0, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isBoosterEnabled:Z

    goto :goto_5

    :cond_2e
    move v0, v1

    goto :goto_2b

    .line 494
    :pswitch_data_30
    .packed-switch 0xb
        :pswitch_1f
        :pswitch_6
        :pswitch_17
    .end packed-switch
.end method

.method private loadDataFromDisk()V
    .registers 2

    .prologue
    .line 435
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->storageManager:Lfr/testudo/spacecorsair/storage/StorageManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/storage/StorageManager;->restore()V

    .line 441
    return-void
.end method

.method private onFirstStart()V
    .registers 4

    .prologue
    .line 151
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->config:Lfr/testudo/spacecorsair/game/Config;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/Config;->unSetFirstStart()V

    .line 153
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    const-string v2, "GENESIS_TUTORIAL"

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->getMissionById(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 154
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    const-string v1, "GENESIS_TUTORIAL"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->saveMissionAsCurrentOne(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method private readMessage(Landroid/os/Message;)V
    .registers 8

    .prologue
    .line 193
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    .line 195
    const-string v0, "ACTION"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 198
    :try_start_c
    invoke-static {v0}, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_1c

    move-result-object v0

    .line 204
    sget-object v1, Lfr/testudo/spacecorsair/activity/Main$8;->$SwitchMap$fr$testudo$spacecorsair$activity$message$MessageBuilder$MessageType:[I

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_ba

    .line 263
    :goto_1b
    :pswitch_1b
    return-void

    .line 199
    :catch_1c
    move-exception v1

    .line 200
    const-string v1, "JDE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad action code :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 207
    :pswitch_36
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/Main;->hideMenu()V

    goto :goto_1b

    .line 210
    :pswitch_3a
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/Main;->showMenu()V

    goto :goto_1b

    .line 213
    :pswitch_3e
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/Main;->showStationMenu()V

    goto :goto_1b

    .line 216
    :pswitch_42
    const-string v0, "ACHIEVE"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 217
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/achievements/Achievement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/Main;->showAchievement(Lfr/testudo/spacecorsair/game/achievements/Achievement;)V

    goto :goto_1b

    .line 220
    :pswitch_52
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/Main;->playerDead()V

    goto :goto_1b

    .line 223
    :pswitch_56
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/Main;->showMissionMenu()V

    goto :goto_1b

    .line 226
    :pswitch_5a
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/Main;->showCasinoActivity()V

    goto :goto_1b

    .line 232
    :pswitch_5e
    invoke-static {}, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->hideAchievement()V

    goto :goto_1b

    .line 235
    :pswitch_62
    invoke-static {}, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->hideSplashscreen()V

    goto :goto_1b

    .line 238
    :pswitch_66
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->context:Landroid/app/Activity;

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->showSplashscreen(Landroid/app/Activity;)V

    goto :goto_1b

    .line 241
    :pswitch_6c
    const-string v0, "CHARNAME"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v0, "IMAGE"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v0, "TEXT"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v0, "FORCE"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v0, "POST_ACTION"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lfr/testudo/spacecorsair/activity/Main;->showDialogue(IIIZLjava/lang/String;)V

    goto/16 :goto_1b

    .line 249
    :pswitch_aa
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/Main;->requestLevelReload()V

    goto/16 :goto_1b

    .line 253
    :pswitch_af
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/Main;->requestLeaveGame()V

    goto/16 :goto_1b

    .line 257
    :pswitch_b4
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/Main;->showStationMenuForMobileSeller()V

    goto/16 :goto_1b

    .line 204
    nop

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_36
        :pswitch_3a
        :pswitch_3e
        :pswitch_42
        :pswitch_52
        :pswitch_56
        :pswitch_5a
        :pswitch_1b
        :pswitch_5e
        :pswitch_62
        :pswitch_66
        :pswitch_6c
        :pswitch_aa
        :pswitch_af
        :pswitch_b4
    .end packed-switch
.end method

.method private requestLeaveGame()V
    .registers 5

    .prologue
    .line 268
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-static {}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->pause()V

    .line 269
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->context:Landroid/app/Activity;

    const v1, 0x7f07030f

    new-instance v2, Lfr/testudo/spacecorsair/activity/Main$2;

    invoke-direct {v2, p0}, Lfr/testudo/spacecorsair/activity/Main$2;-><init>(Lfr/testudo/spacecorsair/activity/Main;)V

    new-instance v3, Lfr/testudo/spacecorsair/activity/Main$3;

    invoke-direct {v3, p0}, Lfr/testudo/spacecorsair/activity/Main$3;-><init>(Lfr/testudo/spacecorsair/activity/Main;)V

    invoke-static {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/utils/InGameDialog;->confirm(Landroid/content/Context;ILjava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->currentDialog:Landroid/app/Dialog;

    .line 282
    return-void
.end method


# virtual methods
.method public hideMenu()V
    .registers 2

    .prologue
    .line 378
    invoke-static {}, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->isDisplaying()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 379
    invoke-static {}, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->hideMenu()V

    .line 382
    :cond_9
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    .prologue
    const/16 v1, 0x400

    const/4 v4, -0x1

    .line 72
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/CommonActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    iput-object p0, p0, Lfr/testudo/spacecorsair/activity/Main;->context:Landroid/app/Activity;

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/Main;->requestWindowFeature(I)Z

    .line 75
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/Main;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 78
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iput-object p0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->mainActivity:Lfr/testudo/spacecorsair/activity/Main;

    .line 80
    new-instance v0, Lfr/testudo/spacecorsair/activity/Main$1;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/activity/Main$1;-><init>(Lfr/testudo/spacecorsair/activity/Main;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->messageHandler:Landroid/os/Handler;

    .line 88
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->isInitilized()Z

    move-result v0

    if-nez v0, :cond_eb

    .line 89
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    new-instance v1, Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/engine/SoundManager;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    .line 90
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    new-instance v1, Lfr/testudo/spacecorsair/engine/MusicManager;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/engine/MusicManager;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->musicManager:Lfr/testudo/spacecorsair/engine/MusicManager;

    .line 91
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    new-instance v1, Lfr/testudo/spacecorsair/engine/RenderQueue;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/engine/RenderQueue;-><init>()V

    iput-object v1, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    .line 94
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/Main;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->vibrator:Landroid/os/Vibrator;

    .line 98
    new-instance v0, Lfr/testudo/spacecorsair/engine/GameRenderer;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/GameRenderer;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->renderer:Lfr/testudo/spacecorsair/engine/GameRenderer;

    .line 99
    new-instance v0, Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/Main;->messageHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lfr/testudo/spacecorsair/game/Game;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->game:Lfr/testudo/spacecorsair/game/Game;

    .line 102
    new-instance v0, Lfr/testudo/spacecorsair/view/MainView;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/Main;->game:Lfr/testudo/spacecorsair/game/Game;

    invoke-direct {v0, p0, v1}, Lfr/testudo/spacecorsair/view/MainView;-><init>(Landroid/content/Context;Lfr/testudo/spacecorsair/game/Game;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->mainView:Lfr/testudo/spacecorsair/view/MainView;

    .line 103
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->mainView:Lfr/testudo/spacecorsair/view/MainView;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/Main;->renderer:Lfr/testudo/spacecorsair/engine/GameRenderer;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/view/MainView;->setRenderer(Lfr/testudo/spacecorsair/engine/GLSurfaceView$Renderer;)V

    .line 105
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/Fonts;->load(Landroid/content/res/AssetManager;)V

    .line 107
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/Main;->loadDataFromDisk()V

    .line 109
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->config:Lfr/testudo/spacecorsair/game/Config;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Config;->isFirstStart:Z

    if-eqz v0, :cond_84

    .line 111
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/Main;->onFirstStart()V

    .line 115
    :cond_84
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->setInitilized()V

    .line 116
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->game:Lfr/testudo/spacecorsair/game/Game;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/Game;->loadLastUsedLevel()V

    .line 129
    :goto_8e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Number static initialised : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/engine/IntegerStringReference;->NUMBERS:[Ljava/lang/String;

    sget-object v2, Lfr/testudo/spacecorsair/engine/IntegerStringReference;->NUMBERS:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/Logs;->d(Ljava/lang/String;)V

    .line 132
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/Main;->setContentView(I)V

    .line 134
    const v0, 0x7f0a008a

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->layMain:Landroid/widget/RelativeLayout;

    .line 135
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->layMain:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/Main;->mainView:Lfr/testudo/spacecorsair/view/MainView;

    const/4 v2, 0x0

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 137
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/Main;->createInputObjectPool()V

    .line 139
    invoke-static {}, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->reset()V

    .line 140
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/Main;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 142
    invoke-static {p0}, Lfr/testudo/spacecorsair/utils/UpgradeManager;->ensureVersionUpToDate(Landroid/content/Context;)V

    .line 143
    invoke-static {p0}, Lfr/testudo/spacecorsair/utils/UserEngagement;->proposeVersionUpdate(Landroid/content/Context;)V

    .line 144
    invoke-static {p0}, Lfr/testudo/spacecorsair/utils/UserEngagement;->proposeRate(Landroid/content/Context;)V

    .line 147
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->context:Landroid/app/Activity;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/Main;->layMain:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->init(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 148
    return-void

    .line 120
    :cond_eb
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    new-instance v1, Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/engine/SoundManager;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    .line 121
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->gameRenderer:Lfr/testudo/spacecorsair/engine/GameRenderer;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->renderer:Lfr/testudo/spacecorsair/engine/GameRenderer;

    .line 122
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->game:Lfr/testudo/spacecorsair/game/Game;

    .line 123
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/Main;->messageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/Game;->updateHandler(Landroid/os/Handler;)V

    .line 124
    new-instance v0, Lfr/testudo/spacecorsair/view/MainView;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/Main;->game:Lfr/testudo/spacecorsair/game/Game;

    invoke-direct {v0, p0, v1}, Lfr/testudo/spacecorsair/view/MainView;-><init>(Landroid/content/Context;Lfr/testudo/spacecorsair/game/Game;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->mainView:Lfr/testudo/spacecorsair/view/MainView;

    .line 125
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->mainView:Lfr/testudo/spacecorsair/view/MainView;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/Main;->renderer:Lfr/testudo/spacecorsair/engine/GameRenderer;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/view/MainView;->setRenderer(Lfr/testudo/spacecorsair/engine/GLSurfaceView$Renderer;)V

    goto/16 :goto_8e
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    .line 446
    const/4 v1, 0x4

    if-ne p1, v1, :cond_46

    .line 447
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-eqz v1, :cond_24

    .line 448
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/game/Game;->globalMapMode:Z

    if-eqz v1, :cond_1c

    .line 449
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/Game;->requestUnSetGlobalMapMode()V

    .line 487
    :goto_1b
    return v0

    .line 451
    :cond_1c
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/Game;->requestUnSetMapMode()V

    goto :goto_1b

    .line 456
    :cond_24
    invoke-static {}, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->isDisplaying()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 457
    invoke-static {}, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->hideMenu()V

    goto :goto_1b

    .line 462
    :cond_2e
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-static {}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->pause()V

    .line 463
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/Main;->context:Landroid/app/Activity;

    const v2, 0x7f07030f

    new-instance v3, Lfr/testudo/spacecorsair/activity/Main$6;

    invoke-direct {v3, p0}, Lfr/testudo/spacecorsair/activity/Main$6;-><init>(Lfr/testudo/spacecorsair/activity/Main;)V

    new-instance v4, Lfr/testudo/spacecorsair/activity/Main$7;

    invoke-direct {v4, p0}, Lfr/testudo/spacecorsair/activity/Main$7;-><init>(Lfr/testudo/spacecorsair/activity/Main;)V

    invoke-static {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/utils/InGameDialog;->confirm(Landroid/content/Context;ILjava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/Dialog;

    goto :goto_1b

    .line 487
    :cond_46
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/activity/CommonActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1b
.end method

.method public onKeyEvent(Lcom/bda/controller/KeyEvent;)V
    .registers 10

    .prologue
    const-wide/16 v6, 0x1

    .line 562
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->started:Z

    if-nez v0, :cond_b

    .line 714
    :cond_a
    :goto_a
    return-void

    .line 567
    :cond_b
    invoke-virtual {p1}, Lcom/bda/controller/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2d

    const/4 v0, 0x1

    move v1, v0

    .line 569
    :goto_13
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/engine/GameThread;->paused:Z

    if-eqz v0, :cond_e0

    .line 572
    invoke-virtual {p1}, Lcom/bda/controller/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_15a

    goto :goto_a

    .line 609
    :sswitch_23
    if-eqz v1, :cond_a

    sget-boolean v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->isMenuDisplaying:Z

    if-eqz v0, :cond_a

    .line 610
    invoke-static {}, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->selectLeft()V

    goto :goto_a

    .line 567
    :cond_2d
    const/4 v0, 0x0

    move v1, v0

    goto :goto_13

    .line 578
    :sswitch_30
    if-eqz v1, :cond_54

    sget-boolean v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->isMenuDisplaying:Z

    if-eqz v0, :cond_54

    .line 580
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->messageHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 581
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 582
    const-string v3, "ACTION"

    sget-object v4, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_HIDE_MENU:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 584
    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/Main;->messageHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 587
    :cond_54
    if-eqz v1, :cond_a

    sget-boolean v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->isMenuDisplaying:Z

    if-nez v0, :cond_a

    .line 589
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->messageHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 590
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 591
    const-string v2, "ACTION"

    sget-object v3, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_MENU:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 594
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/Main;->messageHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_a

    .line 602
    :sswitch_79
    if-eqz v1, :cond_a

    sget-boolean v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->isMenuDisplaying:Z

    if-eqz v0, :cond_a

    .line 603
    invoke-static {}, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->selectRight()V

    goto :goto_a

    .line 617
    :sswitch_83
    if-eqz v1, :cond_99

    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->currentDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_99

    .line 619
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->currentDialog:Landroid/app/Dialog;

    const v2, 0x7f0a0036

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 620
    if-eqz v0, :cond_99

    .line 621
    invoke-virtual {v0}, Landroid/widget/Button;->callOnClick()Z

    .line 627
    :cond_99
    if-eqz v1, :cond_a

    sget-boolean v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->isMenuDisplaying:Z

    if-eqz v0, :cond_a

    .line 629
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->messageHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 630
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 631
    const-string v2, "ACTION"

    sget-object v3, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_HIDE_MENU:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 633
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/Main;->messageHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_a

    .line 641
    :sswitch_bf
    if-eqz v1, :cond_d5

    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->currentDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_d5

    .line 643
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->currentDialog:Landroid/app/Dialog;

    const v2, 0x7f0a0037

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 644
    if-eqz v0, :cond_d5

    .line 645
    invoke-virtual {v0}, Landroid/widget/Button;->callOnClick()Z

    .line 649
    :cond_d5
    if-eqz v1, :cond_a

    sget-boolean v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->isMenuDisplaying:Z

    if-eqz v0, :cond_a

    .line 650
    invoke-static {}, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->mogaEnterMenu()V

    goto/16 :goto_a

    .line 663
    :cond_e0
    invoke-virtual {p1}, Lcom/bda/controller/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_170

    .line 666
    :try_start_e7
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->inputObjectPool:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/activity/input/InputObject;

    .line 667
    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/activity/input/InputObject;->useMogaButtonEvent(Lcom/bda/controller/KeyEvent;)V

    .line 668
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/Main;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/GameThread;->feedInput(Lfr/testudo/spacecorsair/activity/input/InputObject;)V
    :try_end_f9
    .catch Ljava/lang/InterruptedException; {:try_start_e7 .. :try_end_f9} :catch_fb

    goto/16 :goto_a

    .line 669
    :catch_fb
    move-exception v0

    goto/16 :goto_a

    .line 678
    :pswitch_fe
    if-eqz v1, :cond_a

    .line 679
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/Main;->context:Landroid/app/Activity;

    const-class v2, Lfr/testudo/spacecorsair/activity/MyShipActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 680
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/Main;->context:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_a

    .line 689
    :pswitch_110
    if-eqz v1, :cond_134

    sget-boolean v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->isMenuDisplaying:Z

    if-eqz v0, :cond_134

    .line 691
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->messageHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 692
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 693
    const-string v3, "ACTION"

    sget-object v4, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_HIDE_MENU:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 695
    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/Main;->messageHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 698
    :cond_134
    if-eqz v1, :cond_a

    sget-boolean v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->isMenuDisplaying:Z

    if-nez v0, :cond_a

    .line 699
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->messageHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 700
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 701
    const-string v2, "ACTION"

    sget-object v3, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_MENU:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 703
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/Main;->messageHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_a

    .line 572
    :sswitch_data_15a
    .sparse-switch
        0x15 -> :sswitch_23
        0x16 -> :sswitch_79
        0x60 -> :sswitch_bf
        0x61 -> :sswitch_83
        0x6c -> :sswitch_30
    .end sparse-switch

    .line 663
    :pswitch_data_170
    .packed-switch 0x6c
        :pswitch_110
        :pswitch_fe
    .end packed-switch
.end method

.method public onMotionEvent(Lcom/bda/controller/MotionEvent;)V
    .registers 6

    .prologue
    .line 718
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->started:Z

    if-nez v0, :cond_9

    .line 757
    :cond_8
    :goto_8
    return-void

    .line 725
    :cond_9
    :try_start_9
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/engine/GameThread;->paused:Z

    if-eqz v0, :cond_3e

    .line 728
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bda/controller/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 731
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/Main;->currentDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_25

    .line 734
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/bda/controller/MotionEvent;->getAxisValue(I)F

    move-result v1

    const/high16 v2, 0x41700000    # 15.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lfr/testudo/spacecorsair/activity/Main;->scrollForceMoga:I

    .line 737
    :cond_25
    sget-boolean v1, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->isMenuDisplaying:Z

    if-eqz v1, :cond_8

    .line 738
    sget-object v1, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->mogaMessageHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 739
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "MOGA_X_AXIS_HANDLER"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 740
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_8

    .line 754
    :catch_3c
    move-exception v0

    goto :goto_8

    .line 746
    :cond_3e
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->inputObjectPool:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/activity/input/InputObject;

    .line 747
    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/activity/input/InputObject;->useMogaMotionEvent(Lcom/bda/controller/MotionEvent;)V

    .line 748
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/Main;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/GameThread;->feedInput(Lfr/testudo/spacecorsair/activity/input/InputObject;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_50} :catch_3c

    goto :goto_8
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 160
    invoke-super {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;->onPause()V

    .line 162
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->mainView:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/view/MainView;->onPause()V

    .line 163
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/Main;->saveContext()V

    .line 164
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->gameRenderer:Lfr/testudo/spacecorsair/engine/GameRenderer;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/GameRenderer;->onPause()V

    .line 165
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->musicManager:Lfr/testudo/spacecorsair/engine/MusicManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/MusicManager;->pauseMusic()V

    .line 166
    const v0, 0x7f040002

    const v1, 0x7f040003

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/activity/Main;->overridePendingTransition(II)V

    .line 167
    invoke-static {}, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->isDisplaying()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 168
    invoke-static {}, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->hideSplashscreen()V

    .line 172
    :cond_2b
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 180
    invoke-super {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;->onResume()V

    .line 182
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->mainView:Lfr/testudo/spacecorsair/view/MainView;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/view/MainView;->onResume()V

    .line 183
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->context:Landroid/app/Activity;

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->showSplashscreen(Landroid/app/Activity;)V

    .line 186
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->isMenuDisplaying:Z

    .line 187
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-static {}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->resume()V

    .line 188
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 509
    invoke-super {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;->onStart()V

    .line 510
    return-void
.end method

.method public onStateEvent(Lcom/bda/controller/StateEvent;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 762
    invoke-virtual {p1}, Lcom/bda/controller/StateEvent;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_ae

    .line 809
    :goto_8
    return-void

    .line 764
    :pswitch_9
    invoke-virtual {p1}, Lcom/bda/controller/StateEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_b6

    goto :goto_8

    .line 766
    :pswitch_11
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    if-eqz v0, :cond_38

    .line 767
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mogaConnected:Z

    if-eqz v0, :cond_38

    .line 768
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/game/Game;->mogaConnected:Z

    .line 769
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f070398

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/game/CharacterDialog;->ofDroid(II)Lfr/testudo/spacecorsair/game/CharacterDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(Lfr/testudo/spacecorsair/game/CharacterDialog;)V

    .line 773
    :cond_38
    const-string v0, "Moga disconnected"

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/Logs;->d(Ljava/lang/String;)V

    goto :goto_8

    .line 777
    :pswitch_3e
    const-string v0, "Moga conneced"

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/Logs;->d(Ljava/lang/String;)V

    .line 778
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->mogaController:Lcom/bda/controller/Controller;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/bda/controller/Controller;->getState(I)I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/moga/MogaVersion;->fromVersion(I)Lfr/testudo/spacecorsair/moga/MogaVersion;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->mogaVersion:Lfr/testudo/spacecorsair/moga/MogaVersion;

    .line 779
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    if-eqz v0, :cond_76

    .line 780
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mogaConnected:Z

    if-nez v0, :cond_70

    sget-boolean v0, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->isActive:Z

    if-nez v0, :cond_70

    .line 781
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f070393

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    :cond_70
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/game/Game;->mogaConnected:Z

    .line 786
    :cond_76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Moga version is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/Main;->mogaVersion:Lfr/testudo/spacecorsair/moga/MogaVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/Logs;->d(Ljava/lang/String;)V

    .line 787
    invoke-static {}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onPlayWithMoga()V

    goto/16 :goto_8

    .line 793
    :pswitch_93
    const-string v0, "Moga connecting"

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/Logs;->d(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 799
    :pswitch_9a
    invoke-virtual {p1}, Lcom/bda/controller/StateEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_a7

    .line 801
    const-string v0, "Moga is low power"

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/Logs;->d(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 803
    :cond_a7
    const-string v0, "Moga is normal power"

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/Logs;->d(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 762
    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9a
    .end packed-switch

    .line 764
    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_11
        :pswitch_3e
        :pswitch_93
    .end packed-switch
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 514
    invoke-super {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;->onStop()V

    .line 515
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 529
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->started:Z

    if-eqz v0, :cond_13

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/engine/GameThread;->paused:Z

    if-eqz v0, :cond_14

    .line 556
    :cond_13
    :goto_13
    return v4

    .line 535
    :cond_14
    :try_start_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    .line 536
    if-lez v2, :cond_34

    .line 538
    const/4 v0, 0x0

    move v1, v0

    :goto_1c
    if-ge v1, v2, :cond_34

    .line 539
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->inputObjectPool:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/activity/input/InputObject;

    .line 540
    invoke-virtual {v0, p1, v1}, Lfr/testudo/spacecorsair/activity/input/InputObject;->useEventHistory(Landroid/view/MotionEvent;I)V

    .line 541
    iget-object v3, p0, Lfr/testudo/spacecorsair/activity/Main;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    invoke-virtual {v3, v0}, Lfr/testudo/spacecorsair/engine/GameThread;->feedInput(Lfr/testudo/spacecorsair/activity/input/InputObject;)V

    .line 538
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1c

    .line 545
    :cond_34
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->inputObjectPool:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/activity/input/InputObject;

    .line 546
    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/activity/input/InputObject;->useEvent(Landroid/view/MotionEvent;)V

    .line 547
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/Main;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/GameThread;->feedInput(Lfr/testudo/spacecorsair/activity/input/InputObject;)V
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_46} :catch_55

    .line 552
    :goto_46
    const-wide/16 v0, 0x10

    :try_start_48
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4b
    .catch Ljava/lang/InterruptedException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_13

    .line 553
    :catch_4c
    move-exception v0

    .line 554
    const-string v0, "ERROR"

    const-string v1, "Interupted in motionevent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 548
    :catch_55
    move-exception v0

    goto :goto_46
.end method

.method public playerDead()V
    .registers 2

    .prologue
    .line 425
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/Game;->onPlayerDeath()V

    .line 427
    return-void
.end method

.method public requestLevelReload()V
    .registers 2

    .prologue
    .line 287
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/Level;->requestLevelReinit()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 292
    :goto_9
    return-void

    .line 288
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public saveContext()V
    .registers 2

    .prologue
    .line 175
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->storageManager:Lfr/testudo/spacecorsair/storage/StorageManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/storage/StorageManager;->save()V

    .line 176
    return-void
.end method

.method public showAchievement(Lfr/testudo/spacecorsair/game/achievements/Achievement;)V
    .registers 6

    .prologue
    .line 351
    invoke-static {}, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->isDisplaying()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/engine/GameThread;->paused:Z

    if-eqz v0, :cond_38

    .line 353
    :cond_e
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->messageHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 354
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 355
    const-string v2, "ACTION"

    sget-object v3, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_ACHIEVEMENT_DONE:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v2, "ACHIEVE"

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 358
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/Main;->messageHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 373
    :goto_37
    return-void

    .line 362
    :cond_38
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->context:Landroid/app/Activity;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/Main;->layMain:Landroid/widget/RelativeLayout;

    invoke-static {v0, p1, v1}, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->showAchievement(Landroid/app/Activity;Lfr/testudo/spacecorsair/game/achievements/Achievement;Landroid/view/ViewGroup;)V

    .line 365
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->messageHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 366
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 367
    const-string v2, "ACTION"

    sget-object v3, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_ACHIEVEMENT_HIDE:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 369
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/Main;->messageHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2328

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 371
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playAchievementUnlocked()V

    goto :goto_37
.end method

.method public showCasinoActivity()V
    .registers 3

    .prologue
    .line 413
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->gameRenderer:Lfr/testudo/spacecorsair/engine/GameRenderer;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/GameRenderer;->waitUntilDrawingCompleted()V

    .line 414
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lfr/testudo/spacecorsair/activity/CasinoActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 415
    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/Main;->startActivity(Landroid/content/Intent;)V

    .line 416
    return-void
.end method

.method public showDialogue(IIIZLjava/lang/String;)V
    .registers 10

    .prologue
    .line 296
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->splashScreen:Landroid/view/View;

    if-nez v0, :cond_e

    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/engine/GameThread;->paused:Z

    if-eqz v0, :cond_43

    if-nez p4, :cond_43

    .line 300
    :cond_e
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->messageHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 301
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 302
    const-string v2, "ACTION"

    sget-object v3, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_DIALOG:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v2, "CHARNAME"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 304
    const-string v2, "IMAGE"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 305
    const-string v2, "TEXT"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 306
    const-string v2, "FORCE"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 307
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 308
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/Main;->messageHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 347
    :goto_42
    return-void

    .line 313
    :cond_43
    if-eqz p4, :cond_6e

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/engine/GameThread;->paused:Z

    if-eqz v0, :cond_6e

    const/4 v0, 0x1

    .line 315
    :goto_50
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/engine/GameThread;->waitCommitPhysicEnded()V

    .line 316
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/Game;->pause()V

    .line 318
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/Main;->context:Landroid/app/Activity;

    new-instance v2, Lfr/testudo/spacecorsair/activity/Main$4;

    invoke-direct {v2, p0, p5, v0}, Lfr/testudo/spacecorsair/activity/Main$4;-><init>(Lfr/testudo/spacecorsair/activity/Main;Ljava/lang/String;Z)V

    invoke-static {v1, p1, p2, p3, v2}, Lfr/testudo/spacecorsair/utils/InGameDialog;->show(Landroid/content/Context;IIILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->currentDialog:Landroid/app/Dialog;

    goto :goto_42

    .line 313
    :cond_6e
    const/4 v0, 0x0

    goto :goto_50
.end method

.method public showMenu()V
    .registers 5

    .prologue
    .line 386
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main;->context:Landroid/app/Activity;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/Main;->layMain:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    new-instance v3, Lfr/testudo/spacecorsair/activity/Main$5;

    invoke-direct {v3, p0}, Lfr/testudo/spacecorsair/activity/Main$5;-><init>(Lfr/testudo/spacecorsair/activity/Main;)V

    invoke-static {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->showMenu(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 392
    invoke-static {}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->pause()V

    .line 393
    return-void
.end method

.method public showMissionMenu()V
    .registers 3

    .prologue
    .line 419
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->gameRenderer:Lfr/testudo/spacecorsair/engine/GameRenderer;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/GameRenderer;->waitUntilDrawingCompleted()V

    .line 420
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lfr/testudo/spacecorsair/activity/MissionActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 421
    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/Main;->startActivity(Landroid/content/Intent;)V

    .line 422
    return-void
.end method

.method public showStationMenu()V
    .registers 3

    .prologue
    .line 396
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->gameRenderer:Lfr/testudo/spacecorsair/engine/GameRenderer;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/GameRenderer;->waitUntilDrawingCompleted()V

    .line 397
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lfr/testudo/spacecorsair/activity/StationActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 398
    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/Main;->startActivity(Landroid/content/Intent;)V

    .line 399
    return-void
.end method

.method public showStationMenuForMobileSeller()V
    .registers 5

    .prologue
    .line 402
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->gameRenderer:Lfr/testudo/spacecorsair/engine/GameRenderer;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/GameRenderer;->waitUntilDrawingCompleted()V

    .line 403
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lfr/testudo/spacecorsair/activity/StationActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 404
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 405
    const-string v2, "mobile"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 406
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 407
    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/Main;->startActivity(Landroid/content/Intent;)V

    .line 409
    return-void
.end method
