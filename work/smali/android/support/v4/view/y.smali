.class public Landroid/support/v4/view/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/y$b;,
        Landroid/support/v4/view/y$a;,
        Landroid/support/v4/view/y$c;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/view/y$c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_e

    .line 59
    new-instance v0, Landroid/support/v4/view/y$b;

    invoke-direct {v0}, Landroid/support/v4/view/y$b;-><init>()V

    sput-object v0, Landroid/support/v4/view/y;->a:Landroid/support/v4/view/y$c;

    .line 63
    :goto_d
    return-void

    .line 61
    :cond_e
    new-instance v0, Landroid/support/v4/view/y$a;

    invoke-direct {v0}, Landroid/support/v4/view/y$a;-><init>()V

    sput-object v0, Landroid/support/v4/view/y;->a:Landroid/support/v4/view/y$c;

    goto :goto_d
.end method

.method public static a(Landroid/view/ViewConfiguration;)I
    .registers 2

    .prologue
    .line 73
    sget-object v0, Landroid/support/v4/view/y;->a:Landroid/support/v4/view/y$c;

    invoke-interface {v0, p0}, Landroid/support/v4/view/y$c;->a(Landroid/view/ViewConfiguration;)I

    move-result v0

    return v0
.end method
