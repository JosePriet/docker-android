.class Lfr/testudo/spacecorsair/mod/ModVfx$3;
.super Ljava/lang/Object;
.source "ModVfx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModVfx;->prompt(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Lfr/testudo/spacecorsair/activity/Main;

.field final synthetic val$from:I

.field final synthetic val$pause:Z


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/activity/Main;IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 228
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModVfx$3;->val$a:Lfr/testudo/spacecorsair/activity/Main;

    iput p2, p0, Lfr/testudo/spacecorsair/mod/ModVfx$3;->val$from:I

    iput-boolean p3, p0, Lfr/testudo/spacecorsair/mod/ModVfx$3;->val$pause:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 230
    .line 232
    :try_start_1
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    .line 235
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModVfx$3;->val$a:Lfr/testudo/spacecorsair/activity/Main;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/activity/Main;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, v1, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/engine/GameThread;->paused:Z

    if-nez v2, :cond_23

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModVfx$3;->val$a:Lfr/testudo/spacecorsair/activity/Main;

    iget-object v2, v2, Lfr/testudo/spacecorsair/activity/Main;->currentDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_28

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModVfx$3;->val$a:Lfr/testudo/spacecorsair/activity/Main;

    iget-object v2, v2, Lfr/testudo/spacecorsair/activity/Main;->currentDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 236
    :cond_23
    const/4 v1, 0x0

    # invokes: Lfr/testudo/spacecorsair/mod/ModVfx;->done(Z)V
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModVfx;->access$000(Z)V

    .line 272
    :goto_27
    return-void

    .line 239
    :cond_28
    # getter for: Lfr/testudo/spacecorsair/mod/ModVfx;->shown:[Z
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModVfx;->access$100()[Z

    move-result-object v2

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModVfx$3;->val$from:I

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 240
    iget-boolean v2, p0, Lfr/testudo/spacecorsair/mod/ModVfx$3;->val$pause:Z

    if-eqz v2, :cond_44

    .line 241
    const/4 v2, 0x1

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModArt;->hold:Z

    .line 242
    iget-object v2, v1, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/engine/GameThread;->waitCommitPhysicEnded()V

    .line 243
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/Game;->pause()V

    .line 244
    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iget-boolean v0, v1, Lfr/testudo/spacecorsair/engine/GameThread;->paused:Z

    .line 247
    :cond_44
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 248
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModVfx$3;->val$from:I

    add-int/lit8 v3, v1, -0x1

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The game has been running slowly for more than 10 seconds."

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "Lower the visual quality to "

    .line 250
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModVfx;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "?\n\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "You can change it any time in Settings > Visual quality."

    .line 251
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    iget-boolean v4, p0, Lfr/testudo/spacecorsair/mod/ModVfx$3;->val$pause:Z

    if-nez v4, :cond_a9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "Multiplayer: the game keeps running while this window is open."

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 253
    :cond_a9
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModVfx$3;->val$a:Lfr/testudo/spacecorsair/activity/Main;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "Slow frames"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 254
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Lower to "

    .line 255
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModVfx;->name(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lfr/testudo/spacecorsair/mod/ModVfx$3$3;

    invoke-direct {v5, p0, v3}, Lfr/testudo/spacecorsair/mod/ModVfx$3$3;-><init>(Lfr/testudo/spacecorsair/mod/ModVfx$3;I)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Keep "

    .line 258
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModVfx$3;->val$from:I

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModVfx;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lfr/testudo/spacecorsair/mod/ModVfx$3$2;

    invoke-direct {v4, p0}, Lfr/testudo/spacecorsair/mod/ModVfx$3$2;-><init>(Lfr/testudo/spacecorsair/mod/ModVfx$3;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v3, "Don\'t ask again"

    .line 261
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lfr/testudo/spacecorsair/mod/ModVfx$3$1;

    invoke-direct {v4, p0}, Lfr/testudo/spacecorsair/mod/ModVfx$3$1;-><init>(Lfr/testudo/spacecorsair/mod/ModVfx$3;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 263
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 265
    new-instance v3, Lfr/testudo/spacecorsair/mod/ModVfx$3$4;

    invoke-direct {v3, p0, v2, v0}, Lfr/testudo/spacecorsair/mod/ModVfx$3$4;-><init>(Lfr/testudo/spacecorsair/mod/ModVfx$3;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 268
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V
    :try_end_12b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_12b} :catch_12d

    goto/16 :goto_27

    .line 269
    :catch_12d
    move-exception v1

    .line 270
    # invokes: Lfr/testudo/spacecorsair/mod/ModVfx;->done(Z)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModVfx;->access$000(Z)V

    goto/16 :goto_27
.end method
