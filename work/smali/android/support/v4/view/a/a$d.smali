.class Landroid/support/v4/view/a/a$d;
.super Landroid/support/v4/view/a/a$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 730
    invoke-direct {p0}, Landroid/support/v4/view/a/a$c;-><init>()V

    return-void
.end method


# virtual methods
.method public p(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 734
    invoke-static {p1}, Landroid/support/v4/view/a/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
