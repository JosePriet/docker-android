.class Lfr/testudo/spacecorsair/mod/ModLanUi$3$1;
.super Ljava/lang/Object;
.source "ModLanUi.java"

# interfaces
.implements Lfr/testudo/spacecorsair/mod/ModLanUi$Pick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLanUi$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/mod/ModLanUi$3;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModLanUi$3;)V
    .registers 2

    .prologue
    .line 311
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$3$1;->this$0:Lfr/testudo/spacecorsair/mod/ModLanUi$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public picked(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 311
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$3$1;->this$0:Lfr/testudo/spacecorsair/mod/ModLanUi$3;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModLanUi$3;->val$picked:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$3$1;->this$0:Lfr/testudo/spacecorsair/mod/ModLanUi$3;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModLanUi$3;->val$show:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
