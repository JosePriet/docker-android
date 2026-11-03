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
    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "spacecorsair"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "modqol"

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->PREFS:[Ljava/lang/String;

    .line 353
    const/16 v0, 0xa

    new-array v0, v0, [J

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->taps:[J

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static achievementTap(Ljava/lang/Object;Lfr/testudo/spacecorsair/game/achievements/Achievement;)Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 358
    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->killByTheDev:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    if-eq p1, v2, :cond_7

    .line 369
    :goto_6
    return v0

    .line 360
    :cond_7
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 361
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->taps:[J

    const/4 v4, 0x1

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModTestMode;->taps:[J

    const/4 v6, 0x0

    const/16 v7, 0x9

    invoke-static {v0, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 362
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->taps:[J

    const/16 v4, 0x9

    aput-wide v2, v0, v4

    .line 363
    sget v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->tapCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->tapCount:I

    .line 364
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

    .line 365
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

    .line 369
    goto :goto_6

    .line 366
    :catch_55
    move-exception v0

    goto :goto_53
.end method

.method public static achievementsScreen(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 374
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->tapCount:I

    .line 375
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->on:Z

    if-eqz v0, :cond_c

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTestMode;->showButton(Landroid/app/Activity;)V

    .line 376
    :cond_c
    return-void
.end method

.method public static afterRestore()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 175
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->on:Z

    if-eqz v0, :cond_f

    const-string v0, "test"

    :goto_7
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModTestMode;->logState(Ljava/lang/String;)V

    .line 176
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->on:Z

    if-nez v0, :cond_12

    .line 206
    :cond_e
    :goto_e
    return-void

    .line 175
    :cond_f
    const-string v0, "main"

    goto :goto_7

    .line 178
    :cond_12
    :try_start_12
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    .line 179
    if-eqz v3, :cond_90

    .line 180
    const/16 v0, 0x28

    iput v0, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    .line 181
    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curXp:J

    .line 182
    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->init()V

    .line 184
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

    .line 185
    if-eqz v0, :cond_2c

    iget-object v5, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c

    .line 186
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->hull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v5

    .line 187
    if-eqz v5, :cond_4d

    iget v5, v5, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    const/4 v6, 0x7

    if-eq v5, v6, :cond_2c

    .line 188
    :cond_4d
    iget-object v5, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 190
    goto :goto_2c

    .line 191
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

    .line 193
    :cond_90
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    .line 194
    if-eqz v2, :cond_106

    .line 195
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

    .line 196
    :cond_b6
    const/4 v0, 0x2

    new-array v3, v0, [Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    const/4 v0, 0x0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->pirateBaySmugglerPos:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    aput-object v4, v3, v0

    const/4 v0, 0x1

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->solarFieldSmugglerPos:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    aput-object v4, v3, v0

    .line 197
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

    .line 198
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

    .line 200
    :cond_106
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModTestMode;->topUp()V

    .line 201
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->mainActivity:Lfr/testudo/spacecorsair/activity/Main;

    .line 202
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

    .line 203
    :catch_11f
    move-exception v0

    .line 204
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
    .line 67
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->mainActivity:Lfr/testudo/spacecorsair/activity/Main;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 68
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModTestMode;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 69
    new-instance v0, Ljava/io/File;

    const-string v1, "active"

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, "main"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModTestMode;->read(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v1, Ljava/io/File;

    const-string v4, "pending"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lfr/testudo/spacecorsair/mod/ModTestMode;->read(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    if-eqz v1, :cond_87

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_87

    const-string v4, "main"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3d

    const-string v4, "test"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 72
    :cond_3d
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModTestMode;->store(Landroid/content/Context;Ljava/io/File;)V

    .line 74
    new-instance v4, Ljava/io/File;

    const-string v5, "active"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4, v1}, Lfr/testudo/spacecorsair/mod/ModTestMode;->write(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 76
    new-instance v5, Ljava/io/File;

    const-string v6, "complete"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModTestMode;->load(Landroid/content/Context;Ljava/io/File;)V

    .line 77
    :cond_64
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

    .line 80
    :cond_87
    new-instance v2, Ljava/io/File;

    const-string v4, "pending"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 81
    const-string v2, "test"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModTestMode;->on:Z

    .line 82
    const-string v2, "v40test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "profile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_d1

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

    :goto_c5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :goto_d0
    return-void

    .line 82
    :cond_d1
    const-string v0, ""
    :try_end_d3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d3} :catch_d4

    goto :goto_c5

    .line 83
    :catch_d4
    move-exception v0

    .line 84
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

    goto :goto_d0
.end method

.method public static canJumpTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)I
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 315
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModTestMode;->on:Z

    if-nez v1, :cond_6

    .line 319
    :goto_5
    return v0

    .line 317
    :cond_6
    :try_start_6
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTestMode;->sector(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v1

    if-eqz v1, :cond_18

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_14} :catch_1a

    if-eq v0, p0, :cond_18

    const/4 v0, 0x1

    goto :goto_5

    :cond_18
    const/4 v0, 0x0

    goto :goto_5

    .line 318
    :catch_1a
    move-exception v1

    goto :goto_5
.end method

.method static confirm(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 409
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->on:Z

    if-eqz v0, :cond_35

    .line 410
    const-string v0, "Log out of test mode? The game restarts on your normal save, as it was when you logged in."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 412
    :goto_a
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 413
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 414
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->on:Z

    if-eqz v0, :cond_3c

    const-string v0, "LOG OUT"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1d
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModTestMode$2;

    invoke-direct {v2, p0}, Lfr/testudo/spacecorsair/mod/ModTestMode$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    .line 417
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 418
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 419
    return-void

    .line 411
    :cond_35
    const-string v0, "Log in to test mode? The game saves and restarts on a separate test profile: max level, everything unlocked, whole map visible, every mission repeatable, free instant jumps. Your normal save is kept apart and comes back when you log out."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 414
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

    .line 132
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 133
    if-nez v1, :cond_8

    .line 148
    :cond_7
    return-void

    .line 134
    :cond_8
    array-length v2, v1

    :goto_9
    if-ge v0, v2, :cond_7

    aget-object v3, v1, v0

    .line 135
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModTestMode;->copyTree(Ljava/io/File;Ljava/io/File;)V

    .line 134
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 137
    :cond_25
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 138
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 140
    const/16 v4, 0x4000

    :try_start_31
    new-array v4, v4, [B

    .line 142
    :goto_33
    invoke-virtual {v5, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_46

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3d
    .catchall {:try_start_31 .. :try_end_3d} :catchall_3e

    goto :goto_33

    .line 144
    :catchall_3e
    move-exception v0

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 145
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 146
    throw v0

    .line 144
    :cond_46
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 145
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_22
.end method

.method public static couldJump(Lfr/testudo/spacecorsair/game/levels/LevelId;)I
    .registers 2

    .prologue
    .line 324
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->on:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, -0x1

    goto :goto_5
.end method

.method static delete(Ljava/io/File;)V
    .registers 5

    .prologue
    .line 151
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 152
    if-eqz v1, :cond_12

    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_12

    aget-object v3, v1, v0

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModTestMode;->delete(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 153
    :cond_12
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 154
    return-void
.end method

.method private static fullHull(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 5

    .prologue
    .line 269
    if-eqz p0, :cond_d

    :try_start_2
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v0, :cond_d

    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_e

    .line 280
    :cond_d
    :goto_d
    return-void

    .line 270
    :cond_e
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 271
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 272
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModTestMode;->hulledShip:Ljava/lang/Object;

    if-eq v0, v1, :cond_27

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->hulledShip:Ljava/lang/Object;

    const-wide/16 v0, 0xbb8

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->hullUntil:J

    .line 273
    :cond_27
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->hullUntil:J

    cmp-long v0, v2, v0

    if-gtz v0, :cond_d

    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_d

    .line 274
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    .line 275
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->lifeInPourc:F

    .line 276
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

    .line 277
    :catch_5c
    move-exception v0

    goto :goto_d
.end method

.method public static jumpCost(Lfr/testudo/spacecorsair/game/levels/LevelId;)I
    .registers 2

    .prologue
    .line 327
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
    .line 330
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

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 107
    if-eqz v2, :cond_17

    array-length v4, v2

    move v0, v3

    :goto_d
    if-ge v0, v4, :cond_17

    aget-object v5, v2, v0

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModTestMode;->delete(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 108
    :cond_17
    new-instance v0, Ljava/io/File;

    const-string v2, "files"

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModTestMode;->copyTree(Ljava/io/File;Ljava/io/File;)V

    .line 109
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTestMode;->PREFS:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_25
    if-ge v2, v5, :cond_e8

    aget-object v1, v4, v2

    .line 110
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

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 112
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_65

    .line 113
    new-instance v7, Ljava/io/ObjectInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 114
    :try_start_5c
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_62
    .catchall {:try_start_5c .. :try_end_62} :catchall_9d

    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V

    .line 116
    :cond_65
    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 117
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

    .line 118
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 119
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    instance-of v8, v1, Ljava/lang/Boolean;

    if-eqz v8, :cond_a2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_79

    .line 114
    :catchall_9d
    move-exception v0

    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V

    throw v0

    .line 121
    :cond_a2
    instance-of v8, v1, Ljava/lang/Integer;

    if-eqz v8, :cond_b0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_79

    .line 122
    :cond_b0
    instance-of v8, v1, Ljava/lang/Long;

    if-eqz v8, :cond_be

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {v6, v0, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_79

    .line 123
    :cond_be
    instance-of v8, v1, Ljava/lang/Float;

    if-eqz v8, :cond_cc

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_79

    .line 124
    :cond_cc
    instance-of v8, v1, Ljava/lang/String;

    if-eqz v8, :cond_d6

    check-cast v1, Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_79

    .line 125
    :cond_d6
    instance-of v8, v1, Ljava/util/Set;

    if-eqz v8, :cond_79

    check-cast v1, Ljava/util/Set;

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    goto :goto_79

    .line 127
    :cond_e0
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 109
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_25

    .line 129
    :cond_e8
    return-void
.end method

.method static logState(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 211
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    .line 212
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    .line 213
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

    .line 214
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

    .line 215
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

    .line 213
    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :goto_8d
    return-void

    .line 215
    :cond_8e
    iget-object v0, v1, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->visitedLevels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_93} :catch_95

    move-result v0

    goto :goto_6e

    .line 216
    :catch_95
    move-exception v0

    .line 217
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
    .line 158
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    .line 162
    :goto_6
    return-object p1

    .line 159
    :cond_7
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_27

    .line 160
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

    .line 161
    :catch_27
    move-exception v0

    goto :goto_6
.end method

.method private static root(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    .prologue
    .line 62
    const-string v0, "corsair_profiles"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static sector(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z
    .registers 3

    .prologue
    .line 222
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
    .registers 9

    .prologue
    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v7, 0x40c00000    # 6.0f

    const/high16 v6, 0x40800000    # 4.0f

    .line 382
    const v0, 0x1020002

    :try_start_9
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 383
    if-eqz v0, :cond_19

    const-string v1, "corsair_testmode_btn"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 406
    :cond_19
    :goto_19
    return-void

    .line 384
    :cond_1a
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 385
    const-string v1, "corsair_testmode_btn"

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 386
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModTestMode;->on:Z

    if-eqz v1, :cond_c5

    const-string v1, "LOG OUT"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2e
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 387
    const/4 v1, 0x2

    const/high16 v3, 0x41300000    # 11.0f

    invoke-virtual {v2, v1, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 388
    const/4 v1, -0x1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 389
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModTestMode;->on:Z

    if-eqz v1, :cond_cd

    const v1, -0x3375d5d6

    :goto_42
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 390
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 391
    mul-float v3, v5, v1

    float-to-int v3, v3

    mul-float v4, v6, v1

    float-to-int v4, v4

    mul-float/2addr v5, v1

    float-to-int v5, v5

    mul-float/2addr v6, v1

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/Button;->setPadding(IIII)V

    .line 392
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setMinHeight(I)V

    .line 393
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setMinimumHeight(I)V

    .line 394
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setMinWidth(I)V

    .line 395
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setMinimumWidth(I)V

    .line 396
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/16 v6, 0x35

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 397
    const/4 v4, 0x0

    mul-float v5, v7, v1

    float-to-int v5, v5

    mul-float/2addr v1, v7

    float-to-int v1, v1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v1, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 398
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModTestMode$1;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/mod/ModTestMode$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    const-string v1, "v40test"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "button shown "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->on:Z

    if-eqz v0, :cond_d2

    const-string v0, "logout"

    :goto_9d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a8
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_a8} :catch_aa

    goto/16 :goto_19

    .line 403
    :catch_aa
    move-exception v0

    .line 404
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

    .line 386
    :cond_c5
    :try_start_c5
    const-string v1, "LOGIN"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2e

    .line 389
    :cond_cd
    const v1, -0x33d5b596    # -4.464068E7f

    goto/16 :goto_42

    .line 402
    :cond_d2
    const-string v0, "login"
    :try_end_d4
    .catch Ljava/lang/Throwable; {:try_start_c5 .. :try_end_d4} :catch_aa

    goto :goto_9d
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

    .line 90
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModTestMode;->delete(Ljava/io/File;)V

    .line 91
    new-instance v0, Ljava/io/File;

    const-string v2, "files"

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModTestMode;->copyTree(Ljava/io/File;Ljava/io/File;)V

    .line 94
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModTestMode;->PREFS:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_19
    if-ge v0, v3, :cond_60

    aget-object v4, v2, v0

    .line 95
    new-instance v5, Ljava/util/HashMap;

    invoke-virtual {p0, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 96
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

    .line 97
    :try_start_52
    invoke-virtual {v6, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_5b

    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 97
    :catchall_5b
    move-exception v0

    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V

    throw v0

    .line 99
    :cond_60
    new-instance v0, Ljava/io/File;

    const-string v1, "complete"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, "1"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModTestMode;->write(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method static switchTo(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 424
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

    .line 425
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->storageManager:Lfr/testudo/spacecorsair/storage/StorageManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/storage/StorageManager;->save()V

    .line 426
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 427
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

    .line 428
    :cond_45
    new-instance v0, Ljava/io/File;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModTestMode;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    const-string v4, "pending"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lfr/testudo/spacecorsair/mod/ModTestMode;->write(Ljava/io/File;Ljava/lang/String;)V

    .line 429
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 430
    if-eqz v0, :cond_6a

    .line 431
    const v2, 0x10008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 432
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6a} :catch_75

    .line 439
    :cond_6a
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 440
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 441
    :goto_74
    return-void

    .line 434
    :catch_75
    move-exception v0

    .line 435
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

    .line 436
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
    .line 336
    const-string v0, "corsair_tmjump"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 337
    if-eqz v1, :cond_10

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->tJump:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 349
    :cond_10
    :goto_10
    return-void

    .line 338
    :cond_11
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModTestMode;->tJump:Ljava/lang/String;

    .line 340
    :try_start_13
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    .line 341
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->energyCell:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->getQuantityOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v2

    .line 342
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

    .line 343
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

    .line 344
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 342
    invoke-static {v3, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->initHyperdriveJumpRequest(Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_88} :catch_89

    goto :goto_10

    .line 346
    :catch_89
    move-exception v0

    .line 347
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

    .line 287
    const-string v0, "corsair_tmmiss"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 288
    if-eqz v3, :cond_12

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->tMiss:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 309
    :cond_12
    :goto_12
    return-void

    .line 289
    :cond_13
    sput-object v3, Lfr/testudo/spacecorsair/mod/ModTestMode;->tMiss:Ljava/lang/String;

    .line 291
    :try_start_15
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 292
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    .line 293
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    invoke-virtual {v4, v0}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->getAvaillableMission(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/util/List;

    move-result-object v0

    .line 294
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

    .line 296
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

    .line 306
    :catch_56
    move-exception v0

    .line 307
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

    .line 297
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

    .line 300
    :goto_8a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_93
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 302
    sget-object v6, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v6, v6, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    iget-object v7, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->hasDoneMission(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ad

    add-int/lit8 v1, v1, 0x1

    .line 303
    :cond_ad
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v6, 0x2c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_93

    .line 305
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
    .line 247
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->on:Z

    if-nez v0, :cond_5

    .line 261
    :cond_4
    :goto_4
    return-void

    .line 248
    :cond_5
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTestMode;->fullHull(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 249
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->topMs:J

    sub-long/2addr v0, p1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->topMs:J

    .line 250
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->topMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    .line 251
    const-wide/16 v0, 0x1f4

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->topMs:J

    .line 252
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModTestMode;->topUp()V

    .line 253
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTestMode;->testJump(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 254
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModTestMode;->testMissions()V

    .line 256
    :try_start_22
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 257
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

    .line 258
    :catch_6d
    move-exception v0

    goto :goto_4
.end method

.method static topUp()V
    .registers 8

    .prologue
    const/16 v7, 0x3e7

    const/16 v6, 0x9

    .line 227
    :try_start_4
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    .line 228
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

    .line 229
    :cond_23
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 230
    if-nez v3, :cond_2a

    .line 241
    :cond_29
    :goto_29
    return-void

    .line 231
    :cond_2a
    const/4 v0, 0x0

    .line 232
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->parts()I

    move-result v1

    if-ge v1, v7, :cond_3d

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "v35_parts"

    const/16 v2, 0x3e7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 233
    :cond_3d
    const/4 v1, 0x0

    move v2, v1

    :goto_3f
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v1, v1

    if-gt v2, v1, :cond_7c

    .line 234
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v1, v1

    if-ge v2, v1, :cond_74

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v1, v1, v2

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    .line 235
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

    .line 233
    :cond_70
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3f

    .line 234
    :cond_74
    const-string v1, "neutral"

    goto :goto_4f

    .line 235
    :cond_77
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_57

    .line 237
    :cond_7c
    if-eqz v0, :cond_29

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_81} :catch_82

    goto :goto_29

    .line 238
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
    .line 167
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 168
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

    .line 169
    return-void

    .line 168
    :catchall_19
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v0
.end method
