.class Lfr/testudo/spacecorsair/mod/ModLanUi$11;
.super Ljava/lang/Object;
.source "ModLanUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLanUi;->profileRow(Landroid/app/Activity;Ljava/lang/Runnable;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$after:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 468
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$11;->val$a:Landroid/app/Activity;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$11;->val$after:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 468
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$11;->val$a:Landroid/app/Activity;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$11;->val$after:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLanUi;->whoAreYou(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method
