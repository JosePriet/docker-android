.class public Landroid/support/v4/view/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/h$c;,
        Landroid/support/v4/view/h$b;,
        Landroid/support/v4/view/h$a;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/view/h$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 90
    const/16 v1, 0x11

    if-lt v0, v1, :cond_e

    .line 91
    new-instance v0, Landroid/support/v4/view/h$c;

    invoke-direct {v0}, Landroid/support/v4/view/h$c;-><init>()V

    sput-object v0, Landroid/support/v4/view/h;->a:Landroid/support/v4/view/h$a;

    .line 95
    :goto_d
    return-void

    .line 93
    :cond_e
    new-instance v0, Landroid/support/v4/view/h$b;

    invoke-direct {v0}, Landroid/support/v4/view/h$b;-><init>()V

    sput-object v0, Landroid/support/v4/view/h;->a:Landroid/support/v4/view/h$a;

    goto :goto_d
.end method

.method public static a(II)I
    .registers 3

    .prologue
    .line 201
    sget-object v0, Landroid/support/v4/view/h;->a:Landroid/support/v4/view/h$a;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/h$a;->a(II)I

    move-result v0

    return v0
.end method
