.class Lfr/testudo/spacecorsair/mod/ModUpdate$15$1;
.super Ljava/lang/Object;
.source "ModUpdate.java"

# interfaces
.implements Lfr/testudo/spacecorsair/mod/ModUpdate$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModUpdate$15;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/mod/ModUpdate$15;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModUpdate$15;)V
    .registers 2

    .prologue
    .line 588
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$15$1;->this$0:Lfr/testudo/spacecorsair/mod/ModUpdate$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 588
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$15$1;->this$0:Lfr/testudo/spacecorsair/mod/ModUpdate$15;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModUpdate$15;->val$c:Landroid/content/Context;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->fetch(Landroid/content/Context;)Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;

    return-void
.end method
