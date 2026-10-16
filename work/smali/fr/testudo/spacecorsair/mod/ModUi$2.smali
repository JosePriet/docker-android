.class Lfr/testudo/spacecorsair/mod/ModUi$2;
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
    .line 180
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModUi$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 182
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUi$2;->val$activity:Landroid/app/Activity;

    # invokes: Lfr/testudo/spacecorsair/mod/ModUi;->activeKey(Landroid/app/Activity;)Ljava/lang/String;
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUi;->access$000(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 183
    if-nez v1, :cond_9

    .line 187
    :goto_8
    return-void

    .line 184
    :cond_9
    # getter for: Lfr/testudo/spacecorsair/mod/ModUi;->filters:Ljava/util/Map;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModUi;->access$100()Ljava/util/Map;

    move-result-object v2

    # getter for: Lfr/testudo/spacecorsair/mod/ModUi;->filters:Ljava/util/Map;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModUi;->access$100()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/LootRarety;

    # invokes: Lfr/testudo/spacecorsair/mod/ModUi;->next(Lfr/testudo/spacecorsair/business/loot/LootRarety;)Lfr/testudo/spacecorsair/business/loot/LootRarety;
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUi;->access$200(Lfr/testudo/spacecorsair/business/loot/LootRarety;)Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUi$2;->val$activity:Landroid/app/Activity;

    # invokes: Lfr/testudo/spacecorsair/mod/ModUi;->refresh(Landroid/app/Activity;)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUi;->access$300(Landroid/app/Activity;)V

    .line 186
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUi$2;->val$activity:Landroid/app/Activity;

    # invokes: Lfr/testudo/spacecorsair/mod/ModUi;->update(Landroid/app/Activity;)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUi;->access$400(Landroid/app/Activity;)V

    goto :goto_8
.end method
