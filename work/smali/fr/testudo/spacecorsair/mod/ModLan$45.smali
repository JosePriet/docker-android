.class Lfr/testudo/spacecorsair/mod/ModLan$45;
.super Ljava/lang/Object;
.source "ModLan.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLan;->pickHost(Landroid/app/Activity;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$items:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;Landroid/app/Activity;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3228
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$45;->val$items:[Ljava/lang/String;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModLan$45;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .prologue
    .line 3230
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$45;->val$items:[Ljava/lang/String;

    aget-object v0, v0, p2

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 3231
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLan$45;->val$items:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->privTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLan$45;->val$a:Landroid/app/Activity;

    # invokes: Lfr/testudo/spacecorsair/mod/ModLan;->askCode(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->access$2600(Landroid/app/Activity;Ljava/lang/String;)V

    .line 3232
    :goto_20
    return-void

    .line 3231
    :cond_21
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLan$45;->val$a:Landroid/app/Activity;

    const-string v2, ""

    # invokes: Lfr/testudo/spacecorsair/mod/ModLan;->connectTo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v0, v2}, Lfr/testudo/spacecorsair/mod/ModLan;->access$2700(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20
.end method
