.class Lfr/testudo/spacecorsair/mod/ModLanUi$4;
.super Ljava/lang/Object;
.source "ModLanUi.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLanUi;->whoAreYou(Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$name:Landroid/widget/EditText;

.field final synthetic val$picked:[Ljava/lang/String;

.field final synthetic val$then:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/widget/EditText;[Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 320
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$4;->val$name:Landroid/widget/EditText;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$4;->val$picked:[Ljava/lang/String;

    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$4;->val$then:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .prologue
    .line 322
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$4;->val$name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$4;->val$picked:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    # invokes: Lfr/testudo/spacecorsair/mod/ModLanUi;->save(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLanUi;->access$300(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$4;->val$then:Ljava/lang/Runnable;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$4;->val$then:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 324
    :cond_1b
    return-void
.end method
