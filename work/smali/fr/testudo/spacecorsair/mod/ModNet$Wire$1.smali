.class Lfr/testudo/spacecorsair/mod/ModNet$Wire$1;
.super Ljava/lang/Object;
.source "ModNet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModNet$Wire;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/mod/ModNet$Wire;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModNet$Wire;)V
    .registers 2

    .prologue
    .line 71
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire$1;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire$1;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    # invokes: Lfr/testudo/spacecorsair/mod/ModNet$Wire;->loop()V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->access$000(Lfr/testudo/spacecorsair/mod/ModNet$Wire;)V

    return-void
.end method
