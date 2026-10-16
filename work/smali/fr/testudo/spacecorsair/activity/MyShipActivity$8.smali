.class Lfr/testudo/spacecorsair/activity/MyShipActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/activity/MyShipActivity;

.field final synthetic val$txtValue:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/activity/MyShipActivity;Landroid/widget/EditText;)V
    .registers 3

    .prologue
    .line 368
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$8;->this$0:Lfr/testudo/spacecorsair/activity/MyShipActivity;

    iput-object p2, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$8;->val$txtValue:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 7

    .prologue
    .line 373
    if-nez p2, :cond_3

    .line 374
    const/4 p2, 0x1

    .line 375
    :cond_3
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$8;->val$txtValue:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$8;->val$txtValue:Landroid/widget/EditText;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$8;->val$txtValue:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 377
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .prologue
    .line 381
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .prologue
    .line 385
    return-void
.end method
