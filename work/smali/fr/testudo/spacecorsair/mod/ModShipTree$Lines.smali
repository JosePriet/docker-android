.class final Lfr/testudo/spacecorsair/mod/ModShipTree$Lines;
.super Landroid/view/View;
.source "ModShipTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModShipTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Lines"
.end annotation


# instance fields
.field private final bright:[F

.field private final dim:[F

.field private final pb:Landroid/graphics/Paint;

.field private final pd:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Landroid/content/Context;[F[FF)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 825
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 822
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Lines;->pb:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Lines;->pd:Landroid/graphics/Paint;

    .line 826
    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Lines;->bright:[F

    .line 827
    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Lines;->dim:[F

    .line 828
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Lines;->pb:Landroid/graphics/Paint;

    const v1, -0x3f952f01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 829
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Lines;->pb:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 830
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Lines;->pb:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 831
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Lines;->pd:Landroid/graphics/Paint;

    const v1, 0x503a6a90

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 832
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Lines;->pd:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 833
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Lines;->pd:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 834
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    .prologue
    const/4 v2, 0x4

    .line 838
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Lines;->dim:[F

    array-length v0, v0

    if-lt v0, v2, :cond_d

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Lines;->dim:[F

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Lines;->pd:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 839
    :cond_d
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Lines;->bright:[F

    array-length v0, v0

    if-lt v0, v2, :cond_19

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Lines;->bright:[F

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Lines;->pb:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 840
    :cond_19
    return-void
.end method
