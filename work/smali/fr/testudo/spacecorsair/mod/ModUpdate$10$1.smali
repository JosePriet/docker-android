.class Lfr/testudo/spacecorsair/mod/ModUpdate$10$1;
.super Ljava/lang/Object;
.source "ModUpdate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModUpdate$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/mod/ModUpdate$10;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModUpdate$10;)V
    .registers 2

    .prologue
    .line 529
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$10$1;->this$0:Lfr/testudo/spacecorsair/mod/ModUpdate$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 529
    # invokes: Lfr/testudo/spacecorsair/mod/ModUpdate;->refreshPanel()V
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModUpdate;->access$800()V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModUpdate;->refreshLabel()V

    return-void
.end method
