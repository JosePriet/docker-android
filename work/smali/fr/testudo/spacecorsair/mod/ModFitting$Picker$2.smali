.class Lfr/testudo/spacecorsair/mod/ModFitting$Picker$2;
.super Ljava/lang/Object;
.source "ModFitting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$dlg:Landroid/app/Dialog;

.field final synthetic val$so:Lfr/testudo/spacecorsair/business/loot/SpaceObject;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lfr/testudo/spacecorsair/business/loot/SpaceObject;Landroid/app/Dialog;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1399
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Picker$2;->val$a:Landroid/app/Activity;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Picker$2;->val$so:Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Picker$2;->val$dlg:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1402
    :try_start_0
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Picker$2;->val$a:Landroid/app/Activity;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Picker$2;->val$so:Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFitting;->equip(Landroid/app/Activity;Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_d

    .line 1406
    :goto_7
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Picker$2;->val$dlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1407
    return-void

    .line 1403
    :catch_d
    move-exception v0

    goto :goto_7
.end method
