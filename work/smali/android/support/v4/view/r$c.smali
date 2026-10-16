.class Landroid/support/v4/view/r$c;
.super Landroid/support/v4/view/r$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 373
    invoke-direct {p0}, Landroid/support/v4/view/r$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 376
    invoke-static {p1}, Landroid/support/v4/view/t;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method
