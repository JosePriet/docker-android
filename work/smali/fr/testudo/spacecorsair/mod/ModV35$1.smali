.class Lfr/testudo/spacecorsair/mod/ModV35$1;
.super Ljava/lang/Object;
.source "ModV35.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModV35;->buy()Ljava/lang/String;
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


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 514
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
    .line 514
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModV35$1;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .registers 2

    .prologue
    .line 514
    # invokes: Lfr/testudo/spacecorsair/mod/ModV35;->buyNow()Ljava/lang/String;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->access$000()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
