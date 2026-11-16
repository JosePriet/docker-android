.class Lfr/testudo/spacecorsair/mod/ModLan$4;
.super Ljava/lang/Object;
.source "ModLan.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLan;->acceptDialog(Landroid/app/Activity;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$ask:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 310
    iput p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$4;->val$ask:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .prologue
    .line 310
    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->decision:I
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$700()I

    move-result v0

    if-nez v0, :cond_12

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$4;->val$ask:I

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->askId:I
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$800()I

    move-result v1

    if-ne v0, v1, :cond_12

    const/4 v0, 0x2

    # setter for: Lfr/testudo/spacecorsair/mod/ModLan;->decision:I
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->access$702(I)I

    :cond_12
    return-void
.end method
