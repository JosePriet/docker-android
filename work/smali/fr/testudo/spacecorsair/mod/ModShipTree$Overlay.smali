.class final Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;
.super Landroid/widget/FrameLayout;
.source "ModShipTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModShipTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Overlay"
.end annotation


# instance fields
.field final a:Landroid/app/Activity;

.field built:I

.field canvas:Landroid/widget/FrameLayout;

.field catcher:Landroid/view/View;

.field final dp:F

.field final facButtons:[Landroid/view/View;

.field facPanel:Landroid/widget/LinearLayout;

.field final fresh:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field grid:Landroid/widget/LinearLayout;

.field hs:Landroid/widget/HorizontalScrollView;

.field info:Landroid/widget/FrameLayout;

.field panelW:I

.field selCard:Landroid/view/View;

.field side:Landroid/widget/LinearLayout;

.field treeW:I

.field vs:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 274
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 267
    const/16 v0, 0x9

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->facButtons:[Landroid/view/View;

    .line 268
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->built:I

    .line 275
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->a:Landroid/app/Activity;

    .line 276
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->dp:F

    .line 277
    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;->fresh:Ljava/util/Set;

    .line 278
    return-void
.end method
