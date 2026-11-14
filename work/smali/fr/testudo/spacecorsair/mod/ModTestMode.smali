.class public final Lfr/testudo/spacecorsair/mod/ModTestMode;
.super Ljava/lang/Object;
.source "ModTestMode.java"


# static fields
.field static final CORES:I = 0x9

.field static final CREDITS:J = 0x3b9aca00L

.field static final CREDITS_LOW:J = 0x35a4e900L

.field static final LEVEL:I = 0x28

.field static final PARTS:I = 0x3e7

.field static final PREFS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "corsair_testmode_btn"

.field static final TAPS:I = 0xa

.field static final TAP_WINDOW_MS:J = 0x2710L

.field private static hullUntil:J

.field private static hulledShip:Ljava/lang/Object;

.field public static on:Z

.field private static tAt:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field private static tJump:Ljava/lang/String;

.field private static tMiss:Ljava/lang/String;

.field private static tapCount:I

.field private static final taps:[J

.field private static topMs:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "spacecorsair"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "modqol"

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->PREFS:[Ljava/lang/String;

    .line 361
    const/16 v0, 0xa

    new-array v0, v0, [J

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->taps:[J

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static achievementTap(Ljava/lang/Object;Lfr/testudo/spacecorsair/game/achievements/Achievement;)Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 366
    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->killByTheDev:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    if-eq p1, v2, :cond_7

    .line 377
    :goto_6
    return v0

    .line 368
    :cond_7
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 369
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->taps:[J

    const/4 v4, 0x1

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModTestMode;->taps:[J

    const/4 v6, 0x0

    const/16 v7, 0x9

    invoke-static {v0, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->taps:[J

    const/16 v4, 0x9

    aput-wide v2, v0, v4

    .line 371
    sget v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->tapCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->tapCount:I

    .line 372
    const-string v0, "v40test"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dev achievement tap "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lfr/testudo/spacecorsair/mod/ModTestMode;->tapCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    sget v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->tapCount:I

    const/16 v4, 0xa

    if-lt v0, v4, :cond_53

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->taps:[J

    const/4 v4, 0x0

    aget-wide v4, v0, v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v0, v2, v4

    if-gtz v0, :cond_53

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTestMode;->showButton(Landroid/app/Activity;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_53} :catch_55

    :cond_53
    :goto_53
    move v0, v1

    .line 377
    goto :goto_6

    .line 374
    :catch_55
    move-exception v0

    goto :goto_53
.end method

.method public static achievementsScreen(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 382
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->tapCount:I

    .line 383
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->on:Z

    if-eqz v0, :cond_c

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTestMode;->showButton(Landroid/app/Activity;)V

    .line 384
    :cond_c
    return-void
.end method

.method public static afterRestore()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 182
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->on:Z

    if-eqz v0, :cond_f

    const-string v0, "test"

    :goto_7
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModTestMode;->logState(Ljava/lang/String;)V

    .line 183
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->on:Z

    if-nez v0, :cond_12

    .line 213
    :cond_e
    :goto_e
    return-void

    .line 182
    :cond_f
    const-string v0, "main"

    goto :goto_7

    .line 185
    :cond_12
    :try_start_12
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    .line 186
    if-eqz v3, :cond_90

    .line 187
    const/16 v0, 0x28

    iput v0, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    .line 188
    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curXp:J

    .line 189
    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->init()V

    .line 191
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_SHIPS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    :cond_2c
    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 192
    if-eqz v0, :cond_2c

    iget-object v5, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c

    .line 193
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->hull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v5

    .line 194
    if-eqz v5, :cond_4d

    iget v5, v5, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    const/4 v6, 0x7

    if-eq v5, v6, :cond_2c

    .line 195
    :cond_4d
    iget-object v5, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 197
    goto :goto_2c

    .line 198
    :cond_56
    const-string v0, "v40test"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "level "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ships "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_90
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    .line 201
    if-eqz v2, :cond_106

    .line 202
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/LevelId;->values()[Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_9c
    if-ge v0, v4, :cond_b6

    aget-object v5, v3, v0

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModTestMode;->sector(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v6

    if-eqz v6, :cond_b3

    iget-object v6, v2, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->visitedLevels:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b3

    iget-object v6, v2, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->visitedLevels:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b3
    add-int/lit8 v0, v0, 0x1

    goto :goto_9c

    .line 203
    :cond_b6
    const/4 v0, 0x2

    new-array v3, v0, [Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    const/4 v0, 0x0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->pirateBaySmugglerPos:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    aput-object v4, v3, v0

    const/4 v0, 0x1

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->solarFieldSmugglerPos:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    aput-object v4, v3, v0

    .line 204
    array-length v4, v3

    move v0, v1

    :goto_c5
    if-ge v0, v4, :cond_d9

    aget-object v1, v3, v0

    iget-object v5, v2, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->unlockedMapAndTreasures:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d6

    iget-object v5, v2, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->unlockedMapAndTreasures:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d6
    add-int/lit8 v0, v0, 0x1

    goto :goto_c5

    .line 205
    :cond_d9
    const-string v0, "v40test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "map sectors "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->visitedLevels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/LevelId;->values()[Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_106
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModTestMode;->topUp()V

    .line 208
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->mainActivity:Lfr/testudo/spacecorsair/activity/Main;

    .line 209
    if-eqz v0, :cond_e

    const-string v1, "TEST MODE: this profile is separate from your normal save."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_11d
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_11d} :catch_11f

    goto/16 :goto_e

    .line 210
    :catch_11f
    move-exception v0

    .line 211
    const-string v1, "ModTestMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "grants "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e
.end method

.method public static beforeRestore()V
    .registers 7

    .prologue
    .line 68
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->mainActivity:Lfr/testudo/spacecorsair/activity/Main;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 69
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModTestMode;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 70
    new-instance v0, Ljava/io/File;

    const-string v1, "active"

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, "main"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModTestMode;->read(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    new-instance v1, Ljava/io/File;

    const-string v4, "pending"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lfr/testudo/spacecorsair/mod/ModTestMode;->read(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    if-eqz v1, :cond_96

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_96

    const-string v4, "main"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3d

    const-string v4, "test"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_96

    .line 73
    :cond_3d
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    const-string v5, "test"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e0

    .line 75
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModTestMode;->delete(Ljava/io/File;)V

    .line 77
    const-string v4, "v40test"

    const-string v5, "test profile discarded on logout"

    invoke-static {v4, v5}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :goto_54
    new-instance v4, Ljava/io/File;

    const-string v5, "active"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4, v1}, Lfr/testudo/spacecorsair/mod/ModTestMode;->write(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    new-instance v5, Ljava/io/File;

    const-string v6, "complete"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_73

    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModTestMode;->load(Landroid/content/Context;Ljava/io/File;)V

    .line 84
    :cond_73
    const-string v2, "ModTestMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switched "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " -> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 87
    :cond_96
    new-instance v2, Ljava/io/File;

    const-string v4, "pending"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 88
    const-string v2, "test"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModTestMode;->on:Z

    .line 89
    const-string v2, "v40test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "profile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_ff

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " (pending was "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :goto_df
    return-void

    .line 79
    :cond_e0
    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModTestMode;->store(Landroid/content/Context;Ljava/io/File;)V
    :try_end_e3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e3} :catch_e5

    goto/16 :goto_54

    .line 90
    :catch_e5
    move-exception v0

    .line 91
    const-string v1, "ModTestMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "profile swap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_df

    .line 89
    :cond_ff
    :try_start_ff
    const-string v0, ""
    :try_end_101
    .catch Ljava/lang/Throwable; {:try_start_ff .. :try_end_101} :catch_e5

    goto :goto_d4
.end method

.method public static canJumpTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)I
    .registers 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 322
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModPrologue;->active:Z

    if-eqz v2, :cond_7

    .line 327
    :cond_6
    :goto_6
    return v0

    .line 323
    :cond_7
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModTestMode;->on:Z

    if-nez v2, :cond_d

    move v0, v1

    goto :goto_6

    .line 325
    :cond_d
    :try_start_d
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTestMode;->sector(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v2, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_1b} :catch_1f

    if-eq v1, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    .line 326
    :catch_1f
    move-exception v0

    move v0, v1

    .line 327
    goto :goto_6
.end method

.method static confirm(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 453
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->on:Z

    if-eqz v0, :cond_35

    .line 454
    const-string v0, "Log out of test mode? The game restarts on your normal save, as it was when you logged in."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 456
    :goto_a
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 457
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 458
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->on:Z

    if-eqz v0, :cond_3c

    const-string v0, "LOG OUT"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1d
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModTestMode$4;

    invoke-direct {v2, p0}, Lfr/testudo/spacecorsair/mod/ModTestMode$4;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    .line 461
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 462
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 463
    return-void

    .line 455
    :cond_35
    const-string v0, "Log in to test mode? The game saves and restarts on a separate test profile: max level, everything unlocked, whole map visible, every mission repeatable, free instant jumps. Your normal save is kept apart and comes back when you log out."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 458
    :cond_3c
    const-string v0, "LOG IN"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d
.end method

.method static copyTree(Ljava/io/File;Ljava/io/File;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 140
    if-nez v1, :cond_8

    .line 155
    :cond_7
    return-void

    .line 141
    :cond_8
    array-length v2, v1

    :goto_9
    if-ge v0, v2, :cond_7

    aget-object v3, v1, v0

    .line 142
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModTestMode;->copyTree(Ljava/io/File;Ljava/io/File;)V

    .line 141
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 144
    :cond_25
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 145
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 147
    const/16 v4, 0x4000

    :try_start_31
    new-array v4, v4, [B

    .line 149
    :goto_33
    invoke-virtual {v5, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_46

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3d
    .catchall {:try_start_31 .. :try_end_3d} :catchall_3e

    goto :goto_33

    .line 151
    :catchall_3e
    move-exception v0

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 152
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 153
    throw v0

    .line 151
    :cond_46
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 152
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_22
.end method

.method public static couldJump(Lfr/testudo/spacecorsair/game/levels/LevelId;)I
    .registers 2

    .prologue
    .line 332
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->active:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->on:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_5

    :cond_c
    const/4 v0, -0x1

    goto :goto_5
.end method

.method static delete(Ljava/io/File;)V
    .registers 5

    .prologue
    .line 158
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 159
    if-eqz v1, :cond_12

    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_12

    aget-object v3, v1, v0

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModTestMode;->delete(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 160
    :cond_12
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 161
    return-void
.end method

.method private static fullHull(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 5

    .prologue
    .line 276
    if-eqz p0, :cond_d

    :try_start_2
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v0, :cond_d

    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_e

    .line 287
    :cond_d
    :goto_d
    return-void

    .line 277
    :cond_e
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 278
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 279
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModTestMode;->hulledShip:Ljava/lang/Object;

    if-eq v0, v1, :cond_27

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->hulledShip:Ljava/lang/Object;

    const-wide/16 v0, 0xbb8

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->hullUntil:J

    .line 280
    :cond_27
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->hullUntil:J

    cmp-long v0, v2, v0

    if-gtz v0, :cond_d

    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_d

    .line 281
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    .line 282
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->lifeInPourc:F

    .line 283
    const-string v0, "v40test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "full hull "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5b} :catch_5c

    goto :goto_d

    .line 284
    :catch_5c
    move-exception v0

    goto :goto_d
.end method

.method public static jumpCost(Lfr/testudo/spacecorsair/game/levels/LevelId;)I
    .registers 2

    .prologue
    .line 335
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->on:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, -0x1

    goto :goto_5
.end method

.method public static jumpTime()I
    .registers 1

    .prologue
    .line 338
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->on:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/16 v0, 0x1388

    goto :goto_5
.end method

.method static load(Landroid/content/Context;Ljava/io/File;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 114
    if-eqz v2, :cond_17

    array-length v4, v2

    move v0, v3

    :goto_d
    if-ge v0, v4, :cond_17

    aget-object v5, v2, v0

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModTestMode;->delete(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 115
    :cond_17
    new-instance v0, Ljava/io/File;

    const-string v2, "files"

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModTestMode;->copyTree(Ljava/io/File;Ljava/io/File;)V

    .line 116
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTestMode;->PREFS:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_25
    if-ge v2, v5, :cond_e8

    aget-object v1, v4, v2

    .line 117
    new-instance v6, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "prefs_"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ".ser"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 119
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_65

    .line 120
    new-instance v7, Ljava/io/ObjectInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 121
    :try_start_5c
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_62
    .catchall {:try_start_5c .. :try_end_62} :catchall_9d

    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V

    .line 123
    :cond_65
    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 124
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_79
    :goto_79
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 125
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 126
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    instance-of v8, v1, Ljava/lang/Boolean;

    if-eqz v8, :cond_a2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_79

    .line 121
    :catchall_9d
    move-exception v0

    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V

    throw v0

    .line 128
    :cond_a2
    instance-of v8, v1, Ljava/lang/Integer;

    if-eqz v8, :cond_b0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_79

    .line 129
    :cond_b0
    instance-of v8, v1, Ljava/lang/Long;

    if-eqz v8, :cond_be

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {v6, v0, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_79

    .line 130
    :cond_be
    instance-of v8, v1, Ljava/lang/Float;

    if-eqz v8, :cond_cc

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_79

    .line 131
    :cond_cc
    instance-of v8, v1, Ljava/lang/String;

    if-eqz v8, :cond_d6

    check-cast v1, Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_79

    .line 132
    :cond_d6
    instance-of v8, v1, Ljava/util/Set;

    if-eqz v8, :cond_79

    check-cast v1, Ljava/util/Set;

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    goto :goto_79

    .line 134
    :cond_e0
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 116
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_25

    .line 136
    :cond_e8
    return-void
.end method

.method static logState(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 218
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    .line 219
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    .line 220
    const-string v2, "v40test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " level "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " xp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curXp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ships "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " credits "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    .line 221
    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->getCredit()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " parts "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->parts()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " sectors "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 222
    if-nez v1, :cond_8e

    const/4 v0, -0x1

    :goto_6e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " done missions "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->doneMissions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :goto_8d
    return-void

    .line 222
    :cond_8e
    iget-object v0, v1, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->visitedLevels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_93} :catch_95

    move-result v0

    goto :goto_6e

    .line 223
    :catch_95
    move-exception v0

    .line 224
    const-string v1, "v40test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loaded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d
.end method

.method static read(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 165
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    .line 169
    :goto_6
    return-object p1

    .line 166
    :cond_7
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_27

    .line 167
    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_22

    move-result-object v0

    if-nez v0, :cond_1d

    move-object v0, p1

    :goto_18
    :try_start_18
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1b} :catch_27

    move-object p1, v0

    goto :goto_6

    :cond_1d
    :try_start_1d
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_22

    move-result-object v0

    goto :goto_18

    :catchall_22
    move-exception v0

    :try_start_23
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    throw v0
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_27} :catch_27

    .line 168
    :catch_27
    move-exception v0

    goto :goto_6
.end method

.method private static root(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    .prologue
    .line 63
    const-string v0, "corsair_profiles"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static sector(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z
    .registers 3

    .prologue
    .line 229
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FFA_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method static showButton(Landroid/app/Activity;)V
    .registers 12

    .prologue
    const/high16 v10, 0x40c00000    # 6.0f

    const/high16 v9, 0x41200000    # 10.0f

    const/high16 v8, 0x40800000    # 4.0f

    .line 390
    const v0, 0x1020002

    :try_start_9
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 391
    if-eqz v0, :cond_19

    const-string v1, "corsair_testmode_btn"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 450
    :cond_19
    :goto_19
    return-void

    .line 392
    :cond_1a
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 393
    const-string v1, "corsair_testmode_btn"

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 394
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModTestMode;->on:Z

    if-eqz v1, :cond_18b

    const-string v1, "LOG OUT"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2e
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 395
    const/4 v1, 0x2

    const/high16 v3, 0x41300000    # 11.0f

    invoke-virtual {v2, v1, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 396
    const/4 v1, -0x1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 397
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModTestMode;->on:Z

    if-eqz v1, :cond_193

    const v1, -0x3375d5d6

    :goto_42
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 398
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 399
    mul-float v3, v9, v1

    float-to-int v3, v3

    mul-float v4, v8, v1

    float-to-int v4, v4

    mul-float v5, v9, v1

    float-to-int v5, v5

    mul-float v6, v8, v1

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/Button;->setPadding(IIII)V

    .line 400
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setMinHeight(I)V

    .line 401
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setMinimumHeight(I)V

    .line 402
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setMinWidth(I)V

    .line 403
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setMinimumWidth(I)V

    .line 404
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/16 v6, 0x35

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 405
    const/4 v4, 0x0

    mul-float v5, v10, v1

    float-to-int v5, v5

    mul-float v6, v10, v1

    float-to-int v6, v6

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 406
    new-instance v4, Lfr/testudo/spacecorsair/mod/ModTestMode$1;

    invoke-direct {v4, p0}, Lfr/testudo/spacecorsair/mod/ModTestMode$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 412
    const-string v3, "corsair_testmode_btnintro"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 413
    const-string v3, "REPLAY INTRO"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 414
    const/4 v3, 0x2

    const/high16 v4, 0x41300000    # 11.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 415
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 416
    const v3, -0x33b5c596    # -5.3012904E7f

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 417
    mul-float v3, v9, v1

    float-to-int v3, v3

    mul-float v4, v8, v1

    float-to-int v4, v4

    mul-float v5, v9, v1

    float-to-int v5, v5

    mul-float v6, v8, v1

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/Button;->setPadding(IIII)V

    .line 418
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setMinHeight(I)V

    .line 419
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setMinimumHeight(I)V

    .line 420
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setMinWidth(I)V

    .line 421
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setMinimumWidth(I)V

    .line 422
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/16 v6, 0x35

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 423
    const/4 v4, 0x0

    const/high16 v5, 0x42200000    # 40.0f

    mul-float/2addr v5, v1

    float-to-int v5, v5

    mul-float v6, v10, v1

    float-to-int v6, v6

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 424
    new-instance v4, Lfr/testudo/spacecorsair/mod/ModTestMode$2;

    invoke-direct {v4, p0}, Lfr/testudo/spacecorsair/mod/ModTestMode$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 430
    const-string v3, "corsair_testmode_btnprologue"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 431
    const-string v3, "REPLAY PROLOGUE"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 432
    const/4 v3, 0x2

    const/high16 v4, 0x41300000    # 11.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 433
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 434
    const v3, -0x3395c5c6    # -6.140132E7f

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 435
    mul-float v3, v9, v1

    float-to-int v3, v3

    mul-float v4, v8, v1

    float-to-int v4, v4

    mul-float v5, v9, v1

    float-to-int v5, v5

    mul-float v6, v8, v1

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/Button;->setPadding(IIII)V

    .line 436
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setMinHeight(I)V

    .line 437
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setMinimumHeight(I)V

    .line 438
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setMinWidth(I)V

    .line 439
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setMinimumWidth(I)V

    .line 440
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/16 v6, 0x35

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 441
    const/4 v4, 0x0

    const/high16 v5, 0x42940000    # 74.0f

    mul-float/2addr v5, v1

    float-to-int v5, v5

    mul-float/2addr v1, v10

    float-to-int v1, v1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v1, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 442
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModTestMode$3;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/mod/ModTestMode$3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 446
    const-string v1, "v40test"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "button shown "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->on:Z

    if-eqz v0, :cond_198

    const-string v0, "logout"

    :goto_163
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_16e} :catch_170

    goto/16 :goto_19

    .line 447
    :catch_170
    move-exception v0

    .line 448
    const-string v1, "ModTestMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "button "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 394
    :cond_18b
    :try_start_18b
    const-string v1, "LOGIN"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2e

    .line 397
    :cond_193
    const v1, -0x33d5b596    # -4.464068E7f

    goto/16 :goto_42

    .line 446
    :cond_198
    const-string v0, "login"
    :try_end_19a
    .catch Ljava/lang/Throwable; {:try_start_18b .. :try_end_19a} :catch_170

    goto :goto_163
.end method

.method static store(Landroid/content/Context;Ljava/io/File;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModTestMode;->delete(Ljava/io/File;)V

    .line 98
    new-instance v0, Ljava/io/File;

    const-string v2, "files"

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModTestMode;->copyTree(Ljava/io/File;Ljava/io/File;)V

    .line 101
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModTestMode;->PREFS:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_19
    if-ge v0, v3, :cond_60

    aget-object v4, v2, v0

    .line 102
    new-instance v5, Ljava/util/HashMap;

    invoke-virtual {p0, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 103
    new-instance v6, Ljava/io/ObjectOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "prefs_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ".ser"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 104
    :try_start_52
    invoke-virtual {v6, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_5b

    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 104
    :catchall_5b
    move-exception v0

    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V

    throw v0

    .line 106
    :cond_60
    new-instance v0, Ljava/io/File;

    const-string v1, "complete"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, "1"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModTestMode;->write(Ljava/io/File;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method static switchTo(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 468
    :try_start_1
    const-string v0, "v40test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switch to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->storageManager:Lfr/testudo/spacecorsair/storage/StorageManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/storage/StorageManager;->save()V

    .line 470
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 471
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTestMode;->PREFS:[Ljava/lang/String;

    array-length v4, v3

    move v0, v1

    :goto_28
    if-ge v0, v4, :cond_45

    aget-object v5, v3, v0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "v40_flush"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v5, v6, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 472
    :cond_45
    new-instance v0, Ljava/io/File;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModTestMode;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    const-string v4, "pending"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lfr/testudo/spacecorsair/mod/ModTestMode;->write(Ljava/io/File;Ljava/lang/String;)V

    .line 473
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 474
    if-eqz v0, :cond_6a

    .line 475
    const v2, 0x10008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 476
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6a} :catch_75

    .line 483
    :cond_6a
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 484
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 485
    :goto_74
    return-void

    .line 478
    :catch_75
    move-exception v0

    .line 479
    const-string v1, "ModTestMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const-string v0, "Could not switch profiles."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_74
.end method

.method private static testJump(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 7

    .prologue
    .line 344
    const-string v0, "corsair_tmjump"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 345
    if-eqz v1, :cond_10

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->tJump:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 357
    :cond_10
    :goto_10
    return-void

    .line 346
    :cond_11
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModTestMode;->tJump:Ljava/lang/String;

    .line 348
    :try_start_13
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    .line 349
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->energyCell:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->getQuantityOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v2

    .line 350
    const-string v3, "v40test"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "jump request "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v5, v5, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v5, v5, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v5, v5, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " canJump="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 351
    invoke-static {v0}, Lfr/testudo/spacecorsair/business/world/PathFinder;->canJumpTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cost="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/world/PathFinder;->jumpCost(Lfr/testudo/spacecorsair/game/levels/LevelId;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cells="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " t="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 352
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 350
    invoke-static {v3, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->initHyperdriveJumpRequest(Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_88} :catch_89

    goto :goto_10

    .line 354
    :catch_89
    move-exception v0

    .line 355
    const-string v2, "v40test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad jump "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10
.end method

.method private static testMissions()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 294
    const-string v0, "corsair_tmmiss"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 295
    if-eqz v3, :cond_12

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->tMiss:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 316
    :cond_12
    :goto_12
    return-void

    .line 296
    :cond_13
    sput-object v3, Lfr/testudo/spacecorsair/mod/ModTestMode;->tMiss:Ljava/lang/String;

    .line 298
    :try_start_15
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 299
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    .line 300
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    invoke-virtual {v4, v0}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->getAvaillableMission(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/util/List;

    move-result-object v0

    .line 301
    array-length v5, v2

    if-le v5, v6, :cond_f5

    const-string v5, "done"

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f5

    .line 303
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_44
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->addMissionToDoneList(Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_55} :catch_56

    goto :goto_44

    .line 313
    :catch_56
    move-exception v0

    .line 314
    const-string v1, "v40test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad missions "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 304
    :cond_7a
    const/4 v0, 0x0

    :try_start_7b
    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    invoke-virtual {v4, v0}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->getAvaillableMission(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    .line 307
    :goto_8a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_93
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 309
    sget-object v6, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v6, v6, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    iget-object v7, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->hasDoneMission(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ad

    add-int/lit8 v1, v1, 0x1

    .line 310
    :cond_ad
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v6, 0x2c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_93

    .line 312
    :cond_b9
    const-string v0, "v40test"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "offered at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " (done "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f3
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_f3} :catch_56

    goto/16 :goto_12

    :cond_f5
    move-object v2, v0

    goto :goto_8a
.end method

.method public static tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 8

    .prologue
    .line 254
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->on:Z

    if-nez v0, :cond_5

    .line 268
    :cond_4
    :goto_4
    return-void

    .line 255
    :cond_5
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTestMode;->fullHull(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 256
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->topMs:J

    sub-long/2addr v0, p1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->topMs:J

    .line 257
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->topMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    .line 258
    const-wide/16 v0, 0x1f4

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->topMs:J

    .line 259
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModTestMode;->topUp()V

    .line 260
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTestMode;->testJump(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 261
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModTestMode;->testMissions()V

    .line 263
    :try_start_22
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 264
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModTestMode;->tAt:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eq v0, v1, :cond_4

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->tAt:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v1, "v40test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sector "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " cells "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->energyCell:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->getQuantityOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " t="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_6c} :catch_6d

    goto :goto_4

    .line 265
    :catch_6d
    move-exception v0

    goto :goto_4
.end method

.method static topUp()V
    .registers 8

    .prologue
    const/16 v7, 0x3e7

    const/16 v6, 0x9

    .line 234
    :try_start_4
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    .line 235
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getCredit()J

    move-result-wide v2

    const-wide/32 v4, 0x35a4e900

    cmp-long v1, v2, v4

    if-gez v1, :cond_23

    const-wide/32 v2, 0x3b9aca00

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getCredit()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->addCredit(I)V

    .line 236
    :cond_23
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 237
    if-nez v3, :cond_2a

    .line 248
    :cond_29
    :goto_29
    return-void

    .line 238
    :cond_2a
    const/4 v0, 0x0

    .line 239
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->parts()I

    move-result v1

    if-ge v1, v7, :cond_3d

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "v35_parts"

    const/16 v2, 0x3e7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 240
    :cond_3d
    const/4 v1, 0x0

    move v2, v1

    :goto_3f
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v1, v1

    if-gt v2, v1, :cond_7c

    .line 241
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v1, v1

    if-ge v2, v1, :cond_74

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v1, v1, v2

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    .line 242
    :goto_4f
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV35;->cores(Ljava/lang/String;)I

    move-result v4

    if-ge v4, v6, :cond_70

    if-eqz v0, :cond_77

    :goto_57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "v35_core_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x9

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 240
    :cond_70
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3f

    .line 241
    :cond_74
    const-string v1, "neutral"

    goto :goto_4f

    .line 242
    :cond_77
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_57

    .line 244
    :cond_7c
    if-eqz v0, :cond_29

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_81} :catch_82

    goto :goto_29

    .line 245
    :catch_82
    move-exception v0

    goto :goto_29
.end method

.method static write(Ljava/io/File;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 174
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 175
    :try_start_5
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_19

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 176
    return-void

    .line 175
    :catchall_19
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v0
.end method
