.class public Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public elite:Z

.field public enemyType:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

.field public levelMax:I

.field public levelMin:I

.field public number:I


# direct methods
.method public constructor <init>(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;->number:I

    .line 21
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;->elite:Z

    .line 25
    iput p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;->number:I

    .line 26
    iput-object p2, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;->enemyType:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    .line 27
    iput p3, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;->levelMin:I

    .line 28
    iput p4, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;->levelMax:I

    .line 29
    return-void
.end method

.method public static ofAlienSentry(III)Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;
    .registers 5

    .prologue
    .line 62
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ALIEN_TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-direct {v0, p0, v1, p1, p2}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;-><init>(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)V

    return-object v0
.end method

.method public static ofBasic(III)Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;
    .registers 5

    .prologue
    .line 38
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-direct {v0, p0, v1, p1, p2}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;-><init>(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)V

    return-object v0
.end method

.method public static ofDefensor(III)Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;
    .registers 5

    .prologue
    .line 42
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->DEFENSOR:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-direct {v0, p0, v1, p1, p2}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;-><init>(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)V

    return-object v0
.end method

.method public static ofFixedSentry(III)Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;
    .registers 5

    .prologue
    .line 50
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-direct {v0, p0, v1, p1, p2}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;-><init>(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)V

    return-object v0
.end method

.method public static ofFrelon(III)Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;
    .registers 5

    .prologue
    .line 54
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->FRELON:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-direct {v0, p0, v1, p1, p2}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;-><init>(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)V

    return-object v0
.end method

.method public static ofRocketSentry(III)Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;
    .registers 5

    .prologue
    .line 58
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ROCKET_TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-direct {v0, p0, v1, p1, p2}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;-><init>(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)V

    return-object v0
.end method

.method public static ofTaupe(III)Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;
    .registers 5

    .prologue
    .line 46
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TAUPE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-direct {v0, p0, v1, p1, p2}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;-><init>(ILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)V

    return-object v0
.end method


# virtual methods
.method public setElite()Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;
    .registers 2

    .prologue
    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;->elite:Z

    .line 33
    return-object p0
.end method
