.class public Lfr/testudo/spacecorsair/game/levels/CivilAnimatorHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static pos:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static final scanListener:Lfr/testudo/spacecorsair/business/world/civil/ScanListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 73
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/CivilAnimatorHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 77
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/CivilAnimatorHelper$1;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/game/levels/CivilAnimatorHelper$1;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/CivilAnimatorHelper;->scanListener:Lfr/testudo/spacecorsair/business/world/civil/ScanListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCivilFromXToYWithRandom(Lfr/testudo/spacecorsair/business/world/civil/CivilType;Lfr/testudo/spacecorsair/engine/PopPoint;Lfr/testudo/spacecorsair/engine/Vector2;IIII)V
    .registers 15

    .prologue
    .line 24
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lfr/testudo/spacecorsair/game/levels/CivilAnimatorHelper;->addCivilFromXToYWithRandom(Lfr/testudo/spacecorsair/business/world/civil/CivilType;Lfr/testudo/spacecorsair/engine/PopPoint;Lfr/testudo/spacecorsair/engine/Vector2;IIIILfr/testudo/spacecorsair/business/world/civil/ScanConfig;)V

    .line 26
    return-void
.end method

.method public static addCivilFromXToYWithRandom(Lfr/testudo/spacecorsair/business/world/civil/CivilType;Lfr/testudo/spacecorsair/engine/PopPoint;Lfr/testudo/spacecorsair/engine/Vector2;IIIILfr/testudo/spacecorsair/business/world/civil/ScanConfig;)V
    .registers 10

    .prologue
    .line 30
    invoke-static {p0, p3, p4}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->getCivilByType(Lfr/testudo/spacecorsair/business/world/civil/CivilType;II)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v0

    .line 31
    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->applyPopPoint(Lfr/testudo/spacecorsair/engine/PopPoint;)Lfr/testudo/spacecorsair/business/Element;

    .line 32
    const-string v1, "civil"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->specificName:Ljava/lang/String;

    .line 33
    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilType;->TRANSPORTEUR:Lfr/testudo/spacecorsair/business/world/civil/CivilType;

    if-ne p0, v1, :cond_15

    .line 34
    invoke-static {}, Lfr/testudo/spacecorsair/business/world/UniverseName;->getRandomTransporteurName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->specificName:Ljava/lang/String;

    .line 36
    :cond_15
    invoke-virtual {v0, p2}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setEscapePoint(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 37
    invoke-static {p5, p6, p2}, Lfr/testudo/spacecorsair/business/Util;->newRandomActivityWithExit(IILfr/testudo/spacecorsair/engine/Vector2;)[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 38
    if-eqz p7, :cond_24

    .line 39
    invoke-virtual {v0, p7}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setScanable(Lfr/testudo/spacecorsair/business/world/civil/ScanConfig;)V

    .line 42
    :cond_24
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 44
    return-void
.end method

.method public static addCivilFromXWithActivity(Lfr/testudo/spacecorsair/business/world/civil/CivilType;Lfr/testudo/spacecorsair/engine/PopPoint;[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;II)V
    .registers 11

    .prologue
    .line 49
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/game/levels/CivilAnimatorHelper;->addCivilFromXWithActivity(Lfr/testudo/spacecorsair/business/world/civil/CivilType;Lfr/testudo/spacecorsair/engine/PopPoint;[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;IILfr/testudo/spacecorsair/business/world/civil/ScanConfig;)V

    .line 51
    return-void
.end method

.method public static addCivilFromXWithActivity(Lfr/testudo/spacecorsair/business/world/civil/CivilType;Lfr/testudo/spacecorsair/engine/PopPoint;[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;IILfr/testudo/spacecorsair/business/world/civil/ScanConfig;)V
    .registers 8

    .prologue
    .line 55
    invoke-static {p0, p3, p4}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->getCivilByType(Lfr/testudo/spacecorsair/business/world/civil/CivilType;II)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->applyPopPoint(Lfr/testudo/spacecorsair/engine/PopPoint;)Lfr/testudo/spacecorsair/business/Element;

    .line 58
    const-string v1, "civil"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->specificName:Ljava/lang/String;

    .line 59
    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilType;->TRANSPORTEUR:Lfr/testudo/spacecorsair/business/world/civil/CivilType;

    if-ne p0, v1, :cond_15

    .line 60
    invoke-static {}, Lfr/testudo/spacecorsair/business/world/UniverseName;->getRandomTransporteurName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->specificName:Ljava/lang/String;

    .line 62
    :cond_15
    iget-object v1, p1, Lfr/testudo/spacecorsair/engine/PopPoint;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setEscapePoint(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 63
    invoke-virtual {v0, p2}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 65
    if-eqz p5, :cond_22

    .line 66
    invoke-virtual {v0, p5}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setScanable(Lfr/testudo/spacecorsair/business/world/civil/ScanConfig;)V

    .line 69
    :cond_22
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 71
    return-void
.end method

.method public static addRandomCivilians(Ljava/util/List;IIIILfr/testudo/spacecorsair/engine/Vector2;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;IIII",
            "Lfr/testudo/spacecorsair/engine/Vector2;",
            ")V"
        }
    .end annotation

    .prologue
    .line 98
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p1, :cond_68

    .line 99
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/CivilAnimatorHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    neg-int v2, p2

    int-to-double v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    int-to-double v6, p2

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    neg-int v3, p2

    int-to-double v4, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    int-to-double v8, p2

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 102
    rem-int/lit8 v0, v1, 0x2

    if-nez v0, :cond_65

    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilType;->TURTULE:Lfr/testudo/spacecorsair/business/world/civil/CivilType;

    :goto_29
    invoke-static {v0, p3, p4}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->getCivilByType(Lfr/testudo/spacecorsair/business/world/civil/CivilType;II)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v0

    .line 106
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/CivilAnimatorHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    .line 107
    rem-int/lit8 v2, v1, 0x3

    .line 108
    if-nez v2, :cond_3f

    .line 109
    const/16 v3, 0x8

    invoke-static {v3, p2}, Lfr/testudo/spacecorsair/business/Util;->newRandomActivityLoop(II)[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 111
    :cond_3f
    const/4 v3, 0x1

    if-ne v2, v3, :cond_4b

    .line 112
    const/16 v3, 0x8

    invoke-static {v3, p2}, Lfr/testudo/spacecorsair/business/Util;->newRandomActivityLoop(II)[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 114
    :cond_4b
    const/4 v3, 0x2

    if-ne v2, v3, :cond_57

    .line 115
    const/16 v2, 0x8

    invoke-static {v2, p2}, Lfr/testudo/spacecorsair/business/Util;->newRandomActivityLoop(II)[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 118
    :cond_57
    invoke-virtual {v0, p5}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setEscapePoint(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 119
    const-string v2, "civil"

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->specificName:Ljava/lang/String;

    .line 120
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 102
    :cond_65
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilType;->SQUID:Lfr/testudo/spacecorsair/business/world/civil/CivilType;

    goto :goto_29

    .line 123
    :cond_68
    return-void
.end method
