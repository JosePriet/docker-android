.class Lfr/testudo/spacecorsair/mod/ModComms$2;
.super Ljava/lang/Object;
.source "ModComms.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModComms;->attachUi(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 226
    :try_start_0
    const-string v0, "comms_click"

    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide/16 v4, 0xc8

    invoke-static {v0, v1, v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 227
    # getter for: Lfr/testudo/spacecorsair/mod/ModComms;->panel:Landroid/widget/LinearLayout;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->access$000()Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 228
    const/4 v0, 0x1

    # setter for: Lfr/testudo/spacecorsair/mod/ModComms;->hailOpen:Z
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModComms;->access$802(Z)Z

    .line 229
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/GameThread;->showMissionMenu()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_22} :catch_23

    .line 233
    :goto_22
    return-void

    .line 230
    :catch_23
    move-exception v0

    goto :goto_22
.end method
