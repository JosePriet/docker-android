.class Lfr/testudo/spacecorsair/mod/ModLan$28$1;
.super Ljava/lang/Object;
.source "ModLan.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLan$28;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/mod/ModLan$28;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModLan$28;)V
    .registers 2

    .prologue
    .line 2293
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$28$1;->this$0:Lfr/testudo/spacecorsair/mod/ModLan$28;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 2293
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$28$1;->this$0:Lfr/testudo/spacecorsair/mod/ModLan$28;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModLan$28;->val$a:Landroid/app/Activity;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->showMenu(Landroid/app/Activity;)V

    return-void
.end method
