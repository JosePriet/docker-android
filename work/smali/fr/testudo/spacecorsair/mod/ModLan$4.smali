.class Lfr/testudo/spacecorsair/mod/ModLan$4;
.super Ljava/lang/Object;
.source "ModLan.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLan;->acceptDialog(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .prologue
    .line 303
    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->decision:I
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$700()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x2

    # setter for: Lfr/testudo/spacecorsair/mod/ModLan;->decision:I
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->access$702(I)I

    :cond_a
    return-void
.end method
