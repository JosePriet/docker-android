.class public Lfr/testudo/spacecorsair/activity/input/InputObject;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_KEY_DOWN:I = 0x1

.field public static final ACTION_KEY_UP:I = 0x2

.field public static final ACTION_TOUCH_DOWN:I = 0x3

.field public static final ACTION_TOUCH_MOVE:I = 0x4

.field public static final ACTION_TOUCH_UP:I = 0x5

.field public static final EVENT_TYPE_KEY:B = 0x1t

.field public static final EVENT_TYPE_MOGA_BUTON:B = 0x3t

.field public static final EVENT_TYPE_MOGA_MOTION:B = 0x4t

.field public static final EVENT_TYPE_TOUCH:B = 0x2t

.field public static final INPUT_QUEUE_SIZE:I = 0x64


# instance fields
.field public accX:F

.field public accY:F

.field public accZ:F

.field public action:I

.field public eventType:B

.field public isAccelEvent:Z

.field public isMogaEvent:Z

.field public keyCode:I

.field public mogaButonCode:I

.field public mogaButonEvent:I

.field public mogaMotionRX:F

.field public mogaMotionRY:F

.field public mogaMotionX:F

.field public mogaMotionY:F

.field public motionEvent:Landroid/view/MotionEvent;

.field public pool:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lfr/testudo/spacecorsair/activity/input/InputObject;",
            ">;"
        }
    .end annotation
.end field

.field public realEvent:I

.field public time:J

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ArrayBlockingQueue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lfr/testudo/spacecorsair/activity/input/InputObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/activity/input/InputObject;->isAccelEvent:Z

    .line 39
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/activity/input/InputObject;->isMogaEvent:Z

    .line 50
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/input/InputObject;->pool:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 51
    return-void
.end method


# virtual methods
.method public returnToPool()V
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/input/InputObject;->motionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_9

    .line 111
    :try_start_4
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/input/InputObject;->motionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_f

    .line 117
    :cond_9
    :goto_9
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/input/InputObject;->pool:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 118
    return-void

    .line 113
    :catch_f
    move-exception v0

    goto :goto_9
.end method

.method public useEvent(Landroid/view/MotionEvent;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 90
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/activity/input/InputObject;->isAccelEvent:Z

    .line 91
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/input/InputObject;->motionEvent:Landroid/view/MotionEvent;

    .line 92
    const/4 v0, 0x2

    iput-byte v0, p0, Lfr/testudo/spacecorsair/activity/input/InputObject;->eventType:B

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/activity/input/InputObject;->time:J

    .line 94
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/activity/input/InputObject;->isMogaEvent:Z

    .line 95
    return-void
.end method

.method public useEventHistory(Landroid/view/MotionEvent;I)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 98
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/activity/input/InputObject;->isAccelEvent:Z

    .line 99
    const/4 v0, 0x2

    iput-byte v0, p0, Lfr/testudo/spacecorsair/activity/input/InputObject;->eventType:B

    .line 100
    const/4 v0, 0x4

    iput v0, p0, Lfr/testudo/spacecorsair/activity/input/InputObject;->action:I

    .line 101
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/input/InputObject;->motionEvent:Landroid/view/MotionEvent;

    .line 102
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/activity/input/InputObject;->time:J

    .line 103
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/input/InputObject;->x:I

    .line 104
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/input/InputObject;->y:I

    .line 105
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/activity/input/InputObject;->isMogaEvent:Z

    .line 106
    return-void
.end method

.method public useMogaButtonEvent(Lcom/bda/controller/KeyEvent;)V
    .registers 3

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/activity/input/InputObject;->isMogaEvent:Z

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/activity/input/InputObject;->isAccelEvent:Z

    .line 58
    invoke-virtual {p1}, Lcom/bda/controller/KeyEvent;->getKeyCode()I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/input/InputObject;->mogaButonCode:I

    .line 59
    invoke-virtual {p1}, Lcom/bda/controller/KeyEvent;->getAction()I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/input/InputObject;->mogaButonEvent:I

    .line 60
    const/4 v0, 0x3

    iput-byte v0, p0, Lfr/testudo/spacecorsair/activity/input/InputObject;->eventType:B

    .line 62
    return-void
.end method

.method public useMogaMotionEvent(Lcom/bda/controller/MotionEvent;)V
    .registers 7

    .prologue
    const/16 v4, 0xe

    const/16 v3, 0xb

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 65
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/activity/input/InputObject;->isMogaEvent:Z

    .line 66
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/activity/input/InputObject;->isAccelEvent:Z

    .line 69
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->config:Lfr/testudo/spacecorsair/game/Config;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Config;->mogaInvertJoystick:Z

    if-eqz v0, :cond_2e

    .line 70
    invoke-virtual {p1, v1}, Lcom/bda/controller/MotionEvent;->getAxisValue(I)F

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/input/InputObject;->mogaMotionRX:F

    .line 71
    invoke-virtual {p1, v2}, Lcom/bda/controller/MotionEvent;->getAxisValue(I)F

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/input/InputObject;->mogaMotionRY:F

    .line 72
    invoke-virtual {p1, v3}, Lcom/bda/controller/MotionEvent;->getAxisValue(I)F

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/input/InputObject;->mogaMotionX:F

    .line 73
    invoke-virtual {p1, v4}, Lcom/bda/controller/MotionEvent;->getAxisValue(I)F

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/input/InputObject;->mogaMotionY:F

    .line 84
    :goto_2a
    const/4 v0, 0x4

    iput-byte v0, p0, Lfr/testudo/spacecorsair/activity/input/InputObject;->eventType:B

    .line 86
    return-void

    .line 76
    :cond_2e
    invoke-virtual {p1, v1}, Lcom/bda/controller/MotionEvent;->getAxisValue(I)F

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/input/InputObject;->mogaMotionX:F

    .line 77
    invoke-virtual {p1, v2}, Lcom/bda/controller/MotionEvent;->getAxisValue(I)F

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/input/InputObject;->mogaMotionY:F

    .line 78
    invoke-virtual {p1, v3}, Lcom/bda/controller/MotionEvent;->getAxisValue(I)F

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/input/InputObject;->mogaMotionRX:F

    .line 79
    invoke-virtual {p1, v4}, Lcom/bda/controller/MotionEvent;->getAxisValue(I)F

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/input/InputObject;->mogaMotionRY:F

    goto :goto_2a
.end method
