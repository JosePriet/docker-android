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
    .line 141
    iput-wide p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$2;->val$gen:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v1, 0x1

    .line 144
    :try_start_1
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V

    .line 145
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 146
    # setter for: Lfr/testudo/spacecorsair/mod/ModLan;->beacon:Ljava/net/DatagramSocket;
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLan;->access$502(Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;

    .line 147
    :goto_d
    iget-wide v4, p0, Lfr/testudo/spacecorsair/mod/ModLan$2;->val$gen:J

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$100()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_b4

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-nez v0, :cond_b4

    .line 148
    const-string v0, "Corsair"
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1d} :catch_a5
    .catchall {:try_start_1 .. :try_end_1d} :catchall_c2

    .line 149
    :try_start_1d
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_27} :catch_d1
    .catchall {:try_start_1d .. :try_end_27} :catchall_c2

    .line 150
    :goto_27
    :try_start_27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SCLAN2|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myNick()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-eqz v0, :cond_9c

    move v0, v1

    :goto_6b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 151
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->broadcasts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_81
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_8d} :catch_a5
    .catchall {:try_start_27 .. :try_end_8d} :catchall_c2

    .line 152
    :try_start_8d
    new-instance v5, Ljava/net/DatagramPacket;

    array-length v6, v3

    const v7, 0x9089

    invoke-direct {v5, v3, v6, v0, v7}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {v2, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_99} :catch_9a
    .catchall {:try_start_8d .. :try_end_99} :catchall_c2

    goto :goto_81

    :catch_9a
    move-exception v0

    goto :goto_81

    .line 150
    :cond_9c
    const/4 v0, 0x0

    goto :goto_6b

    .line 154
    :cond_9e
    const-wide/16 v4, 0x3e8

    :try_start_a0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_a0 .. :try_end_a3} :catch_a5
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_c2

    goto/16 :goto_d

    .line 156
    :catch_a5
    move-exception v0

    .line 159
    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->beacon:Ljava/net/DatagramSocket;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$500()Ljava/net/DatagramSocket;

    move-result-object v0

    if-eqz v0, :cond_b3

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->beacon:Ljava/net/DatagramSocket;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$500()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 161
    :cond_b3
    :goto_b3
    return-void

    .line 159
    :cond_b4
    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->beacon:Ljava/net/DatagramSocket;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$500()Ljava/net/DatagramSocket;

    move-result-object v0

    if-eqz v0, :cond_b3

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->beacon:Ljava/net/DatagramSocket;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$500()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    goto :goto_b3

    :catchall_c2
    move-exception v0

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->beacon:Ljava/net/DatagramSocket;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$500()Ljava/net/DatagramSocket;

    move-result-object v1

    if-eqz v1, :cond_d0

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->beacon:Ljava/net/DatagramSocket;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$500()Ljava/net/DatagramSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 160
    :cond_d0
    throw v0

    .line 149
    :catch_d1
    move-exception v3

    goto/16 :goto_27
.end method
