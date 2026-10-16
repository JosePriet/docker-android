.class Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$8;
.super Ljava/lang/Object;
.source "ModFitting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->action(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$method:Ljava/lang/String;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 639
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$8;->this$0:Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$8;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$8;->val$method:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 640
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$8;->this$0:Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->act:Landroid/app/Activity;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$8;->val$id:Ljava/lang/String;

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFitting;->click(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$8;->this$0:Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->act:Landroid/app/Activity;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$8;->val$method:Ljava/lang/String;

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFitting;->invoke(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_15
    return-void
.end method
