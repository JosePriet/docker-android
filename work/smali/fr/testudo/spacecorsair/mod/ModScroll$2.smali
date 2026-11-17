.class Lfr/testudo/spacecorsair/mod/ModScroll$2;
.super Ljava/lang/Object;
.source "ModScroll.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModScroll;->hook(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private seen:J

.field final synthetic val$decor:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 67
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModScroll$2;->val$decor:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 5

    .prologue
    .line 70
    :try_start_0
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModScroll$2;->val$decor:Landroid/view/View;

    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModScroll$2;->seen:J

    invoke-static {v0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModScroll;->screenChanged(Landroid/view/View;J)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModScroll$2;->val$decor:Landroid/view/View;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModScroll;->screenKey(Landroid/view/View;)J

    move-result-wide v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModScroll$2;->seen:J

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModScroll$2;->val$decor:Landroid/view/View;

    # invokes: Lfr/testudo/spacecorsair/mod/ModScroll;->scan(Landroid/view/View;)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModScroll;->access$100(Landroid/view/View;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_17} :catch_18

    .line 71
    :cond_17
    :goto_17
    return-void

    .line 70
    :catch_18
    move-exception v0

    goto :goto_17
.end method
