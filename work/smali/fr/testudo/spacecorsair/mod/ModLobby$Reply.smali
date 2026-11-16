.class final Lfr/testudo/spacecorsair/mod/ModLobby$Reply;
.super Ljava/lang/Object;
.source "ModLobby.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModLobby;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reply"
.end annotation


# instance fields
.field final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field first:Ljava/lang/String;

.field final rows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field status:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->first:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->f:Ljava/util/HashMap;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->rows:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 48
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_c

    const-string v0, ""

    :cond_c
    return-object v0
.end method

.method ok()Z
    .registers 3

    .prologue
    .line 46
    const-string v0, "ok"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->first:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
