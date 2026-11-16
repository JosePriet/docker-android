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
    .line 149
    iput-wide p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$2;->val$gen:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v2, 0x1

    .line 151
    const/4 v0, 0x0

    .line 153
    :try_start_2
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_7} :catch_d3
    .catchall {:try_start_2 .. :try_end_7} :catchall_c6

    .line 154
    const/4 v0, 0x1

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 155
    iget-wide v4, p0, Lfr/testudo/spacecorsair/mod/ModLan$2;->val$gen:J

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$100()J
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_10} :catch_b6
    .catchall {:try_start_8 .. :try_end_10} :catchall_cf

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1b

    .line 169
    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 171
    :cond_1a
    :goto_1a
    return-void

    .line 156
    :cond_1b
    :try_start_1b
    # setter for: Lfr/testudo/spacecorsair/mod/ModLan;->beacon:Ljava/net/DatagramSocket;
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->access$502(Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;

    .line 157
    :goto_1e
    iget-wide v4, p0, Lfr/testudo/spacecorsair/mod/ModLan$2;->val$gen:J

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$100()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_bf

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-nez v0, :cond_bf

    .line 158
    const-string v0, "Corsair"
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_2e} :catch_b6
    .catchall {:try_start_1b .. :try_end_2e} :catchall_cf

    .line 159
    :try_start_2e
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_38} :catch_d5
    .catchall {:try_start_2e .. :try_end_38} :catchall_cf

    .line 160
    :goto_38
    :try_start_38
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

    if-eqz v0, :cond_ad

    move v0, v2

    :goto_7c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 161
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->broadcasts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_92
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_af

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_9e} :catch_b6
    .catchall {:try_start_38 .. :try_end_9e} :catchall_cf

    .line 162
    :try_start_9e
    new-instance v5, Ljava/net/DatagramPacket;

    array-length v6, v3

    const v7, 0x9089

    invoke-direct {v5, v3, v6, v0, v7}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {v1, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_aa
    .catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_aa} :catch_ab
    .catchall {:try_start_9e .. :try_end_aa} :catchall_cf

    goto :goto_92

    :catch_ab
    move-exception v0

    goto :goto_92

    .line 160
    :cond_ad
    const/4 v0, 0x0

    goto :goto_7c

    .line 164
    :cond_af
    const-wide/16 v4, 0x3e8

    :try_start_b1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b4
    .catch Ljava/lang/Throwable; {:try_start_b1 .. :try_end_b4} :catch_b6
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_cf

    goto/16 :goto_1e

    .line 166
    :catch_b6
    move-exception v0

    move-object v0, v1

    .line 169
    :goto_b8
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    goto/16 :goto_1a

    :cond_bf
    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    goto/16 :goto_1a

    :catchall_c6
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    :goto_c9
    if-eqz v3, :cond_ce

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    .line 170
    :cond_ce
    throw v2

    .line 169
    :catchall_cf
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    goto :goto_c9

    .line 166
    :catch_d3
    move-exception v1

    goto :goto_b8

    .line 159
    :catch_d5
    move-exception v3

    goto/16 :goto_38
.end method
