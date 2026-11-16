.class Lfr/testudo/spacecorsair/mod/ModLanUi$2;
.super Ljava/lang/Object;
.source "ModLanUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLanUi;->whoAreYou(Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$picked:[Ljava/lang/String;

.field final synthetic val$show:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 208
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$2;->val$a:Landroid/app/Activity;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$2;->val$picked:[Ljava/lang/String;

    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$2;->val$show:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 209
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$2;->val$a:Landroid/app/Activity;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLanUi$2$1;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/mod/ModLanUi$2$1;-><init>(Lfr/testudo/spacecorsair/mod/ModLanUi$2;)V

    # invokes: Lfr/testudo/spacecorsair/mod/ModLanUi;->pickCountry(Landroid/app/Activity;Lfr/testudo/spacecorsair/mod/ModLanUi$Pick;)V
    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLanUi;->access$200(Landroid/app/Activity;Lfr/testudo/spacecorsair/mod/ModLanUi$Pick;)V

    return-void
.end method
