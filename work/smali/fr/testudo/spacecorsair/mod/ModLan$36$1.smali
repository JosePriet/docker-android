.class Lfr/testudo/spacecorsair/mod/ModLan$36$1;
.super Ljava/lang/Object;
.source "ModLan.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLan$36;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/mod/ModLan$36;

.field final synthetic val$rows:Ljava/util/List;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModLan$36;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 2590
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$36$1;->this$0:Lfr/testudo/spacecorsair/mod/ModLan$36;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModLan$36$1;->val$rows:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 2592
    :try_start_0
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$36$1;->this$0:Lfr/testudo/spacecorsair/mod/ModLan$36;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModLan$36;->val$wait:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_fa

    .line 2593
    :goto_7
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$36$1;->this$0:Lfr/testudo/spacecorsair/mod/ModLan$36;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModLan$36;->val$a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2616
    :goto_11
    return-void

    .line 2595
    :cond_12
    :try_start_12
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLan$36$1;->this$0:Lfr/testudo/spacecorsair/mod/ModLan$36;

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModLan$36;->val$a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Public games (internet)"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 2596
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$36$1;->val$rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 2597
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_58

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    :goto_37
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2612
    :goto_3a
    const-string v0, "Refresh"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLan$36$1$2;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/mod/ModLan$36$1$2;-><init>(Lfr/testudo/spacecorsair/mod/ModLan$36$1;)V

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2613
    const-string v0, "Close"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2614
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_11

    .line 2615
    :catch_56
    move-exception v0

    goto :goto_11

    .line 2597
    :cond_58
    const-string v0, "No public games right now. Host one, or look again in a moment."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_37

    .line 2599
    :cond_5f
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$36$1;->val$rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    .line 2600
    const/4 v0, 0x0

    move v2, v0

    :goto_69
    array-length v0, v4

    if-ge v2, v0, :cond_f0

    .line 2601
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$36$1;->val$rows:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2602
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    aget-object v5, v0, v5

    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-static {v5, v6}, Lfr/testudo/spacecorsair/mod/ModLanUi;->label(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "  \u00b7  "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v5, 0x4

    aget-object v5, v0, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "  \u00b7  "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "Lv"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v5, 0x5

    aget-object v5, v0, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "  \u00b7  "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2603
    const-string v1, "1"

    const/4 v6, 0x3

    aget-object v6, v0, v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e9

    const-string v1, "PvP on"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_c8
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "  \u00b7  "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v5, 0x6

    aget-object v0, v0, v5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 2600
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_69

    .line 2603
    :cond_e9
    const-string v1, "PvP off"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_c8

    .line 2605
    :cond_f0
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLan$36$1$1;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/mod/ModLan$36$1$1;-><init>(Lfr/testudo/spacecorsair/mod/ModLan$36$1;)V

    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_f8
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_f8} :catch_56

    goto/16 :goto_3a

    .line 2592
    :catch_fa
    move-exception v0

    goto/16 :goto_7
.end method
