.class Landroid/support/v4/widget/DrawerLayout$b;
.super Landroid/support/v4/widget/g$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/DrawerLayout;

.field private final b:I

.field private c:Landroid/support/v4/widget/g;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method private b()V
    .registers 3

    .prologue
    const/4 v0, 0x3

    .line 1384
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout$b;->b:I

    if-ne v1, v0, :cond_6

    const/4 v0, 0x5

    .line 1385
    :cond_6
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$b;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1386
    if-eqz v0, :cond_13

    .line 1387
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$b;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->i(Landroid/view/View;)V

    .line 1389
    :cond_13
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 1470
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;II)I
    .registers 6

    .prologue
    .line 1475
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$b;->a:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1476
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1479
    :goto_17
    return v0

    .line 1478
    :cond_18
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$b;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v0

    .line 1479
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_17
.end method

.method public a()V
    .registers 3

    .prologue
    .line 1342
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$b;->a:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$b;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1343
    return-void
.end method

.method public a(I)V
    .registers 5

    .prologue
    .line 1355
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$b;->a:Landroid/support/v4/widget/DrawerLayout;

    iget v1, p0, Landroid/support/v4/widget/DrawerLayout$b;->b:I

    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout$b;->c:Landroid/support/v4/widget/g;

    invoke-virtual {v2}, Landroid/support/v4/widget/g;->c()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->a(IILandroid/view/View;)V

    .line 1356
    return-void
.end method

.method public a(II)V
    .registers 7

    .prologue
    .line 1412
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$b;->a:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$b;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/widget/DrawerLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1413
    return-void
.end method

.method public a(Landroid/view/View;FF)V
    .registers 10

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    .line 1395
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$b;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)F

    move-result v1

    .line 1396
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1399
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$b;->a:Landroid/support/v4/widget/DrawerLayout;

    const/4 v3, 0x3

    invoke-virtual {v0, p1, v3}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1400
    cmpl-float v0, p2, v4

    if-gtz v0, :cond_22

    cmpl-float v0, p2, v4

    if-nez v0, :cond_32

    cmpl-float v0, v1, v5

    if-lez v0, :cond_32

    :cond_22
    const/4 v0, 0x0

    .line 1406
    :cond_23
    :goto_23
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$b;->c:Landroid/support/v4/widget/g;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/widget/g;->a(II)Z

    .line 1407
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$b;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1408
    return-void

    .line 1400
    :cond_32
    neg-int v0, v2

    goto :goto_23

    .line 1402
    :cond_34
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$b;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v0

    .line 1403
    cmpg-float v3, p2, v4

    if-ltz v3, :cond_46

    cmpl-float v3, p2, v4

    if-nez v3, :cond_23

    cmpl-float v1, v1, v5

    if-lez v1, :cond_23

    :cond_46
    sub-int/2addr v0, v2

    goto :goto_23
.end method

.method public a(Landroid/view/View;IIII)V
    .registers 9

    .prologue
    .line 1361
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1364
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$b;->a:Landroid/support/v4/widget/DrawerLayout;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1365
    add-int v1, v0, p2

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 1370
    :goto_13
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$b;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/view/View;F)V

    .line 1371
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_33

    const/4 v0, 0x4

    :goto_1e
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1372
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$b;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1373
    return-void

    .line 1367
    :cond_27
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$b;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v1

    .line 1368
    sub-int/2addr v1, p2

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_13

    .line 1371
    :cond_33
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public a(Landroid/view/View;I)Z
    .registers 5

    .prologue
    .line 1349
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$b;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$b;->a:Landroid/support/v4/widget/DrawerLayout;

    iget v1, p0, Landroid/support/v4/widget/DrawerLayout$b;->b:I

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$b;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public b(Landroid/view/View;II)I
    .registers 5

    .prologue
    .line 1485
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public b(II)V
    .registers 5

    .prologue
    .line 1457
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 1458
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$b;->a:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1463
    :goto_c
    if-eqz v0, :cond_1b

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$b;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_1b

    .line 1464
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$b;->c:Landroid/support/v4/widget/g;

    invoke-virtual {v1, v0, p2}, Landroid/support/v4/widget/g;->a(Landroid/view/View;I)V

    .line 1466
    :cond_1b
    return-void

    .line 1460
    :cond_1c
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$b;->a:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v0

    goto :goto_c
.end method

.method public b(Landroid/view/View;I)V
    .registers 5

    .prologue
    .line 1377
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1378
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->c:Z

    .line 1380
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout$b;->b()V

    .line 1381
    return-void
.end method

.method public b(I)Z
    .registers 3

    .prologue
    .line 1451
    const/4 v0, 0x0

    return v0
.end method
