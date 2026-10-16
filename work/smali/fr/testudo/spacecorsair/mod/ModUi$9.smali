.class Lfr/testudo/spacecorsair/mod/ModUi$9;
.super Ljava/lang/Object;
.source "ModUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModUi;->wireArrows(Landroid/app/Activity;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$step:I


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 315
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModUi$9;->val$a:Landroid/app/Activity;

    iput p2, p0, Lfr/testudo/spacecorsair/mod/ModUi$9;->val$step:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 318
    const/4 v1, 0x0

    .line 319
    :try_start_1
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUi$9;->val$a:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_7
    if-eqz v0, :cond_16

    if-nez v1, :cond_16

    const-string v1, "shipsPager"

    # invokes: Lfr/testudo/spacecorsair/mod/ModUi;->hasField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModUi;->access$800(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_7

    .line 320
    :cond_16
    if-nez v1, :cond_19

    .line 327
    :cond_18
    :goto_18
    return-void

    .line 321
    :cond_19
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 322
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUi$9;->val$a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 323
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModUi$9;->val$step:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_31} :catch_32

    goto :goto_18

    .line 324
    :catch_32
    move-exception v0

    goto :goto_18
.end method
