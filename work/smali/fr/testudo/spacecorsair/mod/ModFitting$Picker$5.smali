.class Lfr/testudo/spacecorsair/mod/ModFitting$Picker$5;
.super Ljava/lang/Object;
.source "ModFitting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModFitting$Picker;->show(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1440
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Picker$5;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .prologue
    .line 1441
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Picker$5;->val$a:Landroid/app/Activity;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFitting;->refresh(Landroid/app/Activity;)V

    return-void
.end method
