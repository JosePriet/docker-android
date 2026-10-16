.class public Lfr/testudo/spacecorsair/engine/GameThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/engine/GameThread$1;,
        Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;
    }
.end annotation


# static fields
.field public static final DEFAULT_NEARBY_DISTANCE:I = 0xbb8

.field public static final MAX_NEARBY_ELEM:I = 0x7d0

.field public static NEARBY_DISTANCE:I = 0x0

.field private static final PLAYER_POS:Ljava/lang/String; = "Player pos : "

.field public static final SERVER_MAX_TIMOUT_BEFORE_MSG:I = 0xbb8

.field public static final TIME_MUSIC_COMES_NORMAL:I = 0xa

.field private static final YOU:Ljava/lang/String; = "you"

.field static blink:F

.field public static curAccelX:F

.field public static curAccelY:F

.field public static curAccelZ:F

.field public static currentLocalised:Ljava/lang/String;

.field public static jumpLocalised:Ljava/lang/String;

.field public static lastCamDecal:F

.field static xDelta:F

.field static yDelta:F


# instance fields
.field public boosterEventIndex:I

.field public canJump:Z

.field clickJumpId:I

.field public curUpTime:J

.field public curentSeenLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field currentPosDecalName:F

.field currentPosJumpName:F

.field public decalSpeedX:F

.field public decalSpeedY:F

.field public doneSetMapMode:Z

.field drawnLevel:[Lfr/testudo/spacecorsair/game/levels/LevelId;

.field everyMinuteFlag:Z

.field galaxyMapAlignedCamera:Z

.field private game:Lfr/testudo/spacecorsair/game/Game;

.field public gazEventIndex:I

.field hundredMilliSecNextTime:I

.field id:[I

.field initialCamPosition:Lfr/testudo/spacecorsair/engine/Vector2;

.field initialMooveTouchPosition:Lfr/testudo/spacecorsair/engine/Vector2;

.field private inputQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lfr/testudo/spacecorsair/activity/input/InputObject;",
            ">;"
        }
    .end annotation
.end field

.field private inputQueueMutex:Ljava/lang/Object;

.field lastClick:J

.field lastPlayerIsShootingMulti:Z

.field lastPlayerPouseeForcePourc:F

.field lastPlayerTargetAngle:F

.field lastTime:J

.field lastVisibleElement:I

.field private mPauseLock:Ljava/lang/Object;

.field public mapMode:Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

.field public mapMogaDeZoomEnabled:Z

.field public mapMogaZoomEnabled:Z

.field public mooveEventId:I

.field private msgHandler:Landroid/os/Handler;

.field nbrSawLevel:I

.field nearbyElementCount:I

.field public nearbyElements:[Lfr/testudo/spacecorsair/business/Element;

.field oneSecondNextTime:J

.field originalPinchDistance:F

.field public paused:Z

.field pinch1Position:Lfr/testudo/spacecorsair/engine/Vector2;

.field pinch2Position:Lfr/testudo/spacecorsair/engine/Vector2;

.field public pinchEventId:I

.field remainingCheckMogaForGlobal:I

.field public requestBackFromMap:Z

.field running:Z

.field sapElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;"
        }
    .end annotation
.end field

.field public shootEventIndex:I

.field stressMusicEnabled:Z

.field public stressMusicRemaining:J

.field public tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

.field tenSecNextTime:J

.field thirtySecNextTime:J

.field timetoucheMap:J

.field visibleElement:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const/16 v0, 0xbb8

    sput v0, Lfr/testudo/spacecorsair/engine/GameThread;->NEARBY_DISTANCE:I

    .line 504
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/engine/GameThread;->currentLocalised:Ljava/lang/String;

    .line 505
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/engine/GameThread;->jumpLocalised:Ljava/lang/String;

    .line 1139
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/engine/GameThread;->lastCamDecal:F

    return-void
.end method

.method public constructor <init>(Lfr/testudo/spacecorsair/game/Game;Landroid/os/Handler;)V
    .registers 10

    .prologue
    const/16 v6, 0x64

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->running:Z

    .line 44
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->paused:Z

    .line 46
    iput v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->shootEventIndex:I

    .line 47
    iput v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->gazEventIndex:I

    .line 48
    iput v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->boosterEventIndex:I

    .line 62
    const/16 v0, 0x7d0

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/Element;

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->nearbyElements:[Lfr/testudo/spacecorsair/business/Element;

    .line 63
    iput v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->nearbyElementCount:I

    .line 67
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->curUpTime:J

    .line 73
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tenSecNextTime:J

    .line 74
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->thirtySecNextTime:J

    .line 75
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->oneSecondNextTime:J

    .line 76
    iput v6, p0, Lfr/testudo/spacecorsair/engine/GameThread;->hundredMilliSecNextTime:I

    .line 81
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->stressMusicEnabled:Z

    .line 82
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->stressMusicRemaining:J

    .line 85
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->lastPlayerIsShootingMulti:Z

    .line 86
    iput v3, p0, Lfr/testudo/spacecorsair/engine/GameThread;->lastPlayerTargetAngle:F

    .line 87
    iput v3, p0, Lfr/testudo/spacecorsair/engine/GameThread;->lastPlayerPouseeForcePourc:F

    .line 120
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->everyMinuteFlag:Z

    .line 332
    iput v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->visibleElement:I

    .line 333
    iput v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->lastVisibleElement:I

    .line 336
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->doneSetMapMode:Z

    .line 337
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->requestBackFromMap:Z

    .line 340
    const/16 v0, 0x50

    new-array v0, v0, [Lfr/testudo/spacecorsair/game/levels/LevelId;

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->drawnLevel:[Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 341
    iput v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->nbrSawLevel:I

    .line 344
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->galaxyMapAlignedCamera:Z

    .line 347
    iput v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->remainingCheckMogaForGlobal:I

    .line 506
    iput v5, p0, Lfr/testudo/spacecorsair/engine/GameThread;->currentPosDecalName:F

    .line 507
    iput v5, p0, Lfr/testudo/spacecorsair/engine/GameThread;->currentPosJumpName:F

    .line 780
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->sapElements:Ljava/util/List;

    .line 1047
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v6}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->inputQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 1049
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->inputQueueMutex:Ljava/lang/Object;

    .line 1201
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1202
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->id:[I

    .line 1205
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->lastClick:J

    .line 1230
    iput v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->clickJumpId:I

    .line 1431
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;->NONE:Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mapMode:Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

    .line 1432
    iput v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mooveEventId:I

    .line 1433
    iput v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->pinchEventId:I

    .line 1434
    iput v5, p0, Lfr/testudo/spacecorsair/engine/GameThread;->originalPinchDistance:F

    .line 1436
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->pinch1Position:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1437
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->pinch2Position:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1440
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v3, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->initialMooveTouchPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1441
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v3, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->initialCamPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1654
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mapMogaZoomEnabled:Z

    .line 1655
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mapMogaDeZoomEnabled:Z

    .line 92
    iput-object p1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->game:Lfr/testudo/spacecorsair/game/Game;

    .line 93
    iput-object p2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->msgHandler:Landroid/os/Handler;

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mPauseLock:Ljava/lang/Object;

    .line 96
    return-void
.end method

.method private addToNearByElement(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 7

    .prologue
    .line 879
    iget v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->nearbyElementCount:I

    const/16 v1, 0x7ce

    if-ne v0, v1, :cond_7

    .line 898
    :goto_6
    return-void

    .line 884
    :cond_7
    iget v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->nearbyElementCount:I

    .line 885
    const/4 v0, 0x0

    :goto_a
    iget v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->nearbyElementCount:I

    if-ge v0, v2, :cond_32

    .line 886
    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->nearbyElements:[Lfr/testudo/spacecorsair/business/Element;

    aget-object v2, v2, v0

    iget v2, v2, Lfr/testudo/spacecorsair/business/Element;->minX:I

    iget v3, p1, Lfr/testudo/spacecorsair/business/Element;->minX:I

    if-le v2, v3, :cond_2f

    .line 893
    :goto_18
    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->nearbyElements:[Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->nearbyElements:[Lfr/testudo/spacecorsair/business/Element;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->nearbyElementCount:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 895
    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->nearbyElements:[Lfr/testudo/spacecorsair/business/Element;

    aput-object p1, v1, v0

    .line 896
    iget v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->nearbyElementCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->nearbyElementCount:I

    goto :goto_6

    .line 885
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_32
    move v0, v1

    goto :goto_18
.end method

.method private displayLevelOfGalaxy(Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 15

    .prologue
    .line 513
    if-eqz p1, :cond_12

    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/engine/GameThread;->hasAlreadyDrawLevel(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->isLevelVisited(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 602
    :cond_12
    :goto_12
    return-void

    .line 516
    :cond_13
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->drawnLevel:[Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->nbrSawLevel:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->nbrSawLevel:I

    aput-object p1, v0, v1

    .line 520
    iget-object v0, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->left:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-direct {p0, p1, v0}, Lfr/testudo/spacecorsair/engine/GameThread;->drawLineBetweenMeAndMyStandingByLevel(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 521
    iget-object v0, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->right:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-direct {p0, p1, v0}, Lfr/testudo/spacecorsair/engine/GameThread;->drawLineBetweenMeAndMyStandingByLevel(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 522
    iget-object v0, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->bottom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-direct {p0, p1, v0}, Lfr/testudo/spacecorsair/engine/GameThread;->drawLineBetweenMeAndMyStandingByLevel(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 523
    iget-object v0, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->top:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-direct {p0, p1, v0}, Lfr/testudo/spacecorsair/engine/GameThread;->drawLineBetweenMeAndMyStandingByLevel(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 527
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/Level;->pointDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v6, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v6, v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->r:F

    iget-object v7, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v7, v7, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->g:F

    iget-object v8, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v8, v8, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->b:F

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 533
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextMedium:Lfr/testudo/spacecorsair/textengine/GLText;

    iget-object v1, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v12, v0, v1

    .line 537
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v4, v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->r:F

    .line 538
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v5, v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->g:F

    .line 539
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v6, v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->b:F

    .line 540
    const/high16 v7, 0x3f800000    # 1.0f

    .line 541
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {p1, v0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 542
    if-eqz v0, :cond_cd

    .line 544
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v11, v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->r:F

    .line 545
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v10, v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->g:F

    .line 546
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v9, v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->b:F

    .line 548
    iget v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->currentPosDecalName:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_a0

    .line 549
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702cf

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/engine/GameThread;->currentLocalised:Ljava/lang/String;

    .line 550
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormalPlus:Lfr/testudo/spacecorsair/textengine/GLText;

    sget-object v1, Lfr/testudo/spacecorsair/engine/GameThread;->currentLocalised:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->currentPosDecalName:F

    .line 552
    :cond_a0
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->currentPosDecalName:F

    neg-float v1, v1

    const/high16 v2, -0x3d900000    # -60.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 554
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    sget-object v3, Lfr/testudo/spacecorsair/engine/GameThread;->currentLocalised:Ljava/lang/String;

    sget-object v4, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v4, v4, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->r:F

    sget-object v5, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v5, v5, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->g:F

    sget-object v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v6, v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->b:F

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    move v6, v9

    move v5, v10

    move v4, v11

    .line 558
    :cond_cd
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    neg-float v1, v12

    const/high16 v2, 0x42700000    # 60.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 560
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    iget-object v3, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->MEDIUM:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 564
    iget-object v0, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->left:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModQol;->galaxyExtra(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/engine/GameThread;->displayLevelOfGalaxy(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 565
    iget-object v0, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->right:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/engine/GameThread;->displayLevelOfGalaxy(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 566
    iget-object v0, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->bottom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/engine/GameThread;->displayLevelOfGalaxy(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 567
    iget-object v0, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->top:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/engine/GameThread;->displayLevelOfGalaxy(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 569
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->curentSeenLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 570
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->canJump:Z

    .line 573
    invoke-static {p1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->couldJump(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v0

    .line 575
    if-eqz v0, :cond_18a

    .line 576
    invoke-static {p1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->canJumpTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->canJump:Z

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v2, 0x7f0702d5

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->jumpCost(Lfr/testudo/spacecorsair/game/levels/LevelId;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->energyCell:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->getQuantityOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/engine/GameThread;->jumpLocalised:Ljava/lang/String;

    .line 579
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormalPlus:Lfr/testudo/spacecorsair/textengine/GLText;

    sget-object v1, Lfr/testudo/spacecorsair/engine/GameThread;->jumpLocalised:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->currentPosJumpName:F

    .line 581
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->currentPosJumpName:F

    neg-float v1, v1

    const/high16 v2, -0x3d600000    # -80.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 582
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->WHITE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 583
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->canJump:Z

    if-nez v1, :cond_1cd

    .line 584
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    move-object v6, v0

    .line 587
    :goto_176
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    sget-object v3, Lfr/testudo/spacecorsair/engine/GameThread;->jumpLocalised:Ljava/lang/String;

    iget v4, v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->r:F

    iget v5, v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->g:F

    iget v6, v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->b:F

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 592
    :cond_18a
    iget v0, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMin:I

    iget v1, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->getOfLevelDifference(III)Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    move-result-object v6

    .line 594
    iget-object v3, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelRange:Ljava/lang/String;

    .line 595
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthX:I

    int-to-float v1, v1

    sget-object v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormalPlus:Lfr/testudo/spacecorsair/textengine/GLText;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormalPlus:Lfr/testudo/spacecorsair/textengine/GLText;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/textengine/GLText;->getCharHeight()F

    move-result v2

    const/high16 v4, 0x41200000    # 10.0f

    add-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 596
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x1

    iget v4, v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->r:F

    iget v5, v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->g:F

    iget v6, v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->b:F

    const/high16 v7, 0x3f800000    # 1.0f

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    goto/16 :goto_12

    :cond_1cd
    move-object v6, v0

    goto :goto_176
.end method

.method private doCollisionsSAP()V
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 786
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->sapElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 787
    iget v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->nearbyElementCount:I

    if-lez v0, :cond_13

    .line 788
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->sapElements:Ljava/util/List;

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->nearbyElements:[Lfr/testudo/spacecorsair/business/Element;

    aget-object v1, v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    :cond_13
    const/4 v0, 0x1

    move v1, v0

    :goto_15
    iget v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->nearbyElementCount:I

    if-ge v1, v0, :cond_5a

    .line 792
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->nearbyElements:[Lfr/testudo/spacecorsair/business/Element;

    aget-object v5, v0, v1

    .line 793
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->sapElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v4

    .line 794
    :goto_24
    if-ge v2, v3, :cond_51

    .line 795
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->sapElements:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 796
    iget v6, v0, Lfr/testudo/spacecorsair/business/Element;->maxX:I

    iget v7, v5, Lfr/testudo/spacecorsair/business/Element;->minX:I

    if-ge v6, v7, :cond_41

    .line 797
    add-int/lit8 v0, v3, -0x1

    .line 798
    iget-object v3, p0, Lfr/testudo/spacecorsair/engine/GameThread;->sapElements:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v8, v2

    move v2, v0

    move v0, v8

    :goto_3e
    move v3, v2

    move v2, v0

    .line 808
    goto :goto_24

    .line 800
    :cond_41
    add-int/lit8 v2, v2, 0x1

    .line 802
    invoke-virtual {v0, v5}, Lfr/testudo/spacecorsair/business/Element;->testColide(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v6

    .line 803
    if-gtz v6, :cond_4e

    .line 804
    mul-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v5, v6}, Lfr/testudo/spacecorsair/business/Element;->applyColide(Lfr/testudo/spacecorsair/business/Element;I)V

    :cond_4e
    move v0, v2

    move v2, v3

    goto :goto_3e

    .line 810
    :cond_51
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->sapElements:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15

    .line 812
    :cond_5a
    return-void
.end method

.method private doDisplayGlobalMapMode(Ljava/lang/Long;)V
    .registers 14

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v1, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 351
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GameThread;->updateViewDeltaZ()V

    .line 353
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mapMogaDeZoomEnabled:Z

    if-eqz v0, :cond_22

    .line 354
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    const-wide/16 v4, 0x9c4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    mul-long/2addr v4, v6

    div-long/2addr v4, v10

    long-to-float v3, v4

    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v4, v4, Lfr/testudo/spacecorsair/game/Game;->globalMapMode:Z

    invoke-virtual {v0, v3, v4}, Lfr/testudo/spacecorsair/engine/Camera;->requestMapPinch(FZ)V

    .line 357
    :cond_22
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mapMogaZoomEnabled:Z

    if-eqz v0, :cond_3c

    .line 358
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    const-wide/16 v4, -0x9c4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    mul-long/2addr v4, v6

    div-long/2addr v4, v10

    long-to-float v3, v4

    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v4, v4, Lfr/testudo/spacecorsair/game/Game;->globalMapMode:Z

    invoke-virtual {v0, v3, v4}, Lfr/testudo/spacecorsair/engine/Camera;->requestMapPinch(FZ)V

    .line 361
    :cond_3c
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mogaConnected:Z

    if-eqz v0, :cond_9a

    .line 364
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->mainActivity:Lfr/testudo/spacecorsair/activity/Main;

    iget-object v0, v0, Lfr/testudo/spacecorsair/activity/Main;->mogaController:Lcom/bda/controller/Controller;

    invoke-virtual {v0, v2}, Lcom/bda/controller/Controller;->getAxisValue(I)F

    move-result v0

    .line 365
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->mainActivity:Lfr/testudo/spacecorsair/activity/Main;

    iget-object v3, v3, Lfr/testudo/spacecorsair/activity/Main;->mogaController:Lcom/bda/controller/Controller;

    invoke-virtual {v3, v1}, Lcom/bda/controller/Controller;->getAxisValue(I)F

    move-result v3

    .line 366
    iget-object v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v0, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 367
    iget-object v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/engine/Vector2;->length()F

    move-result v4

    .line 368
    const v5, 0x3c23d70a    # 0.01f

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_6c

    .line 369
    iput v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->remainingCheckMogaForGlobal:I

    .line 371
    :cond_6c
    const v5, 0x3e99999a    # 0.3f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_9a

    .line 372
    iget v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->remainingCheckMogaForGlobal:I

    int-to-long v4, v4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->remainingCheckMogaForGlobal:I

    .line 373
    iget v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->remainingCheckMogaForGlobal:I

    if-gtz v4, :cond_9a

    .line 375
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_192

    .line 377
    cmpl-float v0, v0, v8

    if-lez v0, :cond_18f

    move v0, v1

    :goto_93
    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/engine/GameThread;->requestGalactivMapGoto(I)V

    .line 385
    :goto_96
    const/16 v0, 0x190

    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->remainingCheckMogaForGlobal:I

    .line 394
    :cond_9a
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->doneSetMapMode:Z

    if-nez v0, :cond_a8

    .line 396
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/engine/Camera;->snapToTargetMapGalaxyMode(Ljava/lang/Long;)Z

    move-result v0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->doneSetMapMode:Z

    .line 399
    :cond_a8
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/engine/GameThread;->curentSeenLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->equals(Lfr/testudo/spacecorsair/engine/Vector2;)Z

    move-result v0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->galaxyMapAlignedCamera:Z

    .line 401
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->requestBackFromMap:Z

    if-eqz v0, :cond_e7

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->galaxyMapAlignedCamera:Z

    if-eqz v0, :cond_e7

    .line 402
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    invoke-virtual {v0, p1, v1}, Lfr/testudo/spacecorsair/engine/Camera;->backToPlayerMapMode(Ljava/lang/Long;Z)Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 404
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    .line 405
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/game/Game;->globalMapMode:Z

    .line 406
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->requestBackFromMap:Z

    .line 407
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->beforeMapModePlayerPos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 413
    :cond_e7
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->galaxyMapAlignedCamera:Z

    if-nez v0, :cond_187

    .line 416
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v3, p0, Lfr/testudo/spacecorsair/engine/GameThread;->curentSeenLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v0, v3

    .line 417
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->curentSeenLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v4, v4, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v4, v3, v4

    .line 420
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-float v6, v6

    iget v7, p0, Lfr/testudo/spacecorsair/engine/GameThread;->decalSpeedX:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 421
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-float v6, v6

    iget v7, p0, Lfr/testudo/spacecorsair/engine/GameThread;->decalSpeedY:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 424
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v5, p0, Lfr/testudo/spacecorsair/engine/GameThread;->curentSeenLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v5, v5, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v5, v3, v5

    .line 425
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v6, p0, Lfr/testudo/spacecorsair/engine/GameThread;->curentSeenLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v6, v6, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v6, v3, v6

    .line 427
    cmpg-float v0, v0, v8

    if-gez v0, :cond_19e

    move v3, v1

    :goto_155
    cmpg-float v0, v5, v8

    if-gez v0, :cond_1a0

    move v0, v1

    :goto_15a
    if-eq v3, v0, :cond_16c

    .line 429
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/engine/GameThread;->curentSeenLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iput v3, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 430
    iput v8, p0, Lfr/testudo/spacecorsair/engine/GameThread;->decalSpeedX:F

    .line 433
    :cond_16c
    cmpg-float v0, v4, v8

    if-gez v0, :cond_1a2

    move v0, v1

    :goto_171
    cmpg-float v3, v6, v8

    if-gez v3, :cond_1a4

    :goto_175
    if-eq v0, v1, :cond_187

    .line 435
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->curentSeenLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 436
    iput v8, p0, Lfr/testudo/spacecorsair/engine/GameThread;->decalSpeedY:F

    .line 441
    :cond_187
    iput v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->nbrSawLevel:I

    .line 443
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->curentSeenLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/engine/GameThread;->displayLevelOfGalaxy(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 446
    return-void

    .line 377
    :cond_18f
    const/4 v0, -0x1

    goto/16 :goto_93

    .line 381
    :cond_192
    cmpl-float v0, v3, v8

    if-lez v0, :cond_19c

    const/4 v0, -0x2

    :goto_197
    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/engine/GameThread;->requestGalactivMapGoto(I)V

    goto/16 :goto_96

    :cond_19c
    const/4 v0, 0x2

    goto :goto_197

    :cond_19e
    move v3, v2

    .line 427
    goto :goto_155

    :cond_1a0
    move v0, v2

    goto :goto_15a

    :cond_1a2
    move v0, v2

    .line 433
    goto :goto_171

    :cond_1a4
    move v1, v2

    goto :goto_175
.end method

.method private doDisplayMap(Ljava/lang/Long;)V
    .registers 14

    .prologue
    const-wide/16 v10, 0x3e8

    const v8, 0x3a83126f    # 0.001f

    const/high16 v7, 0x428c0000    # 70.0f

    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 636
    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    if-nez v1, :cond_10

    .line 722
    :cond_f
    return-void

    .line 639
    :cond_10
    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->nearbyElementCount:I

    .line 640
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mapMogaDeZoomEnabled:Z

    if-eqz v1, :cond_2c

    .line 641
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    const-wide/16 v2, 0x9c4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v2, v4

    div-long/2addr v2, v10

    long-to-float v2, v2

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v3, v3, Lfr/testudo/spacecorsair/game/Game;->globalMapMode:Z

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Camera;->requestMapPinch(FZ)V

    .line 644
    :cond_2c
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mapMogaZoomEnabled:Z

    if-eqz v1, :cond_46

    .line 645
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    const-wide/16 v2, -0x9c4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v2, v4

    div-long/2addr v2, v10

    long-to-float v2, v2

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v3, v3, Lfr/testudo/spacecorsair/game/Game;->globalMapMode:Z

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Camera;->requestMapPinch(FZ)V

    .line 648
    :cond_46
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GameThread;->updateViewDeltaZ()V

    .line 650
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->doneSetMapMode:Z

    if-nez v1, :cond_57

    .line 652
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    invoke-virtual {v1, p1}, Lfr/testudo/spacecorsair/engine/Camera;->snapToTargetMapMode(Ljava/lang/Long;)Z

    move-result v1

    iput-boolean v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->doneSetMapMode:Z

    .line 655
    :cond_57
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->requestBackFromMap:Z

    if-eqz v1, :cond_96

    .line 656
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    invoke-virtual {v1, p1, v0}, Lfr/testudo/spacecorsair/engine/Camera;->backToPlayerMapMode(Ljava/lang/Long;Z)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 658
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iput-boolean v0, v1, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    .line 659
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->requestBackFromMap:Z

    .line 703
    :cond_6d
    :goto_6d
    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    .line 705
    :goto_78
    if-ge v1, v2, :cond_f

    .line 707
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 709
    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/engine/GameThread;->drawOnRadarAndCalcNearby(Lfr/testudo/spacecorsair/business/Element;)V

    .line 710
    invoke-static {v0}, Lfr/testudo/spacecorsair/engine/GameThread;->isElementVisible(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v3

    if-eqz v3, :cond_115

    .line 711
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/Element;->registerYourselfToDrawQueue()V

    .line 705
    :goto_92
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_78

    .line 664
    :cond_96
    iget v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mooveEventId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6d

    .line 667
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v3, p0, Lfr/testudo/spacecorsair/engine/GameThread;->decalSpeedX:F

    add-float/2addr v2, v3

    iput v2, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 668
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v3, p0, Lfr/testudo/spacecorsair/engine/GameThread;->decalSpeedY:F

    sub-float/2addr v2, v3

    iput v2, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 670
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/game/Game;->mogaConnected:Z

    if-nez v1, :cond_6d

    .line 673
    iget v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->decalSpeedX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v8

    if-lez v1, :cond_101

    .line 675
    iget v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->decalSpeedX:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_f5

    .line 676
    iget v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->decalSpeedX:F

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    iput v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->decalSpeedX:F

    .line 684
    :goto_d8
    iget v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->decalSpeedY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v8

    if-lez v1, :cond_111

    .line 686
    iget v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->decalSpeedY:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_104

    .line 687
    iget v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->decalSpeedY:F

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    iput v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->decalSpeedY:F

    goto/16 :goto_6d

    .line 678
    :cond_f5
    iget v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->decalSpeedX:F

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    iput v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->decalSpeedX:F

    goto :goto_d8

    .line 681
    :cond_101
    iput v6, p0, Lfr/testudo/spacecorsair/engine/GameThread;->decalSpeedX:F

    goto :goto_d8

    .line 689
    :cond_104
    iget v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->decalSpeedY:F

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    iput v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->decalSpeedY:F

    goto/16 :goto_6d

    .line 692
    :cond_111
    iput v6, p0, Lfr/testudo/spacecorsair/engine/GameThread;->decalSpeedY:F

    goto/16 :goto_6d

    .line 714
    :cond_115
    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/engine/GameThread;->drawMiniature(Lfr/testudo/spacecorsair/business/Element;)V

    goto/16 :goto_92
.end method

.method private doPhysic(J)V
    .registers 8

    .prologue
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLive;->frameStart()V

    const/4 v0, 0x0

    .line 727
    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->nearbyElementCount:I

    .line 728
    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    if-nez v1, :cond_a

    .line 777
    :goto_9
    return-void

    .line 733
    :cond_a
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GameThread;->updateViewDeltaZ()V

    .line 735
    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->visibleElement:I

    .line 740
    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    .line 742
    :goto_1a
    if-ge v1, v2, :cond_45

    .line 744
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 745
    invoke-virtual {v0, p1, p2}, Lfr/testudo/spacecorsair/business/Element;->doPhysic(J)V

    .line 747
    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/engine/GameThread;->drawOnRadarAndCalcNearby(Lfr/testudo/spacecorsair/business/Element;)V

    .line 748
    invoke-static {v0}, Lfr/testudo/spacecorsair/engine/GameThread;->isElementVisible(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 750
    iget v3, p0, Lfr/testudo/spacecorsair/engine/GameThread;->visibleElement:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lfr/testudo/spacecorsair/engine/GameThread;->visibleElement:I

    .line 751
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLive;->draw(Lfr/testudo/spacecorsair/business/Element;)V

    .line 742
    :goto_3d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1a

    .line 754
    :cond_41
    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/engine/GameThread;->drawMiniature(Lfr/testudo/spacecorsair/business/Element;)V

    goto :goto_3d

    .line 761
    :cond_45
    invoke-direct {p0}, Lfr/testudo/spacecorsair/engine/GameThread;->doCollisionsSAP()V

    .line 763
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->animator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-virtual {v0, p1, p2}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;->onDoPhysic(J)V

    .line 765
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-eqz v0, :cond_62

    .line 766
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    invoke-virtual {v0, p1, p2}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->onDoPhysic(J)V

    .line 770
    :cond_62
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/engine/GameThread;->doPhysicDrawOnly(Ljava/lang/Long;)V

    .line 773
    monitor-enter p0

    .line 774
    :try_start_6a
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/Level;->commitChanges()V

    .line 775
    monitor-exit p0

    goto :goto_9

    :catchall_73
    move-exception v0

    monitor-exit p0
    :try_end_75
    .catchall {:try_start_6a .. :try_end_75} :catchall_73

    throw v0
.end method

.method private doPhysicDrawOnly(Ljava/lang/Long;)V
    .registers 6

    .prologue
    .line 1030
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->drawOnlyelements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_34

    .line 1033
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->drawOnlyelements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 1035
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/business/Element;->doPhysic(J)V

    .line 1037
    invoke-static {v0}, Lfr/testudo/spacecorsair/engine/GameThread;->isElementVisible(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1038
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/Element;->registerYourselfToDrawQueue()V

    .line 1039
    iget v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->visibleElement:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->visibleElement:I

    .line 1031
    :cond_30
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1044
    :cond_34
    return-void
.end method

.method private drawLineBetweenMeAndMyStandingByLevel(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 12

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const v4, 0x3f4ccccd    # 0.8f

    const v5, 0x3ef5c28f    # 0.48f

    const v7, 0x3ea8f5c3    # 0.33f

    .line 605
    if-eqz p2, :cond_15

    invoke-direct {p0, p2}, Lfr/testudo/spacecorsair/engine/GameThread;->hasAlreadyDrawLevel(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 617
    :cond_15
    :goto_15
    return-void

    .line 609
    :cond_16
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    invoke-virtual {v0, p2}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->isLevelVisited(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 610
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p2, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFF)V

    goto :goto_15

    .line 612
    :cond_2d
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, p2, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v1, v2

    div-float/2addr v1, v8

    iget-object v2, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v3, p2, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float/2addr v2, v3

    div-float/2addr v2, v8

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 613
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFF)V

    goto :goto_15
.end method

.method private drawMiniature(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 16

    .prologue
    .line 904
    const/high16 v9, 0x3f800000    # 1.0f

    .line 908
    iget-boolean v0, p1, Lfr/testudo/spacecorsair/business/Element;->isMissionObjective:Z

    if-eqz v0, :cond_27

    .line 909
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/Element;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->TREASURE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 910
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/Mission;->treasureDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 915
    :goto_12
    sget v6, Lfr/testudo/spacecorsair/engine/GameThread;->blink:F

    .line 916
    iget-object v1, p1, Lfr/testudo/spacecorsair/business/Element;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v7, v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->r:F

    .line 917
    iget-object v1, p1, Lfr/testudo/spacecorsair/business/Element;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v8, v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->g:F

    .line 918
    iget-object v1, p1, Lfr/testudo/spacecorsair/business/Element;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v9, v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->b:F

    move-object v3, v0

    .line 926
    :goto_21
    if-nez v3, :cond_2f

    .line 1024
    :cond_23
    :goto_23
    return-void

    .line 912
    :cond_24
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/Mission;->targetDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    goto :goto_12

    .line 922
    :cond_27
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/Element;->getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v3

    move v8, v9

    move v7, v9

    move v6, v9

    goto :goto_21

    .line 931
    :cond_2f
    const/high16 v4, 0x43340000    # 180.0f

    .line 932
    iget-boolean v0, p1, Lfr/testudo/spacecorsair/business/Element;->isMiniaturefixed:Z

    if-nez v0, :cond_37

    .line 933
    iget v4, p1, Lfr/testudo/spacecorsair/business/Element;->spin:F

    .line 937
    :cond_37
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v1, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v0, v1

    .line 939
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v1, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v0, v1

    .line 942
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    float-to-int v10, v0

    .line 945
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v0

    .line 947
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    double-to-float v2, v12

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/Element;->normalizeSpin(F)F

    move-result v2

    .line 950
    sget v5, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenAngleTopRight:F

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_e8

    sget v5, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenAngleTopLeft:F

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_e8

    .line 952
    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget v5, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    add-int/lit8 v5, v5, -0x14

    int-to-float v5, v5

    iput v5, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 953
    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget v5, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthX:I

    int-to-float v5, v5

    sget v11, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthY:I

    add-int/lit8 v11, v11, -0x14

    int-to-double v12, v11

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    div-double v0, v12, v0

    double-to-float v0, v0

    add-float/2addr v0, v5

    iput v0, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 959
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FZFFFF)V

    .line 961
    iget-boolean v0, p1, Lfr/testudo/spacecorsair/business/Element;->drawDistanceOnMiniature:Z

    if-eqz v0, :cond_23

    .line 962
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v2, 0x42200000    # 40.0f

    sub-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 963
    const/16 v0, 0x2710

    if-ge v10, v0, :cond_d4

    sget-object v0, Lfr/testudo/spacecorsair/engine/IntegerStringReference;->NUMBERS:[Ljava/lang/String;

    aget-object v3, v0, v10

    .line 964
    :goto_bc
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f63d70a    # 0.89f

    const v6, 0x3e947ae1    # 0.29f

    const/high16 v7, 0x3f800000    # 1.0f

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->LITTLE:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    goto/16 :goto_23

    .line 963
    :cond_d4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_bc

    .line 970
    :cond_e8
    sget v5, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenAngleBottomLeft:F

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_15b

    sget v5, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenAngleBottomRight:F

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_15b

    .line 974
    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v5, 0x41a00000    # 20.0f

    iput v5, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 975
    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget v5, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthX:I

    int-to-float v5, v5

    sget v11, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthY:I

    add-int/lit8 v11, v11, -0x14

    int-to-double v12, v11

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    div-double v0, v12, v0

    double-to-float v0, v0

    sub-float v0, v5, v0

    iput v0, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 978
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FZFFFF)V

    .line 980
    iget-boolean v0, p1, Lfr/testudo/spacecorsair/business/Element;->drawDistanceOnMiniature:Z

    if-eqz v0, :cond_23

    .line 981
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v2, 0x41a00000    # 20.0f

    add-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 982
    const/16 v0, 0x2710

    if-ge v10, v0, :cond_147

    sget-object v0, Lfr/testudo/spacecorsair/engine/IntegerStringReference;->NUMBERS:[Ljava/lang/String;

    aget-object v3, v0, v10

    .line 983
    :goto_12f
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f63d70a    # 0.89f

    const v6, 0x3e947ae1    # 0.29f

    const/high16 v7, 0x3f800000    # 1.0f

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->LITTLE:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    goto/16 :goto_23

    .line 982
    :cond_147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_12f

    .line 988
    :cond_15b
    sget v5, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenAngleBottomRight:F

    cmpl-float v5, v2, v5

    if-gez v5, :cond_167

    sget v5, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenAngleTopRight:F

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_1d8

    .line 991
    :cond_167
    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget v5, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthX:I

    add-int/lit8 v5, v5, -0x14

    int-to-float v5, v5

    iput v5, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 992
    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget v5, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthY:I

    int-to-float v5, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    sget v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthX:I

    add-int/lit8 v1, v1, -0x14

    int-to-float v1, v1

    mul-float/2addr v0, v1

    add-float/2addr v0, v5

    iput v0, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 995
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FZFFFF)V

    .line 997
    iget-boolean v0, p1, Lfr/testudo/spacecorsair/business/Element;->drawDistanceOnMiniature:Z

    if-eqz v0, :cond_23

    .line 998
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v2, 0x42200000    # 40.0f

    sub-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 999
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v2, 0x41a00000    # 20.0f

    sub-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 1000
    const/16 v0, 0x2710

    if-ge v10, v0, :cond_1c4

    sget-object v0, Lfr/testudo/spacecorsair/engine/IntegerStringReference;->NUMBERS:[Ljava/lang/String;

    aget-object v3, v0, v10

    .line 1001
    :goto_1ac
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f63d70a    # 0.89f

    const v6, 0x3e947ae1    # 0.29f

    const/high16 v7, 0x3f800000    # 1.0f

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->LITTLE:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    goto/16 :goto_23

    .line 1000
    :cond_1c4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1ac

    .line 1006
    :cond_1d8
    sget v5, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenAngleTopLeft:F

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_23

    sget v5, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenAngleBottomLeft:F

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_23

    .line 1009
    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v5, 0x41a00000    # 20.0f

    iput v5, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 1010
    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget v5, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthY:I

    int-to-float v5, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    sget v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthX:I

    add-int/lit8 v1, v1, -0x14

    int-to-float v1, v1

    mul-float/2addr v0, v1

    sub-float v0, v5, v0

    iput v0, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 1013
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FZFFFF)V

    .line 1015
    iget-boolean v0, p1, Lfr/testudo/spacecorsair/business/Element;->drawDistanceOnMiniature:Z

    if-eqz v0, :cond_23

    .line 1016
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v2, 0x42200000    # 40.0f

    sub-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 1017
    const/16 v0, 0x2710

    if-ge v10, v0, :cond_236

    sget-object v0, Lfr/testudo/spacecorsair/engine/IntegerStringReference;->NUMBERS:[Ljava/lang/String;

    aget-object v3, v0, v10

    .line 1018
    :goto_21e
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f63d70a    # 0.89f

    const v6, 0x3e947ae1    # 0.29f

    const/high16 v7, 0x3f800000    # 1.0f

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->LITTLE:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    goto/16 :goto_23

    .line 1017
    :cond_236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_21e
.end method

.method private drawOnRadarAndCalcNearby(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 12

    .prologue
    const/4 v4, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    .line 826
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v1, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v1, v0, v1

    .line 828
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v3, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v3, v0, v3

    .line 832
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/Element;->isColidable()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v5, Lfr/testudo/spacecorsair/engine/GameThread;->NEARBY_DISTANCE:I

    int-to-float v5, v5

    cmpg-float v0, v0, v5

    if-gez v0, :cond_47

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v5, Lfr/testudo/spacecorsair/engine/GameThread;->NEARBY_DISTANCE:I

    int-to-float v5, v5

    cmpg-float v0, v0, v5

    if-gez v0, :cond_47

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v0, :cond_47

    .line 834
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/engine/GameThread;->addToNearByElement(Lfr/testudo/spacecorsair/business/Element;)V

    .line 837
    :cond_47
    mul-float v0, v1, v1

    mul-float v5, v3, v3

    add-float/2addr v0, v5

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    .line 839
    iput v0, p1, Lfr/testudo/spacecorsair/business/Element;->distanceToPlayer:F

    .line 842
    iget-boolean v5, p1, Lfr/testudo/spacecorsair/business/Element;->drawOnRadar:Z

    if-nez v5, :cond_5b

    iget-boolean v5, p1, Lfr/testudo/spacecorsair/business/Element;->isMissionObjective:Z

    if-nez v5, :cond_5b

    .line 875
    :cond_5a
    :goto_5a
    return-void

    .line 849
    :cond_5b
    sget-object v5, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v5, v5, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget v5, v5, Lfr/testudo/spacecorsair/business/player/PlayerShip;->radarPortee:I

    int-to-float v5, v5

    .line 851
    sget-object v7, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v7, v7, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget v7, v7, Lfr/testudo/spacecorsair/business/player/PlayerShip;->radarPortee:I

    int-to-float v7, v7

    cmpg-float v0, v0, v7

    if-gez v0, :cond_5a

    .line 853
    iget-boolean v0, p1, Lfr/testudo/spacecorsair/business/Element;->isMissionObjective:Z

    if-eqz v0, :cond_e8

    .line 855
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/Element;->radarDrawType:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->isPoint:Z

    if-eqz v0, :cond_ae

    .line 856
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v6, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v7, Lfr/testudo/spacecorsair/display/hud/Radar;->drawPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v6

    sget v7, Lfr/testudo/spacecorsair/display/hud/Radar;->DEMI_DIM:I

    add-int/lit8 v7, v7, -0x14

    int-to-float v7, v7

    neg-float v1, v1

    mul-float/2addr v1, v7

    div-float/2addr v1, v5

    sget v7, Lfr/testudo/spacecorsair/display/hud/Radar;->DEMI_DIM:I

    add-int/lit8 v7, v7, -0x14

    int-to-float v7, v7

    neg-float v3, v3

    mul-float/2addr v3, v7

    div-float/2addr v3, v5

    invoke-virtual {v6, v1, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    sget-object v3, Lfr/testudo/spacecorsair/business/mission/Mission;->targetRadarDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v5, p1, Lfr/testudo/spacecorsair/business/Element;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v6, v5, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->a:F

    iget-object v5, p1, Lfr/testudo/spacecorsair/business/Element;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v7, v5, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->r:F

    iget-object v5, p1, Lfr/testudo/spacecorsair/business/Element;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v8, v5, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->g:F

    iget-object v5, p1, Lfr/testudo/spacecorsair/business/Element;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v9, v5, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->b:F

    move v5, v2

    invoke-virtual/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FZFFFF)V

    goto :goto_5a

    .line 859
    :cond_ae
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v6, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v7, Lfr/testudo/spacecorsair/display/hud/Radar;->drawPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v6

    sget v7, Lfr/testudo/spacecorsair/display/hud/Radar;->DEMI_DIM:I

    add-int/lit8 v7, v7, -0x14

    int-to-float v7, v7

    neg-float v1, v1

    mul-float/2addr v1, v7

    div-float/2addr v1, v5

    sget v7, Lfr/testudo/spacecorsair/display/hud/Radar;->DEMI_DIM:I

    add-int/lit8 v7, v7, -0x14

    int-to-float v7, v7

    neg-float v3, v3

    mul-float/2addr v3, v7

    div-float/2addr v3, v5

    invoke-virtual {v6, v1, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget-object v3, p1, Lfr/testudo/spacecorsair/business/Element;->radarDrawType:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->radar_drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v5, p1, Lfr/testudo/spacecorsair/business/Element;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v6, v5, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->a:F

    iget-object v5, p1, Lfr/testudo/spacecorsair/business/Element;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v7, v5, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->r:F

    iget-object v5, p1, Lfr/testudo/spacecorsair/business/Element;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v8, v5, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->g:F

    iget-object v5, p1, Lfr/testudo/spacecorsair/business/Element;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v9, v5, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->b:F

    move v5, v2

    invoke-virtual/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FZFFFF)V

    goto/16 :goto_5a

    .line 864
    :cond_e8
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/Element;->radarDrawType:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->isPoint:Z

    if-eqz v0, :cond_11b

    .line 865
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v7, Lfr/testudo/spacecorsair/display/hud/Radar;->drawPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v4

    sget v7, Lfr/testudo/spacecorsair/display/hud/Radar;->DEMI_DIM:I

    add-int/lit8 v7, v7, -0x14

    int-to-float v7, v7

    neg-float v1, v1

    mul-float/2addr v1, v7

    div-float/2addr v1, v5

    sget v7, Lfr/testudo/spacecorsair/display/hud/Radar;->DEMI_DIM:I

    add-int/lit8 v7, v7, -0x14

    int-to-float v7, v7

    neg-float v3, v3

    mul-float/2addr v3, v7

    div-float/2addr v3, v5

    invoke-virtual {v4, v1, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget v3, p1, Lfr/testudo/spacecorsair/business/Element;->radarColorR:F

    iget v4, p1, Lfr/testudo/spacecorsair/business/Element;->radarColorG:F

    iget v5, p1, Lfr/testudo/spacecorsair/business/Element;->radarColorB:F

    iget v7, p1, Lfr/testudo/spacecorsair/business/Element;->radarPointSize:F

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToPointWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZFFFFF)V

    goto/16 :goto_5a

    .line 867
    :cond_11b
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v7, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v8, Lfr/testudo/spacecorsair/display/hud/Radar;->drawPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v7, v8}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v7

    sget v8, Lfr/testudo/spacecorsair/display/hud/Radar;->DEMI_DIM:I

    add-int/lit8 v8, v8, -0x14

    int-to-float v8, v8

    neg-float v1, v1

    mul-float/2addr v1, v8

    div-float/2addr v1, v5

    sget v8, Lfr/testudo/spacecorsair/display/hud/Radar;->DEMI_DIM:I

    add-int/lit8 v8, v8, -0x14

    int-to-float v8, v8

    neg-float v3, v3

    mul-float/2addr v3, v8

    div-float/2addr v3, v5

    invoke-virtual {v7, v1, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget-object v3, p1, Lfr/testudo/spacecorsair/business/Element;->radarDrawType:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->radar_drawable:Lfr/testudo/spacecorsair/display/Drawable;

    move v5, v2

    move v7, v6

    move v8, v6

    move v9, v6

    invoke-virtual/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FZFFFF)V

    goto/16 :goto_5a
.end method

.method private getNewRandomSource(J)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 14

    .prologue
    .line 109
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 110
    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 111
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 112
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 113
    iget-object v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v5, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v5, v5, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v5, v5, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 114
    iget-object v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-double v6, v5

    long-to-double v8, p1

    mul-double/2addr v2, v8

    add-double/2addr v2, v6

    double-to-float v2, v2

    iput v2, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 115
    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    float-to-double v4, v3

    long-to-double v6, p1

    mul-double/2addr v0, v6

    add-double/2addr v0, v4

    double-to-float v0, v0

    iput v0, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 116
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method private hasAlreadyDrawLevel(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 620
    move v0, v1

    :goto_2
    iget v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->nbrSawLevel:I

    if-ge v0, v2, :cond_11

    .line 621
    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->drawnLevel:[Lfr/testudo/spacecorsair/game/levels/LevelId;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 622
    const/4 v1, 0x1

    .line 626
    :cond_11
    return v1

    .line 620
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static isElementVisible(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 9

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 1178
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    .line 1180
    iget-object v1, v0, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget v2, Lfr/testudo/spacecorsair/engine/GameThread;->xDelta:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    .line 1181
    iget-object v2, v0, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget v3, Lfr/testudo/spacecorsair/engine/GameThread;->xDelta:F

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    .line 1183
    iget-object v3, v0, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget v4, Lfr/testudo/spacecorsair/engine/GameThread;->yDelta:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 1184
    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget v4, Lfr/testudo/spacecorsair/engine/GameThread;->yDelta:F

    div-float/2addr v4, v5

    add-float/2addr v0, v4

    .line 1187
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/Element;->getDimToTestIfVisibleOnScreen()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v4

    .line 1188
    iget v5, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    .line 1189
    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    .line 1192
    iget-object v6, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    int-to-float v7, v5

    add-float/2addr v6, v7

    cmpl-float v1, v6, v1

    if-lez v1, :cond_5e

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    int-to-float v5, v5

    sub-float/2addr v1, v5

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5e

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    int-to-float v2, v4

    sub-float/2addr v1, v2

    cmpg-float v0, v1, v0

    if-gez v0, :cond_5e

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    int-to-float v1, v4

    add-float/2addr v0, v1

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5e

    const/4 v0, 0x1

    :goto_5d
    return v0

    :cond_5e
    const/4 v0, 0x0

    goto :goto_5d
.end method

.method private processInput()V
    .registers 8

    .prologue
    .line 1082
    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->inputQueueMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1083
    :try_start_3
    iget-object v3, p0, Lfr/testudo/spacecorsair/engine/GameThread;->inputQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 1084
    :cond_5
    :goto_5
    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->isEmpty()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1d

    move-result v0

    if-nez v0, :cond_7f

    .line 1085
    const/4 v1, 0x0

    .line 1087
    :try_start_c
    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/activity/input/InputObject;
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_12} :catch_83
    .catchall {:try_start_c .. :try_end_12} :catchall_81

    .line 1090
    :try_start_12
    iget-byte v1, v0, Lfr/testudo/spacecorsair/activity/input/InputObject;->eventType:B
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_14} :catch_36
    .catchall {:try_start_12 .. :try_end_14} :catchall_4f

    packed-switch v1, :pswitch_data_86

    .line 1130
    :goto_17
    if-eqz v0, :cond_5

    .line 1131
    :try_start_19
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/input/InputObject;->returnToPool()V

    goto :goto_5

    .line 1135
    :catchall_1d
    move-exception v0

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_1d

    throw v0

    .line 1094
    :pswitch_20
    :try_start_20
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-eqz v1, :cond_59

    .line 1095
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/game/Game;->globalMapMode:Z

    if-eqz v1, :cond_49

    .line 1096
    iget-object v1, v0, Lfr/testudo/spacecorsair/activity/input/InputObject;->motionEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/engine/GameThread;->processInputEventGlobalMapMode(Landroid/view/MotionEvent;)V
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_35} :catch_36
    .catchall {:try_start_20 .. :try_end_35} :catchall_4f

    goto :goto_17

    .line 1127
    :catch_36
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 1128
    :goto_3a
    :try_start_3a
    const-string v4, "JDE"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_81

    .line 1130
    if-eqz v1, :cond_5

    .line 1131
    :try_start_45
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/activity/input/InputObject;->returnToPool()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_1d

    goto :goto_5

    .line 1098
    :cond_49
    :try_start_49
    iget-object v1, v0, Lfr/testudo/spacecorsair/activity/input/InputObject;->motionEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/engine/GameThread;->processInputEventMapMode(Landroid/view/MotionEvent;)V
    :try_end_4e
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_4e} :catch_36
    .catchall {:try_start_49 .. :try_end_4e} :catchall_4f

    goto :goto_17

    .line 1130
    :catchall_4f
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_53
    if-eqz v1, :cond_58

    .line 1131
    :try_start_55
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/activity/input/InputObject;->returnToPool()V

    :cond_58
    throw v0
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_1d

    .line 1101
    :cond_59
    :try_start_59
    iget-object v1, v0, Lfr/testudo/spacecorsair/activity/input/InputObject;->motionEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/engine/GameThread;->processInputEvent(Landroid/view/MotionEvent;)V

    goto :goto_17

    .line 1107
    :pswitch_5f
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-eqz v1, :cond_6b

    .line 1109
    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/engine/GameThread;->processMogaInMapKeyEvent(Lfr/testudo/spacecorsair/activity/input/InputObject;)V

    goto :goto_17

    .line 1112
    :cond_6b
    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/engine/GameThread;->processMogaInGameKeyEvent(Lfr/testudo/spacecorsair/activity/input/InputObject;)V

    goto :goto_17

    .line 1117
    :pswitch_6f
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-eqz v1, :cond_7b

    .line 1118
    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/engine/GameThread;->processMogaInMapMotionEvent(Lfr/testudo/spacecorsair/activity/input/InputObject;)V

    goto :goto_17

    .line 1120
    :cond_7b
    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/engine/GameThread;->processMogaInGameMotionEvent(Lfr/testudo/spacecorsair/activity/input/InputObject;)V
    :try_end_7e
    .catch Ljava/lang/InterruptedException; {:try_start_59 .. :try_end_7e} :catch_36
    .catchall {:try_start_59 .. :try_end_7e} :catchall_4f

    goto :goto_17

    .line 1135
    :cond_7f
    :try_start_7f
    monitor-exit v2
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_1d

    .line 1136
    return-void

    .line 1130
    :catchall_81
    move-exception v0

    goto :goto_53

    .line 1127
    :catch_83
    move-exception v0

    goto :goto_3a

    .line 1090
    nop

    :pswitch_data_86
    .packed-switch 0x2
        :pswitch_20
        :pswitch_5f
        :pswitch_6f
    .end packed-switch
.end method

.method private requestGalactivMapGoto(I)V
    .registers 6

    .prologue
    const/high16 v3, 0x43480000    # 200.0f

    .line 465
    const/4 v0, 0x0

    .line 466
    packed-switch p1, :pswitch_data_8c

    .line 491
    :cond_6
    :goto_6
    :pswitch_6
    if-eqz v0, :cond_26

    .line 494
    iget-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->curentSeenLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->decalSpeedX:F

    .line 495
    iget-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->curentSeenLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->decalSpeedY:F

    .line 497
    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->curentSeenLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 501
    :cond_26
    return-void

    .line 469
    :pswitch_27
    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->curentSeenLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->left:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v1, :cond_6

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->curentSeenLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->left:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->isLevelVisited(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 470
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->curentSeenLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->left:Lfr/testudo/spacecorsair/game/levels/LevelId;

    goto :goto_6

    .line 475
    :pswitch_40
    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->curentSeenLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->right:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v1, :cond_6

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->curentSeenLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->right:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->isLevelVisited(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 476
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->curentSeenLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->right:Lfr/testudo/spacecorsair/game/levels/LevelId;

    goto :goto_6

    .line 480
    :pswitch_59
    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->curentSeenLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->top:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v1, :cond_6

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->curentSeenLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->top:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->isLevelVisited(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 481
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->curentSeenLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->top:Lfr/testudo/spacecorsair/game/levels/LevelId;

    goto :goto_6

    .line 485
    :pswitch_72
    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->curentSeenLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->bottom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v1, :cond_6

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->curentSeenLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->bottom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->isLevelVisited(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 486
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->curentSeenLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->bottom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    goto/16 :goto_6

    .line 466
    :pswitch_data_8c
    .packed-switch -0x2
        :pswitch_72
        :pswitch_27
        :pswitch_6
        :pswitch_40
        :pswitch_59
    .end packed-switch
.end method

.method public static updateViewDeltaZ()V
    .registers 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1147
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    .line 1150
    iget v1, v0, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    sget v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->camZ:F

    add-float/2addr v1, v2

    sget v2, Lfr/testudo/spacecorsair/engine/GameThread;->lastCamDecal:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3d

    .line 1151
    iget v1, v0, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    sget v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->camZ:F

    add-float/2addr v1, v2

    sget v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->aspect:F

    mul-float/2addr v1, v2

    float-to-double v2, v1

    sget v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->fov_radians:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v1, v2

    sput v1, Lfr/testudo/spacecorsair/engine/GameThread;->xDelta:F

    .line 1152
    iget v1, v0, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    sget v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->camZ:F

    add-float/2addr v1, v2

    float-to-double v2, v1

    sget v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->fov_radians:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v1, v2

    sput v1, Lfr/testudo/spacecorsair/engine/GameThread;->yDelta:F

    .line 1153
    iget v0, v0, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    sget v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->camZ:F

    add-float/2addr v0, v1

    sput v0, Lfr/testudo/spacecorsair/engine/GameThread;->lastCamDecal:F

    .line 1156
    :cond_3d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7d0

    rem-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    sput v0, Lfr/testudo/spacecorsair/engine/GameThread;->blink:F

    .line 1159
    sget v0, Lfr/testudo/spacecorsair/engine/GameThread;->blink:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_57

    .line 1160
    sget v0, Lfr/testudo/spacecorsair/engine/GameThread;->blink:F

    sub-float/2addr v0, v6

    sub-float v0, v6, v0

    sput v0, Lfr/testudo/spacecorsair/engine/GameThread;->blink:F

    .line 1163
    :cond_57
    return-void
.end method


# virtual methods
.method public cameraClick(FF)V
    .registers 9

    .prologue
    .line 1209
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1211
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->lastClick:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x190

    cmp-long v1, v2, v4

    if-gez v1, :cond_18

    .line 1213
    invoke-virtual {p0, p1, p2}, Lfr/testudo/spacecorsair/engine/GameThread;->cameraDoubleClick(FF)V

    .line 1217
    :cond_18
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->lastClick:J

    .line 1218
    return-void
.end method

.method public cameraDoubleClick(FF)V
    .registers 5

    .prologue
    .line 1221
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    const v1, 0x451c4000    # 2500.0f

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    .line 1222
    return-void
.end method

.method public clearInputQueue()V
    .registers 4

    .prologue
    .line 1064
    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->inputQueueMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1066
    :try_start_3
    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->inputQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 1067
    :goto_5
    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->isEmpty()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_19

    move-result v0

    if-nez v0, :cond_17

    .line 1069
    :try_start_b
    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/activity/input/InputObject;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/input/InputObject;->returnToPool()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_15
    .catchall {:try_start_b .. :try_end_14} :catchall_19

    goto :goto_5

    .line 1070
    :catch_15
    move-exception v0

    goto :goto_5

    .line 1074
    :cond_17
    :try_start_17
    monitor-exit v1

    .line 1075
    return-void

    .line 1074
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public every100Ms()V
    .registers 2

    .prologue
    .line 168
    const/16 v0, 0x64

    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->hundredMilliSecNextTime:I

    .line 171
    return-void
.end method

.method public everyOneSeconds()V
    .registers 3

    .prologue
    .line 176
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->oneSecondNextTime:J

    .line 179
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->animator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;->onEverySecond()V

    .line 182
    return-void
.end method

.method public everyTenSec()V
    .registers 3

    .prologue
    .line 155
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-eqz v0, :cond_f

    .line 156
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->onEveryTenGameSec()V

    .line 160
    :cond_f
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->animator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;->onEveryTenSec()V

    .line 163
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tenSecNextTime:J

    .line 164
    return-void
.end method

.method public everyThirtySec()V
    .registers 3

    .prologue
    .line 135
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->animator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;->onEveryThirtySec()V

    .line 136
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->getFarAway:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->done:Z

    if-nez v0, :cond_25

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/Vector2;->length()F

    move-result v0

    const v1, 0x47c35000    # 100000.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_25

    .line 137
    invoke-static {}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onPlayerFarAwayFromCenterOfLevel()V

    .line 141
    :cond_25
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->everyMinuteFlag:Z

    if-eqz v0, :cond_2c

    .line 142
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/GameThread;->onEveryMinute()V

    .line 145
    :cond_2c
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->everyMinuteFlag:Z

    if-nez v0, :cond_38

    const/4 v0, 0x1

    :goto_31
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->everyMinuteFlag:Z

    .line 148
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->thirtySecNextTime:J

    .line 149
    return-void

    .line 145
    :cond_38
    const/4 v0, 0x0

    goto :goto_31
.end method

.method public feedInput(Lfr/testudo/spacecorsair/activity/input/InputObject;)V
    .registers 6

    .prologue
    .line 1052
    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->inputQueueMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1054
    :try_start_3
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->inputQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_8} :catch_a
    .catchall {:try_start_3 .. :try_end_8} :catchall_15

    .line 1058
    :goto_8
    :try_start_8
    monitor-exit v1

    .line 1059
    return-void

    .line 1055
    :catch_a
    move-exception v0

    .line 1056
    const-string v2, "JDE"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 1058
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public hideGameMenu()V
    .registers 5

    .prologue
    .line 2094
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->msgHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2095
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2096
    const-string v2, "ACTION"

    sget-object v3, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_HIDE_MENU:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2097
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2098
    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->msgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2099
    return-void
.end method

.method public onAchievementCompleted(Lfr/testudo/spacecorsair/game/achievements/Achievement;)V
    .registers 6

    .prologue
    .line 2129
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->msgHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2130
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2131
    const-string v2, "ACTION"

    sget-object v3, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_ACHIEVEMENT_DONE:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2132
    const-string v2, "ACHIEVE"

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2133
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2134
    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->msgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xf

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2136
    return-void
.end method

.method public onEveryMinute()V
    .registers 2

    .prologue
    .line 125
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-eqz v0, :cond_f

    .line 126
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->onEveryMinute()V

    .line 129
    :cond_f
    return-void
.end method

.method public onPlayerDead()V
    .registers 2

    .prologue
    .line 2157
    const/16 v0, 0xfa0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/engine/GameThread;->onPlayerDead(I)V

    .line 2159
    return-void
.end method

.method public onPlayerDead(I)V
    .registers 6

    .prologue
    .line 2162
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->msgHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2163
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2164
    const-string v2, "ACTION"

    sget-object v3, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_PLAYER_DEAD:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2165
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2166
    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->msgHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2168
    return-void
.end method

.method public declared-synchronized pauseGame()V
    .registers 3

    .prologue
    .line 311
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mPauseLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_17

    .line 312
    :try_start_4
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->gameRenderer:Lfr/testudo/spacecorsair/engine/GameRenderer;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/GameRenderer;->waitUntilDrawingCompleted()V

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->paused:Z

    .line 315
    invoke-static {}, Lfr/testudo/spacecorsair/display/hud/Joystick;->setFingerUp()V

    .line 316
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_14

    .line 317
    monitor-exit p0

    return-void

    .line 316
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    :try_start_16
    throw v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    .line 311
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public processInputEvent(Landroid/view/MotionEvent;)V
    .registers 13

    .prologue
    .line 1868
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    if-eqz v0, :cond_1b

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserType:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->useJoystick:Z

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    move v2, v0

    .line 1873
    :goto_14
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v3

    .line 1874
    if-nez p1, :cond_1e

    .line 2080
    :cond_1a
    :goto_1a
    return-void

    .line 1868
    :cond_1b
    const/4 v0, 0x0

    move v2, v0

    goto :goto_14

    .line 1879
    :cond_1e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v4, v0, 0xff

    .line 1880
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v5, v0, 0x8

    .line 1882
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    .line 1885
    const/4 v0, 0x0

    move v1, v0

    :goto_34
    const/4 v0, 0x4

    if-ge v1, v0, :cond_1a

    .line 1886
    if-lt v1, v6, :cond_42

    .line 1887
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->id:[I

    const/4 v7, -0x1

    aput v7, v0, v1

    .line 1885
    :cond_3e
    :goto_3e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_34

    .line 1890
    :cond_42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v7, 0x2

    if-eq v0, v7, :cond_4b

    if-ne v1, v5, :cond_3e

    .line 1893
    :cond_4b
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 1894
    packed-switch v4, :pswitch_data_238

    goto :goto_3e

    .line 1897
    :pswitch_53
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->id:[I

    aput v7, v0, v1

    .line 1898
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    .line 1899
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v8, v8

    .line 1901
    sget-boolean v9, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->isMenuDisplaying:Z

    if-eqz v9, :cond_68

    .line 1902
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/GameThread;->hideGameMenu()V

    .line 1906
    :cond_68
    invoke-static {v0, v8}, Lfr/testudo/spacecorsair/display/hud/Joystick;->doesTouche(II)Z

    move-result v9

    if-eqz v9, :cond_ad

    .line 1907
    iget-object v9, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v8, v9}, Lfr/testudo/spacecorsair/display/hud/Joystick;->getAccelInPourcAndAngle(IILfr/testudo/spacecorsair/engine/Vector2;)V

    .line 1908
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/4 v8, 0x0

    cmpl-float v0, v0, v8

    if-ltz v0, :cond_9e

    .line 1910
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v8, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxPouseeForce:F

    mul-float/2addr v0, v8

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v0, v8

    iput v0, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->curPouseeForce:F

    .line 1911
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iput v0, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->curPouseePourcentage:F

    .line 1912
    iget v0, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->curPouseeForce:F

    const/4 v8, 0x0

    cmpl-float v0, v0, v8

    if-lez v0, :cond_ab

    const/4 v0, 0x1

    :goto_96
    iput-boolean v0, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isPousee:Z

    .line 1913
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iput v0, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->targetAngle:F

    .line 1915
    :cond_9e
    iput v7, p0, Lfr/testudo/spacecorsair/engine/GameThread;->gazEventIndex:I
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a0} :catch_a1

    goto :goto_3e

    .line 2072
    :catch_a1
    move-exception v0

    .line 2076
    const-string v1, "JDE"

    const-string v2, "error during event processing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1a

    .line 1912
    :cond_ab
    const/4 v0, 0x0

    goto :goto_96

    .line 1919
    :cond_ad
    :try_start_ad
    invoke-static {v0, v8}, Lfr/testudo/spacecorsair/display/hud/Radar;->doesTouche(II)Z

    move-result v9

    if-eqz v9, :cond_d3

    .line 1920
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v0, :cond_c7

    .line 1922
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mooveEventId:I

    .line 1923
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/Game;->setMapMode()V

    goto/16 :goto_3e

    .line 1927
    :cond_c7
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mooveEventId:I

    .line 1928
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/Game;->requestUnSetMapMode()V

    goto/16 :goto_3e

    .line 1933
    :cond_d3
    sget-object v9, Lfr/testudo/spacecorsair/display/hud/HudImages;->missileButon:Lfr/testudo/spacecorsair/display/hud/Button;

    invoke-virtual {v9, v0, v8}, Lfr/testudo/spacecorsair/display/hud/Button;->doesTouche(II)Z

    move-result v9

    if-eqz v9, :cond_e4

    .line 1934
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->requestMissileShoot()V

    goto/16 :goto_3e

    .line 1938
    :cond_e4
    sget-object v9, Lfr/testudo/spacecorsair/display/hud/HudImages;->boosterButton:Lfr/testudo/spacecorsair/display/hud/Button;

    invoke-virtual {v9, v0, v8}, Lfr/testudo/spacecorsair/display/hud/Button;->doesTouche(II)Z

    move-result v9

    if-eqz v9, :cond_fe

    .line 1940
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    const/4 v8, 0x1

    iput-boolean v8, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isPousee:Z

    .line 1941
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    const/4 v8, 0x1

    iput-boolean v8, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isBoosterEnabled:Z

    .line 1942
    iput v7, p0, Lfr/testudo/spacecorsair/engine/GameThread;->boosterEventIndex:I

    goto/16 :goto_3e

    .line 1947
    :cond_fe
    if-eqz v2, :cond_12e

    invoke-static {v0, v8}, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->doesTouche(II)Z

    move-result v9

    if-eqz v9, :cond_12e

    .line 1948
    iget-object v9, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v8, v9}, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->getAccelInPourcAndAngle(IILfr/testudo/spacecorsair/engine/Vector2;)V

    .line 1949
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/4 v8, 0x0

    cmpl-float v0, v0, v8

    if-ltz v0, :cond_12a

    .line 1950
    const/4 v0, 0x0

    :goto_115
    iget-object v8, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    array-length v8, v8

    if-ge v0, v8, :cond_127

    .line 1951
    iget-object v8, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v8, v8, v0

    iget-object v9, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v9, v9, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iput v9, v8, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->targetSpin:F

    .line 1950
    add-int/lit8 v0, v0, 0x1

    goto :goto_115

    .line 1953
    :cond_127
    const/4 v0, 0x1

    iput-boolean v0, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isShooting:Z

    .line 1955
    :cond_12a
    iput v7, p0, Lfr/testudo/spacecorsair/engine/GameThread;->shootEventIndex:I

    goto/16 :goto_3e

    .line 1961
    :cond_12e
    sget v9, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthX:I

    add-int/lit16 v9, v9, -0x12c

    if-le v0, v9, :cond_13f

    .line 1965
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    const/4 v8, 0x1

    iput-boolean v8, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isShooting:Z

    .line 1966
    iput v7, p0, Lfr/testudo/spacecorsair/engine/GameThread;->shootEventIndex:I

    goto/16 :goto_3e

    .line 1971
    :cond_13f
    invoke-static {v0, v8}, Lfr/testudo/spacecorsair/display/hud/MenuButonLink;->doesTouche(II)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1973
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/GameThread;->showGameMenu()V

    goto/16 :goto_3e

    .line 1983
    :pswitch_14a
    iget v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->shootEventIndex:I

    if-ne v0, v7, :cond_15d

    .line 1985
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->setShootingFalse()V

    .line 1988
    if-eqz v2, :cond_15a

    .line 1989
    invoke-static {}, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->setFingerUp()V

    .line 1992
    :cond_15a
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->shootEventIndex:I

    .line 1995
    :cond_15d
    iget v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->gazEventIndex:I

    if-ne v0, v7, :cond_181

    .line 1997
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    const/4 v8, 0x0

    iput-boolean v8, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isPousee:Z

    .line 1998
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    const/4 v8, 0x0

    iput v8, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->curPouseeForce:F

    .line 2000
    invoke-static {}, Lfr/testudo/spacecorsair/display/hud/Joystick;->setFingerUp()V

    .line 2001
    const/4 v0, 0x0

    iput v0, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->curPouseePourcentage:F

    .line 2002
    iget v0, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->targetAngle:F

    .line 2003
    const/4 v0, 0x0

    iput v0, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spinSpeed:F

    .line 2004
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->gazEventIndex:I

    .line 2008
    :cond_181
    iget v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->boosterEventIndex:I

    if-ne v0, v7, :cond_19b

    .line 2009
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    const/4 v7, 0x0

    iput-boolean v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isBoosterEnabled:Z

    .line 2010
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->boosterEventIndex:I

    .line 2011
    iget v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->gazEventIndex:I

    const/4 v7, -0x1

    if-ne v0, v7, :cond_19b

    .line 2012
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    const/4 v7, 0x0

    iput-boolean v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isPousee:Z

    .line 2017
    :cond_19b
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->id:[I

    const/4 v7, -0x1

    aput v7, v0, v1

    goto/16 :goto_3e

    .line 2022
    :pswitch_1a2
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->id:[I

    aput v7, v0, v1

    .line 2023
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    .line 2024
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v8, v8

    .line 2026
    iget v9, p0, Lfr/testudo/spacecorsair/engine/GameThread;->gazEventIndex:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1c1

    invoke-static {v0, v8}, Lfr/testudo/spacecorsair/display/hud/Joystick;->doesTouche(II)Z

    move-result v9

    if-eqz v9, :cond_1c1

    iget v9, p0, Lfr/testudo/spacecorsair/engine/GameThread;->shootEventIndex:I

    if-eq v7, v9, :cond_1c1

    .line 2028
    iput v7, p0, Lfr/testudo/spacecorsair/engine/GameThread;->gazEventIndex:I

    .line 2032
    :cond_1c1
    iget v9, p0, Lfr/testudo/spacecorsair/engine/GameThread;->gazEventIndex:I

    if-ne v9, v7, :cond_1fb

    .line 2034
    iget-object v7, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v8, v7}, Lfr/testudo/spacecorsair/display/hud/Joystick;->getAccelInPourcAndAngle(IILfr/testudo/spacecorsair/engine/Vector2;)V

    .line 2035
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/4 v7, 0x0

    cmpl-float v0, v0, v7

    if-ltz v0, :cond_3e

    .line 2036
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iput v0, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->curPouseePourcentage:F

    .line 2037
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v7, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxPouseeForce:F

    mul-float/2addr v0, v7

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v0, v7

    iput v0, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->curPouseeForce:F

    .line 2038
    iget v0, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->curPouseeForce:F

    const/4 v7, 0x0

    cmpl-float v0, v0, v7

    if-lez v0, :cond_1f9

    const/4 v0, 0x1

    :goto_1ed
    iput-boolean v0, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isPousee:Z

    .line 2039
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->targetAngle:F

    goto/16 :goto_3e

    .line 2038
    :cond_1f9
    const/4 v0, 0x0

    goto :goto_1ed

    .line 2044
    :cond_1fb
    if-eqz v2, :cond_3e

    .line 2046
    iget v9, p0, Lfr/testudo/spacecorsair/engine/GameThread;->shootEventIndex:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_20e

    invoke-static {v0, v8}, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->doesTouche(II)Z

    move-result v9

    if-eqz v9, :cond_20e

    iget v9, p0, Lfr/testudo/spacecorsair/engine/GameThread;->gazEventIndex:I

    if-eq v7, v9, :cond_20e

    .line 2048
    iput v7, p0, Lfr/testudo/spacecorsair/engine/GameThread;->shootEventIndex:I

    .line 2053
    :cond_20e
    iget v9, p0, Lfr/testudo/spacecorsair/engine/GameThread;->shootEventIndex:I

    if-ne v9, v7, :cond_3e

    .line 2055
    iget-object v7, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v8, v7}, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->getAccelInPourcAndAngle(IILfr/testudo/spacecorsair/engine/Vector2;)V

    .line 2056
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/4 v7, 0x0

    cmpl-float v0, v0, v7

    if-ltz v0, :cond_3e

    .line 2057
    const/4 v0, 0x0

    :goto_221
    iget-object v7, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    array-length v7, v7

    if-ge v0, v7, :cond_233

    .line 2058
    iget-object v7, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v7, v7, v0

    iget-object v8, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iput v8, v7, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->targetSpin:F

    .line 2057
    add-int/lit8 v0, v0, 0x1

    goto :goto_221

    .line 2060
    :cond_233
    const/4 v0, 0x1

    iput-boolean v0, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isShooting:Z
    :try_end_236
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_236} :catch_a1

    goto/16 :goto_3e

    .line 1894
    :pswitch_data_238
    .packed-switch 0x0
        :pswitch_53
        :pswitch_14a
        :pswitch_1a2
        :pswitch_14a
        :pswitch_14a
        :pswitch_53
        :pswitch_14a
    .end packed-switch
.end method

.method public processInputEventGlobalMapMode(Landroid/view/MotionEvent;)V
    .registers 14

    .prologue
    .line 1238
    if-nez p1, :cond_a

    .line 1239
    const-string v0, "JDE"

    const-string v1, "Event null, returning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    :cond_9
    return-void

    .line 1243
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v5, v0, 0xff

    .line 1244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v6, v0, 0x8

    .line 1246
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    .line 1249
    const/4 v0, 0x0

    move v4, v0

    :goto_20
    const/4 v0, 0x4

    if-ge v4, v0, :cond_9

    .line 1250
    if-lt v4, v7, :cond_2e

    .line 1251
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->id:[I

    const/4 v1, -0x1

    aput v1, v0, v4

    .line 1249
    :cond_2a
    :goto_2a
    :pswitch_2a
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_20

    .line 1254
    :cond_2e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_37

    if-ne v4, v6, :cond_2a

    .line 1257
    :cond_37
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    .line 1258
    packed-switch v5, :pswitch_data_1d6

    goto :goto_2a

    .line 1262
    :pswitch_3f
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->id:[I

    aput v8, v0, v4

    .line 1263
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    .line 1264
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    .line 1267
    sget-object v2, Lfr/testudo/spacecorsair/display/hud/HudImages;->jumpButton:Lfr/testudo/spacecorsair/display/hud/Button;

    invoke-virtual {v2, v0, v1}, Lfr/testudo/spacecorsair/display/hud/Button;->doesTouche(II)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 1269
    iput v8, p0, Lfr/testudo/spacecorsair/engine/GameThread;->clickJumpId:I

    goto :goto_2a

    .line 1275
    :cond_58
    iget v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mooveEventId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7c

    .line 1277
    iput v8, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mooveEventId:I

    .line 1278
    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->initialMooveTouchPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1279
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->initialCamPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1280
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->timetoucheMap:J

    .line 1281
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;->MOOVE:Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mapMode:Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

    goto :goto_2a

    .line 1283
    :cond_7c
    iget v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->pinchEventId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2a

    .line 1284
    iput v8, p0, Lfr/testudo/spacecorsair/engine/GameThread;->pinchEventId:I

    .line 1285
    sget-object v2, Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;->PINCH:Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

    iput-object v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mapMode:Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

    .line 1287
    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->pinch1Position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/engine/GameThread;->initialMooveTouchPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1288
    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->pinch2Position:Lfr/testudo/spacecorsair/engine/Vector2;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1290
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->pinch1Position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->pinch2Position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->originalPinchDistance:F

    .line 1292
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->decalSpeedX:F

    .line 1293
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->decalSpeedY:F

    goto :goto_2a

    .line 1306
    :pswitch_a6
    const-string v0, "JDE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAP MODE B4 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mapMode:Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    iget v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mooveEventId:I

    if-ne v0, v8, :cond_dc

    .line 1310
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameThread$1;->$SwitchMap$fr$testudo$spacecorsair$engine$GameThread$CameraTouchMode:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mapMode:Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e8

    .line 1345
    :cond_d5
    :goto_d5
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;->NONE:Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mapMode:Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

    .line 1347
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mooveEventId:I

    .line 1350
    :cond_dc
    iget v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->pinchEventId:I

    if-ne v0, v8, :cond_e7

    .line 1352
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->pinchEventId:I

    .line 1353
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;->NONE:Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mapMode:Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

    .line 1357
    :cond_e7
    iget v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->clickJumpId:I

    if-ne v0, v8, :cond_17d

    .line 1359
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->clickJumpId:I

    .line 1360
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->jumpButton:Lfr/testudo/spacecorsair/display/hud/Button;

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/display/hud/Button;->doesTouche(II)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1362
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->canJump:Z

    if-eqz v0, :cond_178

    .line 1364
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->curentSeenLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->initHyperdriveJumpRequest(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 1365
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/Game;->requestUnSetGlobalMapMode()V

    goto/16 :goto_2a

    .line 1314
    :pswitch_116
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->decalSpeedX:F

    .line 1315
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->decalSpeedY:F

    goto :goto_d5

    .line 1319
    :pswitch_11d
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->initialMooveTouchPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float v9, v0, v1

    .line 1320
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->initialMooveTouchPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sub-float v10, v0, v1

    .line 1322
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1323
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1325
    cmpl-float v0, v1, v11

    if-lez v0, :cond_16b

    const/4 v0, 0x1

    move v3, v0

    .line 1326
    :goto_13f
    const/high16 v0, 0x42480000    # 50.0f

    cmpl-float v0, v1, v0

    if-lez v0, :cond_16e

    const/4 v0, 0x1

    move v2, v0

    .line 1327
    :goto_147
    const/high16 v0, 0x42480000    # 50.0f

    cmpl-float v0, v11, v0

    if-lez v0, :cond_171

    const/4 v0, 0x1

    move v1, v0

    .line 1330
    :goto_14f
    if-eqz v3, :cond_15c

    if-eqz v2, :cond_15c

    .line 1331
    const/4 v0, 0x0

    cmpg-float v0, v10, v0

    if-gez v0, :cond_174

    const/4 v0, 0x2

    :goto_159
    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/engine/GameThread;->requestGalactivMapGoto(I)V

    .line 1334
    :cond_15c
    if-nez v3, :cond_d5

    if-eqz v1, :cond_d5

    .line 1335
    const/4 v0, 0x0

    cmpg-float v0, v9, v0

    if-gez v0, :cond_176

    const/4 v0, -0x1

    :goto_166
    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/engine/GameThread;->requestGalactivMapGoto(I)V

    goto/16 :goto_d5

    .line 1325
    :cond_16b
    const/4 v0, 0x0

    move v3, v0

    goto :goto_13f

    .line 1326
    :cond_16e
    const/4 v0, 0x0

    move v2, v0

    goto :goto_147

    .line 1327
    :cond_171
    const/4 v0, 0x0

    move v1, v0

    goto :goto_14f

    .line 1331
    :cond_174
    const/4 v0, -0x2

    goto :goto_159

    .line 1335
    :cond_176
    const/4 v0, 0x1

    goto :goto_166

    .line 1367
    :cond_178
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/GameThread;->showMessageYouCannotJump()V

    goto/16 :goto_2a

    .line 1377
    :cond_17d
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->id:[I

    const/4 v1, -0x1

    aput v1, v0, v4

    goto/16 :goto_2a

    .line 1383
    :pswitch_184
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameThread$1;->$SwitchMap$fr$testudo$spacecorsair$engine$GameThread$CameraTouchMode:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mapMode:Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1f0

    goto/16 :goto_2a

    .line 1390
    :pswitch_193
    iget v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mooveEventId:I

    if-ne v0, v8, :cond_2a

    goto/16 :goto_2a

    .line 1403
    :pswitch_199
    iget v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mooveEventId:I

    if-ne v0, v8, :cond_1aa

    .line 1404
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->pinch1Position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1408
    :cond_1aa
    iget v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->pinchEventId:I

    if-ne v0, v8, :cond_1bb

    .line 1409
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->pinch2Position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1413
    :cond_1bb
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->pinch1Position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->pinch2Position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    .line 1414
    iget v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->originalPinchDistance:F

    sub-float/2addr v1, v0

    .line 1416
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lfr/testudo/spacecorsair/engine/Camera;->requestMapPinch(FZ)V

    .line 1418
    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->originalPinchDistance:F

    goto/16 :goto_2a

    .line 1258
    nop

    :pswitch_data_1d6
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_a6
        :pswitch_184
        :pswitch_a6
        :pswitch_a6
        :pswitch_3f
        :pswitch_a6
    .end packed-switch

    .line 1310
    :pswitch_data_1e8
    .packed-switch 0x1
        :pswitch_116
        :pswitch_11d
    .end packed-switch

    .line 1383
    :pswitch_data_1f0
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_193
        :pswitch_199
    .end packed-switch
.end method

.method public processInputEventMapMode(Landroid/view/MotionEvent;)V
    .registers 16

    .prologue
    .line 1453
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 1454
    if-nez p1, :cond_d

    .line 1455
    const-string v0, "JDE"

    const-string v1, "Event null, returning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    :cond_c
    :goto_c
    return-void

    .line 1459
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v1, v0, 0xff

    .line 1460
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v2, 0xff00

    and-int/2addr v0, v2

    shr-int/lit8 v2, v0, 0x8

    .line 1462
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 1465
    const/4 v0, 0x0

    :goto_22
    const/4 v4, 0x4

    if-ge v0, v4, :cond_c

    .line 1466
    if-lt v0, v3, :cond_2f

    .line 1467
    iget-object v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->id:[I

    const/4 v5, -0x1

    aput v5, v4, v0

    .line 1465
    :cond_2c
    :goto_2c
    :pswitch_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 1470
    :cond_2f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_38

    if-ne v0, v2, :cond_2c

    .line 1475
    :cond_38
    :try_start_38
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_200

    move-result v4

    .line 1479
    packed-switch v1, :pswitch_data_204

    goto :goto_2c

    .line 1483
    :pswitch_40
    iget-object v5, p0, Lfr/testudo/spacecorsair/engine/GameThread;->id:[I

    aput v4, v5, v0

    .line 1484
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    .line 1485
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    .line 1488
    invoke-static {v5, v6}, Lfr/testudo/spacecorsair/display/hud/Radar;->doesTouche(II)Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 1489
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v4, v4, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v4, :cond_64

    .line 1490
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/game/Game;->setMapMode()V

    goto :goto_2c

    .line 1493
    :cond_64
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/game/Game;->requestUnSetMapMode()V

    goto :goto_2c

    .line 1499
    :cond_6c
    invoke-static {v5, v6}, Lfr/testudo/spacecorsair/display/hud/MenuButonLink;->doesTouche(II)Z

    move-result v7

    if-nez v7, :cond_2c

    .line 1504
    sget-object v7, Lfr/testudo/spacecorsair/display/hud/HudImages;->galaxyButton:Lfr/testudo/spacecorsair/display/hud/Button;

    invoke-virtual {v7, v5, v6}, Lfr/testudo/spacecorsair/display/hud/Button;->doesTouche(II)Z

    move-result v7

    if-eqz v7, :cond_82

    .line 1505
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/game/Game;->setGlobalMapMode()V

    goto :goto_2c

    .line 1510
    :cond_82
    iget v7, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mooveEventId:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_a6

    .line 1512
    iput v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mooveEventId:I

    .line 1513
    iget-object v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->initialMooveTouchPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    int-to-float v5, v5

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1514
    iget-object v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->initialCamPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v5, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v5, v5, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget-object v5, v5, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1515
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->timetoucheMap:J

    .line 1516
    sget-object v4, Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;->MOOVE:Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

    iput-object v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mapMode:Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

    goto :goto_2c

    .line 1518
    :cond_a6
    iget v7, p0, Lfr/testudo/spacecorsair/engine/GameThread;->pinchEventId:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2c

    .line 1519
    iput v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->pinchEventId:I

    .line 1520
    sget-object v4, Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;->PINCH:Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

    iput-object v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mapMode:Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

    .line 1522
    iget-object v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->pinch1Position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v7, p0, Lfr/testudo/spacecorsair/engine/GameThread;->initialMooveTouchPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1523
    iget-object v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->pinch2Position:Lfr/testudo/spacecorsair/engine/Vector2;

    int-to-float v5, v5

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1525
    iget-object v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->pinch1Position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v5, p0, Lfr/testudo/spacecorsair/engine/GameThread;->pinch2Position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v4

    iput v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->originalPinchDistance:F

    .line 1527
    const/4 v4, 0x0

    iput v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->decalSpeedX:F

    .line 1528
    const/4 v4, 0x0

    iput v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->decalSpeedY:F

    goto/16 :goto_2c

    .line 1543
    :pswitch_d1
    iget v5, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mooveEventId:I

    if-ne v5, v4, :cond_e9

    .line 1545
    sget-object v5, Lfr/testudo/spacecorsair/engine/GameThread$1;->$SwitchMap$fr$testudo$spacecorsair$engine$GameThread$CameraTouchMode:[I

    iget-object v6, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mapMode:Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

    invoke-virtual {v6}, Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_216

    .line 1577
    :goto_e2
    sget-object v5, Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;->NONE:Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

    iput-object v5, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mapMode:Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

    .line 1579
    const/4 v5, -0x1

    iput v5, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mooveEventId:I

    .line 1582
    :cond_e9
    iget v5, p0, Lfr/testudo/spacecorsair/engine/GameThread;->pinchEventId:I

    if-ne v5, v4, :cond_f4

    .line 1584
    const/4 v4, -0x1

    iput v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->pinchEventId:I

    .line 1585
    sget-object v4, Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;->NONE:Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

    iput-object v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mapMode:Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

    .line 1590
    :cond_f4
    iget-object v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->id:[I

    const/4 v5, -0x1

    aput v5, v4, v0

    .line 1591
    const-string v4, "JDE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MAP MODE AFTER :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mapMode:Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

    invoke-virtual {v6}, Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c

    .line 1549
    :pswitch_119
    const/4 v5, 0x0

    iput v5, p0, Lfr/testudo/spacecorsair/engine/GameThread;->decalSpeedX:F

    .line 1550
    const/4 v5, 0x0

    iput v5, p0, Lfr/testudo/spacecorsair/engine/GameThread;->decalSpeedY:F

    goto :goto_e2

    .line 1555
    :pswitch_120
    iget-object v5, p0, Lfr/testudo/spacecorsair/engine/GameThread;->initialMooveTouchPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    sub-float/2addr v5, v6

    .line 1556
    iget-object v6, p0, Lfr/testudo/spacecorsair/engine/GameThread;->initialMooveTouchPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    sub-float/2addr v6, v7

    .line 1558
    mul-float v7, v5, v5

    mul-float v8, v6, v6

    add-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 1560
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lfr/testudo/spacecorsair/engine/GameThread;->timetoucheMap:J

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 1562
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x12c

    cmp-long v10, v10, v12

    if-gez v10, :cond_162

    const-wide/high16 v10, 0x4049000000000000L    # 50.0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_162

    .line 1564
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    invoke-virtual {p0, v8, v9}, Lfr/testudo/spacecorsair/engine/GameThread;->cameraClick(FF)V

    .line 1568
    :cond_162
    const/high16 v8, 0x41f00000    # 30.0f

    mul-float/2addr v5, v8

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-float v8, v8

    div-float/2addr v5, v8

    iput v5, p0, Lfr/testudo/spacecorsair/engine/GameThread;->decalSpeedX:F

    .line 1569
    const/high16 v5, 0x41f00000    # 30.0f

    mul-float/2addr v5, v6

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, p0, Lfr/testudo/spacecorsair/engine/GameThread;->decalSpeedY:F

    goto/16 :goto_e2

    .line 1596
    :pswitch_17a
    sget-object v5, Lfr/testudo/spacecorsair/engine/GameThread$1;->$SwitchMap$fr$testudo$spacecorsair$engine$GameThread$CameraTouchMode:[I

    iget-object v6, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mapMode:Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;

    invoke-virtual {v6}, Lfr/testudo/spacecorsair/engine/GameThread$CameraTouchMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_21e

    goto/16 :goto_2c

    .line 1603
    :pswitch_189
    iget v5, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mooveEventId:I

    if-ne v5, v4, :cond_2c

    .line 1605
    iget-object v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->initialMooveTouchPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    sub-float/2addr v4, v5

    const v5, 0x3fa66666    # 1.3f

    mul-float/2addr v4, v5

    .line 1606
    iget-object v5, p0, Lfr/testudo/spacecorsair/engine/GameThread;->initialMooveTouchPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    sub-float/2addr v5, v6

    const v6, 0x3fa66666    # 1.3f

    mul-float/2addr v5, v6

    .line 1608
    sget-object v6, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v6, v6, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget-object v6, v6, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v7, p0, Lfr/testudo/spacecorsair/engine/GameThread;->initialCamPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v4, v7

    iput v4, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 1609
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v6, p0, Lfr/testudo/spacecorsair/engine/GameThread;->initialCamPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v5, v6, v5

    iput v5, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    goto/16 :goto_2c

    .line 1615
    :pswitch_1c4
    iget v5, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mooveEventId:I

    if-ne v5, v4, :cond_1d5

    .line 1616
    iget-object v5, p0, Lfr/testudo/spacecorsair/engine/GameThread;->pinch1Position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1620
    :cond_1d5
    iget v5, p0, Lfr/testudo/spacecorsair/engine/GameThread;->pinchEventId:I

    if-ne v5, v4, :cond_1e6

    .line 1621
    iget-object v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->pinch2Position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1625
    :cond_1e6
    iget-object v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->pinch1Position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v5, p0, Lfr/testudo/spacecorsair/engine/GameThread;->pinch2Position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v4

    .line 1626
    iget v5, p0, Lfr/testudo/spacecorsair/engine/GameThread;->originalPinchDistance:F

    sub-float/2addr v5, v4

    .line 1628
    sget-object v6, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v6, v6, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v5, v7

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lfr/testudo/spacecorsair/engine/Camera;->requestMapPinch(FZ)V

    .line 1630
    iput v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->originalPinchDistance:F

    goto/16 :goto_2c

    .line 1476
    :catch_200
    move-exception v0

    goto/16 :goto_c

    .line 1479
    nop

    :pswitch_data_204
    .packed-switch 0x0
        :pswitch_40
        :pswitch_d1
        :pswitch_17a
        :pswitch_d1
        :pswitch_d1
        :pswitch_40
        :pswitch_d1
    .end packed-switch

    .line 1545
    :pswitch_data_216
    .packed-switch 0x1
        :pswitch_119
        :pswitch_120
    .end packed-switch

    .line 1596
    :pswitch_data_21e
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_189
        :pswitch_1c4
    .end packed-switch
.end method

.method public processMogaInGameKeyEvent(Lfr/testudo/spacecorsair/activity/input/InputObject;)V
    .registers 5

    .prologue
    .line 1814
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 1816
    iget v0, p1, Lfr/testudo/spacecorsair/activity/input/InputObject;->mogaButonEvent:I

    if-nez v0, :cond_f

    const/4 v0, 0x1

    .line 1817
    :goto_9
    iget v2, p1, Lfr/testudo/spacecorsair/activity/input/InputObject;->mogaButonCode:I

    packed-switch v2, :pswitch_data_2c

    .line 1861
    :cond_e
    :goto_e
    :pswitch_e
    return-void

    .line 1816
    :cond_f
    const/4 v0, 0x0

    goto :goto_9

    .line 1821
    :pswitch_11
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->requestMissileShoot()V

    goto :goto_e

    .line 1827
    :pswitch_15
    iput-boolean v0, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isShooting:Z

    goto :goto_e

    .line 1833
    :pswitch_18
    iput-boolean v0, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isBoosterEnabled:Z

    goto :goto_e

    .line 1840
    :pswitch_1b
    if-eqz v0, :cond_e

    .line 1841
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/GameThread;->requestExitGame()V

    goto :goto_e

    .line 1852
    :pswitch_21
    if-eqz v0, :cond_e

    .line 1853
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/Game;->setMapMode()V

    goto :goto_e

    .line 1817
    nop

    :pswitch_data_2c
    .packed-switch 0x60
        :pswitch_18
        :pswitch_1b
        :pswitch_e
        :pswitch_e
        :pswitch_21
        :pswitch_e
        :pswitch_11
        :pswitch_15
        :pswitch_11
        :pswitch_15
    .end packed-switch
.end method

.method public processMogaInGameMotionEvent(Lfr/testudo/spacecorsair/activity/input/InputObject;)V
    .registers 12

    .prologue
    const/4 v1, 0x1

    const/high16 v9, 0x43b40000    # 360.0f

    const/high16 v8, 0x42b40000    # 90.0f

    const/4 v2, 0x0

    .line 1762
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->config:Lfr/testudo/spacecorsair/game/Config;

    .line 1763
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 1768
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, p1, Lfr/testudo/spacecorsair/activity/input/InputObject;->mogaMotionX:F

    iget v6, p1, Lfr/testudo/spacecorsair/activity/input/InputObject;->mogaMotionY:F

    neg-float v6, v6

    invoke-virtual {v0, v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1769
    sget-object v0, Lfr/testudo/spacecorsair/engine/Vector2;->ZERO:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v5, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v0, v6

    rem-float/2addr v0, v9

    add-float/2addr v0, v8

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/Element;->normalizeSpin(F)F

    move-result v5

    .line 1771
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/Vector2;->length()F

    move-result v6

    .line 1774
    iget v0, v3, Lfr/testudo/spacecorsair/game/Config;->deadZoneMoga:F

    cmpl-float v0, v6, v0

    if-lez v0, :cond_98

    .line 1775
    iget v0, v3, Lfr/testudo/spacecorsair/game/Config;->accelMoga:F

    cmpl-float v0, v6, v0

    if-lez v0, :cond_96

    move v0, v1

    :goto_3e
    iput-boolean v0, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isPousee:Z

    .line 1776
    iget v0, v3, Lfr/testudo/spacecorsair/game/Config;->accelMoga:F

    sub-float v0, v6, v0

    const/high16 v6, 0x3f800000    # 1.0f

    iget v7, v3, Lfr/testudo/spacecorsair/game/Config;->accelMoga:F

    sub-float/2addr v6, v7

    div-float/2addr v0, v6

    .line 1777
    iget v6, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxPouseeForce:F

    mul-float/2addr v6, v0

    iput v6, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->curPouseeForce:F

    .line 1778
    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v0, v6

    iput v0, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->curPouseePourcentage:F

    .line 1779
    iput v5, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->targetAngle:F

    .line 1787
    :goto_56
    iget-object v0, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserType:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->useJoystick:Z

    if-eqz v0, :cond_b6

    .line 1789
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, p1, Lfr/testudo/spacecorsair/activity/input/InputObject;->mogaMotionRX:F

    iget v6, p1, Lfr/testudo/spacecorsair/activity/input/InputObject;->mogaMotionRY:F

    neg-float v6, v6

    invoke-virtual {v0, v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1790
    sget-object v0, Lfr/testudo/spacecorsair/engine/Vector2;->ZERO:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v5, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v0, v6

    rem-float/2addr v0, v9

    add-float/2addr v0, v8

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/Element;->normalizeSpin(F)F

    move-result v5

    .line 1791
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/Vector2;->length()F

    move-result v6

    .line 1793
    iget v0, v3, Lfr/testudo/spacecorsair/game/Config;->deadZoneMoga:F

    cmpl-float v0, v6, v0

    if-lez v0, :cond_9f

    move v0, v2

    .line 1794
    :goto_88
    iget-object v7, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    array-length v7, v7

    if-ge v0, v7, :cond_9f

    .line 1795
    iget-object v7, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v7, v7, v0

    iput v5, v7, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->targetSpin:F

    .line 1794
    add-int/lit8 v0, v0, 0x1

    goto :goto_88

    :cond_96
    move v0, v2

    .line 1775
    goto :goto_3e

    .line 1781
    :cond_98
    iput-boolean v2, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isPousee:Z

    .line 1782
    iget v0, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    iput v0, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->targetAngle:F

    goto :goto_56

    .line 1800
    :cond_9f
    iget-boolean v0, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isShooting:Z

    .line 1801
    iget v3, v3, Lfr/testudo/spacecorsair/game/Config;->deadZoneMoga:F

    cmpl-float v3, v6, v3

    if-lez v3, :cond_b7

    :goto_a7
    iput-boolean v1, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isShooting:Z

    .line 1803
    if-eqz v0, :cond_b6

    iget-boolean v0, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isShooting:Z

    if-nez v0, :cond_b6

    .line 1804
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->setShootingFalse()V

    .line 1809
    :cond_b6
    return-void

    :cond_b7
    move v1, v2

    .line 1801
    goto :goto_a7
.end method

.method public processMogaInMapKeyEvent(Lfr/testudo/spacecorsair/activity/input/InputObject;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1659
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->requestBackFromMap:Z

    if-eqz v0, :cond_6

    .line 1736
    :cond_5
    :goto_5
    :pswitch_5
    return-void

    .line 1663
    :cond_6
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 1665
    iget v0, p1, Lfr/testudo/spacecorsair/activity/input/InputObject;->mogaButonEvent:I

    if-nez v0, :cond_2c

    const/4 v0, 0x1

    .line 1667
    :goto_f
    iget v2, p1, Lfr/testudo/spacecorsair/activity/input/InputObject;->mogaButonCode:I

    packed-switch v2, :pswitch_data_74

    :pswitch_14
    goto :goto_5

    .line 1688
    :pswitch_15
    if-eqz v0, :cond_5

    .line 1690
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->canJump:Z

    if-eqz v0, :cond_38

    .line 1691
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->curentSeenLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->initHyperdriveJumpRequest(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 1692
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/Game;->requestUnSetGlobalMapMode()V

    goto :goto_5

    :cond_2c
    move v0, v1

    .line 1665
    goto :goto_f

    .line 1672
    :pswitch_2e
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mapMogaDeZoomEnabled:Z

    .line 1673
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mapMogaZoomEnabled:Z

    goto :goto_5

    .line 1680
    :pswitch_33
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mapMogaDeZoomEnabled:Z

    .line 1681
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mapMogaZoomEnabled:Z

    goto :goto_5

    .line 1694
    :cond_38
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/GameThread;->showMessageYouCannotJump()V

    goto :goto_5

    .line 1703
    :pswitch_3c
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/game/Game;->globalMapMode:Z

    if-eqz v1, :cond_4e

    .line 1704
    if-eqz v0, :cond_5

    .line 1705
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/Game;->requestUnSetGlobalMapMode()V

    goto :goto_5

    .line 1708
    :cond_4e
    if-eqz v0, :cond_5

    .line 1709
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/Game;->requestUnSetMapMode()V

    goto :goto_5

    .line 1721
    :pswitch_58
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/game/Game;->globalMapMode:Z

    if-nez v1, :cond_6a

    .line 1722
    if-eqz v0, :cond_5

    .line 1723
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/Game;->setGlobalMapMode()V

    goto :goto_5

    .line 1726
    :cond_6a
    if-eqz v0, :cond_5

    .line 1727
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/Game;->setMapMode()V

    goto :goto_5

    .line 1667
    :pswitch_data_74
    .packed-switch 0x60
        :pswitch_15
        :pswitch_3c
        :pswitch_14
        :pswitch_5
        :pswitch_58
        :pswitch_14
        :pswitch_2e
        :pswitch_33
        :pswitch_2e
        :pswitch_33
    .end packed-switch
.end method

.method public processMogaInMapMotionEvent(Lfr/testudo/spacecorsair/activity/input/InputObject;)V
    .registers 4

    .prologue
    const/high16 v1, 0x42a00000    # 80.0f

    .line 1740
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->requestBackFromMap:Z

    if-eqz v0, :cond_7

    .line 1756
    :cond_6
    :goto_6
    return-void

    .line 1744
    :cond_7
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->config:Lfr/testudo/spacecorsair/game/Config;

    .line 1745
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/Vector2;->length()F

    .line 1747
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->globalMapMode:Z

    if-nez v0, :cond_6

    .line 1751
    iget v0, p1, Lfr/testudo/spacecorsair/activity/input/InputObject;->mogaMotionX:F

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->decalSpeedX:F

    .line 1752
    iget v0, p1, Lfr/testudo/spacecorsair/activity/input/InputObject;->mogaMotionY:F

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->decalSpeedY:F

    goto :goto_6
.end method

.method public requestBackFromGalaxyMap()V
    .registers 5

    .prologue
    const/high16 v3, 0x44160000    # 600.0f

    .line 450
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 452
    iget-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->curentSeenLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->decalSpeedX:F

    .line 453
    iget-object v1, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->curentSeenLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->decalSpeedY:F

    .line 455
    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->curentSeenLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 457
    return-void
.end method

.method public requestDisplayMobileShop(I)V
    .registers 6

    .prologue
    .line 2208
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->msgHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2209
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2210
    const-string v2, "ACTION"

    sget-object v3, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->RELOAD_LEVEL:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2211
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2212
    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->msgHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2213
    return-void
.end method

.method public requestExitGame()V
    .registers 5

    .prologue
    .line 2226
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->msgHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2227
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2228
    const-string v2, "ACTION"

    sget-object v3, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_WILLING_EXIT_GAME:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2229
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2230
    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->msgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2232
    return-void
.end method

.method public requestReloadLevelIn(I)V
    .registers 6

    .prologue
    .line 2217
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->msgHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2218
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2219
    const-string v2, "ACTION"

    sget-object v3, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->RELOAD_LEVEL:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2220
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2221
    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->msgHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2222
    return-void
.end method

.method public requestStop()V
    .registers 2

    .prologue
    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->running:Z

    .line 100
    return-void
.end method

.method public resumeGame()V
    .registers 3

    .prologue
    .line 320
    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mPauseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 321
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->paused:Z

    .line 322
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->applyGear()V

    .line 323
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mPauseLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 324
    monitor-exit v1

    .line 325
    return-void

    .line 324
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public run()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x10

    const-wide/16 v8, 0x0

    .line 189
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->curUpTime:J

    iput-wide v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->lastTime:J

    .line 190
    :cond_c
    :goto_c
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->running:Z

    if-eqz v0, :cond_106

    .line 193
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->started:Z

    if-eqz v0, :cond_c

    .line 199
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->gameRenderer:Lfr/testudo/spacecorsair/engine/GameRenderer;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/GameRenderer;->waitUntilDrawingCompleted()V

    .line 201
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->curUpTime:J

    .line 202
    iget-wide v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->lastTime:J

    sub-long v0, v2, v0

    .line 205
    const-wide/16 v4, 0xc

    cmp-long v4, v0, v4

    if-lez v4, :cond_56

    iget-boolean v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->paused:Z

    if-nez v4, :cond_56

    .line 207
    long-to-float v4, v0

    const/high16 v5, 0x42c80000    # 100.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3a

    .line 208
    const-wide/16 v0, 0x64

    .line 210
    :cond_3a
    iput-wide v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->lastTime:J

    .line 211
    invoke-direct {p0}, Lfr/testudo/spacecorsair/engine/GameThread;->processInput()V

    .line 214
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v4, v4, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-eqz v4, :cond_8a

    .line 217
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v4, v4, Lfr/testudo/spacecorsair/game/Game;->globalMapMode:Z

    if-eqz v4, :cond_82

    .line 219
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/engine/GameThread;->doDisplayGlobalMapMode(Ljava/lang/Long;)V

    .line 278
    :cond_56
    :goto_56
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->gameRenderer:Lfr/testudo/spacecorsair/engine/GameRenderer;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/RenderQueue;->swapQueues(Lfr/testudo/spacecorsair/engine/GameRenderer;)V

    .line 281
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 282
    sub-long/2addr v0, v2

    .line 284
    cmp-long v2, v0, v10

    if-gez v2, :cond_6f

    .line 286
    sub-long v0, v10, v0

    :try_start_6c
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6f
    .catch Ljava/lang/InterruptedException; {:try_start_6c .. :try_end_6f} :catch_103

    .line 292
    :cond_6f
    :goto_6f
    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mPauseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 293
    :try_start_72
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->paused:Z

    if-eqz v0, :cond_fd

    .line 295
    :goto_76
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->paused:Z
    :try_end_78
    .catchall {:try_start_72 .. :try_end_78} :catchall_100

    if-eqz v0, :cond_fd

    .line 297
    :try_start_7a
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->mPauseLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_7f
    .catch Ljava/lang/InterruptedException; {:try_start_7a .. :try_end_7f} :catch_80
    .catchall {:try_start_7a .. :try_end_7f} :catchall_100

    goto :goto_76

    .line 298
    :catch_80
    move-exception v0

    goto :goto_76

    .line 223
    :cond_82
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/engine/GameThread;->doDisplayMap(Ljava/lang/Long;)V

    goto :goto_56

    .line 232
    :cond_8a
    iget-wide v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->oneSecondNextTime:J

    sub-long/2addr v4, v0

    iput-wide v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->oneSecondNextTime:J

    .line 233
    iget-wide v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tenSecNextTime:J

    sub-long/2addr v4, v0

    iput-wide v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tenSecNextTime:J

    .line 234
    iget-wide v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->thirtySecNextTime:J

    sub-long/2addr v4, v0

    iput-wide v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->thirtySecNextTime:J

    .line 235
    iget v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->hundredMilliSecNextTime:I

    int-to-long v4, v4

    sub-long/2addr v4, v0

    long-to-int v4, v4

    iput v4, p0, Lfr/testudo/spacecorsair/engine/GameThread;->hundredMilliSecNextTime:I

    .line 237
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lfr/testudo/spacecorsair/engine/Camera;->snapToTarget(Ljava/lang/Long;)V

    .line 238
    invoke-direct {p0, v0, v1}, Lfr/testudo/spacecorsair/engine/GameThread;->doPhysic(J)V

    .line 241
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->priceConf:Lfr/testudo/spacecorsair/storage/PriceListRepresentation;

    iget-wide v6, v4, Lfr/testudo/spacecorsair/storage/PriceListRepresentation;->lastGameMillisec:J

    add-long/2addr v6, v0

    iput-wide v6, v4, Lfr/testudo/spacecorsair/storage/PriceListRepresentation;->lastGameMillisec:J

    .line 242
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v4, v4, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    invoke-virtual {v4, v0, v1}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->onTime(J)V

    .line 243
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    iget-wide v6, v4, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->gameTimeMilli:J

    add-long/2addr v6, v0

    iput-wide v6, v4, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->gameTimeMilli:J

    .line 246
    sget-boolean v4, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->isActive:Z

    if-eqz v4, :cond_d0

    .line 247
    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->updateCounter(J)V

    .line 250
    :cond_d0
    iget v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->hundredMilliSecNextTime:I

    if-gtz v0, :cond_d7

    .line 251
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/GameThread;->every100Ms()V

    .line 254
    :cond_d7
    iget-wide v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->oneSecondNextTime:J

    cmp-long v0, v0, v8

    if-gtz v0, :cond_e0

    .line 255
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/GameThread;->everyOneSeconds()V

    .line 259
    :cond_e0
    iget-wide v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->oneSecondNextTime:J

    cmp-long v0, v0, v8

    if-gtz v0, :cond_e9

    .line 260
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/GameThread;->everyOneSeconds()V

    .line 263
    :cond_e9
    iget-wide v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->tenSecNextTime:J

    cmp-long v0, v0, v8

    if-gtz v0, :cond_f2

    .line 264
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/GameThread;->everyTenSec()V

    .line 268
    :cond_f2
    iget-wide v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->thirtySecNextTime:J

    cmp-long v0, v0, v8

    if-gtz v0, :cond_56

    .line 269
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/GameThread;->everyThirtySec()V

    goto/16 :goto_56

    .line 303
    :cond_fd
    :try_start_fd
    monitor-exit v1

    goto/16 :goto_c

    :catchall_100
    move-exception v0

    monitor-exit v1
    :try_end_102
    .catchall {:try_start_fd .. :try_end_102} :catchall_100

    throw v0

    .line 287
    :catch_103
    move-exception v0

    goto/16 :goto_6f

    .line 307
    :cond_106
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .registers 2

    .prologue
    .line 104
    iput-object p1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->msgHandler:Landroid/os/Handler;

    .line 105
    return-void
.end method

.method public showCasinoMenu()V
    .registers 5

    .prologue
    .line 2148
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->msgHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2149
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2150
    const-string v2, "ACTION"

    sget-object v3, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_CASINO:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2151
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2152
    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->msgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2153
    return-void
.end method

.method public showDialog(IIII)V
    .registers 12

    .prologue
    .line 2178
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIIIZLjava/lang/String;)V

    .line 2180
    return-void
.end method

.method public showDialog(IIIILjava/lang/String;)V
    .registers 13

    .prologue
    .line 2188
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIIIZLjava/lang/String;)V

    .line 2190
    return-void
.end method

.method public showDialog(IIIIZ)V
    .registers 13

    .prologue
    .line 2172
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIIIZLjava/lang/String;)V

    .line 2174
    return-void
.end method

.method public showDialog(IIIIZLjava/lang/String;)V
    .registers 11

    .prologue
    invoke-static {p6}, Lfr/testudo/spacecorsair/mod/ModDev;->noDialog(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :mod_dialog_go

    return-void

    :mod_dialog_go
    .line 2194
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->msgHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2195
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2196
    const-string v2, "ACTION"

    sget-object v3, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_DIALOG:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2197
    const-string v2, "CHARNAME"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2198
    const-string v2, "IMAGE"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2199
    const-string v2, "TEXT"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2200
    const-string v2, "FORCE"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2201
    const-string v2, "POST_ACTION"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2202
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2203
    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->msgHandler:Landroid/os/Handler;

    int-to-long v2, p4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2205
    return-void
.end method

.method public showDialog(Lfr/testudo/spacecorsair/game/CharacterDialog;)V
    .registers 9

    .prologue
    .line 2183
    iget v1, p1, Lfr/testudo/spacecorsair/game/CharacterDialog;->characterImage:I

    iget v2, p1, Lfr/testudo/spacecorsair/game/CharacterDialog;->characterName:I

    iget v3, p1, Lfr/testudo/spacecorsair/game/CharacterDialog;->dialogue:I

    iget v4, p1, Lfr/testudo/spacecorsair/game/CharacterDialog;->delayInMilli:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIIIZLjava/lang/String;)V

    .line 2185
    return-void
.end method

.method public showGameMenu()V
    .registers 5

    .prologue
    .line 2102
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->msgHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2103
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2104
    const-string v2, "ACTION"

    sget-object v3, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_MENU:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2105
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2106
    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->msgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2107
    return-void
.end method

.method public showMessageYouCannotJump()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1644
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->hyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;->enabled:Z

    if-eqz v0, :cond_20

    .line 1645
    const v0, 0x7f070396

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/game/CharacterDialog;->ofDroid(II)Lfr/testudo/spacecorsair/game/CharacterDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(Lfr/testudo/spacecorsair/game/CharacterDialog;)V

    .line 1651
    :goto_1f
    return-void

    .line 1647
    :cond_20
    const v0, 0x7f070397

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/game/CharacterDialog;->ofDroid(II)Lfr/testudo/spacecorsair/game/CharacterDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(Lfr/testudo/spacecorsair/game/CharacterDialog;)V

    goto :goto_1f
.end method

.method public showMissionMenu()V
    .registers 5

    .prologue
    .line 2140
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->msgHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2141
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2142
    const-string v2, "ACTION"

    sget-object v3, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_MISSION:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2143
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2144
    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->msgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2145
    return-void
.end method

.method public showMobileSellerStationMenu()V
    .registers 5

    .prologue
    .line 2120
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->msgHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2121
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2122
    const-string v2, "ACTION"

    sget-object v3, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_MOBILE_SHOP:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2123
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2124
    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->msgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2125
    return-void
.end method

.method public showStationMenu()V
    .registers 5

    .prologue
    .line 2111
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameThread;->msgHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2112
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2113
    const-string v2, "ACTION"

    sget-object v3, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->MESSAGE_STATION:Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/activity/message/MessageBuilder$MessageType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2114
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2115
    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameThread;->msgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2116
    return-void
.end method

.method public declared-synchronized waitCommitPhysicEnded()V
    .registers 1

    .prologue
    .line 330
    monitor-enter p0

    monitor-exit p0

    return-void
.end method
