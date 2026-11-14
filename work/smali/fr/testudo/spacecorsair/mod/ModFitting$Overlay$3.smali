.class Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$3;
.super Ljava/lang/Object;
.source "ModFitting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V
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
    .line 549
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$3;->this$0:Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 551
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$3;->this$0:Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->act:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFitting;->setClassic(Landroid/content/Context;Z)V

    .line 552
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$3;->this$0:Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->tick(Z)V

    .line 553
    return-void
.end method
