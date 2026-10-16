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
    .registers 2

    .prologue
    .line 69
    :try_start_0
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModScroll$2;->val$decor:Landroid/view/View;

    # invokes: Lfr/testudo/spacecorsair/mod/ModScroll;->scan(Landroid/view/View;)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModScroll;->access$100(Landroid/view/View;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    .line 70
    :goto_5
    return-void

    .line 69
    :catch_6
    move-exception v0

    goto :goto_5
.end method
