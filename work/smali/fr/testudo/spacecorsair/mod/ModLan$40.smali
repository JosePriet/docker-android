.class Lfr/testudo/spacecorsair/mod/ModLan$40;
.super Ljava/lang/Object;
.source "ModLan.java"

# interfaces
.implements Lfr/testudo/spacecorsair/mod/ModLanUi$CodeCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLan;->publicList(Landroid/app/Activity;)V
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
    .line 3176
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$40;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public code(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 3176
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$40;->val$a:Landroid/app/Activity;

    # invokes: Lfr/testudo/spacecorsair/mod/ModLan;->joinCode(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v0, p1}, Lfr/testudo/spacecorsair/mod/ModLan;->access$2500(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
