.class Lfr/testudo/spacecorsair/mod/ModSound$1;
.super Ljava/lang/Object;
.source "ModSound.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModSound;->settingsBar(Landroid/app/Activity;Landroid/widget/CheckBox;Landroid/view/View;Landroid/widget/SeekBar;)V
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
    .line 212
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModSound$1;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 7

    .prologue
    .line 214
    int-to-float v0, p2

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    # invokes: Lfr/testudo/spacecorsair/mod/ModSound;->clamp01(F)F
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModSound;->access$100(F)F

    move-result v0

    # setter for: Lfr/testudo/spacecorsair/mod/ModSound;->sfx:F
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModSound;->access$002(F)F

    .line 215
    :try_start_b
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModSound$1;->val$a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "corsair_audio"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sfx"

    # getter for: Lfr/testudo/spacecorsair/mod/ModSound;->sfx:F
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSound;->access$000()F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_29} :catch_2a

    .line 216
    :goto_29
    return-void

    .line 215
    :catch_2a
    move-exception v0

    goto :goto_29
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .prologue
    .line 217
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .prologue
    .line 218
    return-void
.end method
