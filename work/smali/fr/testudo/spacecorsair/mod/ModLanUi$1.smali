.class Lfr/testudo/spacecorsair/mod/ModLanUi$1;
.super Ljava/lang/Object;
.source "ModLanUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLanUi;->menuEntry(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 90
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$1;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 92
    :try_start_0
    invoke-static {}, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->hideMenu()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_b

    .line 93
    :goto_3
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$1;->val$ctx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->showMenu(Landroid/app/Activity;)V

    .line 94
    return-void

    .line 92
    :catch_b
    move-exception v0

    goto :goto_3
.end method
