.class Lfr/testudo/spacecorsair/activity/Main$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/activity/Main;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/activity/Main;)V
    .registers 2

    .prologue
    .line 386
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/Main$5;->this$0:Lfr/testudo/spacecorsair/activity/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 389
    invoke-static {}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->resume()V

    .line 390
    return-void
.end method
