.class Lfr/testudo/spacecorsair/mod/ModTestMode$2;
.super Ljava/lang/Object;
.source "ModTestMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModTestMode;->confirm(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 414
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModTestMode$2;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .prologue
    .line 415
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModTestMode$2;->val$a:Landroid/app/Activity;

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->on:Z

    if-eqz v0, :cond_c

    const-string v0, "main"

    :goto_8
    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModTestMode;->switchTo(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    :cond_c
    const-string v0, "test"

    goto :goto_8
.end method
