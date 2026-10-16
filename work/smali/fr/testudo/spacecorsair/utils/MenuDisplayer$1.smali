.class final Lfr/testudo/spacecorsair/utils/MenuDisplayer$1;
.super Landroid/os/Handler;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "MOGA_X_AXIS_HANDLER"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    .line 82
    const v0, -0x41b33333    # -0.2f

    cmpg-float v0, v3, v0

    if-gez v0, :cond_20

    move v0, v1

    :goto_14
    sput-boolean v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->mogaLeft:Z

    .line 83
    const v0, 0x3e4ccccd    # 0.2f

    cmpl-float v0, v3, v0

    if-lez v0, :cond_22

    :goto_1d
    sput-boolean v1, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->mogaRight:Z

    .line 84
    return-void

    :cond_20
    move v0, v2

    .line 82
    goto :goto_14

    :cond_22
    move v1, v2

    .line 83
    goto :goto_1d
.end method
