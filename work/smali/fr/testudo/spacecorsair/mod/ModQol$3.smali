.class Lfr/testudo/spacecorsair/mod/ModQol$3;
.super Ljava/lang/Object;
.source "ModQol.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModQol;->confirmSell(Ljava/lang/Object;ILfr/testudo/spacecorsair/business/loot/SpaceObject;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Ljava/lang/Object;

.field final synthetic val$listener:Ljava/lang/Object;

.field final synthetic val$qty:I

.field final synthetic val$so:Lfr/testudo/spacecorsair/business/loot/SpaceObject;


# direct methods
.method constructor <init>(Ljava/lang/Object;ILfr/testudo/spacecorsair/business/loot/SpaceObject;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 864
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModQol$3;->val$listener:Ljava/lang/Object;

    iput p2, p0, Lfr/testudo/spacecorsair/mod/ModQol$3;->val$qty:I

    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModQol$3;->val$so:Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    iput-object p4, p0, Lfr/testudo/spacecorsair/mod/ModQol$3;->val$ctx:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 866
    # setter for: Lfr/testudo/spacecorsair/mod/ModQol;->sellBypass:Z
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->access$602(Z)Z

    .line 868
    :try_start_5
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModQol$3;->val$listener:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onItemPick"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 869
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 870
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModQol$3;->val$listener:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModQol$3;->val$qty:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModQol$3;->val$so:Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModQol$3;->val$ctx:Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_42} :catch_46
    .catchall {:try_start_5 .. :try_end_42} :catchall_4b

    .line 874
    # setter for: Lfr/testudo/spacecorsair/mod/ModQol;->sellBypass:Z
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModQol;->access$602(Z)Z

    .line 876
    :goto_45
    return-void

    .line 871
    :catch_46
    move-exception v0

    .line 874
    # setter for: Lfr/testudo/spacecorsair/mod/ModQol;->sellBypass:Z
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModQol;->access$602(Z)Z

    goto :goto_45

    :catchall_4b
    move-exception v0

    # setter for: Lfr/testudo/spacecorsair/mod/ModQol;->sellBypass:Z
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModQol;->access$602(Z)Z

    .line 875
    throw v0
.end method
