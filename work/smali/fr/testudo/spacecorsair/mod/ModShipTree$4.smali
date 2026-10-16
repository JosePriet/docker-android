.class Lfr/testudo/spacecorsair/mod/ModShipTree$4;
.super Ljava/lang/Object;
.source "ModShipTree.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModShipTree;->build(Landroid/app/Activity;Landroid/view/ViewGroup;)Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;
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
    .line 493
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$4;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 493
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$4;->val$a:Landroid/app/Activity;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModComms;->showStandings(Landroid/app/Activity;)V

    return-void
.end method
