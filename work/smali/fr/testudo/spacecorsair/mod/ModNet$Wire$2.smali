.class Lfr/testudo/spacecorsair/mod/ModNet$Wire$2;
.super Ljava/util/TimerTask;
.source "ModNet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModNet$Wire;->send(Ljava/net/SocketAddress;[BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

.field final synthetic val$c:[B

.field final synthetic val$to:Ljava/net/SocketAddress;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModNet$Wire;Ljava/net/SocketAddress;[B)V
    .registers 4

    .prologue
    .line 96
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire$2;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire$2;->val$to:Ljava/net/SocketAddress;

    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire$2;->val$c:[B

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 96
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire$2;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire$2;->val$to:Ljava/net/SocketAddress;

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire$2;->val$c:[B

    # invokes: Lfr/testudo/spacecorsair/mod/ModNet$Wire;->raw(Ljava/net/SocketAddress;[B)V
    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->access$100(Lfr/testudo/spacecorsair/mod/ModNet$Wire;Ljava/net/SocketAddress;[B)V

    return-void
.end method
