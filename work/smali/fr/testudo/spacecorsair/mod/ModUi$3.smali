.class Lfr/testudo/spacecorsair/mod/ModUi$3;
.super Ljava/lang/Object;
.source "ModUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModUi;->ensureBar(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 192
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModUi$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 194
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUi$3;->val$activity:Landroid/app/Activity;

    # invokes: Lfr/testudo/spacecorsair/mod/ModUi;->activeKey(Landroid/app/Activity;)Ljava/lang/String;
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUi;->access$000(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 195
    if-nez v1, :cond_9

    .line 200
    :goto_8
    return-void

    .line 196
    :cond_9
    # getter for: Lfr/testudo/spacecorsair/mod/ModUi;->sorts:Ljava/util/Map;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModUi;->access$500()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 197
    # getter for: Lfr/testudo/spacecorsair/mod/ModUi;->sorts:Ljava/util/Map;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModUi;->access$500()Ljava/util/Map;

    move-result-object v2

    if-nez v0, :cond_34

    const/4 v0, 0x0

    :goto_1a
    add-int/lit8 v0, v0, 0x1

    # getter for: Lfr/testudo/spacecorsair/mod/ModUi;->SORT_NAMES:[Ljava/lang/String;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModUi;->access$600()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    rem-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUi$3;->val$activity:Landroid/app/Activity;

    # invokes: Lfr/testudo/spacecorsair/mod/ModUi;->refresh(Landroid/app/Activity;)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUi;->access$300(Landroid/app/Activity;)V

    .line 199
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUi$3;->val$activity:Landroid/app/Activity;

    # invokes: Lfr/testudo/spacecorsair/mod/ModUi;->update(Landroid/app/Activity;)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUi;->access$400(Landroid/app/Activity;)V

    goto :goto_8

    .line 197
    :cond_34
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1a
.end method
