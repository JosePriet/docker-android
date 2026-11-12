.class Lfr/testudo/spacecorsair/mod/ModNotify$2;
.super Ljava/lang/Object;
.source "ModNotify.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModNotify;->open(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 148
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const/4 v1, -0x1

    iput v1, v0, Lfr/testudo/spacecorsair/engine/GameThread;->shootEventIndex:I

    .line 149
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const/4 v1, -0x1

    iput v1, v0, Lfr/testudo/spacecorsair/engine/GameThread;->gazEventIndex:I

    .line 150
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const/4 v1, -0x1

    iput v1, v0, Lfr/testudo/spacecorsair/engine/GameThread;->boosterEventIndex:I

    .line 151
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 152
    if-eqz v0, :cond_2a

    const/4 v1, 0x0

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isPousee:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isShooting:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isBoosterEnabled:Z
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2a} :catch_37

    .line 156
    :cond_2a
    :goto_2a
    invoke-static {}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->resume()V

    .line 157
    const-string v0, "dismissed"

    # invokes: Lfr/testudo/spacecorsair/mod/ModNotify;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModNotify;->access$100(Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x1

    # invokes: Lfr/testudo/spacecorsair/mod/ModNotify;->done(Z)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModNotify;->access$200(Z)V

    .line 159
    return-void

    .line 153
    :catch_37
    move-exception v0

    goto :goto_2a
.end method
