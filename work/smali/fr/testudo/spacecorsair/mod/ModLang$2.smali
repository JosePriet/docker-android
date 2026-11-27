.class Lfr/testudo/spacecorsair/mod/ModLang$2;
.super Ljava/lang/Object;
.source "ModLang.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLang;->watch(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private seen:J

.field final synthetic val$root:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 359
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLang$2;->val$root:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 5

    .prologue
    .line 361
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLang$2;->val$root:Landroid/view/View;

    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModLang$2;->seen:J

    invoke-static {v0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModScroll;->screenChanged(Landroid/view/View;J)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLang$2;->val$root:Landroid/view/View;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModScroll;->screenKey(Landroid/view/View;)J

    move-result-wide v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModLang$2;->seen:J

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLang$2;->val$root:Landroid/view/View;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->translateTree(Landroid/view/View;)V

    :cond_17
    return-void
.end method
