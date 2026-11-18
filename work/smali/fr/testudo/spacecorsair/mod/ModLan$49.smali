.class Lfr/testudo/spacecorsair/mod/ModLan$49;
.super Ljava/lang/Object;
.source "ModLan.java"

# interfaces
.implements Lfr/testudo/spacecorsair/mod/ModLanUi$CodeCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLan;->askCode(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$addr:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3335
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$49;->val$a:Landroid/app/Activity;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModLan$49;->val$addr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public code(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 3335
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$49;->val$a:Landroid/app/Activity;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLan$49;->val$addr:Ljava/lang/String;

    # invokes: Lfr/testudo/spacecorsair/mod/ModLan;->connectTo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lfr/testudo/spacecorsair/mod/ModLan;->access$2700(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
