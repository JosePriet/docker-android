.class Landroid/support/v4/view/a/d$c;
.super Landroid/support/v4/view/a/d$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/support/v4/view/a/d$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/view/a/d;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 88
    new-instance v0, Landroid/support/v4/view/a/f;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/view/a/f;-><init>(Landroid/support/v4/view/a/d$c;Landroid/support/v4/view/a/d;)V

    invoke-static {v0}, Landroid/support/v4/view/a/i;->a(Landroid/support/v4/view/a/i$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
