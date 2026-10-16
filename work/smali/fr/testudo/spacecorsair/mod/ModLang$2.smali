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
    .line 240
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLang$2;->val$root:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLang$2;->val$root:Landroid/view/View;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->translateTree(Landroid/view/View;)V

    return-void
.end method
