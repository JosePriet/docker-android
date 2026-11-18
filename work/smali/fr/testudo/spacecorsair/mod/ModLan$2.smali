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
    .line 210
    iput-wide p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$2;->val$gen:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 212
    const/4 v0, 0x0

    .line 214
    :try_start_3
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8} :catch_e5
    .catchall {:try_start_3 .. :try_end_8} :catchall_d8

    .line 215
    const/4 v0, 0x1

    :try_start_9
    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 216
    iget-wide v4, p0, Lfr/testudo/spacecorsair/mod/ModLan$2;->val$gen:J

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$100()J
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_11} :catch_c8
    .catchall {:try_start_9 .. :try_end_11} :catchall_e1

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1c

    .line 230
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 232
    :cond_1b
    :goto_1b
    return-void

    .line 217
    :cond_1c
    :try_start_1c
    # setter for: Lfr/testudo/spacecorsair/mod/ModLan;->beacon:Ljava/net/DatagramSocket;
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->access$502(Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;

    .line 218
    :goto_1f
    iget-wide v4, p0, Lfr/testudo/spacecorsair/mod/ModLan$2;->val$gen:J

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$100()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_d1

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-nez v0, :cond_d1

    .line 219
    const-string v0, "Corsair"
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_2f} :catch_c8
    .catchall {:try_start_1c .. :try_end_2f} :catchall_e1

    .line 220
    :try_start_2f
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v4, v4, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v4, v4, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v4, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_39} :catch_e7
    .catchall {:try_start_2f .. :try_end_39} :catchall_e1

    .line 221
    :goto_39
    :try_start_39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SCLAN2|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myNick()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-eqz v0, :cond_bd

    move v0, v2

    :goto_7d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->lanPub:Z

    if-eqz v0, :cond_bf

    move v0, v2

    :goto_8c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "UTF-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 222
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->broadcasts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;
    :try_end_ae
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_ae} :catch_c8
    .catchall {:try_start_39 .. :try_end_ae} :catchall_e1

    .line 223
    :try_start_ae
    new-instance v6, Ljava/net/DatagramPacket;

    array-length v7, v4

    const v8, 0x9089

    invoke-direct {v6, v4, v7, v0, v8}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {v1, v6}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_ba
    .catch Ljava/lang/Throwable; {:try_start_ae .. :try_end_ba} :catch_bb
    .catchall {:try_start_ae .. :try_end_ba} :catchall_e1

    goto :goto_a2

    :catch_bb
    move-exception v0

    goto :goto_a2

    :cond_bd
    move v0, v3

    .line 221
    goto :goto_7d

    :cond_bf
    move v0, v3

    goto :goto_8c

    .line 225
    :cond_c1
    const-wide/16 v4, 0x3e8

    :try_start_c3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c6
    .catch Ljava/lang/Throwable; {:try_start_c3 .. :try_end_c6} :catch_c8
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_e1

    goto/16 :goto_1f

    .line 227
    :catch_c8
    move-exception v0

    move-object v0, v1

    .line 230
    :goto_ca
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    goto/16 :goto_1b

    :cond_d1
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    goto/16 :goto_1b

    :catchall_d8
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    :goto_db
    if-eqz v3, :cond_e0

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    .line 231
    :cond_e0
    throw v2

    .line 230
    :catchall_e1
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    goto :goto_db

    .line 227
    :catch_e5
    move-exception v1

    goto :goto_ca

    .line 220
    :catch_e7
    move-exception v4

    goto/16 :goto_39
.end method
