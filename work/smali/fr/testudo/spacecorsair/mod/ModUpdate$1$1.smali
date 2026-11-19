.class Lfr/testudo/spacecorsair/mod/ModUpdate$1$1;
.super Ljava/lang/Object;
.source "ModUpdate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModUpdate$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/mod/ModUpdate$1;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModUpdate$1;)V
    .registers 2

    .prologue
    .line 259
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$1$1;->this$0:Lfr/testudo/spacecorsair/mod/ModUpdate$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 259
    const-string v0, "A game update is ready. Open the menu, then Updates."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lfr/testudo/spacecorsair/mod/ModUpdate;->toast(Ljava/lang/String;)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->access$100(Ljava/lang/String;)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModUpdate;->refreshLabel()V

    return-void
.end method
