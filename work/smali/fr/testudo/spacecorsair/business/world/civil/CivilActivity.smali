.class public Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;
    }
.end annotation


# instance fields
.field public allowEscorteDefense:Z

.field public completedListener:Lfr/testudo/spacecorsair/business/world/civil/CivilActivityCompletedListener;

.field public kind:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;

.field public posX:F

.field public posY:F

.field public pouseeForce:F

.field public waitTime:I


# direct methods
.method private constructor <init>(IFFFLfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->waitTime:I

    .line 33
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilActivityCompletedListener;->NOP:Lfr/testudo/spacecorsair/business/world/civil/CivilActivityCompletedListener;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->completedListener:Lfr/testudo/spacecorsair/business/world/civil/CivilActivityCompletedListener;

    .line 37
    iput p1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->waitTime:I

    .line 38
    iput p2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->posX:F

    .line 39
    iput p3, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->posY:F

    .line 40
    iput p4, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->pouseeForce:F

    .line 41
    iput-object p5, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->kind:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;

    .line 42
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->allowEscorteDefense:Z

    .line 43
    return-void
.end method

.method public static newDiseapear()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 100
    new-instance v0, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    const/4 v1, 0x0

    sget-object v5, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;->diseapear:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;-><init>(IFFFLfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;)V

    return-object v0
.end method

.method public static newLockAsteroidAndGather(III)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;
    .registers 9

    .prologue
    .line 105
    new-instance v0, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    int-to-float v2, p0

    int-to-float v3, p1

    const/4 v4, 0x0

    sget-object v5, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;->lockAsteroidAndGather:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;

    move v1, p2

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;-><init>(IFFFLfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;)V

    return-object v0
.end method

.method public static newMoove(FF)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;
    .registers 8

    .prologue
    .line 56
    new-instance v0, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    const/4 v1, 0x0

    const/4 v4, 0x0

    sget-object v5, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;->moove:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;

    move v2, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;-><init>(IFFFLfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;)V

    return-object v0
.end method

.method public static newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;
    .registers 7

    .prologue
    .line 78
    new-instance v0, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    const/4 v1, 0x0

    iget v2, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v3, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v4, 0x0

    sget-object v5, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;->moove:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;-><init>(IFFFLfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;)V

    return-object v0
.end method

.method public static newMooveNextPortal()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 60
    new-instance v0, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    const/4 v1, 0x0

    sget-object v5, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;->mooveNextPortal:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;-><init>(IFFFLfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;)V

    return-object v0
.end method

.method public static newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;
    .registers 9

    .prologue
    .line 69
    new-instance v0, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    const/4 v4, 0x0

    sget-object v5, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;->mooveRandom:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;

    move v1, p2

    move v2, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;-><init>(IFFFLfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;)V

    return-object v0
.end method

.method public static newMooveRandom(Lfr/testudo/spacecorsair/engine/Vector2;I)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;
    .registers 8

    .prologue
    .line 73
    new-instance v0, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    iget v2, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v3, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v4, 0x0

    sget-object v5, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;->mooveRandom:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;-><init>(IFFFLfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;)V

    return-object v0
.end method

.method public static newMooveUntilNextToPlayer(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;
    .registers 9

    .prologue
    .line 65
    new-instance v0, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    const/4 v4, 0x0

    sget-object v5, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;->mooveUntilNextToPlayer:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;

    move v1, p2

    move v2, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;-><init>(IFFFLfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;)V

    return-object v0
.end method

.method public static newOpenMobileShop()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 84
    new-instance v0, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    const/4 v1, 0x0

    sget-object v5, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;->openMobileShop:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;-><init>(IFFFLfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;)V

    return-object v0
.end method

.method public static newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 96
    new-instance v0, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v1, p0

    float-to-int v1, v1

    sget-object v5, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;->wait:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;-><init>(IFFFLfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;)V

    return-object v0
.end method

.method public static newWaitUntilPlayerClose(I)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 88
    new-instance v0, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    const/high16 v4, -0x40800000    # -1.0f

    sget-object v5, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;->waitUntilPlayerClose:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;

    move v1, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;-><init>(IFFFLfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;)V

    return-object v0
.end method

.method public static newWaitUntilPlayerClose(IF)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 92
    new-instance v0, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    sget-object v5, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;->waitUntilPlayerClose:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;

    move v1, p0

    move v3, v2

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;-><init>(IFFFLfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;)V

    return-object v0
.end method


# virtual methods
.method public enableSelfDefense()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->allowEscorteDefense:Z

    .line 52
    return-object p0
.end method

.method public withCompleteListener(Lfr/testudo/spacecorsair/business/world/civil/CivilActivityCompletedListener;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->completedListener:Lfr/testudo/spacecorsair/business/world/civil/CivilActivityCompletedListener;

    .line 47
    return-object p0
.end method
