.class Lfr/testudo/spacecorsair/mod/ModLan$34;
.super Ljava/lang/Object;
.source "ModLan.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLan;->showMenu(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3126
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$34;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 3126
    const/4 v0, 0x0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLobby;->host(Z)V

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$34;->val$a:Landroid/app/Activity;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->showMenu(Landroid/app/Activity;)V

    return-void
.end method
