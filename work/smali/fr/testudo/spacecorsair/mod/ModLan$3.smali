.class Lfr/testudo/spacecorsair/mod/ModLan$3;
.super Ljava/lang/Object;
.source "ModLan.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLan;->askAccept(Ljava/lang/String;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$ask:I

.field final synthetic val$fa:Landroid/app/Activity;

.field final synthetic val$who:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 361
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$3;->val$fa:Landroid/app/Activity;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModLan$3;->val$who:Ljava/lang/String;

    iput p3, p0, Lfr/testudo/spacecorsair/mod/ModLan$3;->val$ask:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 361
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$3;->val$fa:Landroid/app/Activity;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLan$3;->val$who:Ljava/lang/String;

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModLan$3;->val$ask:I

    # invokes: Lfr/testudo/spacecorsair/mod/ModLan;->acceptDialog(Landroid/app/Activity;Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModLan;->access$600(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method
