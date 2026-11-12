.class Lfr/testudo/spacecorsair/mod/ModNotify$1;
.super Ljava/lang/Object;
.source "ModNotify.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModNotify;->tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$m:Lfr/testudo/spacecorsair/activity/Main;

.field final synthetic val$sb:Ljava/lang/StringBuilder;

.field final synthetic val$speaker:Ljava/lang/String;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/activity/Main;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 113
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModNotify$1;->val$m:Lfr/testudo/spacecorsair/activity/Main;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModNotify$1;->val$speaker:Ljava/lang/String;

    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModNotify$1;->val$sb:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 114
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNotify$1;->val$m:Lfr/testudo/spacecorsair/activity/Main;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModNotify$1;->val$speaker:Ljava/lang/String;

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModNotify$1;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lfr/testudo/spacecorsair/mod/ModNotify;->open(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModNotify;->access$000(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
