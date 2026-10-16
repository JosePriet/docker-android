.class public Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$2;,
        Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;
    }
.end annotation


# static fields
.field public static final AERIA_ESCAPE:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final AERIA_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

.field public static final AERIA_TO_RANDOM_ACTIVITY:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

.field public static final CASINO_POSITION:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final GATE_TO_AERIA_PASSING:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final GATE_TO_LOST_PARADISE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final GATE_TO_ORION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final GOODS_STATION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final LEVEL_MAX:I = 0xc

.field public static final LEVEL_MIN:I = 0xa

.field public static final LOST_ESCAPE:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final LOST_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

.field public static final LOST_TO_RANDOM_ACTIVITY:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

.field public static final ORION_ESCAPE:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final ORION_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

.field public static final ORION_TO_RANDOM_ACTIVITY:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

.field public static final RANDOM_LEAVE_ACTIVITY:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

.field public static final SPACEPORT_TO_RANDOM_ACTIVITY:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

.field public static final SPACESPORT_POSITION:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final TESTLOCKED_PORTAL_ID:Ljava/lang/String; = "test"

.field public static final omicronPrimeAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v6, 0x3f19999a    # 0.6f

    const/4 v5, 0x0

    .line 43
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x459c4000    # 5000.0f

    invoke-direct {v0, v1, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->GATE_TO_ORION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 44
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x447a0000    # 1000.0f

    const v2, -0x3a448000    # -6000.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->GATE_TO_AERIA_PASSING:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 45
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, -0x3a448000    # -6000.0f

    const v2, 0x44bb8000    # 1500.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->GATE_TO_LOST_PARADISE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 48
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, -0x3ac48000    # -3000.0f

    const/high16 v2, 0x457a0000    # 4000.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->GOODS_STATION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 49
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v5, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->SPACESPORT_POSITION:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 51
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x453b8000    # 3000.0f

    const/high16 v2, 0x457a0000    # 4000.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->CASINO_POSITION:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 212
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->GATE_TO_ORION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0}, Lfr/testudo/spacecorsair/engine/PopPoint;->newRight(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/PopPoint;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->ORION_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

    .line 213
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->GATE_TO_AERIA_PASSING:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0}, Lfr/testudo/spacecorsair/engine/PopPoint;->newBottom(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/PopPoint;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->AERIA_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

    .line 214
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->GATE_TO_LOST_PARADISE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0}, Lfr/testudo/spacecorsair/engine/PopPoint;->newLeft(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/PopPoint;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->LOST_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

    .line 215
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->ORION_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/PopPoint;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;)V

    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v2, -0x3c060000    # -500.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->ORION_ESCAPE:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 216
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->AERIA_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/PopPoint;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;)V

    const/high16 v1, -0x3bea0000    # -600.0f

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->AERIA_ESCAPE:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 217
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->LOST_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/PopPoint;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;)V

    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v2, -0x3bea0000    # -600.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->LOST_ESCAPE:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 221
    const/4 v0, 0x6

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->SPACESPORT_POSITION:Lfr/testudo/spacecorsair/engine/Vector2;

    const/16 v2, 0x384

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(Lfr/testudo/spacecorsair/engine/Vector2;I)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v7

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v8

    const v1, -0x3b448000    # -1500.0f

    const/16 v2, 0x1b58

    invoke-static {v5, v1, v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v9

    const/4 v1, 0x3

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveNextPortal()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {v6}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newDiseapear()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->SPACEPORT_TO_RANDOM_ACTIVITY:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    .line 230
    const/4 v0, 0x6

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->SPACESPORT_POSITION:Lfr/testudo/spacecorsair/engine/Vector2;

    const/16 v2, 0x2328

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(Lfr/testudo/spacecorsair/engine/Vector2;I)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v7

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v8

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->SPACESPORT_POSITION:Lfr/testudo/spacecorsair/engine/Vector2;

    const/16 v2, 0x2328

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(Lfr/testudo/spacecorsair/engine/Vector2;I)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v9

    const/4 v1, 0x3

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveNextPortal()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {v6}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newDiseapear()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->RANDOM_LEAVE_ACTIVITY:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    .line 241
    const/4 v0, 0x7

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->ORION_ESCAPE:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v7

    const/16 v1, 0x3e8

    invoke-static {v5, v5, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v8

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v9

    const/4 v1, 0x3

    const v2, -0x3b448000    # -1500.0f

    const/16 v3, 0x1b58

    invoke-static {v5, v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveNextPortal()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {v6}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newDiseapear()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->ORION_TO_RANDOM_ACTIVITY:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    .line 251
    const/4 v0, 0x7

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->LOST_ESCAPE:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v7

    const/high16 v1, 0x44fa0000    # 2000.0f

    const/16 v2, 0x3e8

    invoke-static {v1, v5, v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v8

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v9

    const/4 v1, 0x3

    const/high16 v2, 0x44fa0000    # 2000.0f

    const v3, -0x3a736000    # -4500.0f

    const/16 v4, 0x1b58

    invoke-static {v2, v3, v4}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveNextPortal()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {v6}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newDiseapear()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->LOST_TO_RANDOM_ACTIVITY:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    .line 262
    const/4 v0, 0x7

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->AERIA_ESCAPE:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v7

    const/16 v1, 0x1388

    invoke-static {v5, v5, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v8

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v1

    aput-object v1, v0, v9

    const/4 v1, 0x3

    const v2, -0x3b448000    # -1500.0f

    const/16 v3, 0x1b58

    invoke-static {v5, v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveNextPortal()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {v6}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newDiseapear()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->AERIA_TO_RANDOM_ACTIVITY:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    .line 286
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$1;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$1;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->omicronPrimeAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    return-void
.end method

.method private static addCivilians(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_4d

    .line 156
    const/16 v1, 0xa

    const/16 v2, 0xf

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newRandomCivil(II)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v1

    .line 157
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->GATE_TO_AERIA_PASSING:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setEscapePoint(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 158
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->SPACESPORT_POSITION:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    .line 159
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide v4, -0x3f70c00000000000L    # -1000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x409f400000000000L    # 2000.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    const-wide v4, -0x3f70c00000000000L    # -1000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x409f400000000000L    # 2000.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 160
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    .line 162
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->SPACEPORT_TO_RANDOM_ACTIVITY:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 164
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 169
    :cond_4d
    const/4 v0, 0x0

    :goto_4e
    const/16 v1, 0xf

    if-ge v0, v1, :cond_9b

    .line 171
    const/16 v1, 0xa

    const/16 v2, 0xf

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newRandomCivil(II)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v1

    .line 172
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->GATE_TO_LOST_PARADISE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setEscapePoint(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 173
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->SPACESPORT_POSITION:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    .line 174
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide v4, -0x3f40c00000000000L    # -8000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x40cf400000000000L    # 16000.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    const-wide v4, -0x3f40c00000000000L    # -8000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x40cf400000000000L    # 16000.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 175
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    .line 176
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->RANDOM_LEAVE_ACTIVITY:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 177
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    .line 181
    :cond_9b
    return-void
.end method

.method private static addLockedPortal(Ljava/util/List;)Lfr/testudo/spacecorsair/business/world/Portal;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;)",
            "Lfr/testudo/spacecorsair/business/world/Portal;"
        }
    .end annotation

    .prologue
    const/16 v4, 0xc

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    invoke-static {v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlienTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;

    move-result-object v1

    const v2, 0x458fc000    # 4600.0f

    const/high16 v3, 0x43480000    # 200.0f

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->initPosition(FF)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-static {v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlienTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;

    move-result-object v1

    const v2, 0x45a8c000    # 5400.0f

    const/high16 v3, -0x3cb80000    # -200.0f

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->initPosition(FF)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newLockedPortal()Lfr/testudo/spacecorsair/business/world/LockedPortal;

    move-result-object v1

    const-string v2, "> orion <"

    const-string v3, "test"

    invoke-virtual {v1, v2, v0, v3}, Lfr/testudo/spacecorsair/business/world/LockedPortal;->init(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/LockedPortal;

    move-result-object v1

    .line 97
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    return-object v1
.end method

.method public static addPortals(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/high16 v4, 0x40e00000    # 7.0f

    const/4 v3, 0x0

    .line 120
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> orion <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 121
    const-string v1, "orion"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 122
    const-string v1, "> omicron prime <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 124
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->GATE_TO_ORION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 125
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3f200000    # -7.0f

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 126
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 127
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> aeria passing <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 131
    const-string v1, "aeria passing"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 132
    const-string v1, "> omicron prime <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 134
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->GATE_TO_AERIA_PASSING:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 135
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 136
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 137
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> lost paradise <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 141
    const-string v1, "lost paradise"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 142
    const-string v1, "> omicron prime <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 144
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->GATE_TO_LOST_PARADISE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 145
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v4, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 146
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 147
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    return-void
.end method

.method private static addStation(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3f4ccccd    # 0.8f

    .line 186
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newMissionStation()Lfr/testudo/spacecorsair/business/world/station/MissionStation;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->SPACESPORT_POSITION:Lfr/testudo/spacecorsair/engine/Vector2;

    const-string v2, "omicron spaceport"

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/MissionStation;

    move-result-object v0

    .line 187
    iput v4, v0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->r:F

    .line 188
    const v1, 0x3f19999a    # 0.6f

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->b:F

    .line 189
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->g:F

    .line 190
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newThreeDockStation()Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->GOODS_STATION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/business/world/UniverseName;->STATION_OMICRON_PRIME_GOODS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;

    move-result-object v0

    .line 196
    const v1, 0x3f333333    # 0.7f

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->r:F

    .line 197
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->g:F

    .line 198
    iput v4, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->b:F

    .line 199
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->buyList:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_SELLABLE_BY_PLAYER:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 200
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->callMobileSeller:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 201
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->galiumLaserLevel12:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 202
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->argonLaserLevel13:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 203
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->cobaltLaserLevel13:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 204
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->healerShieldLevel11:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 205
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->xenonShieldLevel12:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 206
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    return-void
.end method

.method public static getOmicronPrimeLevel()Lfr/testudo/spacecorsair/game/levels/Level;
    .registers 7

    .prologue
    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->addPortals(Ljava/util/List;)V

    .line 61
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->addStation(Ljava/util/List;)V

    .line 63
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->addCivilians(Ljava/util/List;)V

    .line 73
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v1, Lfr/testudo/spacecorsair/game/levels/Level;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->OMICRON_PRIME:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->omicronPrimeAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-direct {v1, v2, v0, v3}, Lfr/testudo/spacecorsair/game/levels/Level;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/List;Lfr/testudo/spacecorsair/game/levels/LevelAnimator;)V

    .line 79
    const v0, 0x7f06002a

    iput v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->musicResourceId:I

    .line 80
    sget-object v0, Lfr/testudo/spacecorsair/display/Background$BackImage;->Blue:Lfr/testudo/spacecorsair/display/Background$BackImage;

    iput-object v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->backGroundImage:Lfr/testudo/spacecorsair/display/Background$BackImage;

    .line 82
    const/4 v0, 0x1

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;

    const/4 v2, 0x0

    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPlanetDrawable()Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject;

    move-result-object v3

    sget-object v4, Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;->red_planet:Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;

    sget-object v5, Lfr/testudo/spacecorsair/engine/Vector2;->ZERO:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {v3, v4, v5, v6}, Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject;->init(Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;

    move-result-object v3

    aput-object v3, v0, v2

    iput-object v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->backgroundDrawableObjects:[Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;

    .line 86
    return-object v1
.end method
