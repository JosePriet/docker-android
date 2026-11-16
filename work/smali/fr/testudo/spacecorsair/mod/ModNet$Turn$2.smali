.class Lfr/testudo/spacecorsair/mod/ModNet$Turn$2;
.super Ljava/lang/Object;
.source "ModNet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModNet$Turn;->onData([BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

.field final synthetic val$peer:Ljava/net/InetSocketAddress;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModNet$Turn;Ljava/net/InetSocketAddress;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 522
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn$2;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn$2;->val$peer:Ljava/net/InetSocketAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 523
    :try_start_0
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn$2;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn$2;->val$peer:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->bind(Ljava/net/InetSocketAddress;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    goto :goto_7
.end method
