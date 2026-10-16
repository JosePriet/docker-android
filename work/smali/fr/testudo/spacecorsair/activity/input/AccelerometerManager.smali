.class public Lfr/testudo/spacecorsair/activity/input/AccelerometerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static holder:Landroid/app/Activity;

.field private static listener:Lfr/testudo/spacecorsair/activity/input/AccelerometerListener;

.field private static running:Z

.field private static sensor:Landroid/hardware/Sensor;

.field private static sensorEventListener:Landroid/hardware/SensorEventListener;

.field private static sensorManager:Landroid/hardware/SensorManager;

.field private static supported:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/activity/input/AccelerometerManager;->running:Z

    .line 87
    new-instance v0, Lfr/testudo/spacecorsair/activity/input/AccelerometerManager$1;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/activity/input/AccelerometerManager$1;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/activity/input/AccelerometerManager;->sensorEventListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lfr/testudo/spacecorsair/activity/input/AccelerometerListener;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lfr/testudo/spacecorsair/activity/input/AccelerometerManager;->listener:Lfr/testudo/spacecorsair/activity/input/AccelerometerListener;

    return-object v0
.end method

.method public static isListening()Z
    .registers 1

    .prologue
    .line 44
    sget-boolean v0, Lfr/testudo/spacecorsair/activity/input/AccelerometerManager;->running:Z

    return v0
.end method

.method public static startListening(Lfr/testudo/spacecorsair/activity/input/AccelerometerListener;)V
    .registers 5

    .prologue
    .line 70
    sget-object v0, Lfr/testudo/spacecorsair/activity/input/AccelerometerManager;->holder:Landroid/app/Activity;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    sput-object v0, Lfr/testudo/spacecorsair/activity/input/AccelerometerManager;->sensorManager:Landroid/hardware/SensorManager;

    .line 72
    sget-object v0, Lfr/testudo/spacecorsair/activity/input/AccelerometerManager;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 74
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_31

    .line 75
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    sput-object v0, Lfr/testudo/spacecorsair/activity/input/AccelerometerManager;->sensor:Landroid/hardware/Sensor;

    .line 76
    sget-object v0, Lfr/testudo/spacecorsair/activity/input/AccelerometerManager;->sensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lfr/testudo/spacecorsair/activity/input/AccelerometerManager;->sensorEventListener:Landroid/hardware/SensorEventListener;

    sget-object v2, Lfr/testudo/spacecorsair/activity/input/AccelerometerManager;->sensor:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    sput-boolean v0, Lfr/testudo/spacecorsair/activity/input/AccelerometerManager;->running:Z

    .line 79
    sput-object p0, Lfr/testudo/spacecorsair/activity/input/AccelerometerManager;->listener:Lfr/testudo/spacecorsair/activity/input/AccelerometerListener;

    .line 81
    :cond_31
    return-void
.end method

.method public static stopListening()V
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/activity/input/AccelerometerManager;->running:Z

    .line 53
    :try_start_3
    sget-object v0, Lfr/testudo/spacecorsair/activity/input/AccelerometerManager;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_12

    sget-object v0, Lfr/testudo/spacecorsair/activity/input/AccelerometerManager;->sensorEventListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_12

    .line 54
    sget-object v0, Lfr/testudo/spacecorsair/activity/input/AccelerometerManager;->sensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lfr/testudo/spacecorsair/activity/input/AccelerometerManager;->sensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12} :catch_13

    .line 57
    :cond_12
    :goto_12
    return-void

    .line 56
    :catch_13
    move-exception v0

    goto :goto_12
.end method
