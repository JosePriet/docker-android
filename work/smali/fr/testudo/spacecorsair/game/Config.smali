.class public Lfr/testudo/spacecorsair/game/Config;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEBUG_MODE:Z = false

.field public static final DEFAULT_DEAD_ZONE_MOGA:F = 0.2f

.field public static final MAX_CAMERA:I = 0x320

.field public static final MIN_CAMERA:I = -0x12c

.field public static final MaxJoystickSize:I = 0x190

.field public static final MinJoystickSize:I = 0x64

.field public static final USE_MOGA:Z


# instance fields
.field public Zindex:F

.field public accelMoga:F

.field public addRemoved:Z

.field public deadZoneMoga:F

.field public defaultZoom:I

.field private transient dirty:Z

.field public hideHud:Z

.field public isFirstStart:Z

.field public joystickSize:I

.field public mogaInvertJoystick:Z

.field public musicEnabled:Z

.field public musicVolums:F

.field public overrideJoysickSize:Z

.field public soundFxEnabled:Z

.field public vibrationEnabled:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/Config;->vibrationEnabled:Z

    .line 28
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/game/Config;->dirty:Z

    .line 29
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/Config;->soundFxEnabled:Z

    .line 30
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/Config;->musicEnabled:Z

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/game/Config;->Zindex:F

    .line 32
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lfr/testudo/spacecorsair/game/Config;->musicVolums:F

    .line 33
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/game/Config;->overrideJoysickSize:Z

    .line 34
    const/16 v0, 0xfa

    iput v0, p0, Lfr/testudo/spacecorsair/game/Config;->joystickSize:I

    .line 36
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/game/Config;->hideHud:Z

    .line 37
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/game/Config;->addRemoved:Z

    .line 38
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/game/Config;->isFirstStart:Z

    .line 39
    iput v2, p0, Lfr/testudo/spacecorsair/game/Config;->defaultZoom:I

    .line 50
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lfr/testudo/spacecorsair/game/Config;->deadZoneMoga:F

    .line 51
    iget v0, p0, Lfr/testudo/spacecorsair/game/Config;->deadZoneMoga:F

    const v1, 0x3e19999a    # 0.15f

    add-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/game/Config;->accelMoga:F

    .line 52
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/game/Config;->mogaInvertJoystick:Z

    return-void
.end method

.method public static getDefault()Lfr/testudo/spacecorsair/game/Config;
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 57
    new-instance v0, Lfr/testudo/spacecorsair/game/Config;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/game/Config;-><init>()V

    .line 58
    iput-boolean v2, v0, Lfr/testudo/spacecorsair/game/Config;->musicEnabled:Z

    .line 59
    iput-boolean v2, v0, Lfr/testudo/spacecorsair/game/Config;->soundFxEnabled:Z

    .line 60
    iput-boolean v2, v0, Lfr/testudo/spacecorsair/game/Config;->vibrationEnabled:Z

    .line 61
    const v1, 0x3ecccccd    # 0.4f

    iput v1, v0, Lfr/testudo/spacecorsair/game/Config;->musicVolums:F

    .line 62
    iput-boolean v3, v0, Lfr/testudo/spacecorsair/game/Config;->overrideJoysickSize:Z

    .line 63
    const/16 v1, 0xfa

    iput v1, v0, Lfr/testudo/spacecorsair/game/Config;->joystickSize:I

    .line 64
    iput-boolean v2, v0, Lfr/testudo/spacecorsair/game/Config;->addRemoved:Z

    .line 65
    iput-boolean v3, v0, Lfr/testudo/spacecorsair/game/Config;->hideHud:Z

    .line 66
    iput-boolean v2, v0, Lfr/testudo/spacecorsair/game/Config;->isFirstStart:Z

    .line 67
    iput v3, v0, Lfr/testudo/spacecorsair/game/Config;->defaultZoom:I

    .line 68
    const v1, 0x3e4ccccd    # 0.2f

    iput v1, v0, Lfr/testudo/spacecorsair/game/Config;->deadZoneMoga:F

    .line 69
    const v1, 0x3eb33334    # 0.35000002f

    iput v1, v0, Lfr/testudo/spacecorsair/game/Config;->accelMoga:F

    .line 71
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 74
    iput-boolean v2, v0, Lfr/testudo/spacecorsair/game/Config;->dirty:Z

    .line 76
    const-string v2, "JDE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "density :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-object v0
.end method


# virtual methods
.method public isDirty()Z
    .registers 2

    .prologue
    .line 94
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/game/Config;->dirty:Z

    return v0
.end method

.method public removeAdds()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/Config;->addRemoved:Z

    .line 110
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/Config;->dirty:Z

    .line 111
    return-void
.end method

.method public setDirty(Z)V
    .registers 2

    .prologue
    .line 98
    iput-boolean p1, p0, Lfr/testudo/spacecorsair/game/Config;->dirty:Z

    .line 99
    return-void
.end method

.method public unSetFirstStart()V
    .registers 2

    .prologue
    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/Config;->isFirstStart:Z

    .line 105
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/game/Config;->setDirty(Z)V

    .line 106
    return-void
.end method

.method public validate()V
    .registers 4

    .prologue
    const/16 v2, 0x190

    const/16 v1, 0x64

    .line 82
    iget v0, p0, Lfr/testudo/spacecorsair/game/Config;->joystickSize:I

    if-ge v0, v1, :cond_a

    .line 83
    iput v1, p0, Lfr/testudo/spacecorsair/game/Config;->joystickSize:I

    .line 86
    :cond_a
    iget v0, p0, Lfr/testudo/spacecorsair/game/Config;->joystickSize:I

    if-le v0, v2, :cond_10

    .line 87
    iput v2, p0, Lfr/testudo/spacecorsair/game/Config;->joystickSize:I

    .line 91
    :cond_10
    return-void
.end method
