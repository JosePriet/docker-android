.class public Landroid/support/v4/view/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/r$h;,
        Landroid/support/v4/view/r$g;,
        Landroid/support/v4/view/r$f;,
        Landroid/support/v4/view/r$e;,
        Landroid/support/v4/view/r$d;,
        Landroid/support/v4/view/r$c;,
        Landroid/support/v4/view/r$b;,
        Landroid/support/v4/view/r$a;,
        Landroid/support/v4/view/r$i;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/view/r$i;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 548
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 549
    const/16 v1, 0x13

    if-lt v0, v1, :cond_e

    .line 550
    new-instance v0, Landroid/support/v4/view/r$h;

    invoke-direct {v0}, Landroid/support/v4/view/r$h;-><init>()V

    sput-object v0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/r$i;

    .line 564
    :goto_d
    return-void

    .line 551
    :cond_e
    const/16 v1, 0x11

    if-lt v0, v1, :cond_1a

    .line 552
    new-instance v0, Landroid/support/v4/view/r$g;

    invoke-direct {v0}, Landroid/support/v4/view/r$g;-><init>()V

    sput-object v0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/r$i;

    goto :goto_d

    .line 553
    :cond_1a
    const/16 v1, 0x10

    if-lt v0, v1, :cond_26

    .line 554
    new-instance v0, Landroid/support/v4/view/r$f;

    invoke-direct {v0}, Landroid/support/v4/view/r$f;-><init>()V

    sput-object v0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/r$i;

    goto :goto_d

    .line 555
    :cond_26
    const/16 v1, 0xe

    if-lt v0, v1, :cond_32

    .line 556
    new-instance v0, Landroid/support/v4/view/r$e;

    invoke-direct {v0}, Landroid/support/v4/view/r$e;-><init>()V

    sput-object v0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/r$i;

    goto :goto_d

    .line 557
    :cond_32
    const/16 v1, 0xb

    if-lt v0, v1, :cond_3e

    .line 558
    new-instance v0, Landroid/support/v4/view/r$d;

    invoke-direct {v0}, Landroid/support/v4/view/r$d;-><init>()V

    sput-object v0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/r$i;

    goto :goto_d

    .line 559
    :cond_3e
    const/16 v1, 0x9

    if-lt v0, v1, :cond_4a

    .line 560
    new-instance v0, Landroid/support/v4/view/r$c;

    invoke-direct {v0}, Landroid/support/v4/view/r$c;-><init>()V

    sput-object v0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/r$i;

    goto :goto_d

    .line 562
    :cond_4a
    new-instance v0, Landroid/support/v4/view/r$a;

    invoke-direct {v0}, Landroid/support/v4/view/r$a;-><init>()V

    sput-object v0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/r$i;

    goto :goto_d
.end method

.method public static a(Landroid/view/View;)I
    .registers 2

    .prologue
    .line 598
    sget-object v0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/r$i;

    invoke-interface {v0, p0}, Landroid/support/v4/view/r$i;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;IIII)V
    .registers 11

    .prologue
    .line 789
    sget-object v0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/r$i;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/r$i;->a(Landroid/view/View;IIII)V

    .line 790
    return-void
.end method

.method public static a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .registers 4

    .prologue
    .line 953
    sget-object v0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/r$i;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/r$i;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 954
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/Paint;)V
    .registers 3

    .prologue
    .line 1029
    sget-object v0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/r$i;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/r$i;->a(Landroid/view/View;Landroid/graphics/Paint;)V

    .line 1030
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/a;)V
    .registers 3

    .prologue
    .line 735
    sget-object v0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/r$i;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/r$i;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 736
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 803
    sget-object v0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/r$i;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/r$i;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 804
    return-void
.end method

.method public static a(Landroid/view/View;I)Z
    .registers 3

    .prologue
    .line 574
    sget-object v0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/r$i;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/r$i;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 771
    sget-object v0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/r$i;

    invoke-interface {v0, p0}, Landroid/support/v4/view/r$i;->b(Landroid/view/View;)V

    .line 772
    return-void
.end method

.method public static b(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 854
    sget-object v0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/r$i;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/r$i;->b(Landroid/view/View;I)V

    .line 855
    return-void
.end method

.method public static c(Landroid/view/View;)I
    .registers 2

    .prologue
    .line 837
    sget-object v0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/r$i;

    invoke-interface {v0, p0}, Landroid/support/v4/view/r$i;->c(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/View;)I
    .registers 2

    .prologue
    .line 973
    sget-object v0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/r$i;

    invoke-interface {v0, p0}, Landroid/support/v4/view/r$i;->d(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static e(Landroid/view/View;)I
    .registers 2

    .prologue
    .line 1043
    sget-object v0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/r$i;

    invoke-interface {v0, p0}, Landroid/support/v4/view/r$i;->e(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static f(Landroid/view/View;)Z
    .registers 2

    .prologue
    .line 1088
    sget-object v0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/r$i;

    invoke-interface {v0, p0}, Landroid/support/v4/view/r$i;->f(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
