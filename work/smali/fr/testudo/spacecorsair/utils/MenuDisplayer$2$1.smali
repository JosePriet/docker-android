.class Lfr/testudo/spacecorsair/utils/MenuDisplayer$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/utils/MenuDisplayer$2;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/utils/MenuDisplayer$2;)V
    .registers 2

    .prologue
    .line 98
    iput-object p1, p0, Lfr/testudo/spacecorsair/utils/MenuDisplayer$2$1;->this$0:Lfr/testudo/spacecorsair/utils/MenuDisplayer$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 102
    sget-boolean v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->mogaLeft:Z

    if-eqz v0, :cond_7

    .line 103
    invoke-static {}, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->selectLeft()V

    .line 107
    :cond_7
    sget-boolean v0, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->mogaRight:Z

    if-eqz v0, :cond_e

    .line 108
    invoke-static {}, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->selectRight()V

    .line 112
    :cond_e
    return-void
.end method
