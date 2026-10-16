.class Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$9;
.super Ljava/lang/Object;
.source "ModFitting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->testPick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;

.field final synthetic val$slot:I


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 743
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$9;->this$0:Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;

    iput p2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$9;->val$slot:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 743
    :try_start_0
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$9;->this$0:Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay;->act:Landroid/app/Activity;

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Overlay$9;->val$slot:I

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFitting;->openSlot(Landroid/app/Activity;I)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    goto :goto_9
.end method
