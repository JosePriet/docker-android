.class public Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/16 v10, 0x11

    const/16 v9, 0xa

    const/4 v8, 0x1

    const/16 v7, 0xc

    .line 18
    const/16 v0, 0x32

    new-array v0, v0, [Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    move v0, v1

    .line 22
    :goto_f
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_30

    .line 23
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    new-instance v3, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    invoke-direct {v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;-><init>()V

    aput-object v3, v2, v0

    .line 24
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    aget-object v2, v2, v0

    iput v0, v2, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->level:I

    .line 25
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    aget-object v2, v2, v0

    mul-int/lit8 v3, v0, 0x64

    iput v3, v2, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->moneyReward:I

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 28
    :cond_30
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/16 v2, 0x8

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/16 v6, 0x32

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTimingOrCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->POP1:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/4 v2, 0x4

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TAUPE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/4 v4, 0x5

    const/4 v5, 0x5

    invoke-static {v2, v3, v4, v5}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->untilRemains(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/4 v2, 0x2

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->DEFENSOR:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/4 v4, 0x6

    const/4 v5, 0x6

    const/16 v6, 0x19

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTimingOrCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/4 v2, 0x6

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-static {v8, v2, v3, v4, v8}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->DEFENSOR:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-static {v8, v2, v3, v4, v8}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TAUPE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/4 v3, 0x5

    invoke-static {v8, v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/4 v2, 0x6

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/16 v2, 0x14

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/4 v4, 0x4

    const/4 v5, 0x4

    invoke-static {v2, v3, v4, v5}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    const/16 v3, 0x5dc

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/4 v2, 0x6

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/4 v2, 0x2

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->DEFENSOR:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/4 v4, 0x6

    const/4 v5, 0x6

    const/16 v6, 0x1e

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTimingOrCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2, v9}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/4 v2, 0x6

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/4 v2, 0x6

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/4 v4, 0x6

    const/4 v5, 0x6

    invoke-static {v2, v3, v4, v5}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    const/16 v3, 0x7d0

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/4 v2, 0x6

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->FRELON:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v3, 0x8

    const/16 v4, 0x8

    invoke-static {v8, v2, v3, v4}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->asBoss()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/4 v2, 0x4

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/4 v4, 0x7

    const/4 v5, 0x7

    const/16 v6, 0x1e

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTimingOrCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/4 v2, 0x4

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/4 v4, 0x7

    const/4 v5, 0x7

    invoke-static {v2, v3, v4, v5}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/4 v2, 0x4

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/4 v4, 0x7

    const/4 v5, 0x7

    const/16 v6, 0x19

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTimingOrCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/4 v2, 0x4

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->DEFENSOR:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/4 v4, 0x7

    const/4 v5, 0x7

    invoke-static {v2, v3, v4, v5}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/4 v2, 0x4

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/4 v4, 0x7

    const/4 v5, 0x7

    const/16 v6, 0x19

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTimingOrCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/4 v2, 0x6

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TAUPE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/4 v4, 0x7

    const/4 v5, 0x7

    const/16 v6, 0x28

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTimingOrCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/4 v2, 0x2

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->FRELON:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v4, 0x9

    const/16 v5, 0x9

    invoke-static {v2, v3, v4, v5}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->asBoss()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/16 v2, 0x14

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/4 v4, 0x7

    const/4 v5, 0x7

    const/16 v6, 0x37

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTimingOrCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->POP1:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    const/16 v3, 0xbb8

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/4 v2, 0x2

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v4, 0x9

    const/16 v5, 0x9

    const/4 v6, 0x5

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTimingOrCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TAUPE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/4 v3, 0x7

    const/4 v4, 0x7

    const/16 v5, 0x32

    invoke-static {v9, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTimingOrCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/4 v2, 0x4

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->DEFENSOR:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v4, 0x8

    const/16 v5, 0x8

    invoke-static {v2, v3, v4, v5}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    const/16 v3, 0xfa0

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0x9

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/16 v2, 0x32

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/4 v4, 0x2

    invoke-static {v2, v3, v1, v4}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->untilRemains(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0x9

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/4 v2, 0x2

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->FRELON:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v4, 0x9

    const/16 v5, 0x9

    invoke-static {v2, v3, v4, v5}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0x9

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/4 v2, 0x2

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v4, 0x19

    invoke-static {v2, v3, v9, v9, v4}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0x9

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->DEFENSOR:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v8, v2, v7, v7}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->asBoss()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecsBuilder;->snare60_10percent_10sec_and_agility_60_10sec_10_perc:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withLaserAlteration(Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    aget-object v0, v0, v9

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/4 v2, 0x2

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v4, 0xe

    const/16 v5, 0xf

    invoke-static {v2, v3, v4, v5}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    const/16 v3, 0x1770

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    aget-object v0, v0, v9

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/16 v2, 0xf

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TAUPE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v2, v3, v9, v7}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    const/16 v3, 0xfa0

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->untilRemains(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    aget-object v0, v0, v9

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->FRELON:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v3, 0xb

    invoke-static {v8, v2, v3, v7, v9}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    aget-object v0, v0, v9

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/4 v2, 0x6

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->FRELON:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v4, 0xb

    invoke-static {v2, v3, v4, v7}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    const/16 v3, 0x3a98

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    aget-object v0, v0, v9

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->FRELON:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v8, v2, v9}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->asElite()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->asBoss()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v8, v2, v7, v7, v1}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2, v9}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->POP1:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v8, v2, v7, v7, v1}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2, v9}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->POP2:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v3, 0xf

    invoke-static {v8, v2, v7, v7, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTimingOrCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2, v9}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->POP3:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v8, v2, v7, v7, v1}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2, v9}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->POP1:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v8, v2, v7, v7, v1}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2, v9}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->POP2:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v3, 0xf

    invoke-static {v8, v2, v7, v7, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTimingOrCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2, v9}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->POP3:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v8, v2, v7, v7, v1}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2, v9}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->POP1:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v8, v2, v7, v7, v1}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2, v9}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->POP2:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v3, 0xf

    invoke-static {v8, v2, v7, v7, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTimingOrCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2, v9}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->POP3:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v8, v2, v7, v7, v1}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2, v9}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->POP1:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v8, v2, v7, v7, v1}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2, v9}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->POP2:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v8, v2, v7, v7, v1}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2, v9}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->POP3:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->FRELON:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v8, v2, v7, v7}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v8, v2, v7, v7, v1}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2, v9}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->POP1:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->DEFENSOR:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v8, v2, v7, v7, v1}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2, v9}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->POP2:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TAUPE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v3, 0xf

    invoke-static {v8, v2, v7, v7, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTimingOrCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2, v9}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->POP3:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v8, v2, v7, v7, v1}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2, v9}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->POP1:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->DEFENSOR:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v8, v2, v7, v7, v1}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2, v9}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->POP2:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TAUPE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v3, 0xf

    invoke-static {v8, v2, v7, v7, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTimingOrCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2, v9}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->POP3:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/4 v2, 0x5

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v4, 0xd

    const/16 v5, 0xd

    const/16 v6, 0x1e

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTimingOrCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/4 v2, 0x6

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TAUPE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v4, 0xd

    const/16 v5, 0xd

    invoke-static {v2, v3, v4, v5, v9}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTimingOrCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/4 v2, 0x2

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ROCKET_TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v4, 0xf

    const/16 v5, 0xf

    invoke-static {v2, v3, v4, v5}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->asBoss()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    aget-object v0, v0, v7

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/4 v2, 0x3

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v2, v3, v7, v7, v1}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTimingOrCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    aget-object v0, v0, v7

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->DEFENSOR:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v3, 0xd

    const/16 v4, 0xd

    invoke-static {v8, v2, v3, v4, v1}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2, v9}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->POP1:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    aget-object v0, v0, v7

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->DEFENSOR:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v3, 0xd

    const/16 v4, 0xd

    invoke-static {v8, v2, v3, v4, v1}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2, v9}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->POP2:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    aget-object v0, v0, v7

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->DEFENSOR:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v3, 0xd

    const/16 v4, 0xd

    invoke-static {v8, v2, v3, v4}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2, v9}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->POP3:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    aget-object v0, v0, v7

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    invoke-static {v9}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newPause(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    aget-object v0, v0, v7

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/4 v2, 0x3

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TAUPE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v4, 0xd

    const/16 v5, 0xd

    invoke-static {v2, v3, v4, v5, v8}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->POP2:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    aget-object v0, v0, v7

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/4 v2, 0x2

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->FRELON:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v4, 0xe

    const/16 v5, 0xe

    const/4 v6, 0x5

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->POP3:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    aget-object v0, v0, v7

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/4 v2, 0x3

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TAUPE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v4, 0xd

    const/16 v5, 0xd

    invoke-static {v2, v3, v4, v5}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    aget-object v0, v0, v7

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/4 v2, 0x2

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ALBATROS:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v4, 0xb

    const/16 v5, 0xb

    invoke-static {v2, v3, v4, v5}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->asBoss()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/16 v2, 0x8

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->DEFENSOR:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v4, 0xd

    invoke-static {v2, v3, v7, v4}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    invoke-static {v9}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newPause(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/4 v2, 0x3

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v4, 0xe

    const/16 v5, 0xe

    invoke-static {v2, v3, v4, v5, v1}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2, v1}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/4 v2, 0x6

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->FRELON:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v2, v3, v7, v7}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    const/16 v3, 0x3a98

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    invoke-static {v9}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newPause(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/4 v2, 0x2

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ALIEN_RAT:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/4 v4, 0x2

    invoke-static {v2, v3, v7, v7, v4}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2, v1}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->UFO_ALIEN:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v3, 0xe

    const/16 v4, 0xe

    invoke-static {v8, v2, v3, v4}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->asElite()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/4 v2, 0x4

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->UFO_ALIEN:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v4, 0xe

    const/16 v5, 0xe

    invoke-static {v2, v3, v4, v5}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    const/16 v3, 0x1f40

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    invoke-static {v9}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newPause(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ALIEN_BLATTE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v3, 0xe

    const/16 v4, 0xe

    invoke-static {v8, v2, v3, v4}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->asBoss()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ALIEN_RAT:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v3, 0xe

    const/16 v4, 0xe

    invoke-static {v8, v2, v3, v4}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->asElite()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/4 v2, 0x5

    invoke-static {v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newPause(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/4 v2, 0x3

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ROCKET_TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v4, 0xf

    const/16 v5, 0xf

    invoke-static {v2, v3, v4, v5, v8}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2, v1}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TAUPE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v3, 0xb

    const/16 v4, 0xd

    invoke-static {v7, v2, v3, v4}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    const/16 v3, 0xdac

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/16 v2, 0xe

    invoke-static {v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newPause(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ROCKET_TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v3, 0x10

    const/16 v4, 0x10

    invoke-static {v8, v2, v3, v4}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ROCKET_TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v8, v2, v10, v10}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ROCKET_TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v3, 0x12

    const/16 v4, 0x12

    invoke-static {v8, v2, v3, v4}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ROCKET_TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v3, 0x13

    const/16 v4, 0x13

    invoke-static {v8, v2, v3, v4}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ROCKET_TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v3, 0x13

    const/16 v4, 0x13

    invoke-static {v8, v2, v3, v4}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->asElite()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->asBoss()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0x10

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/4 v2, 0x5

    invoke-static {v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newPause(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0x10

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->FRELON:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v8, v2, v10, v10, v1}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->POP1:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0x10

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->FRELON:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v8, v2, v10, v10, v1}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->POP2:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0x10

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->FRELON:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v8, v2, v10, v10}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->POP3:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0x10

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/4 v2, 0x7

    invoke-static {v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newPause(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0x10

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/4 v3, 0x3

    invoke-static {v8, v2, v10, v10, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0x10

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/4 v3, 0x3

    invoke-static {v8, v2, v10, v10, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0x10

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ALIEN_RAT:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v9, v2, v10, v10}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    const/16 v3, 0x1f40

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0x10

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    invoke-static {v9}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newPause(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    const/16 v2, 0x10

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ALBATROS:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v8, v2, v10, v10}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->asBoss()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    aget-object v0, v0, v10

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/4 v2, 0x5

    invoke-static {v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newPause(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    aget-object v0, v0, v10

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->UFO_ALIEN:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v8, v2, v10, v10, v1}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->POP1:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    aget-object v0, v0, v10

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->UFO_ALIEN:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v8, v2, v10, v10, v1}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->POP2:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    aget-object v0, v0, v10

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/4 v2, 0x5

    invoke-static {v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newPause(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    aget-object v0, v0, v10

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    const/4 v2, 0x3

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ALIEN_TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v4, 0x32

    invoke-static {v2, v3, v10, v10, v4}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTimingOrCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-virtual {v2, v1}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    aget-object v0, v0, v10

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ALIEN_RAT:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v9, v2, v10, v10}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    const/16 v3, 0x1f40

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->withPopInterval(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    aget-object v0, v0, v10

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    invoke-static {v9}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newPause(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    aget-object v0, v0, v10

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->UFO_ALIEN:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v3, 0x13

    const/16 v4, 0x13

    invoke-static {v8, v2, v3, v4, v1}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newTiming(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;III)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->asElite()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->asBoss()Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    aget-object v0, v0, v10

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;->waves:Ljava/util/List;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ALIEN_TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v8, v1, v10, v10}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->newCount(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLevelConfig(I)Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;
    .registers 2

    .prologue
    .line 185
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelRepository;->arenaLevels:[Lfr/testudo/spacecorsair/game/levels/arena/ArenaLevelConfig;

    aget-object v0, v0, p0

    return-object v0
.end method
