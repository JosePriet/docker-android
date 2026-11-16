.class Lfr/testudo/spacecorsair/mod/ModNet$Link$1;
.super Ljava/lang/Object;
.source "ModNet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModNet$Link;-><init>(Lfr/testudo/spacecorsair/mod/ModNet$Wire;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/mod/ModNet$Link;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModNet$Link;)V
    .registers 2

    .prologue
    .line 661
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link$1;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 661
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link$1;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    # invokes: Lfr/testudo/spacecorsair/mod/ModNet$Link;->tick()V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->access$800(Lfr/testudo/spacecorsair/mod/ModNet$Link;)V

    return-void
.end method
