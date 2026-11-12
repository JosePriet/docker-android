.class public final Lfr/testudo/spacecorsair/mod/ModNotify;
.super Ljava/lang/Object;
.source "ModNotify.java"


# static fields
.field static final AI:Ljava/lang/String; = "ai"

.field private static final DROID_IMAGE:I = 0x7f020054

.field private static final DROID_NAME:I = 0x7f070187

.field private static final GAP_MS:J = 0xfa0L

.field private static final MAX_MERGE:I = 0x3

.field private static final MAX_QUEUE:I = 0xc

.field private static volatile nextAt:J

.field private static final queue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile showSince:J

.field private static volatile showing:Z

.field private static testAt:J

.field private static testOn:Z

.field private static testSeen:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModNotify;->queue:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 23
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModNotify;->open(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 23
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModNotify;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Z)V
    .registers 1

    .prologue
    .line 23
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModNotify;->done(Z)V

    return-void
.end method

.method private static done(Z)V
    .registers 5

    .prologue
    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-eqz p0, :cond_f

    const-wide/16 v0, 0xfa0

    :goto_8
    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModNotify;->nextAt:J

    .line 169
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModNotify;->showing:Z

    .line 170
    return-void

    .line 168
    :cond_f
    const-wide/16 v0, 0x3e8

    goto :goto_8
.end method

.method private static log(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 53
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModNotify;->testSeen:Z

    if-eqz v0, :cond_1c

    const-string v0, "ModTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_1c
    return-void
.end method

.method private static open(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 120
    :try_start_2
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v6, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    .line 121
    move-object v0, p0

    check-cast v0, Lfr/testudo/spacecorsair/activity/Main;

    move-object v1, v0

    .line 122
    iget-object v4, v6, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iget-boolean v4, v4, Lfr/testudo/spacecorsair/engine/GameThread;->paused:Z

    if-nez v4, :cond_1c

    iget-object v4, v1, Lfr/testudo/spacecorsair/activity/Main;->currentDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_3f

    iget-object v4, v1, Lfr/testudo/spacecorsair/activity/Main;->currentDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 123
    :cond_1c
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModNotify;->queue:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1f} :catch_37

    :try_start_1f
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModNotify;->queue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_34

    .line 124
    const/4 v1, 0x0

    :try_start_30
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModNotify;->done(Z)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_33} :catch_37

    .line 165
    :goto_33
    return-void

    .line 123
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    :try_start_36
    throw v1
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_37} :catch_37

    .line 161
    :catch_37
    move-exception v1

    .line 162
    :try_start_38
    invoke-static {}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->resume()V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3b} :catch_f2

    .line 163
    :goto_3b
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModNotify;->done(Z)V

    goto :goto_33

    .line 128
    :cond_3f
    const/4 v4, 0x0

    .line 129
    :try_start_40
    const-string v5, "ai"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ac

    .line 130
    const v5, 0x7f070187

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 136
    :goto_4f
    invoke-static {p2}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\n"

    const-string v9, "<br>"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 137
    iget-object v8, v6, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    invoke-virtual {v8}, Lfr/testudo/spacecorsair/engine/GameThread;->waitCommitPhysicEnded()V

    .line 138
    invoke-virtual {v6}, Lfr/testudo/spacecorsair/game/Game;->pause()V

    .line 139
    const v6, 0x7f020054

    new-instance v8, Lfr/testudo/spacecorsair/mod/ModNotify$2;

    invoke-direct {v8}, Lfr/testudo/spacecorsair/mod/ModNotify$2;-><init>()V

    invoke-static {p0, v5, v6, v7, v8}, Lfr/testudo/spacecorsair/utils/InGameDialog;->show(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v5

    .line 155
    if-eqz v4, :cond_86

    .line 156
    const v6, 0x7f0a0030

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 157
    if-eqz v6, :cond_86

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    :cond_86
    iput-object v5, v1, Lfr/testudo/spacecorsair/activity/Main;->currentDialog:Landroid/app/Dialog;

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shown "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " portrait="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v4, :cond_f0

    move v1, v2

    :goto_a0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModNotify;->log(Ljava/lang/String;)V

    goto :goto_33

    .line 132
    :cond_ac
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v4

    .line 133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModFactionData;->COMMANDER:[Ljava/lang/String;

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModFaction;->commander(Ljava/lang/String;)I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "  \u00b7  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v4, v7, v4

    iget-object v4, v4, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "portrait_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x100

    invoke-static {p0, v4, v7}, Lfr/testudo/spacecorsair/mod/ModComms;->asset(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_ed
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_ed} :catch_37

    move-result-object v4

    goto/16 :goto_4f

    :cond_f0
    move v1, v3

    .line 160
    goto :goto_a0

    .line 162
    :catch_f2
    move-exception v1

    goto/16 :goto_3b
.end method

.method static push(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 40
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_c

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->active:Z

    if-eqz v0, :cond_d

    .line 45
    :cond_c
    :goto_c
    return-void

    .line 41
    :cond_d
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModNotify;->queue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 42
    :try_start_10
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModNotify;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0xc

    if-lt v0, v2, :cond_20

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModNotify;->queue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 43
    :cond_20
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModNotify;->queue:Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    if-nez p0, :cond_2a

    const-string p0, "ai"

    :cond_2a
    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    monitor-exit v1

    goto :goto_c

    :catchall_34
    move-exception v0

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_10 .. :try_end_36} :catchall_34

    throw v0
.end method

.method static tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 59
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModNotify;->testAt:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    cmp-long v3, v4, v6

    if-lez v3, :cond_33

    .line 60
    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModNotify;->testAt:J

    .line 61
    const-string v0, "corsair_notify"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v0

    .line 62
    if-eqz v0, :cond_31

    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModNotify;->testOn:Z

    if-nez v1, :cond_31

    .line 63
    sput-boolean v9, Lfr/testudo/spacecorsair/mod/ModNotify;->testSeen:Z

    .line 64
    const-string v1, "TEST: astrodroid notice (system event)."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 65
    const-string v1, "TEST: Spartan commander notice (faction event)."

    const-string v3, "spartan"

    invoke-static {v1, v3}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v1, "queued 2"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModNotify;->log(Ljava/lang/String;)V

    .line 68
    :cond_31
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModNotify;->testOn:Z

    .line 70
    :cond_33
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModNotify;->showing:Z

    if-eqz v0, :cond_59

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModNotify;->showSince:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x7530

    cmp-long v0, v0, v4

    if-gez v0, :cond_45

    .line 116
    :cond_44
    :goto_44
    return-void

    .line 74
    :cond_45
    :try_start_45
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->mainActivity:Lfr/testudo/spacecorsair/activity/Main;

    .line 75
    if-eqz v0, :cond_57

    iget-object v1, v0, Lfr/testudo/spacecorsair/activity/Main;->currentDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_57

    iget-object v0, v0, Lfr/testudo/spacecorsair/activity/Main;->currentDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_54} :catch_155

    move-result v0

    if-nez v0, :cond_44

    .line 77
    :cond_57
    :goto_57
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModNotify;->showing:Z

    .line 79
    :cond_59
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModNotify;->queue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 80
    :try_start_5c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModNotify;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_69

    monitor-exit v1

    goto :goto_44

    .line 81
    :catchall_66
    move-exception v0

    monitor-exit v1
    :try_end_68
    .catchall {:try_start_5c .. :try_end_68} :catchall_66

    throw v0

    :cond_69
    :try_start_69
    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_66

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 83
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModNotify;->nextAt:J

    cmp-long v0, v4, v0

    if-ltz v0, :cond_44

    .line 85
    :try_start_74
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->active:Z

    if-eqz v0, :cond_87

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModNotify;->queue:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_7b} :catch_85

    :try_start_7b
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModNotify;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1

    goto :goto_44

    :catchall_82
    move-exception v0

    monitor-exit v1
    :try_end_84
    .catchall {:try_start_7b .. :try_end_84} :catchall_82

    :try_start_84
    throw v0

    .line 92
    :catch_85
    move-exception v0

    goto :goto_44

    .line 86
    :cond_87
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModIntro;->isActive()Z

    move-result v0

    if-nez v0, :cond_44

    const/4 v0, 0x0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->noDialog(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 87
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    .line 88
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->mainActivity:Lfr/testudo/spacecorsair/activity/Main;

    .line 89
    if-eqz v0, :cond_44

    if-eqz v1, :cond_44

    iget-boolean v3, v0, Lfr/testudo/spacecorsair/game/Game;->started:Z

    if-eqz v3, :cond_44

    iget-boolean v3, v0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v3, :cond_44

    iget-object v3, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    if-eqz v3, :cond_44

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/engine/GameThread;->paused:Z

    if-nez v0, :cond_44

    .line 90
    if-eqz p0, :cond_44

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v0, :cond_44

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-nez v0, :cond_44

    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-lez v0, :cond_44

    .line 91
    iget-object v0, v1, Lfr/testudo/spacecorsair/activity/Main;->currentDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_cf

    iget-object v0, v1, Lfr/testudo/spacecorsair/activity/Main;->currentDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z
    :try_end_cc
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_cc} :catch_85

    move-result v0

    if-nez v0, :cond_44

    .line 96
    :cond_cf
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    sget-object v7, Lfr/testudo/spacecorsair/mod/ModNotify;->queue:Ljava/util/ArrayList;

    monitor-enter v7

    .line 98
    :try_start_d7
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModNotify;->queue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v8, v0, v1

    move v1, v2

    move v3, v2

    .line 100
    :goto_e5
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModNotify;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_11b

    const/4 v0, 0x3

    if-ge v3, v0, :cond_11b

    .line 101
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModNotify;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 102
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_105

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e5

    .line 103
    :cond_105
    if-lez v3, :cond_10c

    const-string v2, "\n\n"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :cond_10c
    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModNotify;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 106
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .line 107
    goto :goto_e5

    .line 108
    :cond_11b
    monitor-exit v7
    :try_end_11c
    .catchall {:try_start_d7 .. :try_end_11c} :catchall_152

    .line 109
    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModNotify;->showSince:J

    .line 110
    sput-boolean v9, Lfr/testudo/spacecorsair/mod/ModNotify;->showing:Z

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModNotify;->log(Ljava/lang/String;)V

    .line 112
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->mainActivity:Lfr/testudo/spacecorsair/activity/Main;

    .line 113
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModNotify$1;

    invoke-direct {v1, v0, v8, v6}, Lfr/testudo/spacecorsair/mod/ModNotify$1;-><init>(Lfr/testudo/spacecorsair/activity/Main;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/activity/Main;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_44

    .line 108
    :catchall_152
    move-exception v0

    :try_start_153
    monitor-exit v7
    :try_end_154
    .catchall {:try_start_153 .. :try_end_154} :catchall_152

    throw v0

    .line 76
    :catch_155
    move-exception v0

    goto/16 :goto_57
.end method
