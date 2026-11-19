.class Lfr/testudo/spacecorsair/mod/ModLanUi$5;
.super Landroid/widget/ArrayAdapter;
.source "ModLanUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLanUi;->pickCountry(Landroid/app/Activity;Lfr/testudo/spacecorsair/mod/ModLanUi$Pick;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
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
    .line 342
    iput-object p4, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$5;->val$a:Landroid/app/Activity;

    iput p5, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$5;->val$d:F

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 344
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 345
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/mod/ModLanUi$5;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 346
    const-string v3, "?"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    move-object v1, v2

    :goto_16
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 347
    const/high16 v1, 0x41200000    # 10.0f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$5;->val$d:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 348
    return-object v0

    .line 346
    :cond_23
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$5;->val$a:Landroid/app/Activity;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$5;->val$d:F

    # invokes: Lfr/testudo/spacecorsair/mod/ModLanUi;->flagDrawable(Landroid/content/Context;Ljava/lang/String;F)Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v3, v1, v4}, Lfr/testudo/spacecorsair/mod/ModLanUi;->access$100(Landroid/content/Context;Ljava/lang/String;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    goto :goto_16
.end method
