.class Landroid/support/v4/widget/SlidingPaneLayout$e;
.super Landroid/support/v4/widget/SlidingPaneLayout$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field private a:Ljava/lang/reflect/Method;

.field private b:Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>()V
    .registers 4

    .prologue
    .line 1356
    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout$d;-><init>()V

    .line 1358
    :try_start_3
    const-class v1, Landroid/view/View;

    const-string v2, "getDisplayList"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$e;->a:Ljava/lang/reflect/Method;
    :try_end_10
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_10} :catch_21

    .line 1363
    :goto_10
    :try_start_10
    const-class v0, Landroid/view/View;

    const-string v1, "mRecreateDisplayList"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$e;->b:Ljava/lang/reflect/Field;

    .line 1364
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$e;->b:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_20
    .catch Ljava/lang/NoSuchFieldException; {:try_start_10 .. :try_end_20} :catch_2a

    .line 1368
    :goto_20
    return-void

    .line 1359
    :catch_21
    move-exception v0

    .line 1360
    const-string v1, "SlidingPaneLayout"

    const-string v2, "Couldn\'t fetch getDisplayList method; dimming won\'t work right."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    .line 1365
    :catch_2a
    move-exception v0

    .line 1366
    const-string v1, "SlidingPaneLayout"

    const-string v2, "Couldn\'t fetch mRecreateDisplayList field; dimming will be slow."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20
.end method


# virtual methods
.method public a(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
    .registers 6

    .prologue
    .line 1372
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$e;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$e;->b:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_23

    .line 1374
    :try_start_8
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$e;->b:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 1375
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$e;->a:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_16} :catch_1a

    .line 1384
    :goto_16
    invoke-super {p0, p1, p2}, Landroid/support/v4/widget/SlidingPaneLayout$d;->a(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    .line 1385
    :goto_19
    return-void

    .line 1376
    :catch_1a
    move-exception v0

    .line 1377
    const-string v1, "SlidingPaneLayout"

    const-string v2, "Error refreshing display list state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 1381
    :cond_23
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    goto :goto_19
.end method
