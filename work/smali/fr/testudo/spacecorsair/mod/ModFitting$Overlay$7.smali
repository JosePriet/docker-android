.class Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$7;
.super Ljava/lang/Object;
.source "ModFitting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->left(Landroid/app/Activity;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;)V
    .registers 2

    .prologue
    .line 623
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$7;->this$0:Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 624
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$7;->this$0:Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->act:Landroid/app/Activity;

    const-string v1, "txtShowInventory"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFitting;->click(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$7;->this$0:Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->act:Landroid/app/Activity;

    const-string v1, "showPopupInventory"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFitting;->invoke(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_15
    return-void
.end method
