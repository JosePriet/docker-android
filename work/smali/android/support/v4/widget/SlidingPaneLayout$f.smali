.class Landroid/support/v4/widget/SlidingPaneLayout$f;
.super Landroid/support/v4/widget/SlidingPaneLayout$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1388
    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1391
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->d:Landroid/graphics/Paint;

    invoke-static {p2, v0}, Landroid/support/v4/view/r;->a(Landroid/view/View;Landroid/graphics/Paint;)V

    .line 1392
    return-void
.end method
