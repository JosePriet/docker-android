.class Lfr/testudo/spacecorsair/mod/ModLanUi$12;
.super Ljava/lang/Object;
.source "ModLanUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLanUi;->attach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$mute:Landroid/widget/Button;


# direct methods
.method constructor <init>(Landroid/widget/Button;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 498
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$12;->val$mute:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 499
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLanUi;->muted:Z

    if-nez v0, :cond_17

    const/4 v0, 0x1

    :goto_5
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLanUi;->muted:Z

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$12;->val$mute:Landroid/widget/Button;

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLanUi;->muted:Z

    if-eqz v0, :cond_19

    const-string v0, "Unmute"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_13
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_17
    const/4 v0, 0x0

    goto :goto_5

    :cond_19
    const-string v0, "Mute"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method
