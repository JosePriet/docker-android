.class public Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DISPLAY_TIME_IN_SEC:F = 5000.0f

.field public static displayCounter:I

.field public static isActive:Z

.field public static messageBas:Ljava/lang/String;

.field public static messageHaut:Ljava/lang/String;

.field public static msgDemiSizeBas:I

.field public static msgDemiSizeHaut:I

.field public static sizeSet:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-boolean v0, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->isActive:Z

    .line 23
    sput-boolean v0, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->sizeSet:Z

    .line 24
    sput v0, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->displayCounter:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static calcMsgDemiSize(Lfr/testudo/spacecorsair/textengine/GLText;)V
    .registers 3

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 45
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->messageHaut:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->msgDemiSizeHaut:I

    .line 46
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->messageBas:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->msgDemiSizeBas:I

    .line 48
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->sizeSet:Z

    .line 50
    return-void
.end method

.method public static setText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 30
    sput-object p0, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->messageHaut:Ljava/lang/String;

    .line 31
    sput-object p1, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->messageBas:Ljava/lang/String;

    .line 32
    const/16 v0, 0x1388

    sput v0, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->displayCounter:I

    .line 33
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->isActive:Z

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->sizeSet:Z

    .line 35
    return-void
.end method

.method public static updateCounter(J)V
    .registers 4

    .prologue
    .line 38
    sget v0, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->displayCounter:I

    int-to-long v0, v0

    sub-long/2addr v0, p0

    long-to-int v0, v0

    sput v0, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->displayCounter:I

    .line 39
    sget v0, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->displayCounter:I

    if-gez v0, :cond_e

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->isActive:Z

    .line 42
    :cond_e
    return-void
.end method
