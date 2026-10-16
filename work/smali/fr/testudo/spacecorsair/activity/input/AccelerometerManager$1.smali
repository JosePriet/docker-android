.class final Lfr/testudo/spacecorsair/activity/input/AccelerometerManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private x:F

.field private y:F

.field private z:F


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput v0, p0, Lfr/testudo/spacecorsair/activity/input/AccelerometerManager$1;->x:F

    .line 93
    iput v0, p0, Lfr/testudo/spacecorsair/activity/input/AccelerometerManager$1;->y:F

    .line 94
    iput v0, p0, Lfr/testudo/spacecorsair/activity/input/AccelerometerManager$1;->z:F

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .prologue
    .line 98
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 6

    .prologue
    .line 103
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/activity/input/AccelerometerManager$1;->x:F

    .line 104
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/activity/input/AccelerometerManager$1;->y:F

    .line 105
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/activity/input/AccelerometerManager$1;->z:F

    .line 109
    # getter for: Lfr/testudo/spacecorsair/activity/input/AccelerometerManager;->listener:Lfr/testudo/spacecorsair/activity/input/AccelerometerListener;
    invoke-static {}, Lfr/testudo/spacecorsair/activity/input/AccelerometerManager;->access$000()Lfr/testudo/spacecorsair/activity/input/AccelerometerListener;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/activity/input/AccelerometerManager$1;->x:F

    iget v2, p0, Lfr/testudo/spacecorsair/activity/input/AccelerometerManager$1;->y:F

    iget v3, p0, Lfr/testudo/spacecorsair/activity/input/AccelerometerManager$1;->z:F

    invoke-interface {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/activity/input/AccelerometerListener;->onAccelerationChanged(FFF)V

    .line 110
    return-void
.end method
