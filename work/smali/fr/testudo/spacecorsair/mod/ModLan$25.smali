.class Lfr/testudo/spacecorsair/mod/ModLan$25;
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

.field final synthetic val$lc:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3083
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$25;->val$a:Landroid/app/Activity;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModLan$25;->val$lc:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 3083
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$25;->val$a:Landroid/app/Activity;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLan$25;->val$lc:Ljava/lang/String;

    const/4 v2, 0x0

    # invokes: Lfr/testudo/spacecorsair/mod/ModLan;->shareCode(Landroid/app/Activity;Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModLan;->access$1800(Landroid/app/Activity;Ljava/lang/String;Z)V

    return-void
.end method
