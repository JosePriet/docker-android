.class Lfr/testudo/spacecorsair/mod/ModLanUi$2;
.super Ljava/lang/Object;
.source "ModLanUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLanUi;->whoAreYou(Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$cb:Landroid/widget/Button;

.field final synthetic val$d:F

.field final synthetic val$picked:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;Landroid/widget/Button;Landroid/app/Activity;F)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 304
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$2;->val$picked:[Ljava/lang/String;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$2;->val$cb:Landroid/widget/Button;

    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$2;->val$a:Landroid/app/Activity;

    iput p4, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$2;->val$d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 306
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$2;->val$picked:[Ljava/lang/String;

    aget-object v0, v0, v5

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLanUi;->flagIndex(Ljava/lang/String;)I

    move-result v2

    .line 307
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$2;->val$cb:Landroid/widget/Button;

    if-gez v2, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "?  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "No country"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_27
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$2;->val$cb:Landroid/widget/Button;

    if-gez v2, :cond_59

    move-object v0, v1

    :goto_2f
    invoke-virtual {v3, v0, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 309
    return-void

    .line 307
    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$2;->val$picked:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # invokes: Lfr/testudo/spacecorsair/mod/ModLanUi;->countryName(I)Ljava/lang/String;
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLanUi;->access$000(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    .line 308
    :cond_59
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$2;->val$a:Landroid/app/Activity;

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$2;->val$picked:[Ljava/lang/String;

    aget-object v2, v2, v5

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$2;->val$d:F

    # invokes: Lfr/testudo/spacecorsair/mod/ModLanUi;->flagDrawable(Landroid/content/Context;Ljava/lang/String;F)Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v0, v2, v4}, Lfr/testudo/spacecorsair/mod/ModLanUi;->access$100(Landroid/content/Context;Ljava/lang/String;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_2f
.end method
