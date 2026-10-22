.class Lfr/testudo/spacecorsair/mod/ModQol$2;
.super Ljava/lang/Object;
.source "ModQol.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModQol;->check(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/CheckBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 294
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModQol$2;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    .prologue
    .line 296
    const-string v0, "fixedStick"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModQol$2;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    # setter for: Lfr/testudo/spacecorsair/mod/ModQol;->optStick:Z
    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModQol;->access$102(Z)Z

    .line 300
    :cond_d
    :goto_d
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModQol$2;->val$key:Ljava/lang/String;

    # invokes: Lfr/testudo/spacecorsair/mod/ModQol;->save(Ljava/lang/String;Z)V
    invoke-static {v0, p2}, Lfr/testudo/spacecorsair/mod/ModQol;->access$500(Ljava/lang/String;Z)V

    .line 301
    return-void

    .line 297
    :cond_13
    const-string v0, "barNumbers"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModQol$2;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    # setter for: Lfr/testudo/spacecorsair/mod/ModQol;->optBars:Z
    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModQol;->access$202(Z)Z

    goto :goto_d

    .line 298
    :cond_21
    const-string v0, "damageNumbers"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModQol$2;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    # setter for: Lfr/testudo/spacecorsair/mod/ModQol;->optDmg:Z
    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModQol;->access$302(Z)Z

    goto :goto_d

    .line 299
    :cond_2f
    const-string v0, "bigButtons"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModQol$2;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    # setter for: Lfr/testudo/spacecorsair/mod/ModQol;->optBig:Z
    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModQol;->access$402(Z)Z

    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModQol;->buttonsDirty:Z

    goto :goto_d
.end method
