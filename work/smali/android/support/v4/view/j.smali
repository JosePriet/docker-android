.class public Landroid/support/v4/view/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/j$c;,
        Landroid/support/v4/view/j$b;,
        Landroid/support/v4/view/j$a;,
        Landroid/support/v4/view/j$d;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/view/j$d;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 166
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_e

    .line 167
    new-instance v0, Landroid/support/v4/view/j$c;

    invoke-direct {v0}, Landroid/support/v4/view/j$c;-><init>()V

    sput-object v0, Landroid/support/v4/view/j;->a:Landroid/support/v4/view/j$d;

    .line 171
    :goto_d
    return-void

    .line 169
    :cond_e
    new-instance v0, Landroid/support/v4/view/j$a;

    invoke-direct {v0}, Landroid/support/v4/view/j$a;-><init>()V

    sput-object v0, Landroid/support/v4/view/j;->a:Landroid/support/v4/view/j$d;

    goto :goto_d
.end method

.method public static a(Landroid/view/KeyEvent;)Z
    .registers 3

    .prologue
    .line 192
    sget-object v0, Landroid/support/v4/view/j;->a:Landroid/support/v4/view/j$d;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/support/v4/view/j$d;->b(I)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/KeyEvent;I)Z
    .registers 4

    .prologue
    .line 188
    sget-object v0, Landroid/support/v4/view/j;->a:Landroid/support/v4/view/j$d;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/j$d;->a(II)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/KeyEvent;)V
    .registers 2

    .prologue
    .line 196
    sget-object v0, Landroid/support/v4/view/j;->a:Landroid/support/v4/view/j$d;

    invoke-interface {v0, p0}, Landroid/support/v4/view/j$d;->a(Landroid/view/KeyEvent;)V

    .line 197
    return-void
.end method
