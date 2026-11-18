.class Lfr/testudo/spacecorsair/mod/ModLanUi$17;
.super Landroid/widget/ArrayAdapter;
.source "ModLanUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLanUi;->publicList(Landroid/app/Activity;Lfr/testudo/spacecorsair/mod/ModLanUi$CodeCb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$d:F


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/util/List;Landroid/app/Activity;F)V
    .registers 6

    .prologue
    .line 672
    iput-object p4, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$17;->val$a:Landroid/app/Activity;

    iput p5, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$17;->val$d:F

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13

    .prologue
    const/4 v8, 0x6

    const/high16 v4, 0x41a00000    # 20.0f

    const/high16 v7, 0x41400000    # 12.0f

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 674
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_f0

    check-cast p2, Landroid/widget/TextView;

    .line 675
    :goto_d
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/mod/ModLanUi$17;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 676
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$17;->val$d:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$17;->val$d:F

    mul-float/2addr v2, v7

    float-to-int v2, v2

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$17;->val$d:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$17;->val$d:F

    mul-float/2addr v4, v7

    float-to-int v4, v4

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 677
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p2, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 678
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v1, v0

    const/4 v4, 0x7

    if-le v1, v4, :cond_f9

    const-string v1, "1"

    const/4 v4, 0x7

    aget-object v4, v0, v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f9

    const-string v1, " [DEV]"

    :goto_4d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-object v3, v0, v5

    invoke-static {v1, v3}, Lfr/testudo/spacecorsair/mod/ModLanUi;->label(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  \u00b7  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  \u00b7  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  \u00b7  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Lv"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  \u00b7  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 679
    const-string v1, "1"

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fd

    const-string v1, "PvP on"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_ad
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  \u00b7  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 678
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 680
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$17;->val$a:Landroid/app/Activity;

    aget-object v2, v0, v5

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$17;->val$d:F

    # invokes: Lfr/testudo/spacecorsair/mod/ModLanUi;->flagDrawable(Landroid/content/Context;Ljava/lang/String;F)Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLanUi;->access$100(Landroid/content/Context;Ljava/lang/String;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {p2, v1, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 681
    const/high16 v1, 0x41200000    # 10.0f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$17;->val$d:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 682
    const-string v1, "2"

    aget-object v0, v0, v8

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_104

    const/high16 v0, 0x3f000000    # 0.5f

    :goto_ec
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 683
    return-object p2

    .line 674
    :cond_f0
    new-instance p2, Landroid/widget/TextView;

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$17;->val$a:Landroid/app/Activity;

    invoke-direct {p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    goto/16 :goto_d

    .line 678
    :cond_f9
    const-string v1, ""

    goto/16 :goto_4d

    .line 679
    :cond_fd
    const-string v1, "PvP off"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_ad

    .line 682
    :cond_104
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_ec
.end method
