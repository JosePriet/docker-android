.class public Landroid/support/v4/widget/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/d$d;,
        Landroid/support/v4/widget/d$c;,
        Landroid/support/v4/widget/d$b;,
        Landroid/support/v4/widget/d$a;
    }
.end annotation


# static fields
.field static final b:Landroid/support/v4/widget/d$a;


# instance fields
.field a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 240
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 241
    const/16 v1, 0xe

    if-lt v0, v1, :cond_e

    .line 242
    new-instance v0, Landroid/support/v4/widget/d$d;

    invoke-direct {v0}, Landroid/support/v4/widget/d$d;-><init>()V

    sput-object v0, Landroid/support/v4/widget/d;->b:Landroid/support/v4/widget/d$a;

    .line 248
    :goto_d
    return-void

    .line 243
    :cond_e
    const/16 v1, 0x9

    if-lt v0, v1, :cond_1a

    .line 244
    new-instance v0, Landroid/support/v4/widget/d$c;

    invoke-direct {v0}, Landroid/support/v4/widget/d$c;-><init>()V

    sput-object v0, Landroid/support/v4/widget/d;->b:Landroid/support/v4/widget/d$a;

    goto :goto_d

    .line 246
    :cond_1a
    new-instance v0, Landroid/support/v4/widget/d$b;

    invoke-direct {v0}, Landroid/support/v4/widget/d$b;-><init>()V

    sput-object v0, Landroid/support/v4/widget/d;->b:Landroid/support/v4/widget/d$a;

    goto :goto_d
.end method


# virtual methods
.method public a(IIIII)V
    .registers 13

    .prologue
    .line 358
    sget-object v0, Landroid/support/v4/widget/d;->b:Landroid/support/v4/widget/d$a;

    iget-object v1, p0, Landroid/support/v4/widget/d;->a:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/support/v4/widget/d$a;->a(Ljava/lang/Object;IIIII)V

    .line 359
    return-void
.end method

.method public a()Z
    .registers 3

    .prologue
    .line 268
    sget-object v0, Landroid/support/v4/widget/d;->b:Landroid/support/v4/widget/d$a;

    iget-object v1, p0, Landroid/support/v4/widget/d;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/d$a;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()I
    .registers 3

    .prologue
    .line 277
    sget-object v0, Landroid/support/v4/widget/d;->b:Landroid/support/v4/widget/d$a;

    iget-object v1, p0, Landroid/support/v4/widget/d;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/d$a;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public c()I
    .registers 3

    .prologue
    .line 286
    sget-object v0, Landroid/support/v4/widget/d;->b:Landroid/support/v4/widget/d$a;

    iget-object v1, p0, Landroid/support/v4/widget/d;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/d$a;->c(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public d()I
    .registers 3

    .prologue
    .line 293
    sget-object v0, Landroid/support/v4/widget/d;->b:Landroid/support/v4/widget/d$a;

    iget-object v1, p0, Landroid/support/v4/widget/d;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/d$a;->f(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public e()I
    .registers 3

    .prologue
    .line 300
    sget-object v0, Landroid/support/v4/widget/d;->b:Landroid/support/v4/widget/d$a;

    iget-object v1, p0, Landroid/support/v4/widget/d;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/d$a;->g(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public f()Z
    .registers 3

    .prologue
    .line 323
    sget-object v0, Landroid/support/v4/widget/d;->b:Landroid/support/v4/widget/d$a;

    iget-object v1, p0, Landroid/support/v4/widget/d;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/d$a;->d(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public g()V
    .registers 3

    .prologue
    .line 419
    sget-object v0, Landroid/support/v4/widget/d;->b:Landroid/support/v4/widget/d$a;

    iget-object v1, p0, Landroid/support/v4/widget/d;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/d$a;->e(Ljava/lang/Object;)V

    .line 420
    return-void
.end method
