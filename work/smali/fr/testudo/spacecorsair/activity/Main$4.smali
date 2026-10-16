.class Lfr/testudo/spacecorsair/activity/Main$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/activity/Main;

.field final synthetic val$dismissAction:Ljava/lang/String;

.field final synthetic val$preventResumeGameOnDismiss:Z


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/activity/Main;Ljava/lang/String;Z)V
    .registers 4

    .prologue
    .line 318
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/Main$4;->this$0:Lfr/testudo/spacecorsair/activity/Main;

    iput-object p2, p0, Lfr/testudo/spacecorsair/activity/Main$4;->val$dismissAction:Ljava/lang/String;

    iput-boolean p3, p0, Lfr/testudo/spacecorsair/activity/Main$4;->val$preventResumeGameOnDismiss:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 323
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main$4;->val$dismissAction:Ljava/lang/String;

    if-eqz v0, :cond_56

    .line 324
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main$4;->val$dismissAction:Ljava/lang/String;

    const-string v1, "SHOW_HELP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 325
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iput v2, v0, Lfr/testudo/spacecorsair/engine/GameThread;->shootEventIndex:I

    .line 326
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iput v2, v0, Lfr/testudo/spacecorsair/engine/GameThread;->gazEventIndex:I

    .line 327
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iput v2, v0, Lfr/testudo/spacecorsair/engine/GameThread;->boosterEventIndex:I

    .line 328
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iput-boolean v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isPousee:Z

    .line 329
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iput-boolean v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isShooting:Z

    .line 330
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iput-boolean v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isBoosterEnabled:Z

    .line 332
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main$4;->this$0:Lfr/testudo/spacecorsair/activity/Main;

    # getter for: Lfr/testudo/spacecorsair/activity/Main;->game:Lfr/testudo/spacecorsair/game/Game;
    invoke-static {v0}, Lfr/testudo/spacecorsair/activity/Main;->access$100(Lfr/testudo/spacecorsair/activity/Main;)Lfr/testudo/spacecorsair/game/Game;

    move-result-object v0

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mogaConnected:Z

    if-eqz v0, :cond_60

    .line 333
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->mainActivity:Lfr/testudo/spacecorsair/activity/Main;

    const-class v2, Lfr/testudo/spacecorsair/activity/MogaHelpActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 338
    :goto_4f
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->mainActivity:Lfr/testudo/spacecorsair/activity/Main;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/activity/Main;->startActivity(Landroid/content/Intent;)V

    .line 342
    :cond_56
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/activity/Main$4;->val$preventResumeGameOnDismiss:Z

    if-nez v0, :cond_5f

    .line 343
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-static {}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->resume()V

    .line 345
    :cond_5f
    return-void

    .line 336
    :cond_60
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->mainActivity:Lfr/testudo/spacecorsair/activity/Main;

    const-class v2, Lfr/testudo/spacecorsair/activity/HelpActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_4f
.end method
