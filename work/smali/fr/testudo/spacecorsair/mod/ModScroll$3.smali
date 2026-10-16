.class Lfr/testudo/spacecorsair/mod/ModScroll$3;
.super Ljava/lang/Object;
.source "ModScroll.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModScroll;->hook(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 2

    .prologue
    .line 74
    :try_start_0
    # invokes: Lfr/testudo/spacecorsair/mod/ModScroll;->place()V
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModScroll;->access$200()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    .line 75
    :goto_3
    const/4 v0, 0x1

    return v0

    .line 74
    :catch_5
    move-exception v0

    goto :goto_3
.end method
