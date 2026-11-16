.class Lfr/testudo/spacecorsair/mod/ModLan$2;
.super Ljava/lang/Object;
.source "ModLan.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLan;->host()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$gen:J


# direct methods
.method constructor <init>(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 139
    iput-wide p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$2;->val$gen:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 142
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    .line 143
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 144
    # setter for: Lfr/testudo/spacecorsair/mod/ModLan;->beacon:Ljava/net/DatagramSocket;
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->access$502(Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;

    .line 145
    :goto_c
    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModLan$2;->val$gen:J

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$100()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_77

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-nez v0, :cond_77

    .line 146
    const-string v0, "Corsair"
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_68
    .catchall {:try_start_0 .. :try_end_1c} :catchall_85

    .line 147
    :try_start_1c
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_26} :catch_94
    .catchall {:try_start_1c .. :try_end_26} :catchall_85

    .line 148
    :goto_26
    :try_start_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCLAN1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 149
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->broadcasts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_47
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_53} :catch_68
    .catchall {:try_start_26 .. :try_end_53} :catchall_85

    .line 150
    :try_start_53
    new-instance v4, Ljava/net/DatagramPacket;

    array-length v5, v2

    const v6, 0x9089

    invoke-direct {v4, v2, v5, v0, v6}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {v1, v4}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_5f} :catch_60
    .catchall {:try_start_53 .. :try_end_5f} :catchall_85

    goto :goto_47

    :catch_60
    move-exception v0

    goto :goto_47

    .line 152
    :cond_62
    const-wide/16 v2, 0x3e8

    :try_start_64
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_67} :catch_68
    .catchall {:try_start_64 .. :try_end_67} :catchall_85

    goto :goto_c

    .line 154
    :catch_68
    move-exception v0

    .line 157
    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->beacon:Ljava/net/DatagramSocket;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$500()Ljava/net/DatagramSocket;

    move-result-object v0

    if-eqz v0, :cond_76

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->beacon:Ljava/net/DatagramSocket;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$500()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 159
    :cond_76
    :goto_76
    return-void

    .line 157
    :cond_77
    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->beacon:Ljava/net/DatagramSocket;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$500()Ljava/net/DatagramSocket;

    move-result-object v0

    if-eqz v0, :cond_76

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->beacon:Ljava/net/DatagramSocket;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$500()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    goto :goto_76

    :catchall_85
    move-exception v0

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->beacon:Ljava/net/DatagramSocket;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$500()Ljava/net/DatagramSocket;

    move-result-object v1

    if-eqz v1, :cond_93

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->beacon:Ljava/net/DatagramSocket;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$500()Ljava/net/DatagramSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 158
    :cond_93
    throw v0

    .line 147
    :catch_94
    move-exception v2

    goto :goto_26
.end method
