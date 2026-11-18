.class Lfr/testudo/spacecorsair/mod/ModLan$44;
.super Ljava/lang/Object;
.source "ModLan.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLan;->pickHost(Landroid/app/Activity;Ljava/util/List;)V
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
    .line 3139
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$44;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .prologue
    .line 3140
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$44;->val$a:Landroid/app/Activity;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # invokes: Lfr/testudo/spacecorsair/mod/ModLan;->pickHost(Landroid/app/Activity;Ljava/util/List;)V
    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->access$1900(Landroid/app/Activity;Ljava/util/List;)V

    return-void
.end method
