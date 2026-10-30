.class Lfr/testudo/spacecorsair/mod/ModSound$2;
.super Ljava/lang/Object;
.source "ModSound.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModSound;->settingsBar(Landroid/app/Activity;Landroid/widget/CheckBox;Landroid/view/View;Landroid/widget/SeekBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$r:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 225
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModSound$2;->val$r:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    .prologue
    .line 226
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModSound$2;->val$r:Landroid/view/View;

    if-eqz p2, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method
