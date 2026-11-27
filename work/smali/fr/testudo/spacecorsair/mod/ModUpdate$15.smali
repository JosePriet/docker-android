.class Lfr/testudo/spacecorsair/mod/ModUpdate$15;
.super Ljava/lang/Object;
.source "ModUpdate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModUpdate;->fill(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/app/AlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$m:Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;


# direct methods
.method constructor <init>(Landroid/content/Context;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 629
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$15;->val$c:Landroid/content/Context;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$15;->val$m:Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 629
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$15;->val$c:Landroid/content/Context;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$15;->val$m:Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->apkUrl:Ljava/lang/String;

    # invokes: Lfr/testudo/spacecorsair/mod/ModUpdate;->openLink(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->access$1100(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
