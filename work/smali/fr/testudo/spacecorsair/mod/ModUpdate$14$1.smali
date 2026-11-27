.class Lfr/testudo/spacecorsair/mod/ModUpdate$14$1;
.super Ljava/lang/Object;
.source "ModUpdate.java"

# interfaces
.implements Lfr/testudo/spacecorsair/mod/ModUpdate$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModUpdate$14;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/mod/ModUpdate$14;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModUpdate$14;)V
    .registers 2

    .prologue
    .line 627
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$14$1;->this$0:Lfr/testudo/spacecorsair/mod/ModUpdate$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 627
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$14$1;->this$0:Lfr/testudo/spacecorsair/mod/ModUpdate$14;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModUpdate$14;->val$c:Landroid/content/Context;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$14$1;->this$0:Lfr/testudo/spacecorsair/mod/ModUpdate$14;

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModUpdate$14;->val$m:Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->runGame(Landroid/content/Context;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)V

    return-void
.end method
