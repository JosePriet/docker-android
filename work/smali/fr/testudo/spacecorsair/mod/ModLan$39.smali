.class Lfr/testudo/spacecorsair/mod/ModLan$39;
.super Ljava/lang/Object;
.source "ModLan.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLan;->report(Landroid/app/Activity;)V
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
    .line 3170
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$39;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    .prologue
    .line 3172
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->chatText()Ljava/lang/String;

    move-result-object v0

    .line 3173
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3174
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flags="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->flags:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " strikes="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->strikes:I
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$2400()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " role="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3175
    const/4 v0, 0x0

    array-length v3, v1

    add-int/lit8 v3, v3, -0x32

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_4c
    array-length v3, v1

    if-ge v0, v3, :cond_5d

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    .line 3176
    :cond_5d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLan$39$1;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/mod/ModLan$39$1;-><init>(Lfr/testudo/spacecorsair/mod/ModLan$39;)V

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLobby;->report(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 3179
    return-void
.end method
