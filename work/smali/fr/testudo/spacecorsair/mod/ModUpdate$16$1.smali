.class Lfr/testudo/spacecorsair/mod/ModUpdate$16$1;
.super Ljava/lang/Object;
.source "ModUpdate.java"

# interfaces
.implements Lfr/testudo/spacecorsair/mod/ModUpdate$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModUpdate$16;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/mod/ModUpdate$16;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModUpdate$16;)V
    .registers 2

    .prologue
    .line 632
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$16$1;->this$0:Lfr/testudo/spacecorsair/mod/ModUpdate$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 632
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$16$1;->this$0:Lfr/testudo/spacecorsair/mod/ModUpdate$16;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModUpdate$16;->val$c:Landroid/content/Context;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->fetch(Landroid/content/Context;)Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;

    return-void
.end method
