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
    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-eqz p0, :cond_f

    const-wide/16 v0, 0xfa0

    :goto_8
    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModNotify;->nextAt:J

    .line 181
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModNotify;->showing:Z

    .line 182
    return-void

    .line 180
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
    .registers 14

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 119
    .line 121
    :try_start_3
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v7, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    .line 122
    move-object v0, p0

    check-cast v0, Lfr/testudo/spacecorsair/activity/Main;

    move-object v1, v0

    .line 123
    sget-object v5, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v5, v5, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 124
    iget-object v6, v7, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iget-boolean v6, v6, Lfr/testudo/spacecorsair/engine/GameThread;->paused:Z

    if-nez v6, :cond_2b

    iget-boolean v6, v7, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v6, :cond_2b

    if-eqz v5, :cond_2b

    iget-boolean v5, v5, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-nez v5, :cond_2b

    iget-object v5, v1, Lfr/testudo/spacecorsair/activity/Main;->currentDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_6e

    iget-object v5, v1, Lfr/testudo/spacecorsair/activity/Main;->currentDialog:Landroid/app/Dialog;

    .line 125
    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 126
    :cond_2b
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModNotify;->queue:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_2e} :catch_5d

    .line 127
    :try_start_2e
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModNotify;->queue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v5, 0xc

    if-lt v1, v5, :cond_45

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModNotify;->queue:Ljava/util/ArrayList;

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModNotify;->queue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 128
    :cond_45
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModNotify;->queue:Ljava/util/ArrayList;

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 129
    monitor-exit v4
    :try_end_55
    .catchall {:try_start_2e .. :try_end_55} :catchall_5a

    .line 130
    const/4 v1, 0x0

    :try_start_56
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModNotify;->done(Z)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_59} :catch_5d

    .line 177
    :cond_59
    :goto_59
    return-void

    .line 129
    :catchall_5a
    move-exception v1

    :try_start_5b
    monitor-exit v4
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    :try_start_5c
    throw v1
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5d} :catch_5d

    .line 171
    :catch_5d
    move-exception v1

    move-object v1, v2

    .line 172
    :goto_5f
    if-eqz v1, :cond_67

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_59

    .line 174
    :cond_67
    :try_start_67
    invoke-static {}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->resume()V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_6a} :catch_125

    .line 175
    :goto_6a
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModNotify;->done(Z)V

    goto :goto_59

    .line 135
    :cond_6e
    :try_start_6e
    const-string v5, "ai"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_df

    .line 136
    const v5, 0x7f070187

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v5, v2

    .line 142
    :goto_7e
    invoke-static {p2}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "\n"

    const-string v10, "<br>"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 143
    iget-object v9, v7, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    invoke-virtual {v9}, Lfr/testudo/spacecorsair/engine/GameThread;->waitCommitPhysicEnded()V

    .line 144
    invoke-virtual {v7}, Lfr/testudo/spacecorsair/game/Game;->pause()V

    .line 145
    const v7, 0x7f020054

    new-instance v9, Lfr/testudo/spacecorsair/mod/ModNotify$2;

    invoke-direct {v9}, Lfr/testudo/spacecorsair/mod/ModNotify$2;-><init>()V

    invoke-static {p0, v6, v7, v8, v9}, Lfr/testudo/spacecorsair/utils/InGameDialog;->show(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Runnable;)Landroid/app/Dialog;
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_9d} :catch_5d

    move-result-object v2

    .line 161
    :try_start_9e
    iput-object v2, v1, Lfr/testudo/spacecorsair/activity/Main;->currentDialog:Landroid/app/Dialog;
    :try_end_a0
    .catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_a0} :catch_dc

    .line 162
    if-eqz v5, :cond_b7

    .line 164
    const v1, 0x7f0a0030

    :try_start_a5
    invoke-virtual {v2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 165
    if-eqz v1, :cond_b7

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_b7
    .catch Ljava/lang/Throwable; {:try_start_a5 .. :try_end_b7} :catch_128

    .line 170
    :cond_b7
    :goto_b7
    :try_start_b7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shown "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " portrait="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v5, :cond_123

    move v1, v3

    :goto_cf
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModNotify;->log(Ljava/lang/String;)V
    :try_end_da
    .catch Ljava/lang/Throwable; {:try_start_b7 .. :try_end_da} :catch_dc

    goto/16 :goto_59

    .line 171
    :catch_dc
    move-exception v1

    move-object v1, v2

    goto :goto_5f

    .line 138
    :cond_df
    :try_start_df
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v5

    .line 139
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModFactionData;->COMMANDER:[Ljava/lang/String;

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModFaction;->commander(Ljava/lang/String;)I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "  \u00b7  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v5, v8, v5

    iget-object v5, v5, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 140
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "portrait_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x100

    invoke-static {p0, v5, v8}, Lfr/testudo/spacecorsair/mod/ModComms;->asset(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_120
    .catch Ljava/lang/Throwable; {:try_start_df .. :try_end_120} :catch_5d

    move-result-object v5

    goto/16 :goto_7e

    :cond_123
    move v1, v4

    .line 170
    goto :goto_cf

    .line 174
    :catch_125
    move-exception v1

    goto/16 :goto_6a

    .line 166
    :catch_128
    move-exception v1

    goto :goto_b7
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
