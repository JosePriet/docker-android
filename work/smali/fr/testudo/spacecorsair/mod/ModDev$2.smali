.class Lfr/testudo/spacecorsair/mod/ModDev$2;
.super Ljava/lang/Object;
.source "ModDev.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModDev;->redeem(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$code:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 186
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModDev$2;->val$code:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModDev$2;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModDev$2;->val$code:Ljava/lang/String;

    # invokes: Lfr/testudo/spacecorsair/mod/ModDev;->redeemNow(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
